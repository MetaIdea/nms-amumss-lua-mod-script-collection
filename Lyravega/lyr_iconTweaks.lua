local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Icon Tweaks 5.20]]
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
	smallerIcons = true,						-- reduces the sizes of all icons except the compass ones (recommended with 'biggerColourizedHexagonIcons')
	colourizedHexagonIcons = "large",			-- adds colourized ("normal" or "large") binocs icons for buildings (hexagons), with colours matching the scanner icons
	colourizedDiamondIcons = true,				-- adds colourized binocs/scanner icons for non-buildings (diamonds), with colours matching the scanner/binocs icons
	miscIconAdjustments = true,					-- a few fixes and minor changes for a few icons; green dot for known creatures, different unknown building icons
	noFocusedIconResize = true,					-- focused icons no longer grow in size
	shorterIconFadeDistance = true,				-- icons start fading out at a shorter distance but at less steep intervals
	moreClumpyIcons = true,						-- allows icons of the same type/group to clump up in a greater angle/radius
	retainBuildingIconSizes = true,				-- building markers on the same planet will not get scaled down
	buldingDetectionRange = 2500,				-- building detection and marker visibility ranges are set to the given value (1000-2500 is ideal)
	maxMessageBeaconIcons = 0,					-- sets the maximum number of message beacon icons (game default 10)

--[=============================================================================================================================[
	Unlike the options above, the tweaks below this block use a table to expose more settings to you
	The table members are as follows: {scanRange, visibleRange, compassRange}

	scanRange: At which distance these icons appear on binocs/scanner; some settings use a very low value to avoid binocs clutter
	visibleRange: At which distance these icons are always visible; tone this down or set it to zero if it is undesired
	compassRange: At which distance these icons appear on compass; may be toned down depending on preference

	It is highly recommended 'colourizedDiamondIcons' and 'smallerIcons' are enabled for these
	Setting these to 'true' will use default settings, methods to disable them work as usual
--]=============================================================================================================================]

	sentinelTweaks = {600, 100, 150},			-- for sentinel hunters; adds missing icons to all sentinels, and they will be marked in medium range
	crystalTweaks = {500, 250, 500},			-- for storm chasers; storm crystal icons are visible only during a storm and will be marked in a large proximity
	ruinTweaks = {250, 125, 125},				-- for tomb raiders; key and chest icons in the ancient ruins will be marked in a medium proximity
	sentinelLootTweaks = {300, 50, 75},			-- for sentinel looters; loot dropped by the sentinels will be marked in medium proximity
	crashedFreighterTweaks = {250, 125, 125},	-- for freighter salvagers; cargo pods found around crashed freighters will be marked in medium proximity
	harmonicScrapTweaks = {250, 125, 125},		-- for scrap gatherers; harmonic scraps found around certain points of interests will be marked in medium proximity 
	buriedLootTweaks = {500, 75, 125},			-- for treasure seekers; buried loot will be marked from further away, option ranges are doubled for bones and scrap 
	edibleFloraTweaks = {250, 0, 50},			-- for ramsay gordons; separate option that only affects the edible plants
	hazardPlantTweaks = {125, 35, 75},			-- for pet riders; hazard plants will be marked in close proximity (useful when avoiding them while riding creatures)
	harvestableFloraTweaks = {100, 0, 25},		-- anti-clutter; harvestable flora ranges are reduced heavily, further reduction for farm plants (cleans up a lot of clutter)
	gravballTweaks = {50, 0, 25},				-- anti-clutter; gravball ranges are reduced heavily (especially useful on planets where they are everywhere)
	hazardEggTweaks = {50, 0, 25},				-- anti-clutter; whispering egg icon ranges are reduced heavily (cleans up a lot on certain planets or around certain buildings)
}

--#region METHODS

dofile("lyr_amumss/lyr_amumss.lua")

---@param tweakState any
---@param defaults table
---@return {scanRange:number, visibleRange:number, compassMultiplier:number}
local scannableComponentTweaks = function(tweakState, defaults)
	local options = tweakState == true and defaults or type(tweakState) == "table" and tweakState or defaults

	if options ~= defaults then
		options.scanRange = options[1] and math.max(1, options[1]) or defaults[1]
		options.visibleRange = options[2] and math.max(0, options[2]) or defaults[2]
		options.compassMultiplier = options[3] and math.max(0, options[3])/options.scanRange or defaults[3]
	end

	return options
