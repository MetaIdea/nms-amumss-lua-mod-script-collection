------------------------------------------------------------------------------------------
-- Loaded_D <..\ModScript\ModHelperScripts\LIB/lua_2_exml.lua>
-------------------------------------------------------------------------
---	LUA 2 EXML (VERSION: 0.82) ... by lMonk
---	A tool for converting exml to an equivalent lua table and back again
---	(with added color helper functions)
-------------------------------------------------------------------------

--	replace a boolean with its text equivalent (ignore otherwise)
--	@param b: any value
function bool(b)
	return (type(b) == 'boolean') and ((b == true) and 'True' or 'False') or b
end

--	Generate an EXML-tagged text from a lua table representation of exml class
--	@param class: a lua2exml formatted table
function ToExml(class)
	local function len2(t)
	--	get the count of ALL objects in a table (non-recursive)
		i=0; for _ in pairs(t) do i=i+1 end ; return i
	end
	local function exml_r(tlua)
		local exml = {}
		function exml:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for key, cls in pairs(tlua) do
			if key ~= 'META' then
				exml[#exml+1] = '<Property '
				if type(cls) == 'table' and cls.META then
					local att, val = cls['META'][1], cls['META'][2]
					-- add and recurs for an inner table
					if att == 'name' or att == 'value' then
						exml:add({att, '="', val, '">'})
					else
						exml:add({'name="', att, '" value="', val, '">'})
					end
					exml:add({exml_r(cls), '</Property>'})
				else
					-- add normal property
					if type(cls) == 'table' then
						-- because you can't read an unknown key directly
						for k,v in pairs(cls) do key = k; cls = v end
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

	-- check the table level structure and meta placement
	-- add the needed layer for the recursion and handle multiple tables
	local klen = len2(class)
	if klen == 1 and class[1].META then
		return exml_r(class)
	elseif class.META and klen > 1 then
		return exml_r( {class} )
	-- concatenate unrelated exml sections, instead of nested inside each other
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = exml_r((tb.META and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
end

-- END: <..\ModScript\ModHelperScripts\LIB/lua_2_exml.lua>
-- Loaded_D <..\ModScript\ModHelperScripts\LIB/scene_tools.lua>
-------------------------------------------------------------------------
---	Model scene tools (VERSION: 0.82) ... by lMonk
---	Helper functions for adding new TkSceneNodeData nodes and properties
---	!! Requires lua_2_exml.lua !!
-------------------------------------------------------------------------

--	Returns a keyed table of TkSceneNodeData sections, using the Name property as keys,
--	* Use to enable direct access to nodes in a table generated with ToLua
function SceneNames(node, keys)
	keys = keys or {}
	if node.META[2] == 'TkSceneNodeData.xml' then
		keys[node.Name] = node
	end
	for k, scn in pairs(node.Children or {}) do
		if k ~= 'META' then SceneNames(scn, keys) end
	end
	return keys
end

--	T (optional) is a table for scene class properties >> attributes, transform and children
function ScNode(name, stype, T)
	T = T or {}
	T.META 		= {'value', 'TkSceneNodeData.xml'}
	T.Name 		= name
	T.Type 		= stype
	return T
end

--	accepts either a list of 9 values or keyed values (but NOT a combination of the two)
function ScTransform(t)
	t = t or {}
	return {
		META	= {'Transform', 'TkTransformData.xml'},
		TransX	= (t.tx or t[1]) or 0,
		TransY	= (t.ty or t[2]) or 0,
		TransZ	= (t.tz or t[3]) or 0,
		RotX	= (t.rx or t[4]) or 0,
		RotY	= (t.ry or t[5]) or 0,
		RotZ	= (t.rz or t[6]) or 0,
		ScaleX	= (t.sx or t[7]) or 1,
		ScaleY	= (t.sy or t[8]) or 1,
		ScaleZ	= (t.sz or t[9]) or 1
	}
end

--	accepts a list of {name, value} pairs
function ScAttributes(t)
	local T = {META = {'name', 'Attributes'}}
	for _,at in ipairs(t) do
		T[#T+1] = {
			META	= {'value', 'TkSceneNodeAttributeData.xml'},
			Name	= at[1],
			Value	= at[2]
		}
	end
	return T
end

-- END: <..\ModScript\ModHelperScripts\LIB/scene_tools.lua>
------------------------------------------------------------------------------------------
mod_desc = [[
  procedurally placed containers in the crashed freighter - instead of constant placement
]]----------------------------------------------------------------------------------------

local containers = {
	{
		id	 = '_OutLeft_',
		form = {
			{62.2, -4.1, -64.0, -66.2, 66.62, -33.5, 0.3, 0.3, 0.3},
			{70.8, -4.2, -52.3, -96.2, 46.62, -13.5, 0.3, 0.3, 0.3},
			{74.7, -5.8, -50.1, -26.2, 96.62, -93.5, 0.3, 0.3, 0.3},
			{77.7, -6.2, -50.1, -6.2, 6.62, -113.5, 0.3, 0.3, 0.3},
		}
	},
	{
		id	 = '_OutBack_',
		form = {
			{-6.2, 36.1, 83.8, 0, 0.5, 0, 0.6, 0.6, 0.6},
			{-58.49, -3.4, 23.5, -29.0, 122.0, -165.8, 0.8, 0.8, 0.8},
			{-78.5, -3.6, 19.3, -28.2, 110.8, -166.9, 0.5, 0.5, 0.5},
			{-42.4, -3.4, 16.4, -29.2, 122.9, -162.1, 0.4, 0.4, 0.4},
		}
	},
	{
		id	 = '_FrontLt_',
		form = {
			{40.6, -6.3, -19.3, 8.5, 2.2, 175.42, 0.5, 0.5, 0.5},
			{41.5, -6.2, -6.47, 0.5, 170.9, -10.42, 0.6, 0.6, 0.6},
			{33.0, -7.8, -6.47, -6.5, 120.0, -5.42, 0.5, 0.5, 0.5}
		}
	},
	{
		id	 = '_CenterDn_',
		form = {
			{44.5, -4.45, 22.5, 0, 0, 12, 0.4, 0.4, 0.4},
			{57.5, -4.8, 21.5, 39.5, 61.0, 5.2, 0.4, 0.4, 0.4},
			{52.0, -3.5, 16.0, 0.2, 15.0, -12.2, 0.6, 0.6, 0.6},
		}
	},
	{
		id	 = '_RightUp_',
		form = {
			{58.5, -4.5, 57.2, -70.5, 30.1, 15.4, 0.6, 0.6, 0.6},
			{52.5, 4.7, 65.7, -1.2, -5.1, 10.4, 0.6, 0.6, 0.6},
			{38.0, 1.2, 42.4, -1.2, -5.1, 10.4, 0.3, 0.3, 0.3}
		}
	},
	{
		id	 = '_LeftUp_',
		form = {
			{72.2, -5.2, -0.5, 240, 20, -30, 0.5, 0.5, 0.5},
			{72.2, 10.8, -2.5, 250, 50, 110, 0.6, 0.6, 0.2},
			{78.2, 5.6, -4.5, -1.2, -5.1, 10.4, 0.7, 0.7, 0.7}
		}
	}
}

local function AddSceneNodes()
	local T = {}
	for _,scn in ipairs(containers) do
		for i=1, #scn.form do
			T[#T+1] = ScNode(scn.id..string.char(64 + i), 'LOCATOR')
			T[#T+1] = ScNode(
				scn.id..string.char(64 + i), 'REFERENCE', {
					ScTransform(scn.form[i]),
					ScAttributes({
						{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/PARTS/CRASH_CONTAINER.SCENE.MBIN'}
					})
				}
			)
		end
	end
	return T
end

local function AddDescriptors()
	local T = {}
	for _,scn in ipairs(containers) do
		local tmp = {
			META		= {'value', 'TkResourceDescriptorList.xml'},
			TypeId		= scn.id:upper(),
			Descriptors	= {META = {'name', 'Descriptors'}}
		}
		for i=1, #scn.form do
			tmp.Descriptors[#tmp.Descriptors+1] = {
				META	= {'value', 'TkResourceDescriptorData.xml'},
				Id		= (scn.id..string.char(64 + i)):upper(),
				Name	= scn.id..string.char(64 + i),
				Chance	= 0
			}
		end
		T[#T+1] = tmp
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Crashed Freighter Procedural Containers.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 4.23,
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
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				FOREACH_SKW_GROUP 	= {
					{'Name', 'HeightAdjust3'},
					{'Name', 'HeightAdjust4'}
				},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LargeCargoRoomRef'},
				ADD_OPTION			= 'AddAfterSection',
				ADD 				= ToExml(AddSceneNodes())
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER.DESCRIPTOR.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'List',
				ADD					= ToExml(AddDescriptors())
			}
		}
	}
}}}}