--------------------------------------------------------------------------------
mod_desc = [[
  Freighter hangar interior changes and additions.
  - Gantry cranes moved to the back to make them less obtrusive.
  - Restored missing floor sections at the back (with some strategically-placed
   clutter to hide the open floor).
  - Loitering NPCs repositioned.
  - Starship outfitting consoles added near the teleport entrances.

  * The ADD_FILES section can be safely disabled/ignored if you prefer
   to add the texture files in a different method.
]]------------------------------------------------------------------------------

--	Generate an EXML-tagged text from a lua table representation of exml class
--	@param class: a lua2exml formatted table
function ToExml(class)
	local function bool(b)
		return (type(b) == 'boolean') and ((b == true) and 'True' or 'False') or b
	end
	local function len2(t)
		i=0; for _ in pairs(t) do i=i+1 end; return i
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

--	Build a TkSceneNodeData class
--	@param name: scene node name
--	@param stype: scene node type
--	@param T: (optional) a table for scene class properties >> attributes, transform and children
function ScNode(name, stype, T)
	--	returns a jenkins hash from a string (by lyravega)
	local function JenkinsHash(input)
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
	T = T or {}
	T.META 		= {'value', 'TkSceneNodeData.xml'}
	T.Name 		= name
	T.NameHash	= JenkinsHash(name)
	T.Type 		= stype
	return T
end