end

--#endregion
-- END OF METHODS

--#region TWEAKS

local smallerIcons = function(tweakName, tweakState)
	local tweak = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					SmallIconSize = {default = 32, 24},
					LargeIconSize = {default = 48, 36},
					CompassIconSize = {default = 48, 48}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.smallerIcons = smallerIcons

local colourizedHexagonIcons = function(tweakName, tweakState)
	local option = lyr:checkTweak("colourizedHexagonIcons"); if not option then return false end
	local options = {
		LARGE = [[\lyr_files\colourizedHexagonIcons\large\*.DDS]],
		NORMAL = [[\lyr_files\colourizedHexagonIcons\normal\*.DDS]],
	}; if not options[option:upper()] then return false end

	local path = options[option:upper()]

	local files = {
		{path, [[\TEXTURES\UI\HUD\ICONS\SCANNING\]]}
	}

	return files
end
lyr.tweakFiles.colourizedHexagonIcons = colourizedHexagonIcons

local colourizedDiamondIcons = {}
colourizedDiamondIcons.files = function(tweakName, tweakState)
	local files = {
		{[[\lyr_files\colourizedDiamondIcons\SCANNING\*.DDS]], [[\TEXTURES\UI\HUD\ICONS\SCANNING\]]},
		{[[\lyr_files\colourizedDiamondIcons\PICKUPS\*.DDS]], [[\TEXTURES\UI\HUD\ICONS\PICKUPS\]]},
	}

	return files
end
colourizedDiamondIcons.tweaks = function(tweakName, tweakState)
	local tweaks = {
		{
			mbinPaths = [[METADATA\UI\HUD\SCANNERICONS.EXML]],
			{
				pkw1st = "ScannableIcons",
				skw = {"Mineral", lyr.ignore, "Main", lyr.ignore},
				fields = {
					Filename = [[TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.MINERAL.DDS]]
				}
			},
			{
				pkw1st = "ScannableColours",
				skw = {"Hazard", lyr.ignore},
				fields = {R = 1, G = 0, B = 0, A = 1}
			},
			{
				pkw1st = "ScannableIcons",
				skw = {"Hazard", lyr.ignore, "Main", lyr.ignore},
				fields = {
					Filename = [[TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.DANGER.DDS]]
				}
			},
			{
				pkw1st = "ScannableIconsBinocs",
				skw = {"Hazard", lyr.ignore, "Main", lyr.ignore},
				fields = {
					Filename = [[TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.DANGER.DDS]]
				}
			},
			{
				pkw1st = "ScannableColours",
				skw = {"HazardPlant", lyr.ignore},
				fields = {R = 1, G = 0, B = 0, A = 1}
			},
			{
				pkw1st = "ScannableIcons",
				skw = {"HazardPlant", lyr.ignore, "Main", lyr.ignore},
				fields = {
					Filename = [[TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.PLANTRED.DDS]]
				}
			},
			{
				pkw1st = "ScannableIconsBinocs",
				skw = {"HazardPlant", lyr.ignore, "Main", lyr.ignore},
				fields = {
					Filename = [[TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.PLANTRED.DDS]]
				}
			},
			{
				pkw1st = "ScannableIconsBinocs",
				skw = {"Plant", lyr.ignore, "Main", lyr.ignore},
				fields = {
					Filename = [[TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.PLANTGREEN.DDS]]
				}
			},
			{
				pkw1st = "ScannableIconsBinocs",
				skw = {"BluePlant", lyr.ignore, "Main", lyr.ignore},
				fields = {
					Filename = [[TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.PLANTBLUE.DDS]]
				}
			},
			{
				pkw1st = "ScannableColours",
				skw = {"FreighterHeater", lyr.ignore},
				fields = {R = 0.875, G = 0.700, B = 0, A = 1}
			},
			{
				pkw1st = "ScannableColours",
				skw = {"FreighterTerminal", lyr.ignore},
				fields = {R = 0.2, G = 0.8, B = 0.2, A = 1}
			},
			{
				pkw1st = "ScannableColours",
				skw = {"FreighterDoor", lyr.ignore},
				fields = {R = 0, G = 0.6, B = 0.8, A = 1}
			},
			{
				pkw1st = "ScannableColours",
				skw = {"FreighterTeleporter", lyr.ignore},
				fields = {R = 0, G = 0.6, B = 0.8, A = 1}
			},
			{
				pkw1st = "ScannableIcons",
				skw = {
					{"Refiner", lyr.ignore, "Main", lyr.ignore},
					{"Cooker", lyr.ignore, "Main", lyr.ignore},
				},
				fields = {
					Filename = [[TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.BASETECH.DDS]]
				}
			},
			{
				pkw1st = "ScannableIconsBinocs",
				skw = {
					{"Refiner", lyr.ignore, "Main", lyr.ignore},
					{"Cooker", lyr.ignore, "Main", lyr.ignore},
				},
				fields = {
					Filename = [[TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.BASETECH.DDS]]
				}
			},
		},
		{	-- infestation on derelicts
			mbinPaths = {
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/INFESTATION/LARGEPILLARSLIME/ENTITIES/LARGEPILLARSLIME.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/INFESTATION/MEDIUMHANGSLIME/ENTITIES/MEDIUMHANGSLIME.ENTITY.MBIN]],
			},
			{
				fields = {
					ScanIconType = "Hazard"
				}
			}
		},
		{	-- unused?
			mbinPaths = [[MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/HAZARDPLANT/ENTITIES/HAZARD.ENTITY.MBIN]],
			{
				fields = {
					ScanIconType = "HazardPlant"
				}
			}
		},
		{	-- underground shit
			mbinPaths = [[MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/UNDERGROUNDLUMP/ENTITIES/UNDERGROUNDLUMP.ENTITY.MBIN]],
			{
				fields = {
					ScanIconType = "BluePlant"
				}
			}
		},
		{	-- OO kelp
			mbinPaths = [[MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\MEDIUIMGLOWPLANT\ENTITIES\_BASE_1.ENTITY.EXML]],
			{
				fields = {
					ScanIconType = "Plant"
				}
			}
		}
		-- {
		-- 	mbinPaths = [[METADATA\REALITY\DEFAULTREALITY.EXML]],
		-- 	{
		-- 		skw = [[<Property name="Filename" value="TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.TERRAIN.DDS" />]],
		-- 		selectLevel = 1,
		-- 		findSubSections = {[[<Property name="IconBinocs" value="TkTextureResource.xml">]]},
		-- 		fields = {
		-- 			Filename = [[TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.TERRAIN.DDS]]
		-- 		}
		-- 	}
		-- }
	}

	return tweaks
