local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Freighter Tweaks 5.20]]
local gameVersion = 131597

--[=============================================================================================================================[
	Every Lua script of mine requires a few other files to be located in the 'ModScripts\ModHelperScripts\' folder
	Extract the archive to 'ModScripts\' as is and remove/adjust scripts after. Avoid those in 'ModHelperScripts\'

	Below in the 'tweakStates' table are modification names and what they do is commented next to them
	Some modifications may be disabled by default; the double dashes '--' at the beginning of a line will cause it to get ignored

	Ways to disable a modification: 
		• RECOMMENDED: Add double dashes at the beginning of the line / ex: '--modification =...'
		• Set the value of the modification to false / ex: 'modification = false,'
		• Use the 'lyr_tweakOverrides.lua' file and disable modifications from there

	Ways to (re)enable a modification:
		• RECOMMENDED: Remove double dashes from the beginning of the line
		• Set the value of the modification to its original value
		• Use the 'lyr_tweakOverrides.lua' file and enable / change modifications from there

	Depending on their function and/or relevance, some modifications may have duplicates in my other scripts
	The third option for enabling / disabling modifications through 'lyr_tweakOverrides.lua' file will affect all

	If the mentioned file ('lyr_tweakOverrides.lua') is missing, you may get harmless warnings from AMUMSS
	It's advised to keep the file around even if it will not be utilized, just to avoid unwanted warning messages
--]=============================================================================================================================]

local tweakStates = {
--	plantGrowthRateMult = 2,					-- multiplies the plant growth rate by the given amount (setting to 2 will make every plant grow twice as fast)
--	unifiedPlantGrowthTime = 4,					-- unifies the plant growth times, value is in hours (setting to 4 will make every plant grow in 4 hours)
	freighterBridgeScanner = true,				-- adds the freighter planetary scan interaction to the bridge terminal
	stationSystemScanner = true,				-- adds the freighter planetary scan interaction to the station map shop hologram across the NPC
	bridgeMissionTerminal = true,				-- adds nexus mission interaction to the terminal beside the navigator
	hangarSalvageTerminal = true,				-- adds salvage terminals to the freighter hangar, below stairs
	nexusSalvageTerminal = true,				-- adds a salvage terminal to the nexus, at the middle section between the benches
	systemWideTelepads = true,					-- adds two way freighter <-> station telepads which also work as regular transporters and can be used to call ship
--	interstellarTerminus = true,				-- changes the regular transporter function of the added telepads to nexus one
--	useSolidRunwayTexture = true,				-- changes the runway texture(s) to the old one (WARNING: very bright but also very noticable)
	megaRunway = 10,							-- adds a mega runway to the freighter hangar entrance, value acts as a length multiplier
	miniRunways = 10,							-- value acts as a length multiplier for the mini runways, 0 removes them completely
	harvestDrone = 25,							-- adds 'harvest all' interaction with the value as its radius to the 'Robotic Companion', removes 'harvest all' sound
--	ownedShipsInHangar = 3,						-- sets the limit for owned ships in freighter hangar to the given value (minimum 1, game default is 6)
	hangarDockingSpeedMult = 2,					-- dock and take off speed limits for freighters are adjusted by the given multiplier (above 3 not recommended)
	hangarDockingOptimizations = true,			-- speeds up hangar door animation and removes its sound, removes pitch correction, reduces approach angle and adjusts range 
--	noHangarPadRotation = true,					-- hangar pad rotation is disabled; may eject as soon as pad is touched
--	noExteriorPlatformLight = true,				-- removes the light spot in the middle of the exterior platforms (might look better if you are using a lot of these)
--	noHangarCranes = true,						-- removes the crane gantries from the freighter hangar
	noAntennasNearHangar = true,				-- removes the antennas (fins) that block the hangars from the Sentinel-type freighters
--	teleportToBridge = true,					-- changes teleport rooms in such a way to make bridge the default teleport arrival destination
	extendedFreighterBase = true,				-- extends the buildable volume on the freighters (WARNING: game WILL crash if you try to sneak buildables into the hangar)
	extendedFreighterConstruction = true,		-- most things that can be built on a planetary base can also be built on freighters
}

--#region METHODS

dofile("lyr_amumss/lyr_amumss.lua")

