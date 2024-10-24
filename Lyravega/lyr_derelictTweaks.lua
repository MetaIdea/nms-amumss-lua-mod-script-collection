local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Derelict Tweaks 5.20]]
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
	colourizedDerelictIcons = true,				-- adds a few colourized icons and alters scanline colours for a few derelict objects
	extraDerelictHazardIcons = true,			-- adds hazard icons to a few more derelict objects, like turrets, drones and barrels
	hideLootedStuff = true,						-- looted objects like crates and lockers will not show up on subsequent scans
	hideReadLogs = true,						-- once a log is read, moving away from it makes it uninteractable
	restrictedInteractionRange = true,			-- interaction range for logs and heaters are reduced to prevent accidental interaction
	noSpinningChairs = true,					-- just... why? maybe I should make them explode or something? :D
	derelictMovementSpeed = "fast",				-- options: "fast"/"faster"/"fastest"; options provide 33/66/100% bonus to derelict move/run speeds
--	noDerelictPadRotation = true,				-- landing pads on derelict no longer rotate; may eject as soon as pad is touched

--[=============================================================================================================================[
	Unlike the options above, the tweaks below this block use a table to expose more settings to you
	The table members are as follows: {scanMode, scanTime, scanRange, visibleRange, compassRange}

	scanMode: "Scanner"/"Binoculars" (case sensitive); determines which device the icons show up on
	scanTime: Scanned object icon/scanline visibility duration; only affects those with "Scanner" 'scanMode' selected
	scanRange: At which distance these icons appear on binocs/scanner; icons may not show up till a room is breached
	visibleRange: At which distance these icons are always visible; only active if "Binoculars" 'scanMode' is selected
	compassRange: At which distance these icons appear on compass; may be toned down depending on preference

	It is highly recommended 'colourizedDerelictIcons' and 'smallerIcons' (from 'lyr_iconTweaks.lua') are enabled for these
	Setting these to 'true' will use default settings, methods to disable them work as usual
--]=============================================================================================================================]

	hazardIconTweaks = {"Scanner", 10, 100, 5, 15},			-- affects derelict hazards like infestation (and a few others with extra) (game default "Scanner")
	lootIconTweaks = {"Scanner", 10, 100, 0, 15},			-- affects derelict lootables like crates, lockers and logs (game default "Scanner")
	miscDerelictIconTweaks = {"Scanner", 10, 100, 0, 50},	-- affects derelict interactables like doors, terminals and heaters (game default "Binoculars")
}

--#region METHODS

dofile("lyr_amumss/lyr_amumss.lua")

---@param tweakState any
---@param defaults table
---@return {scanType:"Scanner"|"Binoculars", scanTime:number, scanRange:number, visibleRange:number, compassMultiplier:number}
local derelictScannableComponentTweaks = function(tweakState, defaults)
	local options = tweakState == true and defaults or type(tweakState) == "table" and tweakState or defaults

	if options ~= defaults then
		options.scanType = options[1] and (options[1] == "Scanner" or options[1] == "Binoculars") and options[1] or defaults[1]
		options.scanTime = options[2] and math.max(1, options[2]) or defaults[2]
		options.scanRange = options[3] and math.max(1, options[3]) or defaults[3]
		options.visibleRange = options[4] and math.max(0, options[4]) or defaults[4]
		options.compassMultiplier = options[5] and math.max(0, options[5])/options.scanRange or defaults[5]
	end

	return options
end