end
lyr.tweakFiles.colourizedDiamondIcons = colourizedDiamondIcons.files
lyr.tweakTables.colourizedDiamondIcons = colourizedDiamondIcons.tweaks

local miscIconAdjustments = {}
miscIconAdjustments.files = function(tweakName, tweakState)
	local files = {
		{[[\lyr_files\miscIconAdjustments\CREATURE*.DDS]], [[\TEXTURES\UI\HUD\]]},
		{[[\lyr_files\miscIconAdjustments\BUILDING.UNKNOWN.DDS]], [[\TEXTURES\UI\HUD\ICONS\BUILDINGS\BUILDING.UNKNOWN.DDS]]},
	}

	return files
end
miscIconAdjustments.tweaks = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = [[METADATA\UI\HUD\SCANNERICONS.EXML]],
			{
				pkw1st = "ScannableIconsBinocs",
				skw = {
					[[<Property name="BuriedRare" value="GcScannerIcon.xml">]],
					[[<Property name="BuriedTech" value="GcScannerIcon.xml">]]
				},
				fields = {
					ScannerIconHighlightType = "Tag"
				}
			},
			{
				pkw1st = "ScannableIcons",
				skw = {"RareEgg", lyr.ignore, "Main", lyr.ignore},
				fields = {
					Filename = [[TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.RAREEGG.DDS]]
				}
			},
		},
		{
			mbinPaths = [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/HEATER/ENTITIES/HEATER.ENTITY.MBIN]],
			{
				pkw = "LinkableNMSTemplate.xml",
				fs = [[<Property name="Template" value="GcScannableComponentData.xml">]],
				removeSection = true
			}
		}
	}

	return tweak
