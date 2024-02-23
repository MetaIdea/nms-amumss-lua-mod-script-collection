----------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
----------------------------------------------------------------------
local mod_desc = [[
  procedurally-placed keys - Only 3 keys will appear in any instance
  4 Alternate placements for the treasure chest
]]--------------------------------------------------------------------

local keys = {
	tid	 = '_CRATES_KEY_',
	name = '_Cratekey_',
	{-26.1,		-7.45,		-3.5,		21.0,		31.0,		1.0},
	{47.79934,	-10.29004,	8.20181,	30.20214,	28.048,		-16.6737},
	{35.64062,	-3.38012,	21.2812,	-2.890653,	23.66665,	6.40387},
	{4.6,		-7.85,		30.0,		-18,		-160,		4.0},
	{-1.9188,	-19.8312,	-51.76936,	9.22353,	184.20784,	-1.3652},
	{-0.9938,	-6.0703,	-38.33277,	-4.67097,	9.22354,	-1.3652}
}

local locks = {
	tid	 = '_CRATES_LOCK_',
	name = '_Cratelock_',
	{-0.91945,	-8.16323,	0.4867,		1.69392,	2.41958,	4.91478},
	{-0.91945,	-12.19,		-31.1867,	1.7,		-175,		-1.2},
	{33.4,		0.55,		23.2,		2.0,		-35,		3.5,	0.8, 0.8, 0.8},
	{-25.6,		-5.84,		-17.1,		8.0,		-177,		5.0}
}

local function AddChar(n, i, u)
	local s = n..string.char(64 + i)
	return u and s:upper() or s
end

local function AddSceneNodes()
	local T = {}
	for i, key in ipairs(keys) do
		T[#T+1] = ScNode(AddChar(keys.name, i), 'LOCATOR')
		T[#T+1] = ScNode(
			AddChar(keys.name, i), 'REFERENCE', {
				ScTransform(key),
				ScAttributes({
					{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/PARTS/CRATEKEY.SCENE.MBIN'}
				})
			}
		)
	end
	for i, lck in ipairs(locks) do
		T[#T+1] = ScNode(AddChar(locks.name, i), 'LOCATOR')
		T[#T+1] = ScNode(
			AddChar(locks.name, i), 'REFERENCE', {
				ScTransform(lck),
				ScAttributes({
					{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/PARTS/CRATELOCK.SCENE.MBIN'}
				})
			}
		)
	end
	return T
end

local function GenerateDescriptor()
	local function Rsrc3Group(name, ix, cmb)
		return {
			META	= {'value','TkResourceDescriptorData.xml'},
			Id		= AddChar(name, cmb[1], true),
			Name	= AddChar(name, cmb[1]),
			Children= {
				META = {'name','Children'},
				{
					META = {'value','TkModelDescriptorList.xml'},
					List = {
						META = {'name','List'},
						{
							META	= {'value','TkResourceDescriptorList.xml'},
							TypeId	= AddChar(name..'ID2_', ix, true),
							Descriptors = {
								META = {'name','Descriptors'},
								{
									META	= {'value','TkResourceDescriptorData.xml'},
									Id		= AddChar(name, cmb[2], true),
									Name	= AddChar(name, cmb[2]),
									Children= {
										META = {'name','Children'},
										{
											META = {'value','TkModelDescriptorList.xml'},
											List = {
												META = {'name','List'},
												{
													META	= {'value','TkResourceDescriptorList.xml'},
													TypeId	= AddChar(name..'ID3_', ix, true),
													Descriptors = {
														META = {'name','Descriptors'},
														{
															META	= {'value','TkResourceDescriptorData.xml'},
															Id		= AddChar(name, cmb[3], true),
															Name	= AddChar(name, cmb[3])
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	end
	local function RsrcList(tid)
		return {
			META		= {'value', 'TkResourceDescriptorList.xml'},
			TypeId		= tid,
			Descriptors	= {META = {'name', 'Descriptors'}}
		}
	end
	local combinations = {}
	--	generate combinations for 6 crate-keys
	for i=1, 4 do
		for j=i+1, 5 do
			for k=j+1, 6 do
				combinations[#combinations+1] = {i, j, k}
			end
		end
	end
	local T = {
		--	file wrapper template
		META = {'template', 'TkModelDescriptorList'},
		List = {
			META = {'name', 'List'},
			[1]  = RsrcList(keys.tid)
		}
	}
	-- Add key crates
	for i, k in ipairs(combinations) do
		table.insert(T.List[1].Descriptors, Rsrc3Group(keys.name, i, k))
	end
	-- Add lock crates
	T.List[#T.List+1] = RsrcList(locks.tid)
	for i=1, #locks do
		table.insert(T.List[2].Descriptors, {
			META	= {'value', 'TkResourceDescriptorData.xml'},
			Id		= AddChar(locks.name, i, true),
			Name	= AddChar(locks.name, i)
		})
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Treasure Ruin Procedural Crates.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/UNDERGROUNDRUINS.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				FOREACH_SKW_GROUP 	= {
					{'Name', 'RefCrateKey'},
					{'Name', 'RefCrateKey1'},
					{'Name', 'RefCrateKey2'},
					{'Name', 'RefCrateKey3'},
					{'Name', 'RefCrateKey7'},
					{'Name', 'RefCrateKey8'},
					{'Name', 'RefCrateLock'}
				},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Layout_1'},
				PRECEDING_KEY_WORDS = 'Children',
				ADD 				= ToExml(AddSceneNodes())
			}
		}
	}
}}},
	ADD_FILES	= {
		{
			FILE_DESTINATION = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/UNDERGROUNDRUINS.DESCRIPTOR.EXML',
			FILE_CONTENT	 = FileWrapping(GenerateDescriptor())
		}
	}
}