local hazards, hazardsExtra = {
	[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/INFESTATION/LARGEPILLARSLIME/ENTITIES/LARGEPILLARSLIME.ENTITY.MBIN]],
	[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/INFESTATION/MEDIUMHANGSLIME/ENTITIES/MEDIUMHANGSLIME.ENTITY.MBIN]],
}, {
	[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\EXPLODINGBARREL\ENTITIES\EXPLODINGBARREL.ENTITY.EXML]],
	[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\TURRET\ENTITIES\TURRET.ENTITY.EXML]],
	[[MODELS\PLANETS\CREATURES\FISH\FREIGHTERJELLYFISH\ENTITIES\FREIGHTERJELLYFISH.ENTITY.EXML]],
	[[MODELS\PLANETS\CREATURES\SPIDERRIG\FREIGHTERFIEND\ENTITIES\FREIGHTERFIEND.ENTITY.EXML]],
	[[MODELS\COMMON\ROBOTS\FREIGHTERDRONE\ENTITIES\FREIGHTERDRONE.ENTITY.EXML]],
}; if lyr:checkTweak("extraDerelictHazardIcons") then for i = 1, #hazardsExtra do hazards[#hazards+1] = hazardsExtra[i] end end

local derelictLootEntity = [[LYR/ENTITIES/DERELICTLOOT.ENTITY.MBIN]]
local derelictLootTriggerActionComponent = "lyr_triggerActionComponent"

--#endregion
-- END OF METHODS

--#region TWEAKS

local colourizedDerelictIcons = {}
colourizedDerelictIcons.files = function(tweakName, tweakState)
	local files = {
		{[[\lyr_files\colourizedDerelictIcons\SCANNING\*.DDS]], [[\TEXTURES\UI\HUD\ICONS\SCANNING\]]},
		{[[\lyr_files\colourizedDerelictIcons\PICKUPS\*.DDS]], [[\TEXTURES\UI\HUD\ICONS\PICKUPS\]]},
	}

	return files
