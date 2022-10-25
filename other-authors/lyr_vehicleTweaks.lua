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
	mechSpeedMult = 1.25,					-- mech movement and all animation speeds are multiplied by the given value
	betterMechJetPack = true,				-- increases mech jetpack max speed and slightly reduces its drain
	reworkedMechCamera = true,				-- all mech cameras are unified; wide angle with mech on the side, camera no longer jumps when fire location changes
	generalMechTweaks = true,				-- some janky mech animations are fixed, foot and arm pitch angle limits are increased, fire location changes more often
	enhancedAIMechCombat = true,			-- the AI mech uses both of its weapons more; changes the angle, range, cooldown and interval parameters of weapons
	alternateAIMechCannon = true,			-- if enabled alongside 'enhancedAIMechCombat' option, allows the AI mech to fire stun cannon projectiles instead
	longerAIMechLeash = true,				-- resummon distance for the AI controlled mech is increased
	heavierTitanfall = true,				-- titanfall (mech summon) takes a bit longer and is more impactful / TITANFALL 3 WHEN
}

local ignore = "IGNORE"

for tweakName, tweakValue in next, enabledTweaks do
	if string.find(tweakName, "Mult", 1, true) ~= nil and type(tweakValue) == "boolean" then enabledTweaks[tweakName] = 1 end
