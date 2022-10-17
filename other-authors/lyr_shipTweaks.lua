local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Ship Tweaks 1.0]]
local gameVersion = "4.0+"

--[[
	Below in the 'enabledTweaks' table are toggles for the changes. What they do is commented next to them. Change the value to 'false' to disable the modifications.
]]

local enabledTweaks = {
	increaseLootRange = true,				-- massively increases the range loot is collected
	improveShipScanner = true,				-- halves the scanner cooldown, boosts max icon range, tries to force results
	superShipScanner = true,				-- yields lots of results that are normally not available to ship scanners
	hideAsteroidsFromScan = true,			-- hides rich asteroids from scanner
	allowHover = true,						-- allows hovering in atmosphere (ship still drifts slightly forward)
	improveTeleporter = true,				-- increases the teleporter upgrade range (also a new customizable difficulty setting)
	lesserRestrictions = 0.5,				-- less space flight restrictions
	increaseShipSpeeds = 1.25,				-- increases ship speeds
	reduceMiniWarpFlash = true,				-- reduces the pulse drive flash by a lot
	increaseMiniWarpSpeed = 2.5,			-- increases the pulse drive speed and makes it shake the ship more
	improveMiniWarpAttraction = true,		-- slightly reduces the auto-lock angles while charging the pulse drive, removes for other player stuff
}

--[[
	Below in the 'tweaks' table are the changes. If you'd like to change them directly, change the 'altered' values and leave 'default' ones as they are.
	Fields with same 'altered' and 'default' values won't be processed by AMUMSS. The 'default' values (generated pre-4.0) serve as more of a reference.
	Not every field value is changed. Some are only exposed for testing purposes and to toy around with, usually belonging to the same sections.
]]