end
colourizedDerelictIcons.tweaks = function(tweakName, tweakState)
	local tweaks = {
		{
			mbinPaths = [[METADATA\UI\HUD\SCANNERICONS.EXML]],
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
				fields = {R = 0, G = 0.2, B = 0.8, A = 1}
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
		{
			mbinPaths = hazards,
			{
				fields = {
					ScanIconType = "Hazard"
				}
			}
		},
		{
			mbinPaths = {
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/NPCROOMS/NPC_ABANDFRIGATECAPTAIN/ENTITIES/ABANFRIGATETERMINALCAPTAIN.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/NPCROOMS/NPC_ABANDFRIGATECAPTAIN/ENTITIES/ABANFRIGATETERMINALCREW.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/NPCROOMS/NPC_ABANDFRIGATECAPTAIN/ENTITIES/ABANFRIGATETERMINALFINAL.ENTITY.MBIN]],
			},
			{
				skw = [[<Property name="Template" value="GcScannableComponentData.xml">]],
				fields = {
					UseModelNode = false
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
	}

	return tweaks
end
lyr.tweakFiles.colourizedDerelictIcons = colourizedDerelictIcons.files
lyr.tweakTables.colourizedDerelictIcons = colourizedDerelictIcons.tweaks

local extraDerelictHazardIcons = function(tweakName, tweakState)
	local tweak = {
		processOrder = 1,
		{
			mbinPaths = hazards[1],
			{
				pkw = "LinkableNMSTemplate.xml",
				fs = [[<Property name="Template" value="GcScannableComponentData.xml">]],
				copySection = true
			}
		},
		{
			mbinPaths = hazardsExtra,
			{
				pkw = "Components",
				pasteSection = true
			},
			{
				fields = {
					{"NameOverride", lyr.ignore, "ShootableName"},
					{"ScanName", lyr.ignore, "{:}ShootableName"}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.extraDerelictHazardIcons = extraDerelictHazardIcons

local noSpinningChairs = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\CHAIRS\TABLECHAIR\ENTITIES\TABLECHAIR1.ENTITY.EXML]],
			{
				skw = [[<Property name="Template" value="GcSimpleInteractionComponentData.xml">]],
				selectLevel = 1,
				removeSection = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.noSpinningChairs = noSpinningChairs

local derelictMovementSpeed = function(tweakName, tweakState)
	local options = {
		fast = "@*1.33",
		faster = "@*1.66",
		fastest = "@*2"
	}; tweakState = type(tweakState) == "string" and options[tweakState] or options.fast

	local tweak = {
		{
			mbinPaths = [[GCPLAYERGLOBALS.GLOBAL.EXML]],
			{
				fields = {
					GroundWalkSpeedLowG = tweakState,
					GroundRunSpeedLowG = tweakState
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.derelictMovementSpeed = derelictMovementSpeed

local noDerelictPadRotation = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = {
				[[MODELS\SPACE\POI\PARTS\DUNGEON_ENTRANCE\ENTITIES\DUNGEONENTRANCE.ENTITY.EXML]],
				[[MODELS\COMMON\SPACECRAFT\COMMONPARTS\ABANDONEDPARTS\DUNGEONENTRANCE\ENTITIES\DUNGEONENTRANCE.ENTITY.EXML]],
			},
			{
				skw = {"Template", "GcOutpostComponentData.xml"},
				fields = {
					RotateToDock = false
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.noDerelictPadRotation = noDerelictPadRotation

local hideReadLogs = function(tweakName, tweakState)
	local tweak = {
		--#region DERELICT LOGS
		{
			mbinPaths = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\DATA_PAD.SCENE.EXML]],
			{
				skw = [[<Property name="Name" value="Data_pad" />]],
				pkw = "Children",
				copySection = true
			},
			{
				skw = {"Name", "Data_pad", "Type", "MESH"},
				removeSections = true
			},
			{
				editSection = true,
				pkw = "TkSceneNodeData.xml",
				fs = [[<Property name="Type" value="MESH" />]],
				fields = {
					TransY = 0
				},
				replaceAll = true
			},
			{
				editSection = true,
				pkw = "TkSceneNodeData.xml",
				fs_nor = [[<Property name="Type" value="MESH" />]],
				removeSection = true
			},
			{
				trimSection = true
			},
			{
				skw = [[<Property name="Name" value="Datapad" />]],
				pkw = "Children",
				pasteSection = true
			},
		},
		{
			mbinPaths = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DAMAGEDMACHINERY\DAMAGEDMACHINERY_POD\ENTITIES\INTERIOR.ENTITY.EXML]],
			{
				pkw = "LinkableNMSTemplate.xml",
				fs = [[<Property name="Template" value="GcTriggerActionComponentData.xml">]],
				copySection = derelictLootTriggerActionComponent
			},
			{
				editSection = derelictLootTriggerActionComponent,
				skw = [[<Property name="StateID" value="INTERIOROFF" />]],
				pkw = "GcActionTrigger.xml",
				fs_nor = [[<Property name="Event" value="GcStateTimeEvent.xml">]],
				removeSection = true
			},
			{
				editSection = derelictLootTriggerActionComponent,
				skw = [[<Property name="StateID" value="INTERIOROFF" />]],
				pkw = "Action",
				purgeSection = true
			},
			{
				editSection = derelictLootTriggerActionComponent,
				skw = [[<Property name="StateID" value="INTERIOROFF" />]],
				fields = {
					StateID = "INACTIVE",
				}
			},
			{
				editSection = derelictLootTriggerActionComponent,
				skw = [[<Property name="StateID" value="INTERIORON" />]],
				pkw = "GcNodeActivationAction.xml",
				copySection = true
			},
			{
				editSection = derelictLootTriggerActionComponent,
				skw = [[<Property name="StateID" value="INTERIORON" />]],
				pkw = "GcActionTrigger.xml",
				fs_nor = [[<Property name="Event" value="GcPlayerNearbyEvent.xml">]],
				removeSection = true
			},
			{
				editSection = derelictLootTriggerActionComponent,
				skw = [[<Property name="StateID" value="INTERIORON" />]],
				pkw = "Action",
				pasteSection = true
			},
			{
				editSection = derelictLootTriggerActionComponent,
				skw = [[<Property name="StateID" value="INTERIORON" />]],
				fields = {
					StateID = "LOOT",
					NodeActiveState = "Remove",
					Name = "Data_pad",
					UseMasterModel = false,
					AffectModels = true,
					Distance = lyr.tweakStates.restrictedInteractionRange and 3.5 or 6.5,
					TeleporterCountsAsPlayer = false,
					State = "INACTIVE"
				}
			}
		},
		{
			mbinPaths = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\DATA_PAD\ENTITIES\DATA_PAD.ENTITY.EXML]],
			{
				pkw = "Components",
				pasteSection = derelictLootTriggerActionComponent
			},
			{
				fields = {
					TriggerAction = "LOOT",
				}
			}
		},
		--#endregion
		-- END OF DERELICT LOGS
	}

	return tweak
end
lyr.tweakTables.hideReadLogs = hideReadLogs

local restrictedInteractionRange = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\DATA_PAD\ENTITIES\DATA_PAD.ENTITY.EXML]],
			{
				fields = {
					UseInteractCamera = false,
					InteractDistance = 2
				}
			}
		},
		{
			mbinPaths = [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/STANDINGLIGHT_SMALL/ENTITIES/STANDINGLIGHT_SMALL.ENTITY.MBIN]],
			{
				fields = {
					InteractDistance = 2.5
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.restrictedInteractionRange = restrictedInteractionRange

local hideLootedStuff = function(tweakName, tweakState)
	local tweak = {
		processOrder = 1,
		--#region TRIGGER ACTION COMPONENT EXTRACTION
		{
			mbinPaths = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\CRYOCHAMBER\ENTITIES\CRYOINTERACTION.ENTITY.EXML]],
			{
				skw = [[<Property name="Template" value="GcTriggerActionComponentData.xml">]],
				selectLevel = 1,
				copySection = derelictLootTriggerActionComponent
			},
			{
				editSection = derelictLootTriggerActionComponent,
				skw = [[<Property name="StateID" value="INACTIVE" />]],
				pkw = "Action",
				purgeHeader = true	-- need the default (?) state to not have any shit in it
			},
			{
				editSection = derelictLootTriggerActionComponent,
				skw = [[<Property name="StateID" value="ENABLE" />]],
				fields = {
					StateID = "LOOT",	-- custom name, does not matter
				}
			}
		},
		--#endregion
		-- END OF TRIGGER ACTION EXTRACTION
		{
			mbinPaths = {{[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/CRATEM_AMMO/ENTITIES/CRATEMAMMO.ENTITY.MBIN]], derelictLootEntity}}
		},
		{
			mbinPaths = derelictLootEntity,
			{
				pkw = "LinkableNMSTemplate.xml",
				fs_nor = [[<Property name="Template" value="GcScannableComponentData.xml">]],
				removeSections = true
			}
		},
		{
			mbinPaths = {
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/CRATEM/ENTITIES/CRATEM.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/FOOT_LOCKER/ENTITIES/FOOTLOCKER.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/INTERACTIVE_CASE/ENTITIES/SMALLCASE.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/LOCKER/ENTITIES/LOCKER.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/CRATEM_AMMO/ENTITIES/CRATEMAMMO.ENTITY.MBIN]]
			},
			{
				skw = [[<Property name="Template" value="GcScannableComponentData.xml">]],
				selectLevel = 1,
				removeSections = true	-- remove the scannable component from the original entities
			},
			{
				skw = [[<Property name="Template" value="GcSimpleInteractionComponentData.xml">]],
				fields = {
					TriggerAction = "LOOT"	-- change the trigger interact action
				}
			},
			{
				editSection = derelictLootTriggerActionComponent,
				skw = [[<Property name="StateID" value="LOOT" />]],
				fields = {
					NodeActiveState = "Remove",
					Name = lyr.names.scannableComponent,
					IncludePhysics = false,
					IncludeChildPhysics = false,
					NotifyNPC = false,
					UseMasterModel = false,	-- needs to be 'false', otherwise these changes affect all
					UseLocalNode = false,
					RestartEmitters = true,
					AffectModels = true,
				}
			},
			{
				pkw = "Components",
				pasteSection = derelictLootTriggerActionComponent	-- paste the trigger action component
			}
		},
		lyr:sceneTools(
			[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/CRATEM.SCENE.MBIN]],
			[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/FOOT_LOCKER.SCENE.MBIN]],
			[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/INTERACTIVE_CASE.SCENE.MBIN]],
			[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/LOCKER.SCENE.MBIN]],
			[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/CRATEM_AMMO.SCENE.MBIN]]
		)
		:insertNode(nil, lyr.names.scannableComponent)
		:entityLocator(derelictLootEntity):done(),
	}

	return tweak