end
lyr.tweakFiles.miscIconAdjustments = miscIconAdjustments.files
lyr.tweakTables.miscIconAdjustments = miscIconAdjustments.tweaks

local noFocusedIconResize = function(tweakName, tweakState)
	local tweak = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					HoverLockedIconScale = {default = 1.2, 1.0}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.noFocusedIconResize = noFocusedIconResize

local shorterIconFadeDistance = function(tweakName, tweakState)
	local tweak = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					BinocularsNearIconOpacity = {default = 1, 0.95},
					BinocularsNearIconDist = {default = 50, 25},
					BinocularsNearIconFadeDist = {default = 150, 125},
					BinocularsMidIconOpacity = {default = 0.65, 0.80},
					BinocularsFarIconFadeDist = {default = 500, 375},
					BinocularsFarIconDist = {default = 1000, 750},
					BinocularsFarIconOpacity = {default = 0.2, 0.4}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.shorterIconFadeDistance = shorterIconFadeDistance

local moreClumpyIcons = function(tweakName, tweakState)
	local tweak = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					ScannerIconsClumpRadius = {default = 10, 25}
				}
			}
		},
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					ScannableIconMergeAngle = {default = 9, 15},
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.moreClumpyIcons = moreClumpyIcons

local retainBuildingIconSizes = function(tweakName, tweakState)
	local tweak = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					HUDMarkerShowActualIconDistance = {default = 200, 999999},
					HUDMarkerShowActualSpaceIconDistance = {default = 2000, 999999}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.retainBuildingIconSizes = retainBuildingIconSizes

