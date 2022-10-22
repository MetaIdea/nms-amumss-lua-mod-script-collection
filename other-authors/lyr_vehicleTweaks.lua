local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Vehicle Tweaks 1.1]]
local gameVersion = "4.0+"

--[[
	Below in the 'enabledTweaks' table are modification names and what they do is commented next to them. 
	Change the values to 'false' (without ''; someModification = false,) to disable the modifications.
]]

local enabledTweaks = {
	improvedVehicleScannerPulse = true,		-- reduces vehicle scanner pulse charge times
	sturdyVehicleTechs = true,				-- reduces the damage installed vehicle tech upgrades take
	mechSpeedMult = 1.25,					-- mech movement and animation speeds are multiplied by the given value 
	betterMechJetPack = true,				-- increases mech jetpack max speed and slightly reduces its drain
	lessCenteredMechCamera = true,			-- mech third person camera is adjusted to keep the center of the screen clean
	wideMechArmAngles = true,				-- reduces the camera jump when the top and arm mounts are swapped due to the angle limits by increasing them
	enhancedAIMechCombat = true,			-- AI mech uses its laser for shorter durations and fires more cannon shots at a faster pace
	longerAIMechLeash = true,				-- resummon distance for the AI controlled mech is increased
	heavierTitanfall = true,				-- titanfall (mech summon) takes a bit longer and is more impactful / TITANFALL 3 WHEN
}

local tweaks = {
	improvedVehicleScannerPulse = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = {"VehicleScan"},
				fields = {
					ScanType = {default = "Ship", altered = "Ship"},
					PulseRange = {default = 1500, altered = 2500},
					PulseTime = {default = 1, altered = 5},
					PlayAudioOnMarkers = {default = true, altered = true},
					ChargeTime = {default = 20, altered = 10}
				}
			},
			{
				precedingKeyWords = {"VehicleLocalScan"},
				fields = {
					ScanType = {default = "Tool", altered = "Tool"},
					PulseRange = {default = 600, altered = 1000},
					PulseTime = {default = 1, altered = 5},
					PlayAudioOnMarkers = {default = true, altered = true},
					ChargeTime = {default = 15, altered = 10}
				}
			},
		}
	},
	sturdyVehicleTechs = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					DamageTechNumHitsRequired = {default = 20, altered = 600},
					DamageTechMinHitIntervalSeconds = {default = 1, altered = 5}
				}
			}
		}
	},
	mechSpeedMult = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MechPowerUpTime = {default = 3.5, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechTitanFallLandIntroTime = {default = 4.5, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechTitanFallLandIdleTime = {default = 1, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechWalkToRunTimeIdle = {default = 2, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechWalkToRunTimeSkid = {default = 0.2, multiplier = 5},
					MechCrouchTime = {default = 0.5, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechJetpackJetScaleTime = {default = 0.2, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechJetpackLandTime = {default = 0.6, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechJetpackIgnitionTime = {default = 0.4, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechCoGAdjustTimeWindUp = {default = 0.2, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechCoGAdjustTimeAir = {default = 0.7, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechCoGAdjustTimeLand = {default = 0.2, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechDefaultBlendTime = {default = 0.3, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechSpeedBlendTime = {default = 1, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechLandBlendTime = {default = 0.1, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechJumpBlendTime = {default = 0.3, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechJumpFlyBlendTime = {default = 1, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechJumpDownBlendTime = {default = 0.3, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechIdleLowBlendTime = {default = 1.7, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechIdleLowDelay = {default = 0.1, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechIdleStopDelay = {default = 0.6, multiplier = 1/enabledTweaks.mechSpeedMult}
				},
				multiply = true
			},
			{
				specialKeyWords = {"Name", "MECH"},
				fields = {
					TopSpeedForward = {default = 2, multiplier = enabledTweaks.mechSpeedMult}
				},
				multiply = true
			}
		},
		["MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT/ENTITIES/MECH.ENTITY.MBIN"] = {
			{
				fields = {
					Speed = enabledTweaks.mechSpeedMult
				},
				multiply = true,
				replaceAll = true
			}
		}
	},
	betterMechJetPack = {
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
	lessCenteredMechCamera = {
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
	wideMechArmAngles = {
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
	enhancedAIMechCombat = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					AIMechLaserFireDurationMin = {default = 3, altered = 2},
					AIMechLaserFireDurationMax = {default = 5, altered = 4},
					AIMechGunFireInterval = {default = 0.5, altered = 0.33},
					AIMechGunNumShotsMin = {default = 3, altered = 4},
					AIMechGunNumShotsMax = {default = 5, altered = 8}
				}
			}
		}
	},
	longerAIMechLeash = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MechAIResummonTriggerDistance = {default = 100, altered = 250}
				}
			}
		}
	},
	heavierTitanfall = {
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
	MOD_FILENAME = "lyr_vehicleTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS",
	MODIFICATIONS =	processTweaksTable(tweaks)
}