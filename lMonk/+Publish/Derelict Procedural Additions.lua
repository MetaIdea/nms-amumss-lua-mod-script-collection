---------------------------------------------------------------------------
local mod_desc = [[
  Adds procedural parts, more wrecks and a few wreck -and space-encounter
  items to the derelict freighter encounter mission.
  Adds a slow tumble to floating items to make the scene more dynamic
]]-------------------------------------------------------------------------
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

--	Adds the xml header and data template
--	Uses the contained template meta if found (instead of the received variable)
--	@param data: a lua2exml formatted table
--	@param template: an nms file template string
local function FileWrapping(data, template)
	local wrapper = '<?xml version="1.0" encoding="utf-8"?><Data template="%s">%s</Data>'
	if type(data) == 'string' then
		return string.format(wrapper, template, data)
	end
	-- remove the extra table added by ToLua
	if data.template then data = data.template end
	-- table loaded from file
	if data.meta[1] == 'template' then
		-- strip mock template
		local txt_data = ToExml(data):sub(#data.meta[2] + 36, -12)
		return string.format(wrapper, data.meta[2], txt_data)
	else
		return string.format(wrapper, template, ToExml(data))
	end
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
local assets = {
	{
		name = '_Derelict_',
		node = {
			{
				form	= {-1000, 900, 200, 30, 20, 100, 4, 4, 4},
				model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER.SCENE.MBIN'
			},
			{
				form	= {-1200, 1300, 400, 10, -140, 240, 4, 4, 4},
				model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI.SCENE.MBIN'
			},
			{
				form	= {1200, -1000, 300, 130, 90, 100, 4, 4, 4},
				model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI2.SCENE.MBIN'
			},
			{
				form	= {1000, 1000, 1200, 20, -150, 180, 4, 4, 4},
				model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI3.SCENE.MBIN'
			},
			{
				form	= {-1100, 1300, 400, 210, 110, 170, 4, 4, 4},
				model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI.SCENE.MBIN'
			},
			{
				form	= {-1200, 800, -1100, -20, 30, -150, 4, 4, 4},
				model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI2.SCENE.MBIN'
			},
			{
				form	= {-1100, 1400, -100, 15, 310, 165, 4, 4, 4},
				model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI3.SCENE.MBIN'
			}
		}
	},
	{
		name = '_Anomal_F_',
		node = {
			{
				form	= {410, 475, 532, -20, 80, 60, 2.4, 2.4, 2.4},
				model	= 'MODELS/SPACE/POI/WARRIORSILOS.SCENE.MBIN'
			},
			{
				form	= {-114.5, 195, -80, 16, 16, 16, 1, 1, 1},
				model	= 'MODELS/SPACE/POI/WEIRDOBJECT2.SCENE.MBIN'
			},
			{
				form	= {-114.5, 185, -80, 16, 16, 16, 1.4, 1.4, 1.4},
				model	= 'MODELS/SPACE/POI/SPACEGYROSCOPE.SCENE.MBIN'
			},
			{
				form	= {810, 745, 832, -20, 80, 60, 1, 1, 1},
				model	= 'MODELS/SPACE/POI/ASTEROID_BEACON.SCENE.MBIN'
			},
			{
				form	= {510, 585, 500, 330, 25, 55, 1, 1, 1},
				model	= 'MODELS/SPACE/POI/GATE_POI.SCENE.MBIN'
			},
			{
				form	= {32, 120, -380, 16, 16, 16, 1.4, 1.4, 1.4},
				model	= 'MODELS/SPACE/POI/MEMORYLIFEBOAT.SCENE.MBIN'
			}
		}
	},
	{
		name = '_Anomal_A_',
		node = {
			{
				form	= {410, 370, -800, 120, 210, 190, 0.6, 0.6, 0.6},
				model	= 'MODELS/SPACE/POI/PILLARPOI.SCENE.MBIN'
			},
			{
				form	= {460, 405, -750, 120, 210, 190, 2, 2, 2},
				model	= 'MODELS/SPACE/POI/SPACECLOCK.SCENE.MBIN'
			},
			{
				form	= {360, 375, -740, 120, 210, 190, 1, 1, 1},
				model	= 'MODELS/SPACE/POI/8PRONGEDSPINNER.SCENE.MBIN'
			},
			{
				form	= {-360, 286, -740, 120, 210, 190, 2, 2, 2},
				model	= 'MODELS/SPACE/POI/ATLASBEACON.SCENE.MBIN'
			}
		}
	},
	{
		-- VFX (not a proc scene part - but it works)
		name = '_SpaceStorm_FX_',
		node = {
			{
				form	= {0, 0, 0, 0, 0, 0, 4, 4, 4},
				model	= 'MODELS/EFFECTS/SPACE/DERELICTATMOSPHERICS/DERELICTATMOSPHERICS.SCENE.MBIN'
			}
		}
	},
	{
		-- add description for existing nodes (relies on array length)
		name = '_Front_',
		desc = {0, 1, 0, 0, 1, 1}
	},
	{
		-- add description for existing nodes
		name = '_AccSide_',
		desc = {1, 0}
	}
}

local function AddSpaceAssets()
	local T = {}
	for _,group in ipairs(assets) do
		if group.node then
			for i, scene in ipairs(group.node) do
				T[#T+1] = {
					name	= group.name..string.char(64 + i),
					ntype	= 'REFERENCE',
					form	= scene.form,
					attr	= {
						SCENEGRAPH	= scene.model,
					--	add a spin to 'drifting' wrecks
						ATTACHMENT	= 'MODELS/COMMON/SHARED/ENTITIES/SPIN001.ENTITY.MBIN'
					}
				}
			end
		end
	end
	return ToExml(ScNode(T))
end

local function GenerateDescriptor()
	local T = {
		meta = {'template', 'cTkModelDescriptorList'},
		List = {meta = {'name', 'List'}}
	}
	for _,group in ipairs(assets) do
		local tmp = {
			meta		= {'List', 'TkResourceDescriptorList'},
			TypeId		= group.name:upper(),
			Descriptors	= {meta = {'name', 'Descriptors'}}
		}
		for i, scene in ipairs(group.node or group.desc) do
			tmp.Descriptors[#tmp.Descriptors+1] = {
				meta	= {'Descriptors', 'TkResourceDescriptorData'},
				Id		= (group.name..string.char(64 + i)):upper(),
				Name	= group.name..string.char(64 + i),
				ReferencePaths	= type(scene) == 'table' and {
					meta = {'name','ReferencePaths'},
					ReferencePaths = scene.model
				} or nil
			}
		end
		T.List[#T.List+1] = tmp
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.Derelict Procedural Additions.pak',
	LUA_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.55',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/SPACE/POI/DUNGEON.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefDungeonEntrance'},
				ADD_OPTION			= 'AddAfterSection',
				ADD 				= AddSpaceAssets()
			}
		}
	}
}}},
	ADD_FILES	= {
		{
			FILE_DESTINATION = 'MODELS/SPACE/POI/DUNGEON.DESCRIPTOR.MXML',
			FILE_CONTENT	 = FileWrapping(GenerateDescriptor())
		},
		{
			FILE_DESTINATION = 'MODELS/COMMON/SHARED/ENTITIES/SPIN001.ENTITY.MXML',
			FILE_CONTENT	 = FileWrapping({
				meta = {'template','cTkAttachmentData'},
				Components = {
					meta = {'name','Components'},
					{
						meta = {'Components','TkRotationComponentData'},
						TkRotationComponentData = {
							meta = {'name','TkRotationComponentData'},
							{Speed = 0.01},
							{
								meta = {'name','Axis'},
								{X = 1},
								{Y = 1},
								{Z = 1}
							},
							{AlwaysUpdate = true},
							{SyncGroup = -1}
						}
					}
				}
			})
		}
	}
}