local buldingDetectionRange = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 1250 or math.max(1250, tweakState)

	local tweak = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					UnknownBuildingRange = {default = 600, tweakState},
					MaxIconRange = {default = 1200, tweakState},
				}
			}
		},
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					HUDMarkerDistanceOrTimeDistance = {default = 1250, tweakState},
				}
			},
			not lyr:checkTweak("retainBuildingIconSizes") and {
				fields = {
					HUDMarkerShowActualIconDistance = {default = 200, tweakState},
					HUDMarkerShowActualSpaceIconDistance = {default = 2000, tweakState}
				}
			}
		},
		{
			mbinPaths = [[GCDEBUGOPTIONS.GLOBAL.EXML]],
			{
				fields = {
					GenerateFarLodBuildingDist = 10000
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.buldingDetectionRange = buldingDetectionRange

local maxMessageBeaconIcons = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 0 or math.max(0, tweakState)

	local tweak = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MaxNumMessageBeaconIcons = {default = 10, tweakState},
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.maxMessageBeaconIcons = maxMessageBeaconIcons

local sentinelTweaks = function(tweakName, tweakState)
	local options = scannableComponentTweaks(tweakState, {600, 100, 0.25})
	local entities = {
		sentinel = [[LYR/ENTITIES/SENTINEL_N.SCANNABLE.ENTITY.EXML]],
		corruptSentinel = [[LYR/ENTITIES/SENTINEL_C.SCANNABLE.ENTITY.EXML]]
	}

	local tweak = {
		--#region SCANNABLE COMPONENTS
		{
			mbinPaths = {
				{[[MODELS\COMMON\ROBOTS\DRONE\ENTITIES\DRONE.ENTITY.EXML]], entities.sentinel},
				{[[MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\ENTITIES\CORRUPTEDDRONE.ENTITY.EXML]], entities.corruptSentinel}
			}
		},
		{
			mbinPaths = {
				entities.sentinel,
				entities.corruptSentinel
			},
			{
				skw = [[<Property name="Template" value="GcScannableComponentData.xml">]],
				fields = {
					ScanRange = options.scanRange,
					AlwaysShowRange = options.visibleRange,
					CompassRangeMultiplier = options.compassMultiplier,
					UseModelNode = false,
					AllowedToMerge = false
				}
			},
			{
				pkw = [[<Property value="LinkableNMSTemplate.xml">]],
				fs_nor = [[<Property name="Template" value="GcScannableComponentData.xml">]],
				removeSections = true
			}
		},
		{
			mbinPaths = {
				[[MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\ENTITIES\CORRUPTEDDRONE.ENTITY.EXML]],
				[[MODELS\COMMON\ROBOTS\DRONE\ENTITIES\DRONE.ENTITY.EXML]],
				[[MODELS\COMMON\ROBOTS\DRONEARMOURED\ENTITIES\DRONEARMOURED.ENTITY.EXML]],
				[[MODELS\COMMON\ROBOTS\DRONEMEDIC\ENTITIES\MEDICDRONE.ENTITY.EXML]],
				[[MODELS\COMMON\ROBOTS\DRONESUMMONER\ENTITIES\SUMDRONE.ENTITY.EXML]],
			},
			{
				skw = [[<Property name="Template" value="GcScannableComponentData.xml">]],
				selectLevel = 1,
				removeSection = true
			}
		},
		--#endregion
		-- END OF SCANNABLE COMPONENTS
		--#region SCENE ATTACHMENTS
		-- [[MODELS\COMMON\ROBOTS\DRONE.SCENE.EXML]],
		-- [[MODELS\COMMON\ROBOTS\DRONEARMOURED.SCENE.EXML]],
		-- [[MODELS\COMMON\ROBOTS\DRONEMEDIC.SCENE.EXML]],
		-- [[MODELS\COMMON\ROBOTS\DRONESUMMONER.SCENE.EXML]],
		-- [[MODELS\COMMON\ROBOTS\QUADRUPED.SCENE.EXML]],
		-- [[MODELS\COMMON\ROBOTS\SENTINELMECH.SCENE.EXML]],
		-- [[MODELS\COMMON\ROBOTS\WALKER.SCENE.EXML]],
		lyr:sceneTools([[MODELS\COMMON\ROBOTS\DRONE.SCENE.EXML]])
		:insertNode("Local", lyr.names.scannableComponent, {TransY = 1.25})
		:entityLocator(entities.sentinel):done(),
		lyr:sceneTools([[MODELS\COMMON\ROBOTS\DRONEARMOURED.SCENE.EXML]])
		:insertNode("Local", lyr.names.scannableComponent, {TransY = 1.5, TransZ = -0.5})
		:entityLocator(entities.sentinel):done(),
		lyr:sceneTools([[MODELS\COMMON\ROBOTS\DRONEMEDIC.SCENE.EXML]])
		:insertNode("Local", lyr.names.scannableComponent, {TransY = 1, TransZ = -0.25})
		:entityLocator(entities.sentinel):done(),
		lyr:sceneTools([[MODELS\COMMON\ROBOTS\DRONESUMMONER.SCENE.EXML]])
		:insertNode("Local", lyr.names.scannableComponent, {TransY = 1.75, TransZ = -0.25})
		:entityLocator(entities.sentinel):done(),
		lyr:sceneTools([[MODELS\COMMON\ROBOTS\QUADRUPED.SCENE.EXML]])
		:insertNode("Root", lyr.names.scannableComponent, {TransY = 1, TransZ = 0.25})
		:entityLocator(entities.sentinel):done(),
		lyr:sceneTools([[MODELS\COMMON\ROBOTS\SENTINELMECH.SCENE.EXML]])
		:insertNode("spine_TopSHJnt", lyr.names.scannableComponent, {TransX = 3, TransY = 0.25, RotX = 90, RotZ = -90})
		:entityLocator(entities.sentinel):done(),
		lyr:sceneTools([[MODELS\COMMON\ROBOTS\WALKER.SCENE.EXML]])
		:insertNode("TorsoJNT", lyr.names.scannableComponent, {TransY = 1.25, RotY = 180})
		:entityLocator(entities.sentinel):done(),
		-- [[MODELS\COMMON\ROBOTS\CORRUPTEDDRONE.SCENE.EXML]],
		-- [[MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD.SCENE.EXML]],
		-- [[MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED.SCENE.EXML]],
		lyr:sceneTools([[MODELS\COMMON\ROBOTS\CORRUPTEDDRONE.SCENE.EXML]])
		:insertNode("Root", lyr.names.scannableComponent, {TransY = 1.25})
		:entityLocator(entities.corruptSentinel):done(),
		lyr:sceneTools([[MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED.SCENE.EXML]])
		:insertNode("TopSwivelJNT", lyr.names.scannableComponent, {TransY = 1.25, RotY = 180})
		:entityLocator(entities.corruptSentinel):done(),
		lyr:sceneTools([[MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD.SCENE.EXML]])
		:insertNode("TopSwivelJNT", lyr.names.scannableComponent, {TransY = 1, TransZ = -0.25, RotY = 180})
		:entityLocator(entities.corruptSentinel):done(),
		--#endregion
		-- END OF SCENE ATTACHMENTS
		--#region SCENE FIXES
		{
			mbinPaths = [[MODELS\COMMON\ROBOTS\SENTINELMECH.SCENE.EXML]],
			{
				skw = {
					[[<Property name="Name" value="Scan" />]],
					[[<Property name="Name" value="Identify" />]]
				},
				fields = {
					TransX = 1.5,
					TransY = 1.6
				}
			}
		},
		{
			mbinPaths = [[MODELS\COMMON\ROBOTS\CORRUPTEDDRONE.SCENE.EXML]],
			{
				skw = {
					[[<Property name="Name" value="Scan" />]],
					[[<Property name="Name" value="Identify" />]]
				},
				fields = {
					TransY = 0,
					TransZ = -1.3
				}
			}
		}
		--#endregion
		-- END OF SCENE FIXES
	}

	return tweak
end
lyr.tweakTables.sentinelTweaks = sentinelTweaks

local crystalTweaks = function(tweakName, tweakState)
	local options = scannableComponentTweaks(tweakState, {500, 250, 1.0})

	local tweak = {
		{
			mbinPaths = {
				{
					[[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\STORMCRYSTALS\ENTITIES\STORMCRYSTALS.ENTITY.EXML]],
					[[LYR\ENTITIES\STORMCRYSTAL.SCANNABLE.ENTITY.EXML]]
				}
			}
		},
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\STORMCRYSTALS\ENTITIES\STORMCRYSTALS.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\LIGHTNINGROCK\ENTITIES\LIGHTNINGROCK.ENTITY.EXML]],
			},
			{
				skw = [[<Property name="Template" value="GcScannableComponentData.xml">]],
				removeSection = true
			}
		},
		{
			mbinPaths = [[LYR\ENTITIES\STORMCRYSTAL.SCANNABLE.ENTITY.EXML]],
			{
				pkw = [[<Property value="LinkableNMSTemplate.xml">]],
				fss_nor = [[<Property name="Template" value="GcScannableComponentData.xml">]],
				selectLevel = 1,
				order = {"WISS", "SU"},
				removeSections = true
			},
			{
				fields = {
					ScanRange = options.scanRange,
					AlwaysShowRange = options.visibleRange,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = false
				}
			}
		},
		lyr:sceneTools(
			[[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\STORMCRYSTALS.SCENE.EXML]],
			[[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\LIGHTNINGROCK.SCENE.EXML]]
		)
		:insertNode("StormCrystalsOn", "lyr_stormCrystalScannable", {TransY = 1.5})
		:entityLocator([[LYR\ENTITIES\STORMCRYSTALSCANNABLE.ENTITY.EXML]]):done(),
	}

	return tweak
