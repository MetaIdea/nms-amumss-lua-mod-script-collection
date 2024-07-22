--------------------------------------------------------------------------------
local mod_desc = [[
  Access the upgrade menus at your base/freighter.
  The multitool upgrade and salvage menus from the weapons specialist terminal.
  The ship salavage and upgrade menu from the old monitor station.
]]------------------------------------------------------------------------------
local mod_version = '1.83'

--	Generate an EXML-tagged text from a lua table representation of exml class
--	@param class: a lua2exml formatted table
function ToExml(class)
	--	replace a boolean with its text equivalent (ignore otherwise)
	--	@param b: any value
	function bool(b)
		return (type(b) == 'boolean') and ((b == true) and 'True' or 'False') or b
	end

	--	get the count of ALL objects in a table (non-recursive)
	--	@param t: any table
	function len2(t)
		i=0; for _ in pairs(t) do i=i+1 end; return i
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
					local att, val = cls['meta'][1], cls['meta'][2]
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
	-- concatenate unrelated exml sections, instead of nested inside each other
	elseif type(class[1]) == 'table' and klen > 1 then
		local T = {}
		for _, tb in pairs(class) do
			T[#T+1] = exml_r((tb.meta and klen > 1) and {tb} or tb)
		end
		return table.concat(T)
	end
end

--	Adds the xml header and data template
--	Uses the contained template meta if found (instead of the received variable)
--	@param data: a lua2exml formatted table
--	@param template: an nms file template string
function FileWrapping(data, template)
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

--	Build a TkSceneNodeData class
--	@param props: a keyed table for scene class properties.
--	{
--	  name	= scene node name (NameHash is calculated automatically)
--	  stype	= scene node type
--	  form	= [optional] Transform data. a list of 9 ordered values or keyed values,
--			  but NOT a combination of the two!
--	  attr	= [optional] Attributes table of {name, value} pairs
--	  child	= [optional] Children table for ScNode tables
--	}
function ScNode(props)
	--	Builds a TkTransformData class
	local function scTransform(T)
		T = T or {}
		return {
			meta	= {'Transform', 'TkTransformData.xml'},
			TransX	= (T.tx or T[1]) or 0,
			TransY	= (T.ty or T[2]) or 0,
			TransZ	= (T.tz or T[3]) or 0,
			RotX	= (T.rx or T[4]) or 0,
			RotY	= (T.ry or T[5]) or 0,
			RotZ	= (T.rz or T[6]) or 0,
			ScaleX	= (T.sx or T[7]) or 1,
			ScaleY	= (T.sy or T[8]) or 1,
			ScaleZ	= (T.sz or T[9]) or 1
		}
	end
	--	Builds a scene node attributes array
	local function scAttributes(T)
		local atr = {meta = {'name', 'Attributes'}}
		for _,at in ipairs(T) do
			atr[#atr+1] = {
				meta	= {'value', 'TkSceneNodeAttributeData.xml'},
				Name	= at[1],
				Value	= at[2]
			}
		end
		return atr
	end
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
	-----------------------------------------------------------------
	local T	= {
		meta	= {'value', 'TkSceneNodeData.xml'},
		Name 		= props.name,
		NameHash	= jenkinsHash(props.name),
		Type		= props.stype
	}
	T[#T+1]		= scTransform(props.form or {})
	if props.attr then
		T[#T+1] = scAttributes(props.attr)
	end
	if props.child then
		local tc = { meta = {'name', 'Children'} }
		for _,pc in ipairs(props.child) do tc[#tc+1] = pc end
		T[#T+1]	= tc
	end
	return T
end

-- interaction button attachment; full mbin or component only
local function InteractEntity(action, full_entity)
	local interact = {
			meta = {'value','LinkableNMSTemplate.xml'},
			Template = {
				meta = {'Template','GcInteractionComponentData.xml'},
				InteractionAction	= 'PressButton',
				InteractionType		= {
					meta = {'InteractionType','GcInteractionType.xml'},
					InteractionType	= action
				},
				AttractDistanceSq	= 9,
				InteractAngle		= 360,
				InteractDistance	= 5
			},
			Linked	= ''
	}
	if full_entity then
		return FileWrapping({
			meta = {'template','TkAttachmentData'},
			Components = {
				meta = {'name','Components'},
				Interaction	= interact,
				{
					meta = {'value','LinkableNMSTemplate.xml'},
					Template = {
						meta = {'Template','TkPhysicsComponentData.xml'}
					},
					Linked	= ''
				}
			}
		})
	else
		return interact
	end
end

local buildparts = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.ship and multitool upgrade terminals.'..mod_version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.00.1',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|ship upgrade menu|
		MBIN_FILE_SOURCE	= buildparts..'DECORATION/NEXUSORBPILLAR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'DATA'},
				INTEGER_TO_FLOAT	= 'Force',
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
					{
						meta = {'value','LinkableNMSTemplate.xml'},
						Template = {
							meta = {'Template','TkPhysicsComponentData.xml'}
						},
						Linked	= ''
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
						stype	= 'LOCATOR',
						form	= {tx=-1, ty=1.1, tz=1.6},
						attr	= {
							{'ATTACHMENT', buildparts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAP_SALVAGE.ENTITY.MBIN'}
						},
						child	= {
							ScNode({
								name	= 'WeapSalvageCol',
								stype	= 'COLLISION',
								attr	= {
									{'TYPE',	'Sphere'},
									{'RADIUS',	0.2}
								}
							})
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
						stype	= 'LOCATOR',
						form	= {ty=0.5, tz=-1.5},
						attr	= {
							{'ATTACHMENT', buildparts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAP_SALVAGE.ENTITY.MBIN'}
						},
						child	= {
							ScNode({
								name	= 'WeapSalvageCol',
								stype	= 'COLLISION',
								attr	= {
									{'TYPE',	'Sphere'},
									{'RADIUS',	0.2}
								}
							})
						}
					})
				)
			},
		}
	}
}}},
	ADD_FILES	= {
		{
			FILE_DESTINATION = buildparts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAP_SALVAGE.ENTITY.EXML',
			FILE_CONTENT	 = InteractEntity('WeaponSalvage', true)
		}
	}
}