--	Builds a TkTransformData class
--	@param T: a list of 9 values in order or keyed values (but NOT a combination of the two)
function ScTransform(T)
	T = T or {}
	return {
		META	= {'Transform', 'TkTransformData.xml'},
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
--	@param T: a list of {name, value} pairs
function ScAttributes(T)
	local atr = {META = {'name', 'Attributes'}}
	for _,at in ipairs(T) do
		atr[#atr+1] = {
			META	= {'value', 'TkSceneNodeAttributeData.xml'},
			Name	= at[1],
			Value	= at[2]
		}
	end
	return atr
end

--	Returns a scene node's children list
--	@param T: a list of scene classes
function ScChildren(T)
	T.META = {'name', 'Children'}
	return T
end

function HangarChanges()
	local T = {}
	for _,node in ipairs({
		{k='NPC_01',			tx=-9.507,	ty=-3.355,	tz=-28.34},
		{k='NPC_02',			tx=-50,		ty=-7.3,	tz=66.5,	ry=120},
		{k='NPC_03',			tx=-8.337,	ty=-3.355,	tz=-28.03},
		{k='NPC_04',			tx=39.3,	ty=-7.75,	tz=65.4,	ry=135},
		{k='NPC_06',			tx=-21.92,	ty=-4.2,	tz=5.5},
		{k='NPC_07',			tx=-57.8,	ty=8.1,		tz=57.14,	ry=270},
		{k='RefHangarCrane2',	tx=41.88,				tz=61.2},
		{k='RefHangarCrane',	tx=-3.43,				tz=59.5},
		{k='RefHangarCrane1',	tx=-41.96,				tz=60.9},
		{k='Container',			tx=-53.5,	ty=-7.4,	tz=67.25,	ry=7,		sx=1.2,	sy=1.14,	sz=1.1},
		{k='RefPallet54',		tx=-51.95,	ty=-7.48,	tz=66.7,				sx=2,	sy=1,		sz=2.6},
		{k='RefPallet30',		tx=7.79,	ty=-5.72,	tz=66.7,	rz=-58.5,	sx=2.6,	sy=2.4,		sz=2.8},
		{k='RefLargeCrate23',	tx=6.8,		ty=-7.4,	tz=65.5,	ry=180,		sx=1.8,	sy=1.8,		sz=1.8},
		{k='RefLargeCrate26',	tx=6.8,		ty=-7.4,	tz=67.7,				sx=1.8,	sy=1.8,		sz=1.8},
		{k='RefLargeCrate96',	tx=5.25,	ty=-7.33,	tz=68.25,	ry=3},
		{k='RefLargeCrate103',	tx=5.25,	ty=-7.33,	tz=67.05,	ry=87},
		{k='RefFuelTank2',		tx=35.53,	ty=-7.34,	tz=72.55,	ry=180},
	}) do
		T[#T+1] = {
			SPECIAL_KEY_WORDS	= {'Name', node.k},
			VALUE_CHANGE_TABLE	= {
				{'TransX',	node.tx or 'IGNORE'},
				{'TransY',	node.ty or 'IGNORE'},
				{'TransZ',	node.tz or 'IGNORE'},
				{'RotX',	node.rx or 'IGNORE'},
				{'RotY',	node.ry or 'IGNORE'},
				{'RotZ',	node.rz or 'IGNORE'},
				{'ScaleX',	node.sx or 'IGNORE'},
				{'ScaleY',	node.sy or 'IGNORE'},
				{'ScaleZ',	node.sz or 'IGNORE'}
			}
		}
	end
	T[#T+1] = {
		PRECEDING_KEY_WORDS = 'Children',
		ADD					= ToExml({
			[1] = ScNode('1RefCrossingB1', 'REFERENCE', {
				ScTransform({tx=-45.35, ty=-7.341775, tz=66.73, ry=180}),
				ScAttributes({
					{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN'}
				})
			}),
			[2] = ScNode('1RefCrossingB2', 'REFERENCE', {
				ScTransform({tx=0, ty=-7.341775, tz=66.73}),
				ScAttributes({
					{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN'}
				})
			}),
			[3] = ScNode('1RefCrossingB3', 'REFERENCE', {
				ScTransform({tx=45.35, ty=-7.341775, tz=66.73, ry=180}),
				ScAttributes({
					{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONB.SCENE.MBIN'}
				})
			}),
			[4] = ScNode('1RefMonitorShip1', 'REFERENCE', {
				ScTransform({tx=20.2, ty=-4, tz=16.2, rx=0, ry=-42, rz=180, sx=0.55, sy=0.55, sz=0.55}),
				ScAttributes({
					{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/ROOFMONITOR/ROOFMONITOR.SCENE.MBIN'}
				})
			}),
			[5] = ScNode('1LocMonitorShip1', 'LOCATOR', {
				ScTransform({tx=20.2, ty=-2.8, tz=16.2}),
				ScAttributes({
					{'ATTACHMENT', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/ENTITIES/SHIP_SALVAGE.ENTITY.MBIN'}
				}),
				ScChildren({
					ScNode('ColShipSalvage1', 'COLLISION', {
						ScTransform(),
						ScAttributes({
							{'TYPE',	'Sphere'},
							{'RADIUS',	0.2}
						})
					})
				})
			}),
			[6] = ScNode('1RefMonitorShip2', 'REFERENCE', {
				ScTransform({tx=-20.2, ty=-4, tz=16.2, rx=0, ry=42, rz=180, sx=0.55, sy=0.55, sz=0.55}),
				ScAttributes({
					{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/ROOFMONITOR/ROOFMONITOR.SCENE.MBIN'}
				})
			}),
			[7] = ScNode('1LocMonitorShip2', 'LOCATOR', {
				ScTransform({tx=-20.2, ty=-2.8, tz=16.2}),
				ScAttributes({
					{'ATTACHMENT', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/ENTITIES/SHIP_SALVAGE.ENTITY.MBIN'}
				}),
				ScChildren({
					ScNode('ColShipSalvage2', 'COLLISION', {
						ScTransform(),
						ScAttributes({
							{'TYPE',	'Sphere'},
							{'RADIUS',	0.2}
						})
					})
				})
			}),
			[8] = ScNode('1RefScreenContainer', 'REFERENCE', {
				ScTransform({tx=-51.58, ty=-5.4, tz=67.05, ry=-83, rz=180}),
				ScAttributes({
					{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/WALLMONITORS/WALLMONITORA.SCENE.MBIN'}
				})
			}),
			[9] = ScNode('1RefCrateMilk', 'REFERENCE', {
				ScTransform({tx=5.15, ty=-7.33, tz=65.54, ry=86, sx=2.7, sy=1.8, sz=2.7}),
				ScAttributes({
					{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/MILKCRATE.SCENE.MBIN'}
				})
			})
		})
	}
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '_MOD.lMonk.Freighter Hangar Changes.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.45',
	MOD_DESCRIPTION			= mod_desc,
	AMUMSS_SUPPRESS_MSG		= 'MULTIPLE_STATEMENTS',
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= HangarChanges()
	},
	{--	floor section 1
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONA.SCENE.MBIN',
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONB.SCENE.MBIN'
			}
		}
	},
	{--	floor section 1 - remove parts
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONB.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'RefBarrier'},
					{'Name', 'RefBarrier1'},
					{'Name', 'RefBarrier2'}
				},
				REMOVE				= 'Section'
			}
		}
	},
	{--	floor section 2
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONA.SCENE.MBIN',
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{--	floor section 2 - remove parts
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'RefBarrier'},
					{'Name', 'RefBarrier1'},
					{'Name', 'RefBarrier2'},
					{'Name', 'SUB1HangarFloorSectionA'},
					{'Name', 'SUB2HangarFloorSectionA'},
					{'Name', 'SUB3HangarFloorSectionA'}
				},
				REMOVE				= 'Section'
			}
		}
	}	
}}},
	ADD_FILES	= {
		{
			EXTERNAL_FILE_SOURCE = 'D:/MODZ_stuff/NoMansSky/Sources/_Textures/Building/PirateStation/*.DDS',
			FILE_DESTINATION	 = 'TEXTURES/SPACE/SPACESTATION/PIRATES/*.DDS',
		},
		{--	hangar ship salvage terminal entity
			FILE_DESTINATION = 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/ENTITIES/SHIP_SALVAGE.ENTITY.EXML',
			FILE_CONTENT	 = FileWrapping({
				META = {'template','TkAttachmentData'},
				Components = {
					META = {'name','Components'},
					{
						META = {'value','GcSimpleInteractionComponentData.xml'},
						Name = 'UI_SALVAGE_TITLE'
					},
					{
						META = {'value','GcInteractionComponentData.xml'},
						InteractionAction	= 'PressButton',
						InteractionType		= {
							META = {'InteractionType','GcInteractionType.xml'},
							InteractionType	= 'StoryUtility'
						},
						AttractDistanceSq	= 3,
						InteractAngle		= 360,
						InteractDistance	= 3,
						PuzzleMissionOverrideTable = {
							META = {'name','PuzzleMissionOverrideTable'},
							{
								META = {'value','GcAlienPuzzleMissionOverride.xml'},
								Mission		= 'EXPLORE_LOG', -- must be a valid mission id
								Puzzle		= 'SHIP_SALVAGE'
							}
						}
					},
					{value = 'TkPhysicsComponentData.xml'}
				}
			})
		}
	}
}