end
lyr.tweakTables.crystalTweaks = crystalTweaks

local ruinTweaks = function(tweakName, tweakState)
	local options = scannableComponentTweaks(tweakState, {250, 125, 0.5})

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RUINS\PARTS\CRATEKEY\ENTITIES\CRATEKEY.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RUINS\PARTS\CRATELOCK\ENTITIES\CRATELOCK.ENTITY.EXML]],
			},
			{
				fields = {
					ScanRange = options.scanRange,
					AlwaysShowRange = options.visibleRange,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = false
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.ruinTweaks = ruinTweaks

local sentinelLootTweaks = function(tweakName, tweakState)
	local options = scannableComponentTweaks(tweakState, {300, 50, 75})

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\COMMON\ROBOTS\LOOTDROP\CORRUPTLOOT\ENTITIES\CORRUPTLOOT.ENTITY.EXML]],
				[[MODELS\COMMON\ROBOTS\LOOTDROP\DRONELOOT\ENTITIES\DRONELOOT.ENTITY.EXML]],
				[[MODELS\COMMON\ROBOTS\LOOTDROP\MECHLOOT\ENTITIES\MECHLOOT.ENTITY.EXML]],
				[[MODELS\COMMON\ROBOTS\LOOTDROP\QUADLOOT\ENTITIES\DRONELOOT.ENTITY.EXML]],
				[[MODELS\COMMON\ROBOTS\LOOTDROP\QUADLOOT\ENTITIES\QUADLOOT.ENTITY.EXML]],
				[[MODELS\COMMON\ROBOTS\LOOTDROP\SPIDERLOOT\ENTITIES\SPIDERLOOT.ENTITY.EXML]],
				[[MODELS\COMMON\ROBOTS\LOOTDROP\WALKERLOOT\ENTITIES\WALKERLOOT.ENTITY.EXML]],
			},
			{
				fields = {
					ScanRange = options.scanRange,
					AlwaysShowRange = options.visibleRange,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = false
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.sentinelLootTweaks = sentinelLootTweaks

local crashedFreighterTweaks = function(tweakName, tweakState)
	local options = scannableComponentTweaks(tweakState, {250, 125, 0.5})

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRASHEDFREIGHTER\PARTS\CONTAINERTERMINAL\ENTITIES\TERMINALCHAR.ENTITY.EXML]],
			},
			{
				fields = {
					ScanRange = options.scanRange,
					AlwaysShowRange = options.visibleRange,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = false
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.crashedFreighterTweaks = crashedFreighterTweaks

local harmonicScrapTweaks = function(tweakName, tweakState)
	local options = scannableComponentTweaks(tweakState, {250, 125, 0.5})

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\ROBOTBASE\ENTITIES\ROBOTCAMPTREASURE.ENTITY.EXML]],
			},
			{
				fields = {
					ScanRange = options.scanRange,
					AlwaysShowRange = options.visibleRange,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = false
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.harmonicScrapTweaks = harmonicScrapTweaks

local buriedLootTweaks = function(tweakName, tweakState)
	local options = scannableComponentTweaks(tweakState, {500, 75, 0.25})

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\BONEPILE\ENTITIES\BONEPILE.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\SCRAPHEAP\ENTITIES\SCRAPCORE.ENTITY.EXML]],
			},
			{
				fields = {
					ScanRange = options.scanRange*2,
					AlwaysShowRange = options.visibleRange*2,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = false
				}
			}
		},
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\UNDERGROUNDPROP\ENTITIES\UNDERGROUNDPROP.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\UNDERGROUNDCRATE\ENTITIES\UNDERGROUNDCRATE.ENTITY.EXML]],
			},
			{
				fields = {
					ScanRange = options.scanRange,
					AlwaysShowRange = options.visibleRange,
					CompassRangeMultiplier = options.compassMultiplier,
					-- ScanIconType = "BuriedTech",
					AllowedToMerge = false
				}
			}
		},
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\UNDERGROUNDLUMP\ENTITIES\UNDERGROUNDLUMP.ENTITY.EXML]]
			},
			{
				fields = {
					ScanRange = options.scanRange/2,
					AlwaysShowRange = options.visibleRange/2,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = false
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.buriedLootTweaks = buriedLootTweaks

local edibleFloraTweaks = function(tweakName, tweakState)
	local options = scannableComponentTweaks(tweakState, {250, 0, 0.2})

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\COOKING\ALOEFLESH\ENTITIES\ALOEPLANT.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\COOKING\FIREBERRY\ENTITIES\FIREPLANT.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\COOKING\FROZENTUBERS\ENTITIES\FROZENTUBER.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\COOKING\GRAHFRUIT\ENTITIES\GRAHBERRY.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\COOKING\HEPTAWHEAT\ENTITIES\HEPTAWHEAT.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\COOKING\HEXABERRY\ENTITIES\HEXABERRY.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\COOKING\IMPULSEBEANS\ENTITIES\IMPULSEBEANS.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\COOKING\JADEPEAS\ENTITIES\JADEPEAS.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\COOKING\PULPYROOTS\ENTITIES\PULPYROOTS.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\COOKING\SWEETROOT\ENTITIES\SWEETROOT.ENTITY.EXML]],
			},
			{
				fields = {
					ScanRange = options.scanRange,
					AlwaysShowRange = options.visibleRange,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = true
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.edibleFloraTweaks = edibleFloraTweaks

local hazardPlantTweaks = function(tweakName, tweakState)
	local options = scannableComponentTweaks(tweakState, {125, 35, 0.6})

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVE\SPOREVENT\ENTITIES\SPOREVENT.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\TENTACLEPLANT\ENTITIES\TENTACLEPLANT.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\TENTACLEPLANT\ENTITIES\TENTACLEPLANTFLAT.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\TENTACLEPLANT\ENTITIES\TENTACLEPLANTSIDE.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\VENUSFLYTRAP\ENTITIES\VENUSFLYTRAP.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\HAZARDSTEAM\ENTITIES/_HAZARD_GAS.ENTITY.EXML]],
				[[MODELS\PLANETS\CREATURES\FISH\GRABBYPLANT\ENTITIES\GRABBYPLANT.ENTITY.EXML]],
			},
			{
				fields = {
					ScanRange = options.scanRange,
					AlwaysShowRange = options.visibleRange,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = false
				}
			}
		},
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\HAZARDPLANT\ENTITIES\HAZARD.ENTITY.EXML]],
			},
			{
				fields = {
					ScanRange = options.scanRange,
					AlwaysShowRange = options.visibleRange,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = false
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.hazardPlantTweaks = hazardPlantTweaks

local harvestableFloraTweaks = function(tweakName, tweakState)
	local options = scannableComponentTweaks(tweakState, {100, 0, 0.25})

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\BARRENPLANT\ENTITIES\ROOT.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\LUSHPLANT\ENTITIES\ROOT.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\RADIOACTIVEPLANT\ENTITIES\ROOT.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\SCORCHEDPLANT\ENTITIES\ROOT.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\SNOWPLANT\ENTITIES\ROOT.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\BIOMESPECPLANTS\TOXICPLANT\ENTITIES\ROOT.ENTITY.EXML]]
			},
			{
				fields = {
					ScanRange = options.scanRange,
					AlwaysShowRange = options.visibleRange,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = true
				}
			}
		},
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMBARREN\ENTITIES\PLANTINTERACTION.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMDEADCREATURE\ENTITIES\PLANTINTERACTION.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMGRAVITINO\ENTITIES\PLANTINTERACTION.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMLUSH\ENTITIES\PLANTINTERACTION.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMNIP\ENTITIES\PLANTINTERACTION.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMPOOP\ENTITIES\PLANTINTERACTION.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMRADIOACTIVE\ENTITIES\PLANTINTERACTION.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSCORCHED\ENTITIES\PLANTINTERACTION.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSNOW\ENTITIES\PLANTINTERACTION.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMTOXIC\ENTITIES\PLANTINTERACTION.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMVENOMSAC\ENTITIES\PLANTINTERACTION.ENTITY.EXML]],
			},
			{
				fields = {
					ScanRange = options.scanRange/2,
					AlwaysShowRange = options.visibleRange/2,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = true
				}
			}
		},
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMALBUMEN\ENTITIES\PLANTINTERACTION.ENTITY.EXML]],
			},
			{
				fields = {
					ScanRange = options.scanRange/2,
					AlwaysShowRange = options.visibleRange/2,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = true
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.harvestableFloraTweaks = harvestableFloraTweaks

local gravballTweaks = function(tweakName, tweakState)
	local options = scannableComponentTweaks(tweakState, {50, 0, 0.5})

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\PROXIMITYPLANT\ENTITIES\LIGHTUP.ENTITY.EXML]],
			},
			{
				fields = {
					ScanRange = options.scanRange,
					AlwaysShowRange = options.visibleRange,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = true
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.gravballTweaks = gravballTweaks

local hazardEggTweaks = function(tweakName, tweakState)
	local options = scannableComponentTweaks(tweakState, {50, 0, 0.5})

	local tweak = {
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\FIENDEGG\ENTITIES\FIENDEGG.ENTITY.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\FIENDEGG\ENTITIES\FIENDEGG.ENTITY.EXML]],
			},
			{
				fields = {
					ScanRange = options.scanRange,
					AlwaysShowRange = options.visibleRange,
					CompassRangeMultiplier = options.compassMultiplier,
					AllowedToMerge = true
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.hazardEggTweaks = hazardEggTweaks

--#endregion
-- END OF TWEAKS

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_iconTweaks.pak",
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