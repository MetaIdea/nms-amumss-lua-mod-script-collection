local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Other Tweaks 1.0]]
local gameVersion = "4.0+"

--[[
	Below in the 'enabledTweaks' table are toggles for the changes. What they do is commented next to them. Change the value to 'false' to disable the modifications.
]]

local enabledTweaks = {
	convertProtectionTechsToPassive = true,	-- changes the procedurally generated chargeable hazard protection tech upgrades to passive resistances (S:4-7%, A:2-4%, B:1-2%)
	luckyWithTech = false,					-- maximizes all procedurally generated tech upgrade percentages
	noInventoryDamage = true,				-- disables the damage that techs suffer (also a new customizable difficulty setting)
	fixSomeRepairableStuff = true,			-- fixes damaged crates and tech debris (crates play animation but couldn't get the little pods animate properly)
	chargePortals = true,					-- removes portal charging steps
	fasterToolScanner = true,				-- doubles player scanner charge speed (also a new customizable difficulty setting)
	adjustScannerColour = true,				-- adjusts the scanner colours and tones them down (so that you won't go blind from ship scanners)
	reduceToastMessages = true,				-- reduces the time expedition stage, milestone and planet discovery is shown
	fasterInteractions = true,				-- makes interactions faster
	reduceSomeFlashes = true,				-- reduces duration and intensity of some screen flashes (entering/exiting vehicles, miniportals, teleporters)
	makeSomeFlashesBlack = true,			-- turns some screen flashes to black (entering/exiting vehicles, miniportals)
	reduceVehicleTechDamage = true,			-- reduces the damage installed vehicle techs take
	improveMechJetPack = true,				-- increases jetpack max speed and reduces drain
	improveMechMovement = 1.25,				-- faster mech animations, movement speed and better jetpack parameters
	improveAIMechCombat = true,				-- increases the distance for AI controlled mech to resummon, and make it use the laser less and fire the cannon more & rapidly
	improveMechCamera = true,				-- mech won't occupy the middle of the screen >.>
	improveMechArmAngles = true,			-- increases the arm angle tolerance; essentially reduces the camera jump when the top and arm mounts swap due to angle limits
	titanfall3 = true,						-- titanfall (mech summon) takes a bit longer and is more impactful, also mech footprints last longer / TITANFALL 3 WHEN
}

--[[
	Below in the 'tweaks' table are the changes. If you'd like to change them directly, change the 'altered' values and leave 'default' ones as they are.
	Fields with same 'altered' and 'default' values won't be processed by AMUMSS. The 'default' values (generated pre-4.0) serve as more of a reference.
	Not every field value is changed. Some are only exposed for testing purposes and to toy around with, usually belonging to the same sections.
]]

local tweaks = {
	misc = {
		["GCPLAYERGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					InventoryDamage = {default = true, altered = not enabledTweaks.noInventoryDamage},
					LuckyWithTech = {default = false, altered = enabledTweaks.luckyWithTech}
				}
			}
		}
	},
	luckyWithTech = {
		["GCPLAYERGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					LuckyWithTech = {default = false, altered = false}
				}
			}
		}
	},
	convertProtectionTechsToPassive = {
		["METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"] = {
			{
				forEachSpecialKeyWords = {
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
				forEachSpecialKeyWords = {
					{"ID", "T_COLDPROT"},
					{"ID", "T_HOTPROT"},
					{"ID", "T_TOX"},
					{"ID", "T_RAD"}
				},
				removeSection = true
			},
			{
				forEachSpecialKeyWords = {
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
				forEachSpecialKeyWords = {
					{"ID", "UP_COLD1"},
					{"ID", "UP_COLD2"},
					{"ID", "UP_COLD3"},
				},
				fields = {
					StatsType = {default = "Suit_Protection_Cold", altered = "Suit_Protection_ColdDrain"},
				}
			},
			{
				forEachSpecialKeyWords = {
					{"ID", "UP_HOT1"},
					{"ID", "UP_HOT2"},
					{"ID", "UP_HOT3"},
				},
				fields = {
					StatsType = {default = "Suit_Protection_Heat", altered = "Suit_Protection_HeatDrain"},
				}
			},
			{
				forEachSpecialKeyWords = {
					{"ID", "UP_TOX1"},
					{"ID", "UP_TOX2"},
					{"ID", "UP_TOX3"},
				},
				fields = {
					StatsType = {default = "Suit_Protection_Toxic", altered = "Suit_Protection_ToxDrain"},
				}
			},
			{
				forEachSpecialKeyWords = {
					{"ID", "UP_RAD1"},
					{"ID", "UP_RAD2"},
					{"ID", "UP_RAD3"},
				},
				fields = {
					StatsType = {default = "Suit_Protection_Radiation", altered = "Suit_Protection_RadDrain"},
				}
			},
			{
				forEachSpecialKeyWords = {
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
				forEachSpecialKeyWords = {
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
				forEachSpecialKeyWords = {
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
	fixSomeRepairableStuff = {
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
	chargePortals = {
		["MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN"] = {
			{
				precedingKeyWords = {"GcMaintenanceComponentData.xml"},
				removeSection = true
			}
		}
	},
	fasterToolScanner = {
		["GCGAMEPLAYGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = {"ToolScan"},
				fields = {
					ScanType = {default = "Tool", altered = "Tool"}, -- change this to 'DebugPlanet' to see something magical
					PulseRange = {default = 200, altered = 200},
					PulseTime = {default = 1, altered = 1},
					PlayAudioOnMarkers = {default = true, altered = true},
					ChargeTime = {default = 30, altered = 15}
				}
			}
		}
	},
	adjustScannerColour = {
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
	reduceToastMessages = {
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
	reduceSomeFlashes = {
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
	makeSomeFlashesBlack = {
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
	improveVehicleTechResistance = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					DamageTechNumHitsRequired = {default = 20, altered = 200},
					DamageTechMinHitIntervalSeconds = {default = 1, altered = 5}
				}
			}
		}
	},
	improveMechJetPack = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MechLandBrake = {default = 4, altered = 10},
					MechJetpackMaxSpeed = {default = 20, altered = 30},
					MechJetpackMaxUpSpeed = {default = 20, altered = 30},
					MechJetpackDrainRate = {default = 0.5, altered = 0.375},
					MechJetpackFillRate = {default = 0.5, altered = 0.5},
					MechJetpackAvoidGroundProbeLength = {default = 6, altered = 12}
				}
			}
		}
	},
	improveMechMovement = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MechPowerUpTime = {default = 3.5, multiplier = 1/enabledTweaks.improveMechMovement},
					MechTitanFallLandIntroTime = {default = 4.5, multiplier = 1/enabledTweaks.improveMechMovement},
					MechWalkToRunTimeIdle = {default = 2, multiplier = 1/enabledTweaks.improveMechMovement},
				},
				multiply = true
			},
			{
				specialKeyWords = {"Name", "MECH"},
				fields = {
					TopSpeedForward = {default = 2, multiplier = enabledTweaks.improveMechMovement}
				},
				multiply = true
			}
		},
		["MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT/ENTITIES/MECH.ENTITY.MBIN"] = {
			{
				fields = {
					Speed = enabledTweaks.improveMechMovement
				},
				multiply = true,
				replaceAll = true
			}
		}
	},
	improveAIMechCombat = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MechAIResummonTriggerDistance = {default = 100, altered = 250},
					AIMechLaserFireDurationMin = {default = 3, altered = 2},
					AIMechLaserFireDurationMax = {default = 5, altered = 4},
					AIMechGunFireInterval = {default = 0.5, altered = 0.33},
					AIMechGunNumShotsMin = {default = 3, altered = 4},
					AIMechGunNumShotsMax = {default = 5, altered = 8}
				}
			}
		}
	},
	improveMechCamera = {
		["GCCAMERAGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = "MechFollowCam",
				fields = {
					OffsetX = {default = 2.2, altered = 4},
					OffsetY = {default = -0.5, altered = -0.5},
					OffsetYAlt = {default = 2.5, altered = 1.5},
					OffsetYSlopeExtra = {default = 0.5, altered = 0.5},
					OffsetZFlat = {default = 0, altered = 0},
					OffsetYExtraMaxDistance = {default = 4, altered = 4},
					BackMinDistance = {default = 6.5, altered = 6.5},
					BackMaxDistance = {default = 14, altered = 14},
					UpMinDistance = {default = -1, altered = -1},
					UpMaxDistance = {default = 0, altered = 0},
					LeftMinDistance = {default = 0, altered = 0},
					LeftMaxDistance = {default = 0, altered = 0},
					PanNear = {default = 6, altered = 9},
					PanFar = {default = 10, altered = 15}
				}
			},
			{
				precedingKeyWords = "MechCombatCam",
				fields = {
					OffsetX = {default = 5, altered = 4},
					OffsetY = {default = -1, altered = -0.5},
					OffsetYAlt = {default = 1.5, altered = 1.5},
					OffsetYSlopeExtra = {default = 0.5, altered = 0.5},
					OffsetZFlat = {default = 0, altered = 0},
					OffsetYExtraMaxDistance = {default = 4, altered = 4},
					BackMinDistance = {default = 6.5, altered = 6.5},
					BackMaxDistance = {default = 14, altered = 14},
					UpMinDistance = {default = -1, altered = -1},
					UpMaxDistance = {default = 0, altered = 0},
					LeftMinDistance = {default = 0, altered = 0},
					LeftMaxDistance = {default = 0, altered = 0},
					PanNear = {default = 6, altered = 9},
					PanFar = {default = 10, altered = 15}
				}
			},
			{
				fields = {
  					MechCameraNoExtraYTimeAfterLand = {default = 2, altered = 2},
  					MechCameraExtraYPostLandingBlendTime = {default = 2, altered = 2},
  					MechCameraArmShootOffsetY = {default = 1, altered = 0},
  					MechCameraCombatFakeSpeed = {default = 14, altered = 14}
				}
			}
		}
	},
	improveMechArmAngles = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					AttackAngle = 90,
					AngleToleranceForArmAiming = 90
				},
				replaceAll = true
			}
		}
	},
	titanfall3 = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MechTitanFallHeight = {default = 30, altered = 150},
					MechTitanFallTerrainEditSize = {default = 2, altered = 10},
					MechTitanFallTerrainEditOffset = {default = 0.45, altered = 0.15},
					MechTitanFallCameraShakeDist = {default = 80, altered = 100},
					MechLandCameraShakeDist = {default = 40, altered = 50},
					MechFootprintFadeTime = {default = 1, altered = 15},
					MechFootprintFadeDist = {default = 20, altered = 25}
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
					if changeTable.precedingKeyWords and type(changeTable.precedingKeyWords) == "string" then
						changeTable.precedingKeyWords = {changeTable.precedingKeyWords}
					end
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
	MOD_FILENAME = "lyr_otherTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	MODIFICATIONS =	{{MBIN_CHANGE_TABLE = processTweaksTable(tweaks)}}
}