local tweaks = {
	increaseLootRange = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					LootAttractDistance = {default = 120, altered = 500},
					LootAttractTime = {default = 0.2, altered = 1.0},
					LootDampForce = {default = 0.5, altered = 0.5},
					LootCollectDistance = {default = 20, altered = 100}
				}
			}
		}
	},
	improveShipScanner = {
		["GCBUILDINGGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MaxIconRange = {default = 1200, altered = 10000},
					MinShipScanBuildings = {default = 0, altered = enabledTweaks.superShipScanner and 8 or 4},
					MaxShipScanBuildings = {default = 2, altered = enabledTweaks.superShipScanner and 16 or 8},
				}
			}
		},
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = {"ShipScan"},
				fields = {
					ScanType = {default = "Ship", altered = enabledTweaks.superShipScanner and "DebugPlanet" or "Ship"}, -- change this to 'DebugPlanet' to see something magical
					PulseRange = {default = 10000, altered = 10000},
					PulseTime = {default = 3, altered = 3},
					PlayAudioOnMarkers = {default = true, altered = true},
					ChargeTime = {default = 10, altered = 5}
				}
			}
		}
	},
	hideAsteroidsFromScan = {
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
	allowHover = {
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
	improveTeleporter = {
		["METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"] = {
			{
				specialKeyWords = {"ID", "SHIP_TELEPORT"},
				fields = {
					Bonus = {default = 100, altered = 500}
				}
			}
		}
	},
	lesserRestrictions = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					NoBoostStationDistance = {default = 2000, multiplier = enabledTweaks.lesserRestrictions},
					NoBoostAnomalyDistance = {default = 3000, multiplier = enabledTweaks.lesserRestrictions},
					NoBoostSpaceAnomalyDistance = {default = 700, multiplier = enabledTweaks.lesserRestrictions},
					NoBoostFreighterDistance = {default = 800, multiplier = enabledTweaks.lesserRestrictions},
					NoBoostShipDistance = {default = 2000, multiplier = enabledTweaks.lesserRestrictions},
					MiniWarpPlanetRadius = {default = 500, multiplier = enabledTweaks.lesserRestrictions},
					MiniWarpStationRadius = {default = 700, multiplier = enabledTweaks.lesserRestrictions}
				},
				multiply = true
			}
		}
	},
	increaseShipSpeeds = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				forEachSpecialKeyWords = {
					{"SpaceEngine", "GcPlayerSpaceshipEngineData.xml"},
					{"PlanetEngine", "GcPlayerSpaceshipEngineData.xml"},
					{"CombatEngine", "GcPlayerSpaceshipEngineData.xml"},
					{"AtmosCombatEngine", "GcPlayerSpaceshipEngineData.xml"}
				},
				fields = {
					MaxSpeed = enabledTweaks.increaseShipSpeeds,
					BoostMaxSpeed = enabledTweaks.increaseShipSpeeds
				},
				multiply = true,
				replaceAll = true
			}
		}
	},
	reduceMiniWarpFlash = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpFlashIntensity = {default = 0.9, altered = 0.1},
					MiniWarpFlashDuration = {default = 0.9, altered = 1},
					MiniWarpFlashDelay = {default = 0, altered = 0}
				}
			}
		}
	},
	increaseMiniWarpSpeed = {
		["GCSPACESHIPGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniWarpSpeed = {default = 30000, multiplier = enabledTweaks.increaseMiniWarpSpeed},
					MiniWarpChargeTime = {default = 2, altered = 2},
					MiniWarpExitTime = {default = 0.5, altered = 0.5},
					MiniWarpTopSpeedTime = {default = 0.1, multiplier = enabledTweaks.increaseMiniWarpSpeed},
					MiniWarpCooldownTime = {default = 2, altered = 1},
					MiniWarpShakeStrength = {default = 2, altered = 5}
				}
			}
		}
	},
	improveMiniWarpAttraction = {
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

local combineTweaks = function(tweakTables)
	local combinedTweaks = {}

	for tweakName, tweakTable in pairs(tweakTables) do
		if enabledTweaks[tweakName] or tweakName == "misc" then
			for mbinPath, changeTables in pairs(tweakTable) do
				if string.find(mbinPath, ".EXML", 1, true) then
					mbinPath = string.gsub(mbinPath, ".EXML", ".MBIN")
				elseif not string.find(mbinPath, ".MBIN", 1, true) then
					mbinPath = mbinPath..".MBIN"
				end
				combinedTweaks[mbinPath] = combinedTweaks[mbinPath] or {}

				for _, changeTable in pairs(changeTables) do
					if changeTable.forEachSpecialKeyWords then
						local forEachSpecialKeyWords = changeTable.forEachSpecialKeyWords
						changeTable.forEachSpecialKeyWords = nil

						for i, specialKeyWordPair in pairs(forEachSpecialKeyWords) do
							local newChangeTable = {}

							for k,v in pairs(changeTable) do
								newChangeTable[k] = v
							end

							newChangeTable.specialKeyWords = specialKeyWordPair

							table.insert(combinedTweaks[mbinPath], newChangeTable)
						end
					else
						table.insert(combinedTweaks[mbinPath], changeTable)
					end
				end
			end
		end
	end

	return combinedTweaks
end

local processTweaksTable = function(tweakTables)
	local masterChangeTable = {}
	local combinedTweaks = combineTweaks(tweakTables)

	for mbinPath, changeTables in pairs(combinedTweaks) do
		local mbinChangeTable = {
			MBIN_FILE_SOURCE = mbinPath,
			EXML_CHANGE_TABLE = {}
		}
		local exmlChangeTable = mbinChangeTable.EXML_CHANGE_TABLE

		for _, changeTable in pairs(changeTables) do
			local convertedChangeTable = {
				SECTION_UP = changeTable.selectLevel or nil,
				PRECEDING_KEY_WORDS = changeTable.precedingKeyWords or nil,
				SPECIAL_KEY_WORDS = changeTable.specialKeyWords or nil,
				REPLACE_TYPE = changeTable.replaceAll and "ALL" or nil,
				REMOVE = changeTable.removeSection and "SECTION" or nil,
				MATH_OPERATION = changeTable.multiply and "*" or nil,
			}

			if changeTable.removeSection then
				table.insert(exmlChangeTable, changeTable.priority or #exmlChangeTable+1, convertedChangeTable)
			elseif changeTable.addSection then
				convertedChangeTable.ADD_OPTION = "ADDafterSECTION"
				convertedChangeTable.ADD = changeTable.section
				table.insert(exmlChangeTable, changeTable.priority or #exmlChangeTable+1, convertedChangeTable)
			else
				local valueChangeTable = {}

				for fieldName, fieldValue in pairs(changeTable.fields) do
					if type(fieldValue) == "table" then
						if changeTable.multiply then
							if fieldValue.multiplier then
								table.insert(valueChangeTable, {fieldName, fieldValue.multiplier})
							end
						else
							if fieldValue.altered ~= nil and fieldValue.altered ~= fieldValue.default then
								table.insert(valueChangeTable, {fieldName, fieldValue.altered})
							elseif fieldValue.multiplier then
								table.insert(valueChangeTable, {fieldName, fieldValue.default * fieldValue.multiplier})
							end
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

		if #exmlChangeTable > 0 then
			table.insert(masterChangeTable, mbinChangeTable)
		end
	end

	return masterChangeTable
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_shipTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	MODIFICATIONS =	{{MBIN_CHANGE_TABLE = processTweaksTable(tweaks)}}
}