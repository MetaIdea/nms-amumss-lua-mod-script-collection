local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Other Tweaks 1.1]]
local gameVersion = "4.0+"

--[[
	Below in the 'enabledTweaks' table are modification names and what they do is commented next to them. 
	Change the values to 'false' (without ''; someModification = false,) to disable the modifications.
]]

local enabledTweaks = {
	hangarSalvageTerminal = true,			-- adds salvage terminals to the freighter hangar, below stairs (generates WARNING, can be ignored)
	passiveProtectionTechs = true,			-- changes active hazard protection tech upgrades to passive ones (S:4-7%, A:2-4%, B:1-2%)
	noWeaponFlashes = true,					-- removes muzzle and projectile flashes from weapons
	maximizedTechs = false,					-- procedurally generated tech upgrade values are maximized
	noInventoryDamage = true,				-- disables the damage that the installed techs suffer
	lessMaintenance = true,					-- some damaged objects; crates and tech debris no longer require maintenance
	noPortalCharging = true,				-- removes portal charging steps
	shorterToastMessages = true,			-- shortens the toast message duration of expedition stages, milestones and planet discoveries
	fasterInteractions = true,				-- hold interactions require less... holding
	lessScreenFlashes = true,				-- reduces the duration and intensity of some screen flashes (entering/exiting vehicles, miniportals)
	blackScreenFlashes = true,				-- turns some screen flashes to black (entering/exiting vehicles, miniportals)
	rapidToolScanner = true,				-- tool scanners recharge much faster and their range is bumped up a little
	darkerScannerPulse = true,				-- tones ALL of the (tool, vehicle, ship) scanner pulse colours down
}