--#endregion
-- END OF METHODS

--#region FIXES

local pirateFreighterFixes = function(tweakName, tweakState)
	local approachSections = {
		[[<Property name="Name" value="Approach1a" />]],
		[[<Property name="Name" value="Approach1b" />]],
		[[<Property name="Name" value="Approach1c" />]],
		[[<Property name="Name" value="Approach2a" />]],
		[[<Property name="Name" value="Approach2b" />]],
		[[<Property name="Name" value="Approach2c" />]],
		[[<Property name="Name" value="Approach3a" />]],
		[[<Property name="Name" value="Approach3b" />]],
		[[<Property name="Name" value="Approach3c" />]],
	}

	local fixes = {
		{
			mbinPaths = [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR.SCENE.EXML]],
			{
				skw = approachSections,
				fields = {
					TransZ = -150
				}
			},
			{
				skw = [[<Property name="Name" value="HangarA" />]],
				pkw = "Children",
				copySection = true
			},
			{
				editSection = true,
				pkw = "TkSceneNodeData.xml",
				fss_nor = approachSections,
				removeSections = true
			},
			{
				editSection = true,
				fields = {
					TransY = 1.9,
					TransZ = -127
				},
				replaceAll = true
			},
			{
				trimSection = true
			}
		},
		{
			mbinPaths = [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARPIRATE.SCENE.EXML]],
			{
				comment = "Removing the approach locators",
				pkw = "TkSceneNodeData.xml",
				fss_or = approachSections,
				removeSections = true
			},
			{
				comment = "Adding fixed approach locators",
				skw = [[<Property name="Name" value="HangarA" />]],
				pkw = "Children",
				pasteSection = true
			}
		},
		{
			mbinPaths = [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGEPIRATE.SCENE.EXML]],
			-- {
			-- 	comment = "Removing the leftover collision for the bridge stairs that should not exist on pirate version",
			-- 	skw = [[<Property name="Name" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGEPIRATE|Collision10" />]],
			-- 	-- fs_and = {
			-- 	-- 	[[<Property name="TransX" value="-5.547625" />]],
			-- 	-- 	[[<Property name="TransY" value="4.199404" />]],
			-- 	-- 	[[<Property name="TransZ" value="5.843439" />]]
			-- 	-- },
			-- 	removeSection = true
			-- }
			{
				comment = "Fixing the leftover collision for the bridge stairs, utilizing it in place of a missing one",
				skw = [[<Property name="Name" value="MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGEPIRATE|Collision10" />]],
				fields = {
					TransX = -6.125,
					TransY = -1.9,
					TransZ = -6.125,
					RotX = 0,	-- 225 in blender
					RotY = 135,	-- 0 in blender
					RotZ = -90,
				}
			}
		}
	}

	return fixes
end
lyr.tweakTables.pirateFreighterFixes = pirateFreighterFixes

--#endregion
-- END OF FIXES

--#region TWEAKS

local plantGrowthRateMult = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 2 or math.max(1,math.floor(tweakState))

	local tweak = {
		{
			mbinPaths = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
			{
				skw = [[<Property name="LinkNetworkType" value="PlantGrowth" />]],
				selectLevel = 2,
				fields = {
					Rate = tweakState
				},
				replaceAll = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.plantGrowthRateMult = plantGrowthRateMult

local unifiedPlantGrowthTime = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 4 or math.max(0.01, tweakState)

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
				pkw = "BaseBuildingTriggerActions",
				fields = {
					{"Time", 0},
					{"Time", 1},
					{"Time", math.floor(tweakState*1800-1)},
					{"Time", math.floor(tweakState*1800)},
					{"Time", math.floor(tweakState*3600-1)},
					{"Time", math.floor(tweakState*3600)},
				}
			}
		},
		{
			mbinPaths = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
			{
				skw = [[<Property name="LinkNetworkType" value="PlantGrowth" />]],
				selectLevel = 2,
				fields = {
					Storage = math.floor(tweakState*3600)
				},
				replaceAll = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.unifiedPlantGrowthTime = unifiedPlantGrowthTime

local freighterBridgeScanner = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = {{[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\ENTITIES\SCANROOMINTERACTION.ENTITY.MBIN]], [[LYR\ENTITIES\BRIDGESCAN.ENTITY.MBIN]]}}
		},
		{
			mbinPaths = [[LYR\ENTITIES\BRIDGESCAN.ENTITY.MBIN]],
			{
				skw = [[<Property name="Template" value="GcMaintenanceComponentData.xml">]],
				selectLevel = 1,
				removeSection = true
			}
		},
		lyr:sceneTools(
			[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINAL.SCENE.MBIN]],
			[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINALPIRATE.SCENE.MBIN]]
		)
		:insertNode("Base", "lyr_bridgeScanner", {TransY = 1.5})
		:entityLocator([[LYR\ENTITIES\BRIDGESCAN.ENTITY.MBIN]]):done()
	}

	return tweak
