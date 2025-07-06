--------------------------------------------------------------------------------
local mod_desc = [[
  Access the upgrade menus at your base/freighter.
  The multitool upgrade and salvage menus from the weapons specialist terminal.
  The ship salavage and upgrade menu from the old monitor station.
]]------------------------------------------------------------------------------
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
	local wrapper = '<Data template="%s">%s</Data>'
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
function ScNode(nodes)
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
			meta	= {'value', 'TkSceneNodeData.xml'},
			Name 				= props.name,
			NameHash			= jenkinsHash(props.name),
			Type				= props.ntype,
			PlatformExclusion	= props.pxlud or nil
		}
		--	add TkTransformData class
		props.form = props.form or {}
		T.Form = {
			meta	= {'Transform', 'TkTransformData.xml'},
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
					meta	= {'value', 'TkSceneNodeAttributeData.xml'},
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
	-----------------------------------------------------------------
	local k,_ = next(nodes)
	if k == 1 then
	-- k=1 means the first of a list of unrelated, non-nested, nodes
		local T = {}
		for _,nd in ipairs(nodes) do
				T[#T+1] = sceneNode(nd)
		end
		return T
	end
	return sceneNode(nodes)
end

-- interaction button attachment; full mbin or component only
local function InteractEntity(action, full_entity)
	local interact = {
		meta = {'Components','GcInteractionComponentData'},
		{
			meta = {'value','GcInteractionComponentData'},
			InteractionAction = 'PressButton',
			InteractionType = {
				meta = {'InteractionType','GcInteractionType'},
				InteractionType = action
			},
			AttractDistanceSq	= 9,
			InteractAngle		= 360,
			InteractDistance	= 5
		}
	}
	if full_entity then
		return FileWrapping({
			meta = {'template','cTkAttachmentData'},
			Components = {
				meta = {'name','Components'},
				Interaction	= interact,	
				Physics		= {
					meta = {'Components','TkPhysicsComponentData'},
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
	NMS_VERSION			= '5.55',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|ship upgrade menu|
		MBIN_FILE_SOURCE	= buildparts..'DECORATION/NEXUSORBPILLAR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
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
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Components',
				ADD					= ToExml({
					InteractEntity('WeaponUpgrade'),
					Physics = {
						meta = {'Components','TkPhysicsComponentData'},
						{name='TkPhysicsComponentData'}
					}
				})
			}
		}
	},
	{--	|multitool salvage base|
		MBIN_FILE_SOURCE	= buildparts..'NPCROOMS/NPC_WEAPONS.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Workstation'},
				PRECEDING_KEY_WORDS = 'Children',
				ADD					= ToExml(
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
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Workstation'},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= ToExml(
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