end
lyr.tweakTables.hideLootedStuff = hideLootedStuff

local hazardIconTweaks = function(tweakName, tweakState)
	local options = derelictScannableComponentTweaks(tweakState, {"Scanner", 10, 100, 5, 0.15})

	local tweak = {
		{
			mbinPaths = hazards,
			{
				pkw = "LinkableNMSTemplate.xml",
				fs = [[<Property name="Template" value="GcScannableComponentData.xml">]],
				fields = {
					ScannableType = options.scanType,
					ScanTime = options.scanTime,
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
lyr.tweakTables.hazardIconTweaks = hazardIconTweaks

local lootIconTweaks = function(tweakName, tweakState)
	local options = derelictScannableComponentTweaks(tweakState, {"Scanner", 10, 100, 0, 0.15})

	local tweak = {
		{
			mbinPaths = lyr.tweakStates.hideLootedStuff and {
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/DATA_PAD/ENTITIES/DATA_PAD.ENTITY.MBIN]],
				derelictLootEntity,	-- common entity for lootables below
			} or {
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/CRATEM/ENTITIES/CRATEM.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/FOOT_LOCKER/ENTITIES/FOOTLOCKER.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/INTERACTIVE_CASE/ENTITIES/SMALLCASE.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/LOCKER/ENTITIES/LOCKER.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/CRATEM_AMMO/ENTITIES/CRATEMAMMO.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/DATA_PAD/ENTITIES/DATA_PAD.ENTITY.MBIN]],
			},
			{
				pkw = "LinkableNMSTemplate.xml",
				fs = [[<Property name="Template" value="GcScannableComponentData.xml">]],
				fields = {
					ScannableType = options.scanType,
					ScanTime = options.scanTime,
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
lyr.tweakTables.lootIconTweaks = lootIconTweaks

local miscDerelictIconTweaks = function(tweakName, tweakState)
	local options = derelictScannableComponentTweaks(tweakState, {"Scanner", 10, 100, 0, 0.5})

	local tweak = {
		{
			mbinPaths = {
				-- [[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/HEATER/ENTITIES/HEATER.ENTITY.MBIN]],	-- base decoration
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/NPCROOMS/NPC_ABANDFRIGATECAPTAIN/ENTITIES/ABANFRIGATETERMINALCAPTAIN.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/NPCROOMS/NPC_ABANDFRIGATECAPTAIN/ENTITIES/ABANFRIGATETERMINALCREW.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/NPCROOMS/NPC_ABANDFRIGATECAPTAIN/ENTITIES/ABANFRIGATETERMINALFINAL.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/MESHES/ANIMATEDDOOR/ENTITIES/ANIMATEDDOOR.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/PROPS/STANDINGLIGHT_SMALL/ENTITIES/STANDINGLIGHT_SMALL.ENTITY.MBIN]],
				[[MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/SPACEBASE/TELEPORTER/ENTITIES/TELEPORTER.ENTITY.MBIN]],
			},
			{
				pkw = "LinkableNMSTemplate.xml",
				fs = [[<Property name="Template" value="GcScannableComponentData.xml">]],
				fields = {
					ScannableType = options.scanType,
					ScanTime = options.scanTime,
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
lyr.tweakTables.miscDerelictIconTweaks = miscDerelictIconTweaks

--#endregion
-- END OF TWEAKS

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_derelictTweaks.pak",
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