end
lyr.tweakTables.freighterBridgeScanner = freighterBridgeScanner

local stationSystemScanner = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = {{[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\ENTITIES\SCANROOMINTERACTION.ENTITY.MBIN]], [[LYR\ENTITIES\STATIONSCAN.ENTITY.MBIN]]}}
		},
		{
			mbinPaths = [[LYR\ENTITIES\STATIONSCAN.ENTITY.MBIN]],
			{
				pkw = "LinkableNMSTemplate.xml",
				findSections = {[[<Property name="Template" value="GcMaintenanceComponentData.xml">]]},
				removeSection = true
			}
		},
		lyr:sceneTools([[MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\SHOPS\MAPSHOPAREA.SCENE.EXML]])
		:insertNode("_MapScreen_C", "lyr_stationScanner", {TransX = 3.790752, TransY = 1.487879})
		:entityLocator([[LYR\ENTITIES\STATIONSCAN.ENTITY.MBIN]]):done()
	}

	return tweak
end
lyr.tweakTables.stationSystemScanner = stationSystemScanner

local bridgeMissionTerminal = function(tweakName, tweakState)
	local tweak = {
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
				skw = [[<Property name="UseInteractCamera" value="True" />]],
				fields = {
					UseInteractCamera = false,
					BlendToCameraTime = 0.1,
					BlendFromCameraTime = -1
				},
				replaceAll = true
			}
		},
		lyr:sceneTools(
			[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINAL.SCENE.MBIN]],
			[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINALPIRATE.SCENE.MBIN]]
		)
		:insertNode("Base", "lyr_missionTerminal", {TransX = -2, TransY = 0.5})
		:entityLocator([[LYR\ENTITIES\MISSIONTERMINAL.ENTITY.MBIN]]):done()
	}

	return tweak
end
lyr.tweakTables.bridgeMissionTerminal = bridgeMissionTerminal

local hangarSalvageTerminal = function(tweakName, tweakState)
	local tweak = {
		lyr:sceneTools(
			[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN]],
			[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIORPIRATE.SCENE.MBIN]]
		)
		:insertNode(nil, "lyr_salvageTerminal_right", {TransX = 22.66539, TransY = -4.297458, TransZ = -26})
		:reference([[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SHIPSALVAGETERMINAL.SCENE.MBIN]]):done(),
		lyr:sceneTools(
			[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN]],
			[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIORPIRATE.SCENE.MBIN]]
		)
		:insertNode(nil, "lyr_salvageTerminal_left", {TransX = -22.66539, TransY = -4.297458, TransZ = -26})
		:reference([[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SHIPSALVAGETERMINAL.SCENE.MBIN]]):done()
	}

	return tweak
end
lyr.tweakTables.hangarSalvageTerminal = hangarSalvageTerminal

local nexusSalvageTerminal = function(tweakName, tweakState)
	local tweak = {
		lyr:sceneTools([[MODELS\SPACE\NEXUS\PARTS\LANDINGBAYS\LANDINGBAYS.SCENE.EXML]])
		:insertNode("FRONTPathway", "lyr_nexusSalvageTerminal", {TransY = 2.3, TransZ = -25, RotY = 180})
		:reference([[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SHIPSALVAGETERMINAL.SCENE.MBIN]]):done()
	}

	return tweak
end
lyr.tweakTables.nexusSalvageTerminal = nexusSalvageTerminal

