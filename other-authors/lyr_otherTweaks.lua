local lyr = {tweakStates = {}, tweakTables = {}, ignore = "IGNORE"}
local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Other Tweaks 1.4]]
local gameVersion = "4.0+"

--[[
	Below in the 'lyr.tweakStates' table are modification names and what they do is commented next to them
	Some modifications may be disabled by default; the double dashes '--' at the beginning of a line will cause it to get ignored

	Ways to disable a modification: 
		• RECOMMENDED: Add double dashes at the beginning of the line / ex: '--modification =...'
		• Set the value of the modification to false / ex: 'modification = false,'
		• Delete the line
		
	Ways to (re)enable a modification:
		• Remove double dashes at the beginning of the line
		• Set the value of the modification to true / its original
]]

lyr.tweakStates = {
--	plantGrowthRateMult = 2,				-- multiplies the plant growth rate by the given amount (setting to 2 will make every plant grow twice as fast)
--	unifiedPlantGrowthTime = 4,				-- unifies the plant growth times, value is in hours (setting to 4 will make every plant grow in 4 hours)
	freighterBridgeScanner = true,			-- adds freighter planetary scan interaction to the bridge terminal
	hangarSalvageTerminal = true,			-- adds salvage terminals to the freighter hangar, below stairs (generates WARNING, can be ignored)
	passiveProtectionTechs = true,			-- changes active hazard protection tech upgrades to passive ones (S:4-7%, A:2-4%, B:1-2%)
	noWeaponFlashes = true,					-- removes muzzle and projectile flashes from weapons
--	maximizedTechs = true,					-- procedurally generated tech upgrade values are maximized and provide all possible improvements
	noInventoryDamage = true,				-- disables the damage that the installed techs suffer
	lessMaintenance = true,					-- some damaged objects; crates and tech debris no longer require maintenance
	noPortalCharging = true,				-- removes portal charging steps
	shorterToastMessages = true,			-- shortens the toast message duration of expedition stages, milestones and planet discoveries
	fasterInteractions = true,				-- hold interactions require less... holding
	lessScreenFlashes = true,				-- reduces the duration and intensity of some screen flashes (entering/exiting vehicles, miniportals)
	blackScreenFlashes = true,				-- turns some screen flashes to black (entering/exiting vehicles, miniportals)
	rapidToolScanner = true,				-- tool scanners recharge much faster and their range is bumped up a little
	darkerScannerPulse = true,				-- tones ALL of the (tool, vehicle, ship) scanner pulse colours down
	noSentinelTerrainDamage = true,			-- sentinel projectiles damage the terrain no more
}

---@param tweakName string
---@return boolean 
function lyr:checkTweak(tweakName)
	local tweakValue = self.tweakStates[tweakName]

	if tweakValue == nil then return false
	elseif type(tweakValue) == "boolean" then return tweakValue
	elseif type(tweakValue) == "number" then
		if string.find(tweakName, "Mult", 1, true) ~= nil then return tweakValue > 0 and tweakValue ~= 1
		elseif string.find(tweakName, "Time", 1, true) ~= nil then return tweakValue > 0
		else return true end
	else return false end
end

---@param mode string
---@param ... string
---@return boolean 
function lyr:checkTweaks(mode, ...)
	local tweakNames = {...}
	local breakPoint = (mode == "and" and true) or (mode == "or" and false)
	local bp = breakPoint

	for _, tweakName in next, tweakNames do
		local tweakState = self:checkTweak(tweakName)

		breakPoint = (mode == "and" and (tweakState and bp)) or (mode == "or" and (tweakState or bp))
		if breakPoint ~= bp then break end
	end

	return breakPoint
end

---@param tweakName string
---@param defaultValue number
---@return number
function lyr:useProxyMult(tweakName, defaultValue)
	defaultValue = defaultValue or 1

	local multValue = self.tweakStates[tweakName]

	return self:checkTweak(tweakName) and multValue*defaultValue or defaultValue
