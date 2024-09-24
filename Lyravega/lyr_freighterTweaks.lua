local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Freighter Tweaks 5.12]]
local gameVersion = "129192"

--[=============================================================================================================================[
	Every Lua script of mine requires 'lyr_methods.lua' to be located in the 'ModScripts\ModHelperScripts\' folder
	Otherwise none of them will work. Make sure that file is located there before using my scripts

	Below in the 'tweakStates' table are modification names and what they do is commented next to them
	Some modifications may be disabled by default; the double dashes '--' at the beginning of a line will cause it to get ignored

	Ways to disable a modification: 
		• RECOMMENDED: Add double dashes at the beginning of the line / ex: '--modification =...'
		• Set the value of the modification to false / ex: 'modification = false,'
		• Use the 'lyr_tweakOverrides.txt' file and disable modifications from there

	Ways to (re)enable a modification:
		• RECOMMENDED: Remove double dashes at the beginning of the line
		• Set the value of the modification to its original value
		• Use the 'lyr_tweakOverrides.txt' file and enable / change modifications from there

	Depending on their function and/or relevance, some modifications may have duplicates in my other scripts
	The third option for enabling / disabling modifications through 'lyr_tweakOverrides.txt' file will affect all
--]=============================================================================================================================]

local tweakStates = {
--	plantGrowthRateMult = 2,				-- multiplies the plant growth rate by the given amount (setting to 2 will make every plant grow twice as fast)
--	unifiedPlantGrowthTime = 4,				-- unifies the plant growth times, value is in hours (setting to 4 will make every plant grow in 4 hours)
	freighterBridgeScanner = true,			-- adds the freighter planetary scan interaction to the bridge terminal
	bridgeMissionTerminal = true,			-- adds nexus mission interaction to the terminal beside the navigator
	hangarSalvageTerminal = true,			-- adds salvage terminals to the freighter hangar, below stairs
	nexusSalvageTerminal = true,			-- adds a salvage terminal to the nexus, at the middle section between the benches
	systemWideTelepads = true,				-- adds two way freighter <-> station telepads which also work as regular transporters and can be used to call ship
--	interstellarTerminus = true,			-- changes the regular transporter function of the added telepads to nexus one
--	useSolidRunwayTexture = true,			-- changes the runway texture(s) to the old one (WARNING: very bright but also very noticable)
	megaRunway = 10,						-- adds a mega runway to the freighter hangar entrance, value acts as a length multiplier
	miniRunways = 10,						-- value acts as a length multiplier for the mini runways, 0 removes them completely
	harvestDrone = 25,						-- adds 'harvest all' interaction with the value as its radius to the 'Robotic Companion', removes 'harvest all' sound
	ownedShipsInHangar = 3,					-- sets the limit for owned ships in freighter hangar to the given value (minimum 1, game default is 6)
	hangarDockingSpeedMult = 2,				-- dock and take off speed limits for freighters are adjusted by the given multiplier (above 3 not recommended)
	hangarDockingOptimizations = true,		-- speeds up hangar door animation and removes its sound, removes pitch correction, reduces approach angle and adjusts range 
--	noHangarPadRotation = true,				-- hangar pad rotation is disabled; may eject as soon as pad is touched
--	noExteriorPlatformLight = true,			-- removes the light spot in the middle of the exterior platforms (might look better if you are using a lot of these)
--	noHangarCranes = true,					-- removes the crane gantries from the freighter hangar
	extendedFreighterBase = true,			-- extends the buildable volume on the freighters (WARNING: game WILL crash if you try to sneak buildables into the hangar)
	extendedFreighterConstruction = true,	-- most things that can be built on a planetary base can also be built on freighters
}

--#region METHODS

dofile("lyr_methods.lua")

--#endregion
-- END OF METHODS

--#region TWEAKS