local systemWideTelepads = function(tweakName, tweakState)
	local tweak, telepads = nil, nil

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

	tweak = {
		mergeModifications = true,
		telepads.dummy.directives,
		{
			--#region DUMMY TELEPAD SCENE TWEAKS
			{
				mbinPaths = telepads.dummy.scene,
				{
					skw = {
						[[<Property name="Name" value="SnapPoint_PortalLine_" />]],
						[[<Property name="Name" value="TeleFX" />]],
						[[<Property name="Name" value="RefLinkSocket0" />]],
						[[<Property name="Name" value="NotConOn1_" />]],
						[[<Property name="Name" value="panel_socket4" />]],
						[[<Property name="Name" value="LINKSOCKET_" />]],
					},
					removeSections = true
				},
				{
					skw = [[<Property name="Name" value="ConOn1_" />]],
					fields = {
						Name = "NotConOn1_",
						NameHash = lyr:generateJenkinsHash("NotConOn1_")
					}
				}
			},
			--#endregion
			-- END OF DUMMY TELEPAD SCENE TWEAKS
			--#region DUMMY TELEPAD CALLSHIP ATTACHMENT
			{
				mbinPaths = {{[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LANDINGPAD\LANDINGPADTRADER\ENTITIES\SUMMONSHIP.ENTITY.MBIN]], [[LYR\ENTITIES\HELPME.ENTITY.MBIN]]}}
			},
			lyr:sceneTools(telepads.dummy.scene)
			:insertNode(nil, "lyr_telepad_callShip", {TransY = 2.5, TransZ = -0.55})
			:entityLocator([[LYR\ENTITIES\HELPME.ENTITY.MBIN]]):done(),
			{
				mbinPaths = [[LYR\ENTITIES\HELPME.ENTITY.MBIN]],
				{
					fields = {
						Use2dInteractDistance = true,
						-- Delay = 1,
						InteractDistance = 3,
						SizeIndicator = "Small",
						MustBeVisibleToInteract = true
					}
				}
			},
			--#endregion
			-- END OF DUMMY TELEPAD CALLSHIP ATTACHMENT
			--#region DUMMY TELEPAD TELEPORTER ATTACHMENT
			{
				mbinPaths = {{[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER_STATION\ENTITIES\TELEPORTERSTATIONINTERACTION.ENTITY.MBIN]], [[LYR\ENTITIES\TELEPORTER.ENTITY.MBIN]]}}
			},
			lyr:sceneTools(telepads.dummy.scene)
			:insertNode(nil, "lyr_teleporter", {TransY = 0.75, TransZ = -0.55})
			:entityLocator([[LYR\ENTITIES\TELEPORTER.ENTITY.MBIN]]):done(),
			{
				mbinPaths = [[LYR\ENTITIES\TELEPORTER.ENTITY.MBIN]],
				{
					fields = {
						AttractDistanceSq = 9,
						InteractDistance = 3,
						InteractAngle = 180,
						UseInteractCamera = false,
						BlendToCameraTime = 0.1
					}
				},
				{
					skw = [[<Property name="Template" value="GcInteractionComponentData.xml">]],
					match = {value = "GcInteractionType.xml", option = "~="},
					fields = {
						InteractionType = lyr:checkTweak("interstellarTerminus") and "Teleporter_Nexus" or "Teleporter_Base",
					}
				}
			},
			--#endregion
			-- END OF DUMMY TELEPAD TELEPORTER ATTACHMENT
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
			},
			--#endregion
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
						DestinationGroupID = "LYR_HANGAR_R",	-- crossed
						SnapFacingAngle = -5,
					}
				}
			},
			{
				mbinPaths = telepads.stationRight.extra.telepadTrigger,
				{
					fields = {
						GroupID = "LYR_STATION_R",
						DestinationGroupID = "LYR_HANGAR_L",	-- crossed
						SnapFacingAngle = 5,
					}
				}
			},
			{
				mbinPaths = telepads.hangarLeft.extra.telepadTrigger,
				{
					fields = {
						GroupID = "LYR_HANGAR_L",
						DestinationGroupID = "LYR_STATION_R",	-- crossed
						SnapFacingAngle = -135,
					}
				}
			},
			{
				mbinPaths = telepads.hangarRight.extra.telepadTrigger,
				{
					fields = {
						GroupID = "LYR_HANGAR_R",
						DestinationGroupID = "LYR_STATION_L",	-- crossed
						SnapFacingAngle = 135,
					}
				}
			},
			--#endregion
			-- END OF TELEPAD TRIGGER ENTITY TWEAKS
			--#region NEW STATION TELEPAD PLACEMENT
			lyr:sceneTools([[MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\BACK_SECTION.SCENE.EXML]])
			:insertNode("BackSecACTIVE", "lyr_stationTelepad_left", {TransX = -41, TransZ = -59.75, RotY = 90})
			:reference(telepads.stationLeft.scene):done(),
			lyr:sceneTools([[MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\BACK_SECTION.SCENE.EXML]])
			:insertNode("BackSecACTIVE", "lyr_stationTelepad_right", {TransX = 41, TransZ = -59.75, RotY = -90})
			:reference(telepads.stationRight.scene):done(),
			--#endregion
			-- END OF NEW STATION TELEPAD PLACEMENT
			--#region OLD STATION TELEPAD PLACEMENT
			lyr:sceneTools([[MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION.SCENE.MBIN]])
			:insertNode("MainHallModule", "lyr_stationTelepad_left", {TransX = -11.4, TransZ = 201.6, RotY = 120})
			:reference(telepads.stationLeft.scene):done(),
			lyr:sceneTools([[MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION.SCENE.MBIN]])
			:insertNode("MainHallModule", "lyr_stationTelepad_right", {TransX = 11.4, TransZ = 201.6, RotY = -120})
			:reference(telepads.stationRight.scene):done(),
			--#endregion
			-- END OF OLD STATION TELEPAD PLACEMENT
			--#region PIRATE STATION TELEPAD PLACEMENT
			lyr:sceneTools([[MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION_PIRATE.SCENE.MBIN]])
			:insertNode("Interior_", "lyr_stationTelepad_left", {TransX = -12.64, TransZ = 184, RotY = 96})
			:reference(telepads.stationLeft.scene):done(),
			lyr:sceneTools([[MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION_PIRATE.SCENE.MBIN]])
			:insertNode("Interior_", "lyr_stationTelepad_right", {TransX = 17.6, TransZ = 192, RotY = -96})
			:reference(telepads.stationRight.scene):done(),
			--#endregion
			-- END OF PIRATE STATION TELEPAD PLACEMENT
			--#region HANGAR TELEPAD PLACEMENT
			lyr:sceneTools(
				[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN]],
				[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIORPIRATE.SCENE.MBIN]]
			)
			:insertNode(nil, "lyr_hangarTelepad_left", {TransX = -22.66539, TransY = -4.297458, TransZ = -14.5, RotY = 180})
			:reference(telepads.hangarLeft.scene):done(),
			lyr:sceneTools(
				[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN]],
				[[MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIORPIRATE.SCENE.MBIN]]
			)
			:insertNode(nil, "lyr_hangarTelepad_right", {TransX = 22.66539, TransY = -4.297458, TransZ = -14.5, RotY = 180})
			:reference(telepads.hangarRight.scene):done(),
			--#endregion
			-- END OF HANGAR TELEPAD PLACEMENT
		},
		lyr:dupeScene():cleanUp()
	}

	return tweak
