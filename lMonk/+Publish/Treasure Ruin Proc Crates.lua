----------------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
----------------------------------------------------------------------
local mod_desc = [[
  procedurally-placed keys - Only 3 keys will appear in any instance
  4 Alternate placements for the treasure chest
]]--------------------------------------------------------------------

local key_nodes = {
	tid	 = '_CRATES_KEY_',
	name = '_Cratekey_',
	form = {
		{-26.1,		-7.45,		-3.5,		21.0,		31.0,		1.0},		-- below side walk
		{47.79934,	-10.29004,	8.20181,	30.20214,	28.048,		-16.6737},	-- bottom of slant
		{35.64062,	-3.38012,	21.2812,	-2.890653,	23.66665,	6.40387},	-- in tower
		{4.6,		-7.85,		30.0,		-18,		-160,		4.0},		-- mid center & tower
		{-1.9188,	-19.8312,	-51.76936,	9.22353,	184.20784,	-1.3652},	-- stairs bottom
		{-0.9938,	-6.0703,	-38.33277,	-4.67097,	9.22354,	-1.3652},	-- stairs top
	}
}

local lock_nodes = {
	tid	 = '_CRATES_LOCK_',
	name = '_Cratelock_',
	form = {
		{-0.91945,	-8.16323,	0.4867,		1.69392,	2.41958,	4.91478},				-- original center
		{-0.91945,	-12.19,		-31.1867,	1.7,		-175,		-1.2},					-- behind stairs
		{33.4,		0.55,		23.2,		2.0,		-35,		3.5,	0.8, 0.8, 0.8},	-- on tower
		{-25.6,		-5.84,		-17.1,		8.0,		-177,		5.0},					-- end of side walk
	}
}

local function AddChar(n, i, u)
	local s = n..string.char(64 + i)
	return u and s:upper() or s
end

local function AddSceneNodes()
	local T = {}
	for i, f in ipairs(key_nodes.form) do
		T[#T+1] = ScNode({
			name	= AddChar(key_nodes.name, i),
			ntype	= 'REFERENCE',
			form	= f,
			attr	= {
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/PARTS/CRATEKEY.SCENE.MBIN'}
			}
		})
	end
	for i, f in ipairs(lock_nodes.form) do
		T[#T+1] = ScNode({
			name	= AddChar(lock_nodes.name, i),
			ntype	= 'REFERENCE',
			form	= f,
			attr	= {
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/RUINS/PARTS/CRATELOCK.SCENE.MBIN'}
			}
		})
	end
	return T
end

local function GenerateDescriptor()
	local function Rsrc3Group(name, ix, cmb)
		return {
			meta	= {'value','TkResourceDescriptorData.xml'},
			Id		= AddChar(name, cmb[1], true),
			Name	= AddChar(name, cmb[1]),
			Children= {
				meta = {'name','Children'},
				{
					meta = {'value','TkModelDescriptorList.xml'},
					List = {
						meta = {'name','List'},
						{
							meta	= {'value','TkResourceDescriptorList.xml'},
							TypeId	= AddChar(name..'ID2_', ix, true),
							Descriptors = {
								meta = {'name','Descriptors'},
								{
									meta	= {'value','TkResourceDescriptorData.xml'},
									Id		= AddChar(name, cmb[2], true),
									Name	= AddChar(name, cmb[2]),
									Children= {
										meta = {'name','Children'},
										{
											meta = {'value','TkModelDescriptorList.xml'},
											List = {
												meta = {'name','List'},
												{
													meta	= {'value','TkResourceDescriptorList.xml'},
													TypeId	= AddChar(name..'ID3_', ix, true),
													Descriptors = {
														meta = {'name','Descriptors'},
														{
															meta	= {'value','TkResourceDescriptorData.xml'},
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
	local T = {
		--	file wrapper template
		meta = {'template', 'TkModelDescriptorList'},
		List = {
			meta = {'name', 'List'},
			Keys = {
			-- keys descriptor
				meta		= {'value', 'TkResourceDescriptorList.xml'},
				TypeId		= key_nodes.tid,
				Descriptors	= {meta = {'name', 'Descriptors'}}
			},
			Locks = {
			-- locks descriptor
				meta		= {'value', 'TkResourceDescriptorList.xml'},
				TypeId		= lock_nodes.tid,
				Descriptors	= {meta = {'name', 'Descriptors'}}
			}
		}
	}
	local combinations = {}
	--	generate combinations of 3 from all key_nodes
	for i = 1, #key_nodes.form - 2 do
		for j = i + 1, #key_nodes.form - 1 do
			for k = j + 1, #key_nodes.form do
				combinations[#combinations+1] = {i, j, k}
			end
		end
	end
	-- Add keys
	for i, cmb in ipairs(combinations) do
		table.insert(T.List.Keys.Descriptors, Rsrc3Group(key_nodes.name, i, cmb))
	end
	-- Add lock crates
	for i=1, #lock_nodes.form do
		table.insert(T.List.Locks.Descriptors, {
			meta	= {'value', 'TkResourceDescriptorData.xml'},
			Id		= AddChar(lock_nodes.name, i, true),
			Name	= AddChar(lock_nodes.name, i)
		})
	end
	return T
end


NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Treasure Ruin Procedural Crates.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MIXED_TABLE',
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