end

---@param longString string
---@return string|nil
---@return string|nil
function lyr:parsePair(longString)
	local t = {}

	-- for w in string.gmatch(longString, "\"(%g+)\"") do t[#t+1] = w end
	for w in string.gmatch(longString, [["(%g+)"]]) do t[#t+1] = w end

	return t[1], t[2]
end

lyr.sectionOps = {
	addSection = true,
	addAfterSection = true,
	copySection = true,
	saveSection = true,
	pasteSection = true,
	pasteAfterSection = true,
	removeSection = true,
	removeLine = true,
	replaceLine = true
}

function lyr:isSectionOp(changeTable)
	for k in next, changeTable do if self.sectionOps[k] then return true end end
	return false
end

---@return table
function lyr:processTweakTables()
	local tweakTables = self.tweakTables
	local modificationTables = {}

	for _, tweakTable in next, tweakTables do if tweakTable then
		local modificationTable = {
			MBIN_CHANGE_TABLE = {}
		}; local mbinChangeTables = modificationTable.MBIN_CHANGE_TABLE

		for mbinPath, changeTables in pairs(tweakTable) do
			local mbinChangeTable = {
				MBIN_FILE_SOURCE = type(mbinPath)=="string" and mbinPath or changeTables.mbinPaths,
				EXML_CHANGE_TABLE = {}
			}; local exmlChangeTables = mbinChangeTable.EXML_CHANGE_TABLE

			for _, changeTable in ipairs(changeTables) do if changeTable then
				local exmlChangeTable = {
					COMMENT = changeTable.comment or nil,
					LINE_OFFSET = changeTable.thisLine and 0 or changeTable.lineOffset or nil,
					SECTION_UP = changeTable.selectLevel or nil,
					PRECEDING_KEY_WORDS = changeTable.precedingKeyWords or changeTable.precedingKeyWordsFirst or nil,
					PRECEDING_FIRST = changeTable.precedingKeyWordsFirst and true or nil,
					SPECIAL_KEY_WORDS = changeTable.specialKeyWords and type(changeTable.specialKeyWords[1])~="table" and changeTable.specialKeyWords or nil,
					FOREACH_SKW_GROUP = changeTable.specialKeyWords and type(changeTable.specialKeyWords[1])=="table" and changeTable.specialKeyWords or nil,
					WHERE_IN_SECTION = changeTable.findSections or changeTable.findSectionsWhereAllMatch or nil,
					WHERE_IN_SUBSECTION = changeTable.findSubSections or changeTable.findAllSubSections or changeTable.findSubSectionsWhereAllMatch or changeTable.findAllSubSectionsWhereAllMatch or nil,
					WISEC_LOP = changeTable.findSectionsWhereAllMatch and "AND" or nil,
					WISUBSEC_LOP = changeTable.findSubSectionsWhereAllMatch and "AND" or nil,
					WISUBSEC_OPTION = (changeTable.findAllSubSections or changeTable.findAllSubSectionsWhereAllMatch) and "ALL" or nil,
					REPLACE_TYPE = changeTable.replaceAll and "ALL" or changeTable.replaceRaw and "RAW" or nil,
					MATH_OPERATION = changeTable.multiply and "*" or changeTable.mathOp or nil,
					INTEGER_TO_FLOAT = changeTable.preserveIntegers and "PRESERVE" or nil,
					REMOVE = changeTable.removeSection and "SECTION" or changeTable.removeLine and "LINE" or nil,
					ADD_OPTION = (changeTable.addAfterSection or changeTable.pasteAfterSection) and "ADDafterSECTION" or changeTable.replaceLine and "REPLACEatLINE" or nil,
					ADD = (changeTable.addAfterSection or changeTable.addSection or changeTable.replaceLine) and changeTable.section or nil,
					SECTION_SAVE_TO = changeTable.copySection or changeTable.saveSection or nil,
					SECTION_KEEP = changeTable.saveSection and true or nil,
					SECTION_EDIT = changeTable.editSection or nil,
					SECTION_ADD_NAMED = changeTable.pasteSection or changeTable.pasteAfterSection or nil,
					VALUE_MATCH = changeTable.match and changeTable.match.value or nil,
					VALUE_MATCH_OPTIONS = changeTable.match and changeTable.match.option or nil,
					VALUE_CHANGE_TABLE = changeTable.fields and {} or nil
				}; local valueChangeTable = exmlChangeTable.VALUE_CHANGE_TABLE

				if changeTable.fields then
					for fieldName, fieldValue in pairs(changeTable.fields) do
						if type(fieldValue) == "table" then
							if fieldValue.altered ~= nil and fieldValue.altered ~= fieldValue.default then
								table.insert(valueChangeTable, {fieldName, fieldValue.altered})
							elseif fieldValue.multiplier and fieldValue.multiplier ~= 1 then
								table.insert(valueChangeTable, {fieldName, changeTable.multiply and fieldValue.multiplier or fieldValue.default * fieldValue.multiplier})
							elseif type(fieldName) == "number" then
								table.insert(valueChangeTable, fieldValue)
							end
						else
							table.insert(valueChangeTable, {fieldName, fieldValue})
						end
					end

					valueChangeTable = #valueChangeTable > 0 and valueChangeTable or nil
					exmlChangeTable.VALUE_CHANGE_TABLE = valueChangeTable
				end

				if valueChangeTable or self:isSectionOp(changeTable) then
					table.insert(exmlChangeTables, exmlChangeTable)
				end
			end end

			table.insert(mbinChangeTables, mbinChangeTable)
		end

		table.insert(modificationTables, modificationTable)
	end	end

	return modificationTables
end

lyr.tweakTables = {
	lyr:checkTweaks("or", "hangarSalvageTerminal", "freighterBridgeScanner") and {
		{
			mbinPaths = {"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARLAYOUT.SCENE.MBIN"},
			{
				specialKeyWords = {"Name","RefHangarLayout"},
				copySection = "reference",
				-- saveSection = true
			}
		}
	},
	plantGrowthRateMult = lyr:checkTweak("plantGrowthRateMult") and {
		{
			mbinPaths = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
			{
				specialKeyWords = {lyr:parsePair([[<Property name="LinkNetworkType" value="PlantGrowth" />]])},
				selectLevel = 2,
				fields = {
					Rate = math.floor(lyr.tweakStates.plantGrowthRateMult)
				},
				replaceAll = true
			}
		}
	},
	unifiedPlantGrowthTime = lyr:checkTweak("unifiedPlantGrowthTime") and {
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
					Storage = lyr.tweakStates.unifiedPlantGrowthTime*3600
				},
				replaceAll = true
			}
		}
	},
	freighterBridgeScanner = lyr:checkTweak("freighterBridgeScanner") and {
		["MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINAL.SCENE.MBIN"] = {
			{
				precedingKeyWords = "Children",
				specialKeyWords = {lyr:parsePair([[<Property name="Name" value="Base" />]])},
				pasteSection = "reference"
			},
			{
				specialKeyWords = {"Name","RefHangarLayout"},
				fields = {
					Name = "BridgeScanner",
					NameHash = 0,
					Type = "LOCATOR",
					TransY = 1,
				}
			},
			{
				precedingKeyWords = "TkSceneNodeAttributeData.xml",
				specialKeyWords = {"Name","BridgeScanner"},
				fields = {
					Name = "ATTACHMENT",
					Value = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\SCANROOM\PARTS\FLOOR0\ENTITIES\SCANROOMINTERACTION.ENTITY.MBIN]]
				}
			},
		},
		["MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/SCANROOM/PARTS/FLOOR0/ENTITIES/SCANROOMINTERACTION.ENTITY.MBIN"] = {
			{
				precedingKeyWords = "GcMaintenanceComponentData.xml",
				removeSection = true
			}
		}
	},
	hangarSalvageTerminal = lyr:checkTweak("hangarSalvageTerminal") and {
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
	passiveProtectionTechs = lyr:checkTweak("passiveProtectionTechs") and {
		["METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"] = {
			{
				specialKeyWords = {
					{"ID", "T_COLDPROT"},
					{"ID", "T_HOTPROT"},
					{"ID", "T_TOX"},
					{"ID", "T_RAD"},
					{"ID", "T_UNW"}
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
					{"ID", "T_RAD"},
					{"ID", "T_UNW"}
				},
				removeSection = true
			},
			{
				specialKeyWords = {
					{"ID", "T_COLDPROT", "ChargeType", "GcRealitySubstanceCategory.xml"},
					{"ID", "T_HOTPROT", "ChargeType", "GcRealitySubstanceCategory.xml"},
					{"ID", "T_TOX", "ChargeType", "GcRealitySubstanceCategory.xml"},
					{"ID", "T_RAD", "ChargeType", "GcRealitySubstanceCategory.xml"},
					{"ID", "T_UNW", "ChargeType", "GcRealitySubstanceCategory.xml"}
				},
				addAfterSection = true,
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
					{"ID", "UP_UNW1"},
					{"ID", "UP_UNW2"},
					{"ID", "UP_UNW3"},
				},
				fields = {
					StatsType = {default = "Suit_Underwater", altered = "Suit_Protection_WaterDrain"},
				}
			},
			{
				specialKeyWords = {
					{"ID", "UP_COLD1"},
					{"ID", "UP_HOT1"},
					{"ID", "UP_TOX1"},
					{"ID", "UP_RAD1"},
					{"ID", "UP_UNW1"},
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
					{"ID", "UP_UNW2"},
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
					{"ID", "UP_UNW3"},
				},
				fields = {
					ValueMin = {default = 220, altered = 1.04},
					ValueMax = {default = 265, altered = 1.07}
				}
			},
		},
	},
	noWeaponFlashes = lyr:checkTweak("noWeaponFlashes") and {
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
	maximizedTechs = lyr:checkTweak("maximizedTechs") and {
		["GCPLAYERGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					LuckyWithTech = {default = false, altered = true}
				}
			}
		}
	},
	noInventoryDamage = lyr:checkTweak("noInventoryDamage") and {
		["GCPLAYERGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					InventoryDamage = {default = true, altered = false}
				}
			}
		}
	},
	lessMaintenance = lyr:checkTweak("lessMaintenance") and {
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
	noPortalCharging = lyr:checkTweak("noPortalCharging") and {
		["MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN"] = {
			{
				precedingKeyWords = {"GcMaintenanceComponentData.xml"},
				removeSection = true
			}
		}
	},
	shorterToastMessages = lyr:checkTweak("shorterToastMessages") and {
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
	fasterInteractions = lyr:checkTweak("fasterInteractions") and {
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
	lessScreenFlashes = lyr:checkTweak("lessScreenFlashes") and {
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
	blackScreenFlashes = lyr:checkTweak("blackScreenFlashes") and {
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
	rapidToolScanner = lyr:checkTweak("rapidToolScanner") and {
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
	darkerScannerPulse = lyr:checkTweak("darkerScannerPulse") and {
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
	},
	noSentinelTerrainDamage = lyr:checkTweak("noSentinelTerrainDamage") and {
		["METADATA/PROJECTILES/PROJECTILETABLE.MBIN"] = {
			{
				specialKeyWords = {
					{"Id", "ROBOTGRENADE"},
					{"Id", "ROBOTGRENADE2"},
					{"Id", "SENMECHCANON"}
				},
				fields = {
					BehaviourFlags = "ScareCreatures, ExplosionForce"
				}
			}
		}
	},
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_otherTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS",
	MODIFICATIONS =	lyr:processTweakTables()
}