end
lyr.tweakTables.systemWideTelepads = systemWideTelepads

local useSolidRunwayTexture = function(tweakName, tweakState)
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
end
lyr.tweakTables.useSolidRunwayTexture = useSolidRunwayTexture

local megaRunway = function(tweakName, tweakState)
	local megaRunwayLength = type(tweakState) ~= "number" and 10 or tweakState
	local miniRunwayLength = type(lyr.tweakStates.miniRunways) ~= "number" and 10 or lyr.tweakStates.miniRunways

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR.SCENE.MBIN]],
				[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARPIRATE.SCENE.MBIN]]
			},
			{
				pkw = "TkSceneNodeData.xml",
				findSubSections = {
					[[<Property name="Name" value="EntranceRunway" />]],
					[[<Property name="Name" value="ENTRANCEGLOW23" />]]
				},
				copySection = true
			},
			lyr:checkTweak("miniRunways") and {
				pkw = "TkSceneNodeData.xml",
				findSubSections = {
					{"Name", "EntranceRunway1"},
					{"Name", "EntranceRunway2"},
					{"Name", "EntranceRunway"},
					{"Name", "ENTRANCEGLOW23"},
					{"Name", "ENTRANCEGLOW25"},
					{"Name", "ENTRANCEGLOW26"},
				},
				removeSections = miniRunwayLength <= 0 and true or nil,
				fields = miniRunwayLength > 0 and {
					TransZ = math.max(35, 35 + (miniRunwayLength-1)*80.5),	-- 80.5 seems to be the magic number
					ScaleZ = math.max(1, miniRunwayLength)
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
					TransZ = math.max(35, 35 + (megaRunwayLength-1)*80.5) or nil,	-- 80.5 seems to be the magic number
					ScaleZ = math.max(1, megaRunwayLength) or nil
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
end
lyr.tweakTables.megaRunway = megaRunway

local miniRunways = function(tweakName, tweakState)
	if lyr:checkTweak("megaRunway") then return false end

	local miniRunwayLength = type(tweakState) ~= "number" and 10 or tweakState

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR.SCENE.MBIN]],
				[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARPIRATE.SCENE.MBIN]]
			},
			{
				pkw = "TkSceneNodeData.xml",
				findSubSections = {
					{"Name", "EntranceRunway1"},
					{"Name", "EntranceRunway2"},
					{"Name", "EntranceRunway"},
					{"Name", "ENTRANCEGLOW23"},
					{"Name", "ENTRANCEGLOW25"},
					{"Name", "ENTRANCEGLOW26"},
				},
				removeSections = miniRunwayLength <= 0 and true or nil,
				fields = miniRunwayLength > 0 and {
					TransZ = math.max(35, 35 + (miniRunwayLength-1)*80.5),	-- 80.5 seems to be the magic number
					ScaleZ = math.max(1, miniRunwayLength)
				} or nil
			}
		}
	}

	return tweak
