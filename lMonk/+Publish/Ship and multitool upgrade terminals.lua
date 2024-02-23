--------------------------------------------------------------------------------
local mod_desc = [[
  Access the upgrade menus at your base/freighter.
  The multitool upgrade and salvage menus from the weapons specialist terminal.
  The ship salavage and upgrade menu from the old monitor station.
]]------------------------------------------------------------------------------
local mod_version = '2.0'

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

--	Generate an EXML-tagged text from a lua table representation of exml class
--	@param class: a lua2exml formatted table
function ToExml(class)
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

--	Adds the xml header and data template
--	Uses the contained template META if found (instead of the received variable)
--	@param data: a lua2exml formatted table
--	@param template: an nms file template string
function FileWrapping(data, template)
	local wrapper = [[<?xml version="1.0" encoding="utf-8"?><Data template="%s">%s</Data>]]
	if type(data) == 'string' then
		return string.format(wrapper, template, data)
	end
	-- remove the extra table added by ToLua
	if data.template then data = data.template end
	-- table loaded from file
	if data.META[1] == 'template' then
		-- strip mock template
		txt_data = ToExml(data):sub(#data.META[2] + 36, -12)
		return string.format(wrapper, data.META[2], txt_data)
	else
		return string.format(wrapper, template, ToExml(data))
	end
end

--	returns a jenkins hash from a string (by lyravega)
function JenkinsHash(input)
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

--	T (optional) is a table for scene class properties >> attributes, transform and children
function ScNode(name, stype, T)
	T = T or {}
	T.META 		= {'value', 'TkSceneNodeData.xml'}
	T.Name 		= name
	T.NameHash	= JenkinsHash(name)
	T.Type 		= stype
	return T
end

--	accepts either an array of 9 values or keyed values (but NOT a combination of the two)
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

function ScChildren(t)
	t.META = {'name', 'Children'}
	return t
end

local build_parts = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '_MOD.lMonk.ship and multitool upgrade terminals.'..mod_version..'.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{--	|ship upgrade menu|
		MBIN_FILE_SOURCE	= build_parts..'DECORATION/NEXUSORBPILLAR.SCENE.MBIN',
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
					{'Value',	build_parts..'TECH/OBJECTSPAWNER/ENTITIES/SHIPSALVAGETERMINAL.ENTITY.MBIN'}
				}
			}
		}
	},
	{--	|multitool upgrade menu|
		MBIN_FILE_SOURCE	= build_parts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAPON5SPIN.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Components',
				ADD					= ToExml({
					{
						META = {'value', 'GcInteractionComponentData.xml'},
						{
							META = {'InteractionType', 'GcInteractionType.xml'},
							InteractionType	= 'WeaponUpgrade'
						},
						InteractionAction	= 'PressButton',
						AttractDistanceSq	= 9,
						InteractAngle		= 360,
						InteractDistance	= 3
					},
					-- component stub
					{value = 'TkPhysicsComponentData.xml'}
				})
			}
		}
	},
	{--	|base multitool salvage|
		MBIN_FILE_SOURCE	= build_parts..'NPCROOMS/NPC_WEAPONS.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Workstation'},
				PRECEDING_KEY_WORDS = 'Children',
				ADD					= ToExml( ScNode(
					'WeapSalvage', 'LOCATOR', {
						ScTransform({tx=-1, ty=1.1, tz=1.6}),
						ScAttributes({
							{'ATTACHMENT', build_parts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAP_SALVAGE.ENTITY.MBIN'}
						}),
						ScChildren({
							ScNode(
								'WeapSalvageCol', 'COLLISION', {
									ScTransform(),
									ScAttributes({
										{'TYPE',	'Sphere'},
										{'RADIUS',	0.2}
									})
								}
							)
						})
					}
				))
			},
		}
	},
	{--	|freighter multitool salvage|
		MBIN_FILE_SOURCE	= build_parts..'FREIGHTERBASE/ROOMS/NPCWEAROOM/PARTS/FLOOR0.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Workstation'},
				ADD_OPTION			= 'AddAfterSection',
				ADD					= ToExml( ScNode(
					'WeapSalvage', 'LOCATOR', {
						ScTransform({ty=0.5, tz=-1.5}),
						ScAttributes({
							{'ATTACHMENT', build_parts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAP_SALVAGE.ENTITY.MBIN'}
						}),
						ScChildren({
							ScNode(
								'WeapSalvageCol', 'COLLISION', {
									ScTransform(),
									ScAttributes({
										{'TYPE',	'Sphere'},
										{'RADIUS',	0.2}
									})
								}
							)
						})
					}
				))
			},
		}
	}
}}},
	ADD_FILES	= {
		{
			FILE_DESTINATION = build_parts..'NPCROOMS/NPC_WEAPONS/ENTITIES/WEAP_SALVAGE.ENTITY.EXML',
			FILE_CONTENT	 = FileWrapping({
				META = {'template','TkAttachmentData'},
				Components = {
					META = {'name','Components'},
					{
						META = {'value','GcSimpleInteractionComponentData.xml'},
						Name = 'UI_SALVAGE_MT_TITLE'
					},
					{
						META = {'value','GcInteractionComponentData.xml'},
						InteractionAction	= 'PressButton',
						InteractionType		= {
							META = {'InteractionType','GcInteractionType.xml'},
							InteractionType	= 'StoryUtility'
						},
						AttractDistanceSq	= 9,
						InteractAngle		= 360,
						InteractDistance	= 5,
						PuzzleMissionOverrideTable = {
							META = {'name','PuzzleMissionOverrideTable'},
							{
								META = {'value','GcAlienPuzzleMissionOverride.xml'},
								Mission		= 'EXPLORE_LOG',
								Puzzle		= 'WEAPON_SALVAGE'
							}
						}
					},
					{value = 'TkPhysicsComponentData.xml'}
				}
			})
		}
	}
}