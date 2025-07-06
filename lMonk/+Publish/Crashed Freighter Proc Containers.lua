------------------------------------------------------------------------------------------
local mod_desc = [[
  procedurally placed containers in the crashed -and underwater-crashed freigther
  replaces the underwater one with the land model
]]----------------------------------------------------------------------------------------
---	LUA 2 EXML (VERSION: 0.85.7) ... by lMonk
---	A tool for converting exml to an equivalent lua table and back again.
--- The complete tool can be found at: https://github.com/roie-r/exml_2_lua
-------------------------------------------------------------------------------
--	Generate an EXML-tagged text from a lua table representation of exml class
--	@param class: a lua2exml formatted table
local function ToExml(class)
	--	Get the count of ALL objects in a table (non-recursive)
	--	@param t: any table
	local function len2(t)
		if type(t) ~= 'table' then return -1 end
		i=0; for _ in pairs(t) do i=i+1 end; return i
	end
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	local function bool(b)
		return (type(b) == 'boolean') and ((b == true) and 'true' or 'false') or b
	end
	local function exml_r(tlua)
		local exml = {}
		function exml:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for key, cls in pairs(tlua) do
			if key ~= 'meta' then
				exml[#exml+1] = '<Property '
				if type(cls) == 'table' and cls.meta then
					local att, val, lnk = cls['meta'][1], cls['meta'][2], cls['meta'][3]
					-- add and recurs for an inner table
					if att == 'name' or att == 'value' then
						exml:add({att, '="', val})
					else
						exml:add({'name="', att, '" value="', val})
						if lnk then
							exml:add({'" linked="', lnk})
						end
					end
					exml:add({'">', exml_r(cls), '</Property>'})
				else
					-- add a regular property
					if type(cls) == 'table' then
						key, cls = next(cls)
					end
					if key == 'name' or key == 'value' then
						exml:add({key, '="', bool(cls), '"/>'})
					else
						exml:add({'name="', key, '" value="', bool(cls), '"/>'})
					end
				end
			end
		end
		return table.concat(exml)
	end
	-------------------------------------------------------------------------
	-- check the table level structure and meta placement
	-- add the needed layer for the recursion and handle multiple tables
	local klen = len2(class)
	if klen == 1 and class[1].meta then
		return exml_r(class)
	elseif class.meta and klen > 1 then
		return exml_r( {class} )
	-- concatenate unrelated (instead of nested) exml sections
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = exml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
	return nil
end

--	Determine if received is a single or multi-item
--	then process items through the received function
--	@param items: table of item properties or a non-keyed table of items (keys are ignored)
--	@param acton: the function to process the items in the table
local function ProcessOnenAll(items, acton)
	-- first key = 1 means multiple entries
	if next(items) == 1 then
		local T = {}
		for _,e in ipairs(items) do
			T[#T+1] = acton(e)
		end
		return T
	end
	return acton(items)
end

--	Build a single -or list of TkSceneNodeData classes
--	@param props: a keyed table for scene class properties.
--	{
--	  name	= scene node name (NameHash is calculated automatically)
--	  ntype	= scene node type
--	  form	= [optional] Transform data. a list of 9 ordered values or keyed values,
--			  but NOT a combination of the two!
--	  pxlud = [optional] PlatformExclusion
--	  attr	= [optional] Attributes table of {name, value} pairs
--	  child	= [optional] Children table for ScNode tables
--	}
local function ScNode(nodes)
	--	returns a jenkins hash from a string (by lyravega)
	local function jenkinsHash(input)
		local hash = 0
		local t_chars = {string.byte(input:upper(), 1, #input)}

		for i = 1, #input do
			hash = (hash + t_chars[i]) & 0xffffffff
			hash = (hash + (hash << 10)) & 0xffffffff
			hash = (hash ~ (hash >> 6)) & 0xffffffff
		end
		hash = (hash + (hash << 3)) & 0xffffffff
		hash = (hash ~ (hash >> 11)) & 0xffffffff
		hash = (hash + (hash << 15)) & 0xffffffff
		return tostring(hash)
	end
	--	Build a TkSceneNodeData class
	local function sceneNode(props)
		local T	= {
			meta	= {'Children', 'TkSceneNodeData'},
			Name 				= props.name,
			NameHash			= jenkinsHash(props.name),
			Type				= props.ntype,
			PlatformExclusion	= props.pxlud or nil
		}
		--	add TkTransformData class
		props.form = props.form or {}
		T.Form = {
			meta	= {'Transform', 'TkTransformData'},
			TransX	= (props.form.tx or props.form[1]) or nil,
			TransY	= (props.form.ty or props.form[2]) or nil,
			TransZ	= (props.form.tz or props.form[3]) or nil,
			RotX	= (props.form.rx or props.form[4]) or nil,
			RotY	= (props.form.ry or props.form[5]) or nil,
			RotZ	= (props.form.rz or props.form[6]) or nil,
			ScaleX	= (props.form.sx or props.form[7]) or 1,
			ScaleY	= (props.form.sy or props.form[8]) or 1,
			ScaleZ	= (props.form.sz or props.form[9]) or 1
		}
		--	if present, add attributes list
		if props.attr then
			-- add accompanying attribute to scenegraph
			if props.attr.SCENEGRAPH then
				props.attr.EMBEDGEOMETRY = 'TRUE'
			end
			T.Attr = { meta = {'name', 'Attributes'} }
			for nm, val in pairs(props.attr) do
				T.Attr[#T.Attr+1] = {
					meta	= {'Attributes', 'TkSceneNodeAttributeData'},
					Name	= nm,
					Value	= val
				}
			end
		end
		if props.child then
		--	add children list if found
			local k,_ = next(props.child)
			cnd = ScNode(props.child)
			T.Child	= k == 1 and cnd or {cnd}
			T.Child.meta = {'name', 'Children'}
		end
		return T
	end
	return ProcessOnenAll(nodes, sceneNode)
end

-------------------------------------------------------------------------------
local loot_containers = {
	{
		name = '_OutLeft_',
		form = {
			{45, -4.6, -46, 310, 65, -33.5, 0.6, 0.6, 0.6},
			{70.8, -4.2, -52.3, -96.2, 46.62, -13.5, 0.6, 0.6, 0.6},
			{27.2, -1.7, -48.5, 10, 45, 5, 0.5, 0.5, 0.5},
			{62, -4.5, -45, 0, 105, 30, 0.5, 0.5, 0.5}
		}
	},
	{
		name = '_OutBack_',
		form = {
			{-5, 35.5, 85.6, -9, 55, -28, 0.6, 0.6, 0.6},
			{5, 35, 88.5, 330, -22, 0, 0.5, 0.5, 0.5},
			{-58.49, -3.4, 23.5, -29.0, 122.0, -165.8, 0.8, 0.8, 0.8},
			{-79, -3.8, 16, 0, -20, 0, 0.5, 0.5, 0.5},
			{-42.4, -3.4, 16.4, -55, 30, 115, 0.4, 0.4, 0.4}
		}
	},
	{
		name = '_FrontLt_',
		form = {
			{40.6, -5.9, -19.6, 2, -8, 175.4, 0.5, 0.5, 0.5},
			{41.5, -6.2, -6.5, 0.5, 171, -10.4, 0.6, 0.6, 0.6},
			{32.4, -7.6, -5.2, -11, 80, 0, 0.5, 0.5, 0.5}
		}
	},
	{
		name = '_CenterDn_',
		form = {
			{45.4, -4.3, 23.3, 5, 210, -2, 0.4, 0.4, 0.4},
			{57.5, -5.1, 21.5, 30, 61.0, 5.4, 0.4, 0.4, 0.4},
			{55.5, -1.9, 16.5, 260, 75, 5, 0.6, 0.6, 0.6},
			{43, -5.1, 13, -1, -10, 8, 0.6, 0.6, 0.6}
		}
	},
	{
		name = '_RightUp_',
		form = {
			{58.5, -4.5, 57.2, -70.5, 30.1, 15.4, 0.6, 0.6, 0.6},
			{52.5, 4.6, 65.7, 0, -10, 8, 0.6, 0.6, 0.6},
			{37.7, 1.2, 42.4, -1.2, -5.1, 9.8, 0.3, 0.3, 0.3},
			{31.8, 1.1, 63.6, -10, -80, 0, 0.3, 0.3, 0.3}
		}
	},
	{
		name = '_LeftUp_',
		form = {
			{72.2, -5.2, -0.5, 240, 20, -30, 0.5, 0.5, 0.5},
			{71.6, 11.1, -3.6, 280, -140, -60, 0.4, 0.4, 0.4},
			{77.5, 5.7, 3, 8, 270, 0, 0.6, 0.6, 0.6},
			{79, 5.7, -5.8, 1, -15, 10.4, 0.7, 0.7, 0.7}
		}
	}
}

local function AddContainerScenes()
	local T = {}
	for _,scn in ipairs(loot_containers) do
		for i=1, #scn.form do
			T[#T+1] = {
				name	= scn.name..string.char(64 + i),
				ntype	= 'REFERENCE',
				form	= scn.form[i],
				attr	= {
					SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/PARTS/CRASH_CONTAINER.SCENE.MBIN'
				}
			}
		end
	end
	return ToExml(ScNode(T))
end

local function AddContainerDescriptors()
	local T = {}
	for _,scn in ipairs(loot_containers) do
		local tmp = {
			meta		= {'List', 'TkResourceDescriptorList'},
			TypeId		= scn.name:upper(),
			Descriptors	= {meta = {'name', 'Descriptors'}}
		}
		for i=1, #scn.form do
			tmp.Descriptors[#tmp.Descriptors+1] = {
				meta	= {'Descriptors', 'TkResourceDescriptorData'},
				Id		= (scn.name..string.char(64 + i)):upper(),
				Name	= scn.name..string.char(64 + i),
				Chance	= 0
			}
		end
		T[#T+1] = tmp
	end
	return ToExml(T)
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Crashed Freighter Procedural Containers.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.52',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/MODULES/LARGEROOM.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/MODULES/SMALLROOM.SCENE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'HeightAdjust1'},
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER.SCENE.MBIN',
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_UNDERWATER.SCENE.MBIN'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER.SCENE.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_UNDERWATER.SCENE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'HeightAdjust3'},
					{'Name', 'HeightAdjust4'}
				},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LargeCargoRoomRef'},
				ADD_OPTION			= 'AddAfterSection',
				ADD 				= AddContainerScenes()
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_UNDERWATER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					-- vfx
					{'Name', 'REFSmokeVFX'},
					{'Name', 'REFSmokeVFX1'},
					{'Name', 'REFSmokeVFX2'},
					{'Name', 'REFSmokeVFX3'},
					{'Name', 'REFLargeCrashedFreighterCloudsVFX3'},
					{'Name', 'REFLargeCrashedFreighterCloudsVFX4'},
					{'Name', 'REFLargeCrashedFreighterSmokeVFX5'},
					{'Name', 'REFLargeCrashedFreighterSmokeVFX6'},
					{'Name', 'REFLargeCrashedFreighterSmokeVFX7'},
					{'Name', 'REFLargeCrashedFreighterSmokeVFX8'},
					{'Name', 'REFLargeCrashedFreighterSmokeVFX9'},
					{'Name', 'REFLargeCrashedFreighterSmokeVFX'},
					{'Name', 'REFLargeCrashedFreighterSmokeVFX1'},
					{'Name', 'REFLargeCrashedFreighterSmokeVFX2'},
					{'Name', 'REFLargeCrashedFreighterSmokeVFX3'},
					{'Name', 'REFLargeCrashedFreighterSmokeVFX4'},
					{'Name', 'REFCrashedFreighterCloudsVFX'},
					{'Name', 'REFCrashedFreighterCloudsVFX1'},
					{'Name', 'REFCrashedFreighterCloudsVFX2'},
					{'Name', 'REFCrashedFreighterCloudsVFX4'},
					-- mist
					{'Name', 'REFPlatformMistVFX'},
					{'Name', 'REFCrashedFreightMistVFX'},
					-- builder parts
					{'Name', 'Interior_'},
					{'Name', 'NAV_POI'},
					{'Name', 'NAV_POI_CONV'},
					{'Name', 'NAV_POI1'},
					{'Name', 'NAV_POI2'},
					{'Name', 'NAV_POI3'},
					{'Name', 'NAV_POI4'},
					{'Name', 'NAV_NODE'},
					{'Name', 'NAV_NODE2'},
					{'Name', 'NAV_NODE3'},
					{'Name', 'NAV_NODE4'},
					{'Name', 'NAV_NODE5'},
					{'Name', 'NAV_NODE6'},
					{'Name', 'NAV_NODE7'},
					{'Name', 'NAV_NODE8'},
					{'Name', 'NAV_NODE9'},
					{'Name', 'NAV_NODE10'},
					{'Name', 'NAV_NODE11'},
					{'Name', 'NAV_NODE12'},
					{'Name', 'NAV_NODE13'},
					{'Name', 'NAV_NODE14'},
					{'Name', '_Tents_Group_'},
					{'Name', '_Tents_Group_1'},
					{'Name', '_Tents_Group_2'},
					{'Name', 'RefRobotTerminalMesh'},
					{'Name', 'Barrel_Ref'}
				},
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER.DESCRIPTOR.MBIN',
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_UNDERWATER.DESCRIPTOR.MBIN'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER.DESCRIPTOR.MBIN',
			'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_UNDERWATER.DESCRIPTOR.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'List',
				ADD					= AddContainerDescriptors()
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_UNDERWATER.DESCRIPTOR.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'TypeId', '_TENTS_'},
				REMOVE				= 'Section'
			}
		}
	}
}}}}