end
lyr.tweakTables.miniRunways = miniRunways

local harvestDrone = {}
harvestDrone.tweaks = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 25 or math.max(25, tweakState)

	local tweak = {
		{
			mbinPaths = {{[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BIOROOM\ENTITIES\INTERACTION.ENTITY.MBIN]], [[LYR\ENTITIES\HARVEST.ENTITY.MBIN]]}}
		},
		lyr:sceneTools([[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\TOYDRONE.SCENE.MBIN]])
		:insertNode("Drone", "lyr_harvestInteraction"):entityLocator([[LYR\ENTITIES\HARVEST.ENTITY.MBIN]]):done(),
		{
			mbinPaths = [[LYR\ENTITIES\HARVEST.ENTITY.MBIN]],
			{
				skw = [[<Property name="Template" value="TkAnimationComponentData.xml">]],
				selectLevel = 1,
				removeSection = true
			},
			{
				pkw = "GcHarvestPlantAction.xml",
				fields = {
					Radius = tweakState
				}
			}
		}
	}

	return tweak
end
harvestDrone.files = function(tweakName, tweakState)
	local noSound, audioPath = [[\lyr_files\noSound.wem]], [[\AUDIO\WINDOWS\]]

	-- Interact_Collect
	local files = {"118407979", "248498396", "792889080", "919130441", "1011022411", "1066066139"}

	---@diagnostic disable-next-line: assign-type-mismatch
	for k, v in next, files do files[k] = {noSound, audioPath..v..".WEM"} end

	return files
end
lyr.tweakTables.harvestDrone = harvestDrone.tweaks
lyr.tweakFiles.harvestDrone = harvestDrone.files

local ownedShipsInHangar = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 3 or math.min(9, math.max(0, math.floor(tweakState)))

	local tweak = {
		["GCFLEETGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MaxNumberOfPlayerShipsInFreighterHangar = {default = 6, tweakState}
				}
			}
		},
	}

	return tweak
end
lyr.tweakTables.ownedShipsInHangar = ownedShipsInHangar