local plantGrowthRateMult = function()
	if not lyr:checkTweak("plantGrowthRateMult") then return false end

	local tweak = {
		{
			mbinPaths = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
			{
				specialKeyWords = {lyr:parsePair([[<Property name="LinkNetworkType" value="PlantGrowth" />]])},
				selectLevel = 2,
				fields = {
					Rate = math.max(1,math.floor(lyr.tweakStates.plantGrowthRateMult))
				},
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.plantGrowthRateMult = plantGrowthRateMult

local unifiedPlantGrowthTime = function()
	if not lyr:checkTweak("unifiedPlantGrowthTime") then return false end

	local tweak = {
		{
			mbinPaths = {
				"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMALBUMEN/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
				"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMBARREN/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
				"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMDEADCREATURE/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
				"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMGRAVITINO/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
				"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMLUSH/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
				"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMNIP/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
				"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMPOOP/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
				"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMRADIOACTIVE/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
				"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSCORCHED/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
				"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMSNOW/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
				"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMTOXIC/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
				"MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/FARMVENOMSAC/ENTITIES/PLANTINTERACTION.ENTITY.MBIN",
			},
			{
				precedingKeyWords = "BaseBuildingTriggerActions",
				fields = {
					{"Time", 0},
					{"Time", 1},
					{"Time", math.floor(lyr.tweakStates.unifiedPlantGrowthTime*1800-1)},
					{"Time", math.floor(lyr.tweakStates.unifiedPlantGrowthTime*1800)},
					{"Time", math.floor(lyr.tweakStates.unifiedPlantGrowthTime*3600-1)},
					{"Time", math.floor(lyr.tweakStates.unifiedPlantGrowthTime*3600)},
				}
			}
		},
		{
			mbinPaths = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
			{
				specialKeyWords = {lyr:parsePair([[<Property name="LinkNetworkType" value="PlantGrowth" />]])},
				selectLevel = 2,
				fields = {
					Storage = math.floor(lyr.tweakStates.unifiedPlantGrowthTime*3600)
				},
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.unifiedPlantGrowthTime = unifiedPlantGrowthTime

local freighterBridgeScanner = function()
	if not lyr:checkTweak("freighterBridgeScanner") then return false end

	local tweak = {
		lyr:createNodeTemplate(),
		{
			mbinPaths = {{[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\ENTITIES\SCANROOMINTERACTION.ENTITY.MBIN]], [[LYR\ENTITIES\BRIDGESCAN.ENTITY.MBIN]]}}
		},
		{
			mbinPaths = [[LYR\ENTITIES\BRIDGESCAN.ENTITY.MBIN]],
			{
				skw = {lyr:parsePair([[<Property name="Template" value="GcMaintenanceComponentData.xml">]])},
				selectLevel = 1,
				removeSection = true
			}
		},
		lyr:attachEntityLocatorAttachment(
			{
				[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINAL.SCENE.MBIN]],
				[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINALPIRATE.SCENE.MBIN]],
			},
			"Base",
			[[LYR\ENTITIES\BRIDGESCAN.ENTITY.MBIN]],
			"lyr_bridgeScanner",
			{y = 1.5}
		)
	}

	return tweak
end; lyr.tweakTables.freighterBridgeScanner = freighterBridgeScanner

local bridgeMissionTerminal = function()
	if not lyr:checkTweak("bridgeMissionTerminal") then return false end

	local tweak = {
		lyr:createNodeTemplate(),
		{
			mbinPaths = {
				{[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINAL\ENTITIES\MPMISSIONTERMINAL.ENTITY.EXML]], [[LYR\ENTITIES\MISSIONTERMINAL.ENTITY.MBIN]]}
				-- {[[MODELS\SPACE\NEXUS\NEXUS\ENTITIES\MPTERMINAL.ENTITY.MBIN]], [[LYR\ENTITIES\MISSIONTERMINAL.ENTITY.MBIN]]}
			}
		},
		-- {
		-- 	mbinPaths = [[LYR\ENTITIES\MISSIONTERMINAL.ENTITY.MBIN]],
		-- 	{
		-- 		skw = {"Template", lyr.ignore},
		-- 		findSectionsWhereNoneMatch = {{"Template", "GcInteractionComponentData.xml"}},
		-- 		selectLevel = 1,
		-- 		removeSection = true
		-- 	}
		-- },
		{
			mbinPaths = [[LYR\ENTITIES\MISSIONTERMINAL.ENTITY.MBIN]],
			{
				skw = {lyr:parsePair([[<Property name="UseInteractCamera" value="True" />]])},
				fields = {
					UseInteractCamera = false,
					BlendToCameraTime = 0.1,
					BlendFromCameraTime = -1
				},
				replaceAll = true
			}
		},
		lyr:attachEntityLocatorAttachment(
			{
				[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINAL.SCENE.MBIN]],
				[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINALPIRATE.SCENE.MBIN]],
			},
			"Base",
			[[LYR\ENTITIES\MISSIONTERMINAL.ENTITY.MBIN]],
			"lyr_missionTerminal",
			{x = -2, y = 0.5}
		)
	}

	return tweak
end; lyr.tweakTables.bridgeMissionTerminal = bridgeMissionTerminal

