local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Ship Tweaks 1.1]]
local gameVersion = "4.0+"

--[[
	Below in the 'enabledTweaks' table are modification names and what they do is commented next to them. 
	Change the values to 'false' (without ''; someModification = false,) to disable the modifications.
]]

local enabledTweaks = {
	looterExplorer = true,					-- ship loot collection distance is massively increased
	improvedShipScannerPulse = true,		-- halves the ship scanner pulse cooldown, boosts max icon range, displays more results
	superShipScannerPulse = true,			-- yields lots of results that are normally not available to ship scanners, dependant on 'improvedShipScannerPulse'
	noAsteroidsOnScanner = true,			-- hides rich asteroids from ship scanner pulse
	distantItemTeleporter = true,			-- increases the ship teleporter upgrade range
	shipSpeedMult = 1.25,					-- ship top speeds in all conditions are multiplied by the given value
	spaceDustCleaner = true,				-- reduces the amount and the visibility of the particle effects during boosting / using pulse drive
	flightRestrictionMult = 0.25,			-- some flight restrictions are eased by the given multiplier value for a more pleasant joyride
	shipAtmosphereHover = true,				-- allows ship hovering in the atmospheres
	pulseDriveSpeedMult = 2.5,				-- pulse drive top speed is multiplied by the given value, it shakes the ship more and cools down faster
	reducePulseDriveFlash = true,			-- the initial screen flash caused by the activation of pulse drive is toned down
	preciseNavigation = true,				-- the auto-locking feature of the pulse drive now have more strict angles and ignores other player stuff
}

local tweaks = {
	looterExplorer = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					LootAttractDistance = {default = 120, altered = 1000},
					LootAttractTime = {default = 0.2, altered = 1.0},
					LootDampForce = {default = 0.5, altered = 0.5},
					LootCollectDistance = {default = 20, altered = 100}
				}
			}
		}
	},
	improvedShipScannerPulse = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MaxIconRange = {default = 1200, altered = enabledTweaks.superShipScannerPulse and 100000 or 20000},
					MinShipScanBuildings = {default = 0, altered = enabledTweaks.superShipScannerPulse and 6 or 4},
					MaxShipScanBuildings = {default = 2, altered = enabledTweaks.superShipScannerPulse and 30 or 20}
				}
			}
		},
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = {"ShipScan"},
				fields = {
					ScanType = {default = "Ship", altered = enabledTweaks.superShipScannerPulse and "DebugPlanet" or "Ship"},
					PulseRange = {default = 10000, altered = enabledTweaks.superShipScannerPulse and 100000 or 20000},
					PulseTime = {default = 3, altered = 5},
					PlayAudioOnMarkers = {default = true, altered = true},
					ChargeTime = {default = 10, altered = 5}
				}
			}
		}
	},
	noAsteroidsOnScanner = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					AsteroidScanMaxShown = {default = 3, altered = 0},
					AsteroidScanTime = {default = 70, altered = 0},
					AsteroidScanRange = {default = 1000000, altered = 0}
				}
			}
		}
	},
	distantItemTeleporter = {
		["METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"] = {
			{
				specialKeyWords = {"ID", "SHIP_TELEPORT"},
				fields = {
					Bonus = {default = 100, altered = 500}
				}
			}
		}
	},
	shipSpeedMult = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {
					{"SpaceEngine", "GcPlayerSpaceshipEngineData.xml"},
					{"PlanetEngine", "GcPlayerSpaceshipEngineData.xml"},
					{"CombatEngine", "GcPlayerSpaceshipEngineData.xml"},
					{"AtmosCombatEngine", "GcPlayerSpaceshipEngineData.xml"}
				},
				fields = {
					MaxSpeed = enabledTweaks.shipSpeedMult,
					BoostMaxSpeed = enabledTweaks.shipSpeedMult
				},
				multiply = true,
				replaceAll = true
			}
		}
	},
	spaceDustCleaner = {
		{
			mbinPaths = {
				"MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES.SPEEDLINE.MBIN",
				"MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN",
				"MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN",
				"MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES4.SPEEDLINE.MBIN",
				"MODELS/EFFECTS/SPEEDLINES/SPACE.SPEEDLINE.MBIN",
				"MODELS/EFFECTS/SPEEDLINES/SPACE2.SPEEDLINE.MBIN",
				"MODELS/EFFECTS/SPEEDLINES/SPACEBIG.SPEEDLINE.MBIN"
			},
			{
				fields = {
					NumberOfParticles = 0.10,
					Alpha = 0.35,
					Lifetime = 0.5,
					FadeTime = 0.5
				},
				multiply = true
			}
		}
	},
	flightRestrictionMult = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					NoBoostStationDistance = {default = 2000, multiplier = enabledTweaks.flightRestrictionMult},
					NoBoostAnomalyDistance = {default = 3000, multiplier = enabledTweaks.flightRestrictionMult},
					NoBoostSpaceAnomalyDistance = {default = 700, multiplier = enabledTweaks.flightRestrictionMult},
					NoBoostFreighterDistance = {default = 800, multiplier = enabledTweaks.flightRestrictionMult},
					NoBoostShipDistance = {default = 2000, multiplier = enabledTweaks.flightRestrictionMult},
					MiniWarpMinPlanetDistance = {default = 2500, multiplier = enabledTweaks.flightRestrictionMult},
					MiniWarpPlanetRadius = {default = 500, multiplier = enabledTweaks.flightRestrictionMult},
					MiniWarpStationRadius = {default = 700, multiplier = enabledTweaks.flightRestrictionMult}
				},
				multiply = true
			}
		}
	},
	shipAtmosphereHover = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = {"PlanetEngine"},
				replaceAll = true,
				fields = {
					MinSpeed = 0.1;
				}
			}
		}
	},
	pulseDriveSpeedMult = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpSpeed = {default = 30000, multiplier = enabledTweaks.pulseDriveSpeedMult},
					MiniWarpChargeTime = {default = 2, altered = 2},
					MiniWarpExitTime = {default = 0.5, altered = 0.5},
					MiniWarpTopSpeedTime = {default = 0.1, multiplier = enabledTweaks.pulseDriveSpeedMult},
					MiniWarpCooldownTime = {default = 2, altered = 1},
					MiniWarpShakeStrength = {default = 2, altered = 5}
				}
			}
		}
	},
	reducePulseDriveFlash = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpFlashIntensity = {default = 0.9, altered = 0.075},
					MiniWarpFlashDuration = {default = 0.9, altered = 0.75},
					MiniWarpFlashDelay = {default = 0, altered = 0}
				}
			}
		}
	},
	preciseNavigation = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpHUDArrowAttractAngle = {default = 10, altered = 8},
					MiniWarpHUDArrowAttractAngleStation = {default = 5, altered = 4},
					MiniWarpHUDArrowAttractAngleOtherPlayerStuff = {default = 2, altered = 0},
					MiniWarpHUDArrowAttractAngleSaveBeacon = {default = 2.5, altered = 2},
					MiniWarpHUDArrowAttractAngleDense = {default = 4, altered = 1},
					MiniWarpHUDArrowNumMarkersToBeDense = {default = 6, altered = 10},
				}
			}
		}
	}
}

