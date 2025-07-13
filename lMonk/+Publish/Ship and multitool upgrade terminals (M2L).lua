--------------------------------------------------------------------------------
local mod_desc = [[
  Access the upgrade menus at your base/freighter.
  The multitool upgrade and salvage menus from the weapons specialist terminal.
  The ship salavage and upgrade menu from the old monitor station.
]]------------------------------------------------------------------------------
---	MXML 2 LUA ... by lMonk ... version: 1.0.01
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
			T.Attr = { meta = {name='Attributes'} }
			for nm, val in pairs(props.attr) do
				T.Attr[#T.Attr+1] = {
					meta	= {name='Attributes', value='TkSceneNodeAttributeData'},
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
			T.Child.meta = {name='Children'}
		end
		return T
	end
	return ProcessOnenAll(nodes, sceneNode)
end
---------------------------------------------------------------------------------

-- interaction button attachment; full mbin or component only
local function InteractEntity(action, full_entity)
	local interact = {
		meta = {name='Components', value='GcInteractionComponentData'},
		{
			meta = {name='value', value='GcInteractionComponentData'},
			InteractionAction = 'PressButton',
			InteractionType = {
				meta = {name='InteractionType', value='GcInteractionType'},
				InteractionType = action
			},
			AttractDistanceSq	= 9,
			InteractAngle		= 360,
			InteractDistance	= 5
		}
	}
	if full_entity then
		return ToMxmlFile({
			meta = {template='cTkAttachmentData'},
			Components = {
				meta = {name='Components'},
				Interaction	= interact,
				Physics		= {
					meta = {name='Components', value='TkPhysicsComponentData'},
					{name='TkPhysicsComponentData'}
				}
			}
		})
	else
		return interact
	end
end

local buildparts = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.ship and multitool upgrade terminals.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.73',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|ship upgrade menu|
		MBIN_FILE_SOURCE	= buildparts..'DECORATION/NEXUSORBPILLAR.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'DATA'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		0.7}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'ATTACHMENT'},
				VALUE_CHANGE_TABLE 	= {
					{'Value',	buildparts..'TECH/OBJECTSPAWNER/ENTITIES/SHIPSALVAGETERMINAL.ENTITY.MBIN'}
				}
			}
		}
	},
	{--	|multitool upgrade menu|
		MBIN_FILE_SOURCE	= buildparts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAPON5SPIN.ENTITY.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Components',
				ADD					= ToMxml({
					InteractEntity('WeaponUpgrade'),
					Physics = {
						meta = {name='Components', value='TkPhysicsComponentData'},
						{name='TkPhysicsComponentData'}
					}
				})
			}
		}
	},
	{--	|multitool salvage base|
		MBIN_FILE_SOURCE	= buildparts..'NPCROOMS/NPC_WEAPONS.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Workstation'},
				PRECEDING_KEY_WORDS = 'Children',
				ADD					= ToMxml(
					ScNode({
						name	= 'WeapSalvage',
						ntype	= 'LOCATOR',
						form	= {tx=-1, ty=1.1, tz=1.6},
						attr	= {ATTACHMENT = buildparts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAP_SALVAGE.ENTITY.MBIN'},
						child	= {
							name	= 'WeapSalvageCol',
							ntype	= 'COLLISION',
							attr	= {
								TYPE	= 'Sphere',
								RADIUS	= 0.2
							}
						}
					})
				)
			}
		}
	},
	{--	|multitool salvage freighter|
		MBIN_FILE_SOURCE	= buildparts..'FREIGHTERBASE/ROOMS/NPCWEAROOM/PARTS/FLOOR0.SCENE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Workstation'},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= ToMxml(
					ScNode({
						name	= 'WeapSalvage',
						ntype	= 'LOCATOR',
						form	= {ty=0.5, tz=-1.5},
						attr	= {ATTACHMENT = buildparts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAP_SALVAGE.ENTITY.MBIN'},
						child	= {
							name	= 'WeapSalvageCol',
							ntype	= 'COLLISION',
							attr	= {
								TYPE	= 'Sphere',
								RADIUS	= 0.2
							}
						}
					})
				)
			},
		}
	}
}}},
	ADD_FILES	= {
		{
			FILE_DESTINATION = buildparts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAP_SALVAGE.ENTITY.MXML',
			FILE_CONTENT	 = InteractEntity('WeaponSalvage', true)
		}
	}
}