local hangarDockingSpeedMult = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 1.25 or math.max(1, tweakState)

	local tweak = {
		["MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/HANGARA/ENTITIES/HANGARA.ENTITY.MBIN"] = {
			{
				skw = [[<Property name="Template" value="GcOutpostComponentData.xml">]],
				fields = {
					ApproachSpeed = "@*"..tweakState,
					TakeOffSpeed = "@*"..tweakState,
					PostTakeOffExtraPlayerSpeed = "@*"..tweakState,
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.hangarDockingSpeedMult = hangarDockingSpeedMult

local hangarDockingOptimizations = function(tweakName, tweakState)
	local tweak = {
		["MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/HANGARPARTS/HANGARDOOR/ENTITIES/HANGARDOORANIMATED.ENTITY.MBIN"] = {
			{
				skw = {
					[[<Property name="Anim" value="OPEN" />]],
					[[<Property name="Anim" value="CLOSE" />]],
				},
				fields = {
					Speed = "@*"..((1+lyr:useProxyMult("hangarDockingSpeedMult", 1))*0.5)
				}
			},
			{
				pkw = "GcPlayAudioAction.xml",
				removeSection = true,
				replaceAll = true
			}
		},
		["MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/HANGARA/ENTITIES/HANGARA.ENTITY.MBIN"] = {
			{
				skw = [[<Property name="Template" value="GcOutpostComponentData.xml">]],
				fields = {
					ApproachRange = {default = 45, lyr:useProxyMult("hangarDockingSpeedMult", 35)},
					ApproachAngle = {default = 45, 40},
					LandingHeight = {default = 6, 7},
					TakeOffHeight = {default = 5.5, 0},	-- this isn't height, this is angle; height is same as 'LandingHeight'
					TakeOffExtraAIHeight = {default = 0.5, 0},
					TakeOffBoost = {default = 30, 0},
					PostTakeOffExtraPlayerHeight = {default = 10, 0},
					TakeOffProgressForExtraHeight = {default = 0.7, 1}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.hangarDockingOptimizations = hangarDockingOptimizations

local noHangarPadRotation = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = [[MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\HANGARA\ENTITIES\HANGARA.ENTITY.MBIN]],
			{
				skw = [[<Property name="Template" value="GcOutpostComponentData.xml">]],
				fields = {
					RotateToDock = false
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.noHangarPadRotation = noHangarPadRotation

local noExteriorPlatformLight = function(tweakName, tweakState)
	local tweak = {
		["MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/EXTERIOR/A/PARTS/COMMON.SCENE.MBIN"] = {
			{
				skw = [[<Property name="Name" value="TopLiteL0" />]],
				removeSection = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.noExteriorPlatformLight = noExteriorPlatformLight

local noHangarCranes = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = [[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARINTERIOR.SCENE.MBIN]],
			{
				skw = {
					[[<Property name="Name" value="RefHangarCrane" />]],
					[[<Property name="Name" value="RefHangarCrane1" />]],
					[[<Property name="Name" value="RefHangarCrane2" />]]
				},
				removeSection = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.noHangarCranes = noHangarCranes

local noAntennasNearHangar = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = [[MODELS\COMMON\SPACECRAFT\INDUSTRIAL\CAPITALFREIGHTER_PROC.SCENE.EXML]],
			{
				skw = {
					[[<Property name="Name" value="S1_Fin1" />]],
					[[<Property name="Name" value="S1_Fin2" />]],
					[[<Property name="Name" value="S1_Fin3" />]],
				},
				removeSections = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.noAntennasNearHangar = noAntennasNearHangar

local teleportToBridge = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\TELEPOROOM\PARTS\FLOOR0.SCENE.EXML]],
			{
				skw = [[<Property name="Name" value="SpawnPos" />]],
				removeSection = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.teleportToBridge = teleportToBridge

local extendedFreighterBase = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = {
				[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGAR.SCENE.MBIN]],
				[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARPIRATE.SCENE.MBIN]],
			},
			{
				skw = [[<Property name="Name" value="BaseBuildingArea" />]],
				fields = {
					TransZ = -28.623486,
					ScaleX = 1.2,
					ScaleZ = 1.2,
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.extendedFreighterBase = extendedFreighterBase

local extendedFreighterConstruction = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
			{
				pkw = "GcBaseBuildingEntry.xml",
				findSectionsWhereAllMatch = {
					[[<Property name="BuildableOnFreighter" value="False" />]],
					[[<Property name="BuildableOnPlanetBase" value="True" />]],
				},
				fields = {
					BuildableOnFreighter = true
				},
				replaceAll = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.extendedFreighterConstruction = extendedFreighterConstruction
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