local tweaks = {
	hangarSalvageTerminal = {
		{
			mbinPaths = {"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT.SCENE.MBIN"},
			{
				specialKeyWords = {"Name","RefHangarLayout"},
				copySection = "reference",
			}
		},
		{
			mbinPaths = {"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR.SCENE.MBIN"},
			{
				precedingKeyWords = {"Children"},
				pasteSection = "reference"
			},
			{
				specialKeyWords = {"Name","RefHangarLayout"},
				fields = {
					Name = "SalvageTerminalR",
					NameHash = 0,
					TransX = 22.66539,
					TransY = -4.297458,
					TransZ = -25,
					Value = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SHIPSALVAGETERMINAL.SCENE.MBIN"
				}
			},
			{
				precedingKeyWords = {"Children"},
				pasteSection = "reference"
			},
			{
				specialKeyWords = {"Name","RefHangarLayout"},
				fields = {
					Name = "SalvageTerminalL",
					NameHash = 0,
					TransX = -22.66539,
					TransY = -4.297458,
					TransZ = -25,
					Value = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SHIPSALVAGETERMINAL.SCENE.MBIN"
				}
			},
		},
	},
	passiveProtectionTechs = {
		["METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"] = {
			{
				specialKeyWords = {
					{"ID", "T_COLDPROT"},
					{"ID", "T_HOTPROT"},
					{"ID", "T_TOX"},
					{"ID", "T_RAD"}
				},
				fields = {
					Upgrade = {default = false, altered = true},
					Chargeable = {default = true, altered = false},
					ChargeAmount = {default = 80, altered = 100}
				}
			},
			{
				precedingKeyWords = {"ChargeBy"},
				specialKeyWords = {
					{"ID", "T_COLDPROT"},
					{"ID", "T_HOTPROT"},
					{"ID", "T_TOX"},
					{"ID", "T_RAD"}
				},
				removeSection = true
			},
			{
				specialKeyWords = {
					{"ID", "T_COLDPROT", "ChargeType", "GcRealitySubstanceCategory.xml"},
					{"ID", "T_HOTPROT", "ChargeType", "GcRealitySubstanceCategory.xml"},
					{"ID", "T_TOX", "ChargeType", "GcRealitySubstanceCategory.xml"},
					{"ID", "T_RAD", "ChargeType", "GcRealitySubstanceCategory.xml"}
				},
				addSection = true,
				section = [[      <Property name="ChargeBy" />]]
			}
		},
		["METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"] = {
			{
				specialKeyWords = {
					{"ID", "UP_COLD1"},
					{"ID", "UP_COLD2"},
					{"ID", "UP_COLD3"},
				},
				fields = {
					StatsType = {default = "Suit_Protection_Cold", altered = "Suit_Protection_ColdDrain"},
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_HOT1"},
					{"ID", "UP_HOT2"},
					{"ID", "UP_HOT3"},
				},
				fields = {
					StatsType = {default = "Suit_Protection_Heat", altered = "Suit_Protection_HeatDrain"},
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_TOX1"},
					{"ID", "UP_TOX2"},
					{"ID", "UP_TOX3"},
				},
				fields = {
					StatsType = {default = "Suit_Protection_Toxic", altered = "Suit_Protection_ToxDrain"},
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_RAD1"},
					{"ID", "UP_RAD2"},
					{"ID", "UP_RAD3"},
				},
				fields = {
					StatsType = {default = "Suit_Protection_Radiation", altered = "Suit_Protection_RadDrain"},
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_COLD1"},
					{"ID", "UP_HOT1"},
					{"ID", "UP_TOX1"},
					{"ID", "UP_RAD1"},
				},
				fields = {
					ValueMin = {default = 180, altered = 1.01},
					ValueMax = {default = 265, altered = 1.02}
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_COLD2"},
					{"ID", "UP_HOT2"},
					{"ID", "UP_TOX2"},
					{"ID", "UP_RAD2"},
				},
				fields = {
					ValueMin = {default = 200, altered = 1.02},
					ValueMax = {default = 265, altered = 1.04}
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_COLD3"},
					{"ID", "UP_HOT3"},
					{"ID", "UP_TOX3"},
					{"ID", "UP_RAD3"},
				},
				fields = {
					ValueMin = {default = 220, altered = 1.04},
					ValueMax = {default = 265, altered = 1.07}
				}
			},
		},
	},
	noWeaponFlashes = {
		["METADATA/REALITY/TABLES/PLAYERWEAPONPROPERTIESTABLE.MBIN"] = {
			{
				specialKeyWords = {
					{"WeaponClass", "Projectile"},
					{"WeaponClass", "Laser"},
					{"WeaponClass", "ChargedProjectile"},
					{"WeaponClass", "Grenade"},
					{"WeaponClass", "TerrainEditor"}
				},
				selectLevel = 1,
				fields = {
					FlashMuzzleOnProjectileFire = false,
					UseMuzzleLight = false,
				},
				replaceAll = true
			}
		}
	},
	maximizedTechs = {
		["GCPLAYERGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					LuckyWithTech = {default = false, altered = true}
				}
			}
		}
	},
	noInventoryDamage = {
		["GCPLAYERGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					InventoryDamage = {default = true, altered = false}
				}
			}
		}
	},
	lessMaintenance = {
		["MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_LARGE_RARE/ENTITIES/CRATE_LARGE_RARE.ENTITY.MBIN"] = {
			{
				precedingKeyWords = {"GcMaintenanceComponentData.xml"},
				removeSection = true
			},
			{
				fields = {
					TriggerAction = "MAINTDONE"
				}
			}
		},
		["MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/PARTS/DEBRILARGECONTAINER/ENTITIES/TECHDEBRIS.ENTITY.MBIN"] = {
			{
				fields = {
					AutoCompleteOnStart = true
				}
			}
		}
	},
	noPortalCharging = {
		["MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN"] = {
			{
				precedingKeyWords = {"GcMaintenanceComponentData.xml"},
				removeSection = true
			}
		}
	},
	shorterToastMessages = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {"DiscoveryHelperTimings", "GcDiscoveryHelperTimings.xml"},
				fields = {
					DiscoverPlanetTotalTime = {default = 10, altered = 4},
					DiscoverPlanetMessageWait = {default = 1, altered = 0},
					DiscoverPlanetMessageTime = {default = 7, altered = 2},
				}
			},
			{
				fields = {
					MilestoneStingDisplayTime = {default = 6, altered = 4},
					StageStingDisplayTime = {default = 6, altered = 4}
				}
			}
		}
	},
	fasterInteractions = {
		["GCUIGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					FrontendConfirmTimeMouseMultiplier = {default = 0.5, altered = 1.0},
					FrontendConfirmTimeFast = {default = 0.35, altered = 0.25},
					FrontendConfirmTime = {default = 0.7, altered = 0.5},
					FrontendConfirmTimeSlow = {default = 1.6, altered = 1.0}
				}
			}
		}
	},
	lessScreenFlashes = {
		["GCCAMERAGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MiniportalFlashStrength = {default = 0.8, altered = 0.5},
					MiniportalFlashTime = {default = 0.8, altered = 0.5},
					VehicleExitFlashStrength = {default = 0.8, altered = 0.5},
					VehicleExitFlashTime = {default = 0.8, altered = 0.5},
					ModelViewFlashTime = {default = 0.8, altered = 0.5}
				}
			}
		},
		["GCGRAPHICSGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					TeleportFlashTime = {default = 1.5, altered = 0.0}
				}
			}
		}
	},
	blackScreenFlashes = {
		["GCCAMERAGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {"VehicleExitFlashColour","Colour.xml"},
				fields = {
					R = {default = 0, altered = 0},
					G = {default = 0, altered = 0},
					B = {default = 0, altered = 0},
					A = {default = 1, altered = 1}
				}
			},
			{
				specialKeyWords = {"MiniportalFlashColour","Colour.xml"},
				fields = {
					R = {default = 1, altered = 0},
					G = {default = 1, altered = 0},
					B = {default = 1, altered = 0},
					A = {default = 1, altered = 1}
				}
			}
		}
	},
	rapidToolScanner = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = {"ToolScan"},
				fields = {
					ScanType = {default = "Tool", altered = "Tool"},
					PulseRange = {default = 200, altered = 250},
					PulseTime = {default = 1, altered = 2},
					PlayAudioOnMarkers = {default = true, altered = true},
					ChargeTime = {default = 30, altered = 15}
				}
			}
		}
	},
	darkerScannerPulse = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {"ScannerColour1","Colour.xml"},
				fields = {
					R = {default = 0.3, altered = 0.03},
					G = {default = 0.9, altered = 0.09},
					B = {default = 1, altered = 0.1},
					A = {default = 1, altered = 0.1}
				}
			},
			{
				specialKeyWords = {"ScannerColour2","Colour.xml"},
				fields = {
					R = {default = 1, altered = 0.1},
					G = {default = 0.5, altered = 0.05},
					B = {default = 0.2, altered = 0.02},
					A = {default = 1, altered = 0.1}
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
	MOD_FILENAME = "lyr_otherTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS",
	MODIFICATIONS =	processTweaksTable(tweaks)
}