local processTweaksTable
processTweaksTable = function(tweakTables)
	local modificationTables = {}

	for tweakName, tweakTable in next, tweakTables do
		if enabledTweaks[tweakName] or tweakName == "misc" then
			for mbinPath, changeTables in pairs(tweakTable) do
				local mbinChangeTable = {
					MBIN_FILE_SOURCE = type(mbinPath)=="string" and mbinPath or changeTables.mbinPaths,
					EXML_CHANGE_TABLE = {}
				}; local exmlChangeTable = mbinChangeTable.EXML_CHANGE_TABLE

				for _, changeTable in ipairs(changeTables) do
					local convertedChangeTable = {
						SECTION_UP = changeTable.selectLevel or nil,
						PRECEDING_KEY_WORDS = changeTable.precedingKeyWords or nil,
						SPECIAL_KEY_WORDS = changeTable.specialKeyWords and type(changeTable.specialKeyWords[1])~="table" and changeTable.specialKeyWords or nil,
						FOREACH_SKW_GROUP = changeTable.specialKeyWords and type(changeTable.specialKeyWords[1])=="table" and changeTable.specialKeyWords or nil,
						REPLACE_TYPE = changeTable.replaceAll and "ALL" or nil,
						MATH_OPERATION = changeTable.multiply and "*" or nil,
						REMOVE = changeTable.removeSection and "SECTION" or nil,
						ADD_OPTION = changeTable.addSection and "ADDafterSECTION" or nil,
						ADD = changeTable.addSection and changeTable.section or nil,
						SECTION_SAVE_TO = changeTable.copySection or nil,
						SECTION_EDIT = changeTable.editSection or nil,
						SECTION_ADD_NAMED = changeTable.pasteSection or nil
					}

					if changeTable.addSection or changeTable.removeSection or changeTable.copySection or changeTable.pasteSection then
						table.insert(exmlChangeTable, convertedChangeTable)
					elseif changeTable.fields then
						local valueChangeTable = {}

						for fieldName, fieldValue in pairs(changeTable.fields) do
							if type(fieldValue) == "table" then
								if fieldValue.altered ~= nil and fieldValue.altered ~= fieldValue.default then
									table.insert(valueChangeTable, {fieldName, fieldValue.altered})
								elseif fieldValue.multiplier and fieldValue.multiplier ~= 1 then
									table.insert(valueChangeTable, {fieldName, changeTable.multiply and fieldValue.multiplier or fieldValue.default * fieldValue.multiplier})
								end
							else
								table.insert(valueChangeTable, {fieldName, fieldValue})
							end
						end

						if #valueChangeTable > 0 then
							convertedChangeTable.VALUE_CHANGE_TABLE = valueChangeTable
							table.insert(exmlChangeTable, convertedChangeTable)
						end
					end
				end

				if #exmlChangeTable > 0 or type(changeTables.mbinPaths)=="table" then
				    local modificationTable = {MBIN_CHANGE_TABLE = {mbinChangeTable}}
					table.insert(modificationTables, modificationTable)
				end
			end
		end
	end

	return modificationTables
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_shipTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS",
	MODIFICATIONS =	processTweaksTable(tweaks)
}