local hangarSalvageTerminal = function()
	if not lyr:checkTweak("hangarSalvageTerminal") then return false end

	local tweak = {
		lyr:createNodeTemplate(),
		{
			mbinPaths = {
				[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN]],
				[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIORPIRATE.SCENE.MBIN]],
			},
			{
				precedingKeyWords = {"Children"},
				pasteSection = lyr.nodeTemplate.section
			},
			{
				specialKeyWords = {"Name", lyr.nodeTemplate.nodeName},
				fields = {
					Name = "lyr_salvageTerminal_right",
					Type = "REFERENCE",
					TransX = 22.66539,
					TransY = -4.297458,
					TransZ = -26,
				}
			},
			{
				precedingKeyWords = {"Children"},
				pasteSection = lyr.nodeTemplate.section
			},
			{
				specialKeyWords = {"Name", lyr.nodeTemplate.nodeName},
				fields = {
					Name = "lyr_salvageTerminal_left",
					Type = "REFERENCE",
					TransX = -22.66539,
					TransY = -4.297458,
					TransZ = -26,
				}
			},
			{
				specialKeyWords = {
					{"Name", "lyr_salvageTerminal_right"},
					{"Name", "lyr_salvageTerminal_left"},
				},
				precedingKeyWords = "Attributes",
				fields = {
					Name = "SCENEGRAPH",
					Value = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SHIPSALVAGETERMINAL.SCENE.MBIN"
				},
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.hangarSalvageTerminal = hangarSalvageTerminal

local nexusSalvageTerminal = function()
	if not lyr:checkTweak("nexusSalvageTerminal") then return false end

	local tweak = {
		lyr:createNodeTemplate(),
		{
			mbinPaths = [[MODELS\SPACE\NEXUS\PARTS\LANDINGBAYS\LANDINGBAYS.SCENE.EXML]],
			{
				skw = {lyr:parsePair([[<Property name="Name" value="FRONTPathway" />]])},
				pkw = "Children",
				pasteSection = lyr.nodeTemplate.section
			},
			{
				skw = {"Name", lyr.nodeTemplate.nodeName},
				fields = {
					Name = "lyr_nexusSalvageTerminal",
					-- NameHash = lyr:generateJenkinsHash("lyr_nexusSalvageTerminal"),
					Type = "REFERENCE",
					TransY = 2.3,
					TransZ = -25,
					RotY = 180
				}
			},
			{
				skw = {"Name", "lyr_nexusSalvageTerminal"},
				pkw = "Attributes",
				fields = {
					Name = "SCENEGRAPH",
					Value = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SHIPSALVAGETERMINAL.SCENE.MBIN"
				},
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.nexusSalvageTerminal = nexusSalvageTerminal

local systemWideTelepads = function()
	if not lyr:checkTweak("systemWideTelepads") then return false end

	local bigTweak, telepads = nil, nil

	telepads = {
		dummy = lyr:dupeScene()
			:sourceScene("MINIPORTAL", [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\]])
			:destinationScene("LYR_DUMMYTELEPAD")
			:extraEntities("telepadTrigger", "MINIPORTALTRIGGER", "LYR_DUMMYTRIGGER"):finalize(),
		stationLeft = lyr:dupeScene()
			:sourceScene("LYR_DUMMYTELEPAD", nil, true)
			:destinationScene("STATION_TELEPAD_L")
			:extraEntities("telepadTrigger", "LYR_DUMMYTRIGGER", "STATION_TELEPAD_L_TRIGGER", true):finalize(),
		stationRight = lyr:dupeScene()
			:sourceScene("LYR_DUMMYTELEPAD", nil, true)
			:destinationScene("STATION_TELEPAD_R")
			:extraEntities("telepadTrigger", "LYR_DUMMYTRIGGER", "STATION_TELEPAD_R_TRIGGER", true):finalize(),
		hangarLeft = lyr:dupeScene()
			:sourceScene("LYR_DUMMYTELEPAD", nil, true)
			:destinationScene("HANGAR_TELEPAD_L")
			:extraEntities("telepadTrigger", "LYR_DUMMYTRIGGER", "HANGAR_TELEPAD_L_TRIGGER", true):finalize(),
		hangarRight = lyr:dupeScene()
			:sourceScene("LYR_DUMMYTELEPAD", nil, true)
			:destinationScene("HANGAR_TELEPAD_R")
			:extraEntities("telepadTrigger", "LYR_DUMMYTRIGGER", "HANGAR_TELEPAD_R_TRIGGER", true):finalize(),
	}

	bigTweak = {
		{lyr:createNodeTemplate()},
		telepads.dummy.directives,
		{
			--#region DUMMY TELEPAD SCENE TWEAKS
			{
				mbinPaths = telepads.dummy.scene,
				{
					specialKeyWords = {lyr:parsePair([[<Property name="Name" value="ConOn1_" />]])},
					precedingKeyWords = "Children",
					copySection = true
				},
				{
					specialKeyWords = {lyr:parsePair([[<Property name="Name" value="NotConOn1_" />]])},
					precedingKeyWords = "Children",
					pasteAfterSection = true
				},
				{
					specialKeyWords = {lyr:parsePair([[<Property name="Name" value="NotConOn1_" />]])},
					precedingKeyWords = "Children",
					removeSection = true
				},
				{
					specialKeyWords = {
						{lyr:parsePair([[<Property name="Name" value="SnapPoint_PortalLine_" />]])},
						{lyr:parsePair([[<Property name="Name" value="TeleFX" />]])},
						{lyr:parsePair([[<Property name="Name" value="RefLinkSocket0" />]])},
						{lyr:parsePair([[<Property name="Name" value="ConOn1_" />]])},
						{lyr:parsePair([[<Property name="Name" value="panel_socket4" />]])},
						{lyr:parsePair([[<Property name="Name" value="LINKSOCKET_" />]])},
					},
					removeSection = true,
					replaceAll = true
				},
			}, --#endregion
			-- END OF DUMMY TELEPAD SCENE TWEAKS
			--#region DUMMY TELEPAD CALLSHIP ATTACHMENT
			{
				mbinPaths = {{[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LANDINGPAD\LANDINGPADTRADER\ENTITIES\SUMMONSHIP.ENTITY.MBIN]], [[LYR\ENTITIES\HELPME.ENTITY.MBIN]]}}
			},
			{
				mbinPaths = telepads.dummy.scene,
				{
					precedingKeyWords = "Children",
					pasteSection = lyr.nodeTemplate.section
				},
				{
					specialKeyWords = {"Name", lyr.nodeTemplate.nodeName},
					fields = {
						Name = "lyr_telepad_callShip",
						Type = "LOCATOR",
						TransY = 0.9,
						TransZ = -0.9,
					}
				},
				{
					specialKeyWords = {"Name", "lyr_telepad_callShip"},
					precedingKeyWords = "Attributes",
					fields = {
						Name = "ATTACHMENT",
						Value = [[LYR\ENTITIES\HELPME.ENTITY.MBIN]]
					}
				},
			},
			{
				mbinPaths = [[LYR\ENTITIES\HELPME.ENTITY.MBIN]],
				{
					fields = {
						Use2dInteractDistance = true,
						-- Delay = 1,
						InteractDistance = 3,
						SizeIndicator = "Small",
						MustBeVisibleToInteract = false
					}
				}
			}, --#endregion
			-- END OF DUMMY TELEPAD CALLSHIP ATTACHMENT
			--#region DUMMY TELEPAD TRIGGER ENTITY TWEAKS
			{
				mbinPaths = telepads.dummy.extra.telepadTrigger,
				{
					fields = {
						FlipFacingDirection = false,
						SnapFacingDirection = true,
						-- SnapFacingAngle = 0,
						DoPlayerEffects = true,
						TeleportCamera = false,
						DestinationSortType = "PortalNearestPlayerShip"
					}
				}
			}, --#endregion
			-- END OF DUMMY TELEPAD TRIGGER ENTITY TWEAKS
			--#region DUMMY TELEPAD ENTITY TWEAKS
			{
				mbinPaths = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER_STATION\ENTITIES\TELEPORTERSTATIONINTERACTION.ENTITY.MBIN]],
				{
					skw = {lyr:parsePair([[<Property name="Template" value="GcInteractionComponentData.xml">]])},
					selectLevel = 1,
					copySection = true
				}
			},
			{
				mbinPaths = telepads.dummy.entity,
				{
					precedingKeyWords = "Components",
					pasteSection = true
				},
				{
					skw = {lyr:parsePair([[<Property name="Template" value="GcInteractionComponentData.xml">]])},
					fields = {
						UseInteractCamera = false,
						BlendToCameraTime = 0.1
					}
				},
			}, --#endregion
			-- END OF DUMMY TELEPAD ENTITY TWEAKS
		},
		telepads.stationLeft.directives,
		telepads.stationRight.directives,
		telepads.hangarLeft.directives,
		telepads.hangarRight.directives,
		{
			--#region TELEPAD TRIGGER ENTITY TWEAKS
			{
				mbinPaths = telepads.stationLeft.extra.telepadTrigger,
				{
					fields = {
						GroupID = "LYR_STATION_L",
						DestinationGroupID = "LYR_HANGAR_L",
						SnapFacingAngle = -5,
					}
				}
			},
			{
				mbinPaths = telepads.stationRight.extra.telepadTrigger,
				{
					fields = {
						GroupID = "LYR_STATION_R",
						DestinationGroupID = "LYR_HANGAR_R",
						SnapFacingAngle = 5,
					}
				}
			},
			{
				mbinPaths = telepads.hangarLeft.extra.telepadTrigger,
				{
					fields = {
						GroupID = "LYR_HANGAR_L",
						DestinationGroupID = "LYR_STATION_L",
						SnapFacingAngle = -135,
					}
				}
			},
			{
				mbinPaths = telepads.hangarRight.extra.telepadTrigger,
				{
					fields = {
						GroupID = "LYR_HANGAR_R",
						DestinationGroupID = "LYR_STATION_R",
						SnapFacingAngle = 135,
					}
				}
			}, --#endregion
			-- END OF TELEPAD TRIGGER ENTITY TWEAKS
			--#region TELEPAD ENTITY TWEAKS
			{
				mbinPaths = {
					telepads.stationLeft.entity,
					telepads.stationRight.entity,
				},
				{
					skw = {lyr:parsePair([[<Property name="Template" value="GcInteractionComponentData.xml">]])},
					match = {value = "GcInteractionType.xml", option = "~="},
					fields = {
						InteractionType = lyr:checkTweak("interstellarTerminus") and "Teleporter_Nexus" or "Teleporter_Station",
					}
				}
			},
			{
				mbinPaths = {
					telepads.hangarLeft.entity,
					telepads.hangarRight.entity,
				},
				{
					skw = {lyr:parsePair([[<Property name="Template" value="GcInteractionComponentData.xml">]])},
					match = {value = "GcInteractionType.xml", option = "~="},
					fields = {
						InteractionType = lyr:checkTweak("interstellarTerminus") and "Teleporter_Nexus" or "Teleporter_Base",
					}
				}
			}, --#endregion
			-- END OF TELEPAD ENTITY TWEAKS
			--#region NEW STATION TELEPAD PLACEMENT
			{
				mbinPaths = [[MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\BACK_SECTION.SCENE.EXML]],
				{
					specialKeyWords = {lyr:parsePair([[<Property name="Name" value="BackSecACTIVE" />]])},
					precedingKeyWords = "Children",
					pasteSection = lyr.nodeTemplate.section
				},
				{
					specialKeyWords = {"Name", lyr.nodeTemplate.nodeName},
					fields = {
						Name = "lyr_stationTelepad_left",
						Type = "REFERENCE",
						TransX = -41,
						TransY = 0,
						TransZ = -59.75,
						RotY = 90
					}
				},
				{
					specialKeyWords = {"Name", "lyr_stationTelepad_left"},
					precedingKeyWords = "Attributes",
					fields = {
						Name = "SCENEGRAPH",
						Value = telepads.stationLeft.scene
					}
				},
				{
					specialKeyWords = {lyr:parsePair([[<Property name="Name" value="BackSecACTIVE" />]])},
					precedingKeyWords = "Children",
					pasteSection = lyr.nodeTemplate.section
				},
				{
					specialKeyWords = {"Name", lyr.nodeTemplate.nodeName},
					fields = {
						Name = "lyr_stationTelepad_right",
						Type = "REFERENCE",
						TransX = 41,
						TransY = 0,
						TransZ = -59.75,
						RotY = -90
					}
				},
				{
					specialKeyWords = {"Name", "lyr_stationTelepad_right"},
					precedingKeyWords = "Attributes",
					fields = {
						Name = "SCENEGRAPH",
						Value = telepads.stationRight.scene
					}
				}
			}, --#endregion
			-- END OF NEW STATION TELEPAD PLACEMENT
			--#region OLD STATION TELEPAD PLACEMENT
			{
				mbinPaths = [[MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION.SCENE.MBIN]],
				{
					specialKeyWords = {lyr:parsePair([[<Property name="Name" value="MainHallModule" />]])},
					precedingKeyWords = "Children",
					pasteSection = lyr.nodeTemplate.section
				},
				{
					specialKeyWords = {"Name", lyr.nodeTemplate.nodeName},
					fields = {
						Name = "lyr_stationTelepad_left",
						Type = "REFERENCE",
						TransX = 11.4,
						TransZ = 201.6,
						RotY = -120
					}
				},
				{
					specialKeyWords = {"Name", "lyr_stationTelepad_left"},
					precedingKeyWords = "Attributes",
					fields = {
						Name = "SCENEGRAPH",
						Value = telepads.stationLeft.scene
					}
				},
				{
					specialKeyWords = {lyr:parsePair([[<Property name="Name" value="MainHallModule" />]])},
					precedingKeyWords = "Children",
					pasteSection = lyr.nodeTemplate.section
				},
				{
					specialKeyWords = {"Name", lyr.nodeTemplate.nodeName},
					fields = {
						Name = "lyr_stationTelepad_right",
						Type = "REFERENCE",
						TransX = -11.4,
						TransZ = 201.6,
						RotY = 120
					}
				},
				{
					specialKeyWords = {"Name", "lyr_stationTelepad_right"},
					precedingKeyWords = "Attributes",
					fields = {
						Name = "SCENEGRAPH",
						Value = telepads.stationRight.scene
					}
				}
			}, --#endregion
			-- END OF OLD STATION TELEPAD PLACEMENT
			--#region PIRATE STATION TELEPAD PLACEMENT
			{
				mbinPaths = [[MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION_PIRATE.SCENE.MBIN]],
				{
					specialKeyWords = {lyr:parsePair([[<Property name="Name" value="Interior_" />]])},
					precedingKeyWords = "Children",
					pasteSection = lyr.nodeTemplate.section
				},
				{
					specialKeyWords = {"Name", lyr.nodeTemplate.nodeName},
					fields = {
						Name = "lyr_stationTelepad_left",
						Type = "REFERENCE",
						TransX = 17.6,
						TransZ = 192,
						RotY = -96
					}
				},
				{
					specialKeyWords = {"Name", "lyr_stationTelepad_left"},
					precedingKeyWords = "Attributes",
					fields = {
						Name = "SCENEGRAPH",
						Value = telepads.stationLeft.scene
					}
				},
				{
					specialKeyWords = {lyr:parsePair([[<Property name="Name" value="Interior_" />]])},
					precedingKeyWords = "Children",
					pasteSection = lyr.nodeTemplate.section
				},
				{
					specialKeyWords = {"Name", lyr.nodeTemplate.nodeName},
					fields = {
						Name = "lyr_stationTelepad_right",
						Type = "REFERENCE",
						TransX = -12.64,
						TransZ = 184,
						RotY = 96
					}
				},
				{
					specialKeyWords = {"Name", "lyr_stationTelepad_right"},
					precedingKeyWords = "Attributes",
					fields = {
						Name = "SCENEGRAPH",
						Value = telepads.stationRight.scene
					}
				}
			}, --#endregion
			-- END OF PIRATE STATION TELEPAD PLACEMENT
			--#region HANGAR TELEPAD PLACEMENT
			{
				mbinPaths = {
					[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN]],
					[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIORPIRATE.SCENE.MBIN]],
				},
				{
					precedingKeyWords = "Children",
					pasteSection = lyr.nodeTemplate.section
				},
				{
					specialKeyWords = {"Name", lyr.nodeTemplate.nodeName},
					fields = {
						Name = "lyr_hangarTelepad_left",
						Type = "REFERENCE",
						TransX = -22.66539,
						TransY = -4.297458,
						TransZ = -14.5,
						RotY = 180
					}
				},
				{
					specialKeyWords = {"Name", "lyr_hangarTelepad_left"},
					precedingKeyWords = "Attributes",
					fields = {
						Name = "SCENEGRAPH",
						Value = telepads.hangarLeft.scene
					}
				},
				{
					precedingKeyWords = "Children",
					pasteSection = lyr.nodeTemplate.section
				},
				{
					specialKeyWords = {"Name", lyr.nodeTemplate.nodeName},
					fields = {
						Name = "lyr_hangarTelepad_right",
						Type = "REFERENCE",
						TransX = 22.66539,
						TransY = -4.297458,
						TransZ = -14.5,
						RotY = 180
					}
				},
				{
					specialKeyWords = {"Name", "lyr_hangarTelepad_right"},
					precedingKeyWords = "Attributes",
					fields = {
						Name = "SCENEGRAPH",
						Value = telepads.hangarRight.scene
					}
				}
			}, --#endregion
			-- END OF HANGAR TELEPAD PLACEMENT
		},
		lyr:dupeScene():cleanUp()
	}

	return lyr:mergeTweaks(table.unpack(bigTweak))
