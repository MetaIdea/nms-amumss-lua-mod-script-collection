---------------------------------------------------------------------------
local mod_desc = [[
  Adds procedural parts, more wrecks and a few wreck -and space-encounter
  items to the derelict freighter encounter mission.
  Adds a slow tumble to floating items to make the scene more dynamic
]]-------------------------------------------------------------------------
---	MXML 2 LUA ... by lMonk ... version: 1.0.04
---	A tool for converting between mxml file format and lua table.
--- The complete tool can be found at: https://github.com/roie-r/mxml_2_lua
--------------------------------------------------------------------------------
--	=> Generate an MXML-tagged text from a lua table representation of mxml file
--	@param class: a lua2mxml formatted table
local function ToMxml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	local function bool(b)
		return type(b) == 'boolean' and (b == true and 'true' or 'false') or b
	end
	local at_ord = {'template', 'name', 'value', 'linked', '_id', '_index', '_overwrite'}
	local function mxml_r(tlua)
		local out = {}
		function out:add(t)
			for _,v in ipairs(t) do self[#self+1] = v end
		end
		for attr, cls in pairs(tlua) do
			if attr ~= 'meta' then
				out:add({'<Property '})
				if type(cls) == 'table' and cls.meta then
				-- add new section and recurs for nested sections
					for _,at in ipairs(at_ord) do
					-- Just for readability. The compiler doesn't need the ordering
						if cls.meta[at] then out:add({at, '="', bool(cls.meta[at]), '"', ' '}) end
					end
					-- for k, v in pairs(cls.meta) do
						-- if k:sub(-1) ~= '_' then out:add({k, '="', bool(v), '"', ' '}) end
					-- end
					table.remove(out) -- trim last space
					out:add({'>', mxml_r(cls), '</Property>'})
				else
				-- add section properties
					local att, val = nil, nil
					if tonumber(attr) then
						if type(cls) == 'table' then
							att, val = next(cls)
						else
							att = tlua.meta.name
							val = cls
						end
					else
						att = attr
						val = cls
					end
					if att == 'name' then
						out:add({att, '="', bool(val), '"/>'})
					else
						out:add({'name="', att, '" value="', bool(val), '"/>'})
					end
				end
			end
		end
		return table.concat(out)
	end
	-------------------------------------------------------------------------
	-- check the table level structure and meta placement
	-- add parent table for the recursion and handle multiple tables
	if type(class) ~= 'table' then return nil end
	local klen=0; for _ in pairs(class) do klen=klen+1 end

	if klen == 1 and class[1].meta then
		return mxml_r(class)
	elseif class.meta and klen > 1 then
		return mxml_r( {class} )
	-- concatenate unrelated (instead of nested) mxml sections
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = mxml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
	return nil
end

--	=> Adds the header and class template for a standard mxml file
--	@param data: A lua2mxml formatted table
--	@param template: [optional] A class template string. Overwrites the internal template!
local function ToMxmlFile(tlua, ext_tmpl)
	local wrapper = '<?xml version="1.0" encoding="utf-8"?><Data template="%s">%s</Data>'
	if type(tlua) == 'string' then
		return wrapper:format(ext_tmpl, tlua)
	end
	-- replace existing or add template layer if needed
	if ext_tmpl then
		if tlua.meta.template then
			tlua.meta.template = ext_tmpl
		else
			tlua = {
				meta = {template=ext_tmpl},
				tlua
			}
		end
	end
	-- strip mock template
	local txt_data = ToMxml(tlua):sub(#tlua.meta.template + 23, -12)
	return wrapper:format(tlua.meta.template, txt_data)
end

--	=> Determine if received is a single or multi-item
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

--	=> Build a single -or list of TkSceneNodeData classes
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
			meta	= {name='Children', value='TkSceneNodeData'},
			Name 				= props.name,
			NameHash			= jenkinsHash(props.name),
			Type				= props.ntype,
			PlatformExclusion	= props.pxlud or nil
		}
		--	add TkTransformData class
		props.form = props.form or {}
		T.Form = {
			meta	= {name='Transform', value='TkTransformData'},
			TransX	= (props.form.tx or props.form[1]) or nil,
			TransY	= (props.form.ty or props.form[2]) or nil,
			TransZ	= (props.form.tz or props.form[3]) or nil,
			RotX	= (props.form.rx or props.form[4]) or nil,
			RotY	= (props.form.ry or props.form[5]) or nil,
			RotZ	= (props.form.rz or props.form[6]) or nil,
			ScaleX	= (props.form.sl or props.form.sx or props.form[7]) or 1,
			ScaleY	= (props.form.sl or props.form.sy or props.form[8] or props.form[7]) or 1,
			ScaleZ	= (props.form.sl or props.form.sz or props.form[9] or props.form[7]) or 1
		}
		--	if present, add attributes list
		if props.attr then
			-- add accompanying attributes
			if props.attr.SCENEGRAPH then
				props.attr.EMBEDGEOMETRY = true
			elseif props.attr.TYPE then
				props.attr.NAVIGATION = false
			end
			T.Attr = { meta = {name='Attributes'} }
			for nm, val in pairs(props.attr) do
				T.Attr[#T.Attr+1] = {
					meta	= {name='Attributes', value='TkSceneNodeAttributeData'},
					Name	= nm,
					Value	= type(val) == 'boolean' and (val and 'TRUE' or 'FALSE') or val
				}
			end
		end
		if props.child then
		--	add children list if found
			local k,_ = next(props.child)
			local cnd = ScNode(props.child)
			T.Child	= k == 1 and cnd or {cnd}
			T.Child.meta = {name='Children'}
		end
		return T
	end
	return ProcessOnenAll(nodes, sceneNode)
end
---------------------------------------------------------------------------------

local assets = {
	{
		name = '_Derelict_',
		node = {
			{
				form	= {-1000, 900, 200, 30, 20, 100, 4},
				model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER.SCENE.MBIN'
			},
			{
				form	= {-1200, 1300, 400, 10, -140, 240, 4},
				model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI.SCENE.MBIN'
			},
			{
				form	= {1200, -1000, 300, 130, 90, 100, 4},
				model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI2.SCENE.MBIN'
			},
			{
				form	= {1000, 1000, 1200, 20, -150, 180, 4},
				model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI3.SCENE.MBIN'
			},
			{
				form	= {-1100, 1300, 400, 210, 110, 170, 4},
				model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI.SCENE.MBIN'
			},
			{
				form	= {-1200, 800, -1100, -20, 30, -150, 4},
				model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI2.SCENE.MBIN'
			},
			{
				form	= {-1100, 1400, -100, 15, 310, 165, 4},
				model	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRASHEDFREIGHTER/CRASHEDFREIGHTER_SPACEPOI3.SCENE.MBIN'
			}
		}
	},
	{
		name = '_Anomal_F_',
		node = {
			{
				form	= {410, 475, 532, -20, 80, 60, 2.4},
				model	= 'MODELS/SPACE/POI/WARRIORSILOS.SCENE.MBIN'
			},
			{
				form	= {-114.5, 195, -80, 16, 16, 16, 1},
				model	= 'MODELS/SPACE/POI/WEIRDOBJECT2.SCENE.MBIN'
			},
			{
				form	= {-114.5, 185, -80, 16, 16, 16, 1.4},
				model	= 'MODELS/SPACE/POI/SPACEGYROSCOPE.SCENE.MBIN'
			},
			{
				form	= {810, 745, 832, -20, 80, 60, 1},
				model	= 'MODELS/SPACE/POI/ASTEROID_BEACON.SCENE.MBIN'
			},
			{
				form	= {510, 585, 500, 330, 25, 55, 1},
				model	= 'MODELS/SPACE/POI/GATE_POI.SCENE.MBIN'
			},
			{
				form	= {32, 120, -380, 16, 16, 16, 1.4},
				model	= 'MODELS/SPACE/POI/MEMORYLIFEBOAT.SCENE.MBIN'
			}
		}
	},
	{
		name = '_Anomal_A_',
		node = {
			{
				form	= {410, 370, -800, 120, 210, 190, 0.6},
				model	= 'MODELS/SPACE/POI/PILLARPOI.SCENE.MBIN'
			},
			{
				form	= {460, 405, -750, 120, 210, 190, 2},
				model	= 'MODELS/SPACE/POI/SPACECLOCK.SCENE.MBIN'
			},
			{
				form	= {360, 375, -740, 120, 210, 190, 1},
				model	= 'MODELS/SPACE/POI/8PRONGEDSPINNER.SCENE.MBIN'
			},
			{
				form	= {-360, 286, -740, 120, 210, 190, 2},
				model	= 'MODELS/SPACE/POI/ATLASBEACON.SCENE.MBIN'
			}
		}
	},
	{
		-- VFX (not a proc scene part - but it works)
		name = '_SpaceStorm_FX_',
		node = {
			{
				form	= {0, 0, 0, 0, 0, 0, 4},
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

-- build proc-gen scene nodes
local scn_ct = {}
for _,group in ipairs(assets) do
	if group.node then
		for i, scene in ipairs(group.node) do
			scn_ct[#scn_ct+1] = {
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

-- build descriptor
local dsc_ct = {
	meta = {template='cTkModelDescriptorList'},
	List = {meta = {name='List'}}
}
for _,group in ipairs(assets) do
	local tmp = {
		meta = {name='List', value='TkResourceDescriptorList'},
		TypeId		= group.name:upper(),
		Descriptors	= {meta = {name='Descriptors'}}
	}
	for i, scene in ipairs(group.node or group.desc) do
		tmp.Descriptors[#tmp.Descriptors+1] = {
			meta = {name='Descriptors', value='TkResourceDescriptorData'},
			Id		= (group.name..string.char(64 + i)):upper(),
			Name	= group.name..string.char(64 + i),
			ReferencePaths	= type(scene) == 'table' and {
				meta = {name='ReferencePaths'},
				ReferencePaths = scene.model
			} or nil
		}
	end
	dsc_ct.List[#dsc_ct.List+1] = tmp
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'MOD.lMonk.Derelict Procedural Additions',
	LUA_AUTHOR			= 'lMonk',
	NMS_VERSION			= '6.16',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/SPACE/POI/DUNGEON.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefDungeonEntrance'},
				ADD_OPTION			= 'AddAfterSection',
				ADD 				= ToMxml(ScNode(scn_ct))
			}
		}
	}
}}},
	ADD_FILES	= {
		{
			FILE_DESTINATION = 'MODELS/SPACE/POI/DUNGEON.DESCRIPTOR.MXML',
			FILE_CONTENT	 = ToMxmlFile(dsc_ct)
		},
		{
			FILE_DESTINATION = 'MODELS/COMMON/SHARED/ENTITIES/SPIN001.ENTITY.MXML',
			FILE_CONTENT	 = ToMxmlFile({
				meta = {template='cTkAttachmentData'},
				Components = {
					meta = {name='Components'},
					{
						meta = {name='Components', value='TkRotationComponentData'},
						TkRotationComponentData = {
							meta = {name='TkRotationComponentData'},
							{Speed = 0.01},
							{
								meta = {name='Axis'},
								{X = 1},
								{Y = 1},
								{Z = 1}
							},
							{AlwaysUpdate = true},
							{SyncGroup = -1}
						}
					}
				},
				LodDistances = {
					meta = {name='LodDistances'},
					0,
					50,
					80,
					150,
					500
				}
			})
		}
	}
}
