--------------------------------------------------------------------------------
local mod_desc = [[
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
		local txt_data = ToExml(data):sub(#data.META[2] + 36, -12)
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

local ECT = {}
for _,node in ipairs({
	{k='NPC_01',			tx=-9.507,	ty=-3.35,	tz=-28.34},
	{k='NPC_02',			tx=-56,		ty=-7.34,	tz=62.5,	ry=-150},
	{k='NPC_03',			tx=-8.337,	ty=-3.35,	tz=-28.03},
	{k='NPC_04',			tx=38.4,	ty=-7.34,	tz=69.35,	ry=35},
	{k='NPC_06',			tx=-21.92,	ty=-4.18,	tz=5.5},
	{k='NPC_07',			tx=-57.8,	ty=8.12,	tz=57.14,	ry=270},
	{k='RefHangarCrane2',	tx=41.88,				tz=61.2},
	{k='RefHangarCrane',	tx=-3.43,				tz=59.5},
	{k='RefHangarCrane1',	tx=-41.96,				tz=60.9},
	{k='RefPallet54',		tx=-52.35,	ty=-7.48,	tz=66.7,				sx=2.6,	sy=1,	sz=2.6},
	{k='MonitorDesk',		tx=-55.5,	ty=-7.35,	tz=63.2,	ry=305},
	{k='RefFuelTank2',		tx=35.53,	ty=-7.34,	tz=72.55,	ry=180},
	{k='RefPallet30',		tx=7.79,	ty=-5.72,	tz=66.7,	rz=-58.5,	sx=2.6,	sy=2.4,	sz=2.8},
	{k='MidCeiling201',								tz=33.2,								sz=1.25},
	{k='RefLargeCrate118',	tx=-22.6,	ty=-4.31,	tz=17.2,	rx=180,		sx=1,	sy=5,	sz=5.5},
	{k='RefLargeCrate13',	tx=22.6,	ty=-4.32,	tz=17.2,	rx=180,		sx=5.5,	sy=5,	sz=1},
}) do
	ECT[#ECT+1] = {
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
ECT[#ECT+1] = {
	PRECEDING_KEY_WORDS = 'Children',
	ADD					= ToExml({
		ScNode('1RefCrossingB1',	'REFERENCE', {
			ScTransform({tx=-45.35, ty=-7.341775, tz=66.73, ry=180}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrossingB2',	'REFERENCE', {
			ScTransform({tx=0, ty=-7.341775, tz=66.73}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrossingB3',	'REFERENCE', {
			ScTransform({tx=45.35, ty=-7.341775, tz=66.73, ry=180}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONB.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateMilk01',	'REFERENCE', {
			ScTransform({tx=5.1, ty=-7.33, tz=65.54, ry=86, sx=2.7, sy=1.8, sz=2.7}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/MILKCRATE.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateNexus1',	'REFERENCE', {
			ScTransform({tx=6.8, ty=-7.4, tz=65.5, ry=90, sx=1.4, sy=1.4, sz=1.4}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/SPACE/NEXUS/PARTS/PROPS/CRATE.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateNexus2',	'REFERENCE', {
			ScTransform({tx=6.8, ty=-7.4, tz=67.8, sx=1.4, sy=1.4, sz=1.4}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/SPACE/NEXUS/PARTS/PROPS/CRATE.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateNexus3',	'REFERENCE', {
			ScTransform({tx=5.05, ty=-7.33, tz=67.15, ry=3, sx=0.8, sy=0.8, sz=0.8}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/SPACE/NEXUS/PARTS/PROPS/CRATE.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateNexus4',	'REFERENCE', {
			ScTransform({tx=5.05, ty=-7.33, tz=68.5, ry=87, sx=0.8, sy=0.8, sz=0.8}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/SPACE/NEXUS/PARTS/PROPS/CRATE.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateNexus5',	'REFERENCE', {
			ScTransform({tx=-53.8, ty=-7.33, tz=64.2, ry=13, sx=0.9, sy=0.9, sz=0.9}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/SPACE/NEXUS/PARTS/PROPS/CRATE.SCENE.MBIN'}
			})
		}),
		ScNode('1RefScreenSilo',	'REFERENCE', {
			ScTransform({tx=-55.32, ty=-5.82, tz=63.46, ry=35.1, sx=0.36, sy=0.6, sz=0.4}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/WALLMONITORS/WALLMONITORA.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCoveredSilos',	'REFERENCE', {
			ScTransform({tx=-54, ty=-7.33, tz=66.8, ry=-90, sx=0.75, sy=0.75, sz=0.75}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/COVEREDSILOS.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateMould01',	'REFERENCE', {
			ScTransform({tx=-52.8, ty=-3.65, tz=65.65, rx=10, ry=-85, rz=180, sx=1.4}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/CRATE1.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateMould02',	'REFERENCE', {
			ScTransform({tx=-52.7, ty=-3.6, tz=67.7, rx=-10, ry=85, rz=175, sx=1.4}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/CRATE1.SCENE.MBIN'}
			})
		}),
		ScNode('1RefBuilderHand',	'REFERENCE', {
			ScTransform({tx=-39.85, ty=-7.64, tz=-22.3, rx=-2, ry=-65, rz=180, sx=1.4, sy=1.4, sz=1.4}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/COMMON/ROBOTS/ROBOTHAND.SCENE.MBIN'}
			})
		}),
		ScNode('1RefBuilderHead',	'REFERENCE', {
			ScTransform({tx=-39.8, ty=-7.64, tz=-21.6, rx=50, ry=160, rz=0, sx=1.1, sy=1.1, sz=1.1}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BUILDERHEAD.SCENE.MBIN'}
			})
		}),
		ScNode('1RefGeometPlant01',	'REFERENCE', {
			ScTransform({tx=37, ty=-7.72, tz=68.3, ry=-20, rz=20, sx=0.24, sy=0.24, sz=0.24}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEO_NONE.SCENE.MBIN'}
			})
		}),
		ScNode('1RefMetalStruct01',	'REFERENCE', {
			ScTransform({tx=11.8, ty=9.5, tz=22.7, sx=0.3, sy=0.3, sz=0.3}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT.SCENE.MBIN'}
			})
		}),
		ScNode('1RefWirecell01',	'REFERENCE', {
			ScTransform({tx=-67, ty=14, tz=-18.2, sx=0.6, sy=0.6, sz=0.6}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WIRECUBE.SCENE.MBIN'}
			})
		})
	})
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '_MOD.lMonk.Freighter Hangar Changes.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.52',
	MOD_DESCRIPTION			= mod_desc,
	AMUMSS_SUPPRESS_MSG		= 'MULTIPLE_STATEMENTS',
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= ECT
	},
	{--	add hangar ship outfitting monitor
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/TELEPORTER/TELEPORTER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefWallMonitor'},
				REMOVE				= 'Section'
			},
			{
				PRECEDING_KEY_WORDS = 'Children',
				ADD					= ToExml(
					ScNode('1RefMonitorShip',	'REFERENCE', {
						ScTransform({tx=2.5, ty=0.1, tz=5.25, ry=135, rz=180, sx=0.55, sy=0.55, sz=0.55}),
						ScAttributes({
							{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/ROOFMONITOR/ROOFMONITOR.SCENE.MBIN'}
						}),
						ScChildren({
							ScNode('ColShipSalvage1', 'COLLISION', {
								ScTransform({ty=-3}),
								ScAttributes({
									{'TYPE',	'Sphere'},
									{'RADIUS',	0.2}
								}),
								ScChildren({
									ScNode('LocShipSalvage1', 'LOCATOR', {
										ScTransform(),
										ScAttributes({
											{'ATTACHMENT', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/ENTITIES/SHIP_SALVAGE.ENTITY.MBIN'}
										})
									})
								})
							})
						})
					})
				)
			}
		}
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
	},
	{--	geometric plant
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEOMETRIC.SCENE.MBIN',
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEO_NONE.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{--	inactive geometric plant
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEO_NONE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'Name', 'ATTACHMENT'},
				REMOVE				= 'Section'
			}
		}
	},
	{--	wirecell cube
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WEIRDCUBE.SCENE.MBIN',
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WIRECUBE.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{--	inactive wirecell cube
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WIRECUBE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'Name', 'CuboidSmallLOD0', 'Name', 'ATTACHMENT'},
				VALUE_CHANGE_TABLE	= {
					{'value', 'MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT/ENTITIES/SHAPE1FLOAT.ENTITY.MBIN'}
				}
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
					Simple	= {
						META = {'value','GcSimpleInteractionComponentData.xml'},
						Name = 'UI_SALVAGE_TITLE'
					},
					Interaction	= {
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
							Puzzle	= {
								META = {'value','GcAlienPuzzleMissionOverride.xml'},
								Mission		= 'EXPLORE_LOG', -- must be a real mission id
								Puzzle		= 'SHIP_SALVAGE'
							}
						}
					},
					value = 'TkPhysicsComponentData.xml'
				}
			})
		}
	}
}