end; lyr.tweakTables.systemWideTelepads = systemWideTelepads

local useSolidRunwayTexture = function()
	if not lyr:checkTweak("useSolidRunwayTexture") then return false end

	local tweak = {
		{
			mbinPaths = {
				{
					-- [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\DOORSFRONT\ENTRANCEGLOW_MAT.MATERIAL.MBIN]],
					[[MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARA_EXTERIOR\ENTRANCEGLOW_MAT.MATERIAL.MBIN]],
					[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR\HANGERRUNWAY_ENTRANCERUNWAYMAT.MATERIAL.MBIN]],
				},
				{
					[[MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARA_EXTERIOR\ENTRANCEGLOW_MAT.MATERIAL.MBIN]],
					[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARPIRATE\HANGERRUNWAY_ENTRANCERUNWAYMAT.MATERIAL.MBIN]],
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.useSolidRunwayTexture = useSolidRunwayTexture

local megaRunway = function()
	if not lyr:checkTweak("megaRunway") then return false end

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR.SCENE.MBIN]],
				[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARPIRATE.SCENE.MBIN]]
			},
			{
				skw = {"NameHash", lyr.ignore},
				findSubSections = {
					{lyr:parsePair([[<Property name="Name" value="EntranceRunway" />]])},
					{lyr:parsePair([[<Property name="Name" value="ENTRANCEGLOW23" />]])}
				},
				copySection = true
			},
			lyr:checkTweak("miniRunways") and {
				skw = {"NameHash", lyr.ignore},
				findSubSections = {
					{"Name", "EntranceRunway1"},
					{"Name", "EntranceRunway2"},
					{"Name", "EntranceRunway"},
					{"Name", "ENTRANCEGLOW23"},
					{"Name", "ENTRANCEGLOW25"},
					{"Name", "ENTRANCEGLOW26"},
				},
				removeAllSections = lyr.tweakStates.miniRunways == 0 and true or nil,
				fields = lyr.tweakStates.miniRunways > 0 and {
					TransZ = math.max(35, 35 + (lyr.tweakStates.miniRunways-1)*80.5),	-- 80.5 seems to be the magic number
					ScaleZ = math.max(1, lyr.tweakStates.miniRunways)
				} or nil
			} or false,
			{
				editSection = true,
				pkw = "TkSceneNodeAttributeData.xml",
				copySection = "attribute"
			},
			{
				editSection = "attribute",
				fields = {
					Name = "LYR_EXTRA",
					Value = "LYR_MEGARUNWAY"
				}
			},
			{
				editSection = true,
				pkw = "Attributes",
				pasteSection = "attribute"
			},
			{
				editSection = true,
				fields = {
					-- Name = "lyr_megaRunway",
					-- NameHash = "2511746515",
					TransX = 294.5,
					ScaleX = 6.6,
					TransY = -9,
					ScaleY = 2.8,
					TransZ = math.max(35, 35 + (lyr.tweakStates.megaRunway-1)*80.5) or nil,	-- 80.5 seems to be the magic number
					ScaleZ = math.max(1, lyr.tweakStates.megaRunway) or nil
				},
			},
			{
				skw = {"Name", "ENTRANCEEFFECT"},
				pkw = "Children",
				pasteSection = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.megaRunway = megaRunway

local miniRunways = function()
	if not lyr:checkTweak("miniRunways") or lyr:checkTweak("megaRunway") then return false end

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR.SCENE.MBIN]],
				[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARPIRATE.SCENE.MBIN]]
			},
			{
				skw = {"NameHash", lyr.ignore},
				findSubSections = {
					{"Name", "EntranceRunway1"},
					{"Name", "EntranceRunway2"},
					{"Name", "EntranceRunway"},
					{"Name", "ENTRANCEGLOW23"},
					{"Name", "ENTRANCEGLOW25"},
					{"Name", "ENTRANCEGLOW26"},
				},
				removeAllSections = lyr.tweakStates.miniRunways == 0 and true or nil,
				fields = lyr.tweakStates.miniRunways > 0 and {
					TransZ = math.max(35, 35 + (lyr.tweakStates.miniRunways-1)*80.5),	-- 80.5 seems to be the magic number
					ScaleZ = math.max(1, lyr.tweakStates.miniRunways)
				} or nil
			}
		}
	}

	return tweak