end

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
					DamageTechMinHitIntervalSeconds = {default = 1, altered = 1}
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
					MechWalkToRunTimeSkid = {default = 0.2, multiplier = 1/enabledTweaks.mechSpeedMult},
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
			},
			{
				fields = {
					MechPlayerGroundTurnSpeed = {default = 0.5, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechAIGroundTurnSpeed = {default = 1, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechTurretTurnTimeGroundPlayerCombat = {default = 1, multiplier = 1/enabledTweaks.mechSpeedMult},
					MechTurretTurnTimeGround = {default = 1, multiplier = 1/enabledTweaks.mechSpeedMult}
				},
				multiply = true
			}
		},
		["MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT/ENTITIES/MECH.ENTITY.MBIN"] = {
			{
				fields = {
					Speed = enabledTweaks.mechSpeedMult,
					FootPlantSpringTime = {default = 0.2, multiplier = 1/enabledTweaks.mechSpeedMult}
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
					MechJetpackAvoidGroundProbeLength = {default = 6, altered = 12},
					MechJetpackTurnSpeed = {default = 3, altered = 0.5}
				}
			}
		}
	},
	reworkedMechCamera = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MechCameraOffsetTime = 0.1,
					MechCameraOffsetAmount = 0
				}
			}
		},
		["GCCAMERAGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {
					{"Name", "MECH"},
					{"Name", "MECHJETPACK"}
				},
				fields = {
					MinSpeed = 2,
					SpeedRange = 2,
					OffsetX = 5,
					OffsetY = 1,
					OffsetYAlt = 1,
					OffsetYSlopeExtra = 0,
					OffsetZFlat = 0,
					OffsetYExtraMaxDistance = 0,
					BackMinDistance = 8,
					BackMaxDistance = 8,
					UpMinDistance = 0,
					UpMaxDistance = 0,
					LeftMinDistance = 0,
					LeftMaxDistance = 0,
					PanNear = 10,
					PanFar = 10
				},
				replaceAll = true
			},
			{
				fields = {
  					MechCameraNoExtraYTimeAfterLand = {default = 2, altered = 2},
  					MechCameraExtraYPostLandingBlendTime = {default = 2, altered = 2},
  					MechCameraArmShootOffsetY = {default = 1, altered = 1},
  					MechCameraCombatFakeSpeed = {default = 14, altered = 2}
				}
			}
		}
	},
	generalMechTweaks = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = "MechWeaponData",
				findAllSubSections = {{ignore, "GcExoMechWeaponData.xml"}},
				fields = {
					MaintainFireLocationMinTime = {default = 1.5, altered = 1}
				}
			},
			{
				fields = {
					MechArmPitchAngleMin = {default = -30, altered = -45},
					MechArmPitchAngleMax = {default = 60, altered = 75}
				}
			}
		},
		["MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT/ENTITIES/MECH.ENTITY.MBIN"] = {
			{
				precedingKeyWords = "GcCreatureFullBodyIKComponentData.xml",
				fields = {
					MaxHeadYaw = {default = 125, altered = 110},
					MaxFootAngle = {default = 45, altered = 70},
					MovementDamp = {default = 0.2, altered = 0.75}
				}
			},
		}
	},
	enhancedAIMechCombat = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			enabledTweaks.alternateAIMechCannon and {
				fields = {
					AIMechLaserFireDurationMin = {default = 3, altered = 3},
					AIMechLaserFireDurationMax = {default = 5, altered = 3},
					AIMechGunFireInterval = {default = 0.5, altered = 0},
					AIMechGunNumShotsMin = {default = 3, altered = 1},
					AIMechGunNumShotsMax = {default = 5, altered = 1},
					AIMechGunProjectile = {default = "VEHICLEGUN", altered = "VEHICLESTUNGUN"}
				}
			} or {
				fields = {
					AIMechLaserFireDurationMin = {default = 3, altered = 3},
					AIMechLaserFireDurationMax = {default = 5, altered = 3},
					AIMechGunFireInterval = {default = 0.5, altered = 0.5},
					AIMechGunNumShotsMin = {default = 3, altered = 2},
					AIMechGunNumShotsMax = {default = 5, altered = 2}
				}
			},
			{
				findSubSections = {{"Laser", "GcExoMechWeaponData.xml"}},
				fields = {
					AngleToleranceForArmAiming = {default = 30, altered = 45},
					AttackAngle = {default = 30, altered = 45},
					MinRange = {default = 3, altered = 10},
					MaxRange = {default = 30, altered = 35},
					CooldownTimeMin = {default = 2, altered = 1},
					CooldownTimeMax = {default = 4, altered = 1},
					SelectionWeight = {default = 1, altered = 1}
				}
			},
			{
				findSubSections = {{"Gun", "GcExoMechWeaponData.xml"}},
				fields = {
					AngleToleranceForArmAiming = {default = 60, altered = 60},
					AttackAngle = {default = 50, altered = 60},
					MinRange = {default = 6, altered = 5},
					MaxRange = {default = 60, altered = 45},
					CooldownTimeMin = {default = 3, altered = 1},
					CooldownTimeMax = {default = 5, altered = 1},
					SelectionWeight = {default = 1.5, altered = 2}
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
		},
		["GCROBOTGLOBALS.MBIN"] = {
			{
				fields = {
					ExoMechJumpCooldownTimeInCombat = {default = 8, altered = 8},
					ExoMechJumpCooldownTimeOutOfCombat = {default = 4, altered = 2}
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
		if tweakName == "misc" or type(enabledTweaks[tweakName]) == "boolean" and enabledTweaks[tweakName]
		or type(enabledTweaks[tweakName]) == "number" and enabledTweaks[tweakName] ~= 1 and enabledTweaks[tweakName] > 0 then
			for mbinPath, changeTables in pairs(tweakTable) do
				local mbinChangeTable = {
					MBIN_FILE_SOURCE = type(mbinPath)=="string" and mbinPath or changeTables.mbinPaths,
					EXML_CHANGE_TABLE = {}
				}; local exmlChangeTable = mbinChangeTable.EXML_CHANGE_TABLE

				for _, changeTable in ipairs(changeTables) do
					local convertedChangeTable = {
						SECTION_UP = changeTable.selectLevel or nil,
						PRECEDING_KEY_WORDS = changeTable.precedingKeyWords or changeTable.precedingKeyWordsFirst or nil,
						PRECEDING_FIRST = changeTable.precedingKeyWordsFirst or nil,
						SPECIAL_KEY_WORDS = changeTable.specialKeyWords and type(changeTable.specialKeyWords[1])~="table" and changeTable.specialKeyWords or nil,
						FOREACH_SKW_GROUP = changeTable.specialKeyWords and type(changeTable.specialKeyWords[1])=="table" and changeTable.specialKeyWords or nil,
						WHERE_IN_SECTION = changeTable.findSections or nil,
						WHERE_IN_SUBSECTION = changeTable.findSubSections or changeTable.findAllSubSections or nil,
						WISEC_LOP = changeTable.findSectionsIfAllMatch and "AND" or nil,
						WISUBSEC_LOP = changeTable.findSubSectionsIfAllMatch and "AND" or nil,
						WISUBSEC_OPTION = changeTable.findAllSubSections and "ALL" or nil,
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