end; lyr.tweakTables.miniRunways = miniRunways

local harvestDrone = function()
	if not lyr:checkTweak("harvestDrone") then return false end

	local tweak = {
		lyr:createNodeTemplate(),
		{
			mbinPaths = {{[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM\ENTITIES\INTERACTION.ENTITY.MBIN]], [[LYR\ENTITIES\HARVEST.ENTITY.MBIN]]}}
		},
		{
			mbinPaths = [[LYR\ENTITIES\HARVEST.ENTITY.MBIN]],
			{
				skw = {lyr:parsePair([[<Property name="Template" value="TkAnimationComponentData.xml">]])},
				selectLevel = 1,
				removeSection = true
			},
			{
				precedingKeyWords = "GcHarvestPlantAction.xml",
				fields = {
					Radius = math.max(25, lyr.tweakStates.harvestDrone)
				}
			}
		},
		lyr:attachEntityLocatorAttachment(
			[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\TOYDRONE.SCENE.MBIN]],
			"Drone",
			[[LYR\ENTITIES\HARVEST.ENTITY.MBIN]],
			"lyr_harvestInteraction"
		)
	}

	return tweak
end; lyr.tweakTables.harvestDrone = harvestDrone

local ownedShipsInHangar = function()
	if not lyr:checkTweak("ownedShipsInHangar") then return false end

	local tweak = {
		["GCFLEETGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MaxNumberOfPlayerShipsInFreighterHangar = {default = 6, altered = math.max(1, math.floor(lyr.tweakStates.ownedShipsInHangar))}
				}
			}
		},
	}

	return tweak
end; lyr.tweakTables.ownedShipsInHangar = ownedShipsInHangar

local hangarDockingSpeedMult = function()
	if not lyr:checkTweak("hangarDockingSpeedMult") then return false end

	local tweak = {
		["MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/HANGARA/ENTITIES/HANGARA.ENTITY.MBIN"] = {
			{
				skw = {lyr:parsePair([[<Property name="Template" value="GcOutpostComponentData.xml">]])},
				fields = {
					ApproachSpeed = lyr.tweakStates.hangarDockingSpeedMult,
					TakeOffSpeed = lyr.tweakStates.hangarDockingSpeedMult,
					PostTakeOffExtraPlayerSpeed = lyr.tweakStates.hangarDockingSpeedMult,
				},
				multiply = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.hangarDockingSpeedMult = hangarDockingSpeedMult

local hangarDockingOptimizations = function()
	if not lyr:checkTweak("hangarDockingOptimizations") then return false end

	local tweak = {
		["MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/HANGARPARTS/HANGARDOOR/ENTITIES/HANGARDOORANIMATED.ENTITY.MBIN"] = {
			{
				specialKeyWords = {
					{lyr:parsePair([[<Property name="Anim" value="OPEN" />]])},
					{lyr:parsePair([[<Property name="Anim" value="CLOSE" />]])},
				},
				fields = {
					Speed = {default = 1, multiplier = (1+lyr:useProxyMult("hangarDockingSpeedMult", 1))*0.5}
				},
				multiply = true
			},
			{
				precedingKeyWords = "GcPlayAudioAction.xml",
				removeSection = true,
				replaceAll = true
			}
		},
		["MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/HANGARA/ENTITIES/HANGARA.ENTITY.MBIN"] = {
			{
				skw = {lyr:parsePair([[<Property name="Template" value="GcOutpostComponentData.xml">]])},
				fields = {
					ApproachRange = {default = 45, altered = lyr:useProxyMult("hangarDockingSpeedMult", 15)},
					ApproachAngle = {default = 45, altered = 40},
					LandingHeight = {default = 6, altered = 7},
					TakeOffHeight = {default = 5.5, altered = 0},	-- this isn't height, this is angle; height is same as 'LandingHeight'
					TakeOffExtraAIHeight = {default = 0.5, altered = 0},
					TakeOffBoost = {default = 30, altered = 0},
					PostTakeOffExtraPlayerHeight = {default = 10, altered = 0},
					TakeOffProgressForExtraHeight = {default = 0.7, altered = 1}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.hangarDockingOptimizations = hangarDockingOptimizations

local noHangarPadRotation = function()
	if not lyr:checkTweak("noHangarPadRotation") then return false end

	local tweak = {
		{
			mbinPaths = [[MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARA\ENTITIES\HANGARA.ENTITY.MBIN]],
			{
				skw = {lyr:parsePair([[<Property name="Template" value="GcOutpostComponentData.xml">]])},
				fields = {
					RotateToDock = false
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.noHangarPadRotation = noHangarPadRotation

local noExteriorPlatformLight = function()
	if not lyr:checkTweak("noExteriorPlatformLight") then return false end

	local tweak = {
		["MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/EXTERIOR/A/PARTS/COMMON.SCENE.MBIN"] = {
			{
				specialKeyWords = {lyr:parsePair([[<Property name="Name" value="TopLiteL0" />]])},
				removeSection = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.noExteriorPlatformLight = noExteriorPlatformLight

local noHangarCranes = function()
	if not lyr:checkTweak("noHangarCranes") then return false end

	local tweak = {
		{
			mbinPaths = [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARINTERIOR.SCENE.MBIN]],
			{
				skw = {
					{lyr:parsePair([[<Property name="Name" value="RefHangarCrane" />]])},
					{lyr:parsePair([[<Property name="Name" value="RefHangarCrane1" />]])},
					{lyr:parsePair([[<Property name="Name" value="RefHangarCrane2" />]])}
				},
				removeSection = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.noHangarCranes = noHangarCranes

local extendedFreighterBase = function()
	if not lyr:checkTweak("extendedFreighterBase") then return false end

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR.SCENE.MBIN]],
				[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARPIRATE.SCENE.MBIN]],
			},
			{
				specialKeyWords = {lyr:parsePair([[<Property name="Name" value="BaseBuildingArea" />]])},
				fields = {
					TransZ = -28.623486,
					ScaleX = 1.2,
					ScaleZ = 1.2,
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.extendedFreighterBase = extendedFreighterBase

local extendedFreighterConstruction = function()
	if not lyr:checkTweak("extendedFreighterConstruction") then return false end

	local tweak = {
		{
			mbinPaths = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
			{
				pkw = "GcBaseBuildingEntry.xml",
				findSectionsWhereAllMatch = {
					{lyr:parsePair([[<Property name="BuildableOnFreighter" value="False" />]])},
					{lyr:parsePair([[<Property name="BuildableOnPlanetBase" value="True" />]])},
				},
				fields = {
					BuildableOnFreighter = true
				},
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.extendedFreighterConstruction = extendedFreighterConstruction

local noHarvestAllSound = function()
	-- if not lyr:checkTweak("noHarvestAllSound") then return false end
	if not lyr:checkTweak("harvestDrone") then return false end

	local files = {
		comment = "Adding files from 'noHarvestAllSound'",
		{[[\lyr_files\noHarvestAllSound\*.WEM]], [[\AUDIO\WINDOWS\]]},
	}

	return files
end; lyr.tweakFiles.noHarvestAllSound = noHarvestAllSound

--#endregion
-- END OF TWEAKS

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_freighterTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS, UNUSED_VARIABLE, MIXED_TABLE, NUMBERtoSTRING",
	ADD_FILES = lyr:processTweakFiles(),
	MODIFICATIONS =	lyr:processTweakTables()
}