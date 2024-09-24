local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Vehicle Tweaks 5.12]]
local gameVersion = "129192"

--[=============================================================================================================================[
	Every Lua script of mine requires 'lyr_methods.lua' to be located in the 'ModScripts\ModHelperScripts\' folder
	Otherwise none of them will work. Make sure that file is located there before using my scripts

	Below in the 'tweakStates' table are modification names and what they do is commented next to them
	Some modifications may be disabled by default; the double dashes '--' at the beginning of a line will cause it to get ignored

	Ways to disable a modification: 
		• RECOMMENDED: Add double dashes at the beginning of the line / ex: '--modification =...'
		• Set the value of the modification to false / ex: 'modification = false,'
		• Use the 'lyr_tweakOverrides.txt' file and disable modifications from there

	Ways to (re)enable a modification:
		• RECOMMENDED: Remove double dashes at the beginning of the line
		• Set the value of the modification to its original value
		• Use the 'lyr_tweakOverrides.txt' file and enable / change modifications from there

	Depending on their function and/or relevance, some modifications may have duplicates in my other scripts
	The third option for enabling / disabling modifications through 'lyr_tweakOverrides.txt' file will affect all
--]=============================================================================================================================]

local tweakStates = {
	improvedVehicleScannerPulse = true,		-- reduces vehicle scanner pulse charge times
	mechSpeedMult = 1.5,					-- multiplier for mech movement and turn speeds (above 2 is not recommended)
	mechAnimSpeedMult = 1.5,				-- multiplier for all animation speeds, 1/value multiplier for times and delays (ideally, equal to 'mechSpeedMult')
	betterMechJetPack = true,				-- turning is now much easier while flying, max speed is increased and fuel drain is decreased slightly
	reworkedMechCamera = true,				-- all mech cameras are unified; wide angle with mech on the side, camera no longer jumps when fire location changes
	generalMechTweaks = true,				-- less janky animations, increased foot and arm angle limits, snappier fire location, shorter camera shake distance
--	experimentalMechTweaks = true,			-- increases mass to increase downhill traction, adjusts jetpack and brake parameters to compensate (experimental because janky)
	mechTechDurabilityFactor = 0,			-- tech damage difficulty setting doesn't include AI mech tech, this multiplier makes it more durable (0 disables it completely)
	enhancedAIMechCombat = true,			-- the AI mech uses both of its weapons more; changes the angle, range, cooldown and interval parameters of weapons
	longerAIMechLeash = true,				-- resummon distance for the AI controlled mech is increased
	heavierTitanfall = true,				-- titanfall (mech summon) takes a bit longer and is more impactful / TITANFALL 3 WHEN
	shipAndVehicleInventoryRange = 250		-- ship and vehicle inventory access range is set to the given value (item teleporter works beyond this range)
}

--#region METHODS

dofile("lyr_methods.lua")

--#endregion
-- END OF METHODS

--#region TWEAKS

local improvedVehicleScannerPulse = function()
	if not lyr:checkTweak("improvedVehicleScannerPulse") then return false end

	local tweak = {
		["METADATA/SIMULATION/SCANNING/SCANDATATABLE.MBIN"] = {
			{
				skw = {"ID", "VEHICLE", "ScanType", "Ship"},
				thisLine = true,
				fields = {
					ScanType = {default = "Ship", altered = "Ship"},
				}
			},
			{
				skw = {"ID", "VEHICLE"},
				fields = {
					PulseRange = {default = 1500, altered = 2500},
					PulseTime = {default = 1, altered = 2},
					PlayAudioOnMarkers = {default = true, altered = true},
					ChargeTime = {default = 20, altered = 10}
				}
			},
			{
				skw = {"ID", "VEHICLE_LOCAL", "ScanType", "Tool"},
				thisLine = true,
				fields = {
					ScanType = {default = "Tool", altered = "Tool"},
				}
			},
			{
				skw = {"ID", "VEHICLE_LOCAL"},
				fields = {
					PulseRange = {default = 600, altered = 1250},
					PulseTime = {default = 1, altered = 2},
					PlayAudioOnMarkers = {default = true, altered = true},
					ChargeTime = {default = 15, altered = 10}
				}
			},
		}
	}

	return tweak
end; lyr.tweakTables.improvedVehicleScannerPulse = improvedVehicleScannerPulse

local mechTechDurabilityFactor = function()
	if not lyr:checkTweak("mechTechDurabilityFactor") then return false end

	local tweak = {
		{
			mbinPaths = [[METADATA\GAMESTATE\DIFFICULTYCONFIG.EXML]],
			{
				pkw = "DamageReceivedAIMechTechDamageHits",
				fields = {
					Low = {default = 32, multiplier = math.max(0, math.floor(lyr.tweakStates.mechTechDurabilityFactor))},
					Normal = {default = 16, multiplier = math.max(0, math.floor(lyr.tweakStates.mechTechDurabilityFactor))},
					High = {default = 8, multiplier = math.max(0, math.floor(lyr.tweakStates.mechTechDurabilityFactor))}
				},
				multiply = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.mechTechDurabilityFactor = mechTechDurabilityFactor

local mechSpeedMult = function()
	if not lyr:checkTweak("mechSpeedMult") then return false end

	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {"Name", "MECH"},
				fields = {
					TopSpeedForward = {default = 2, multiplier = lyr.tweakStates.mechSpeedMult}
				},
				multiply = true
			},
			{
				fields = {
					MechPlayerGroundTurnSpeed = {default = 0.5, multiplier = 1/lyr.tweakStates.mechSpeedMult},
					MechAIGroundTurnSpeed = {default = 1, multiplier = 1/lyr.tweakStates.mechSpeedMult},
					MechTurretTurnTimeGroundPlayerCombat = {default = 1, multiplier = 1/lyr.tweakStates.mechSpeedMult},
					MechTurretTurnTimeGround = {default = 1, multiplier = 1/lyr.tweakStates.mechSpeedMult}
				},
				multiply = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.mechSpeedMult = mechSpeedMult

local mechAnimSpeedMult = function()
	if not lyr:checkTweak("mechAnimSpeedMult") then return false end

	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MechPowerUpTime = {default = 3.5, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechTitanFallLandIntroTime = {default = 4.5, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechTitanFallLandIdleTime = {default = 1, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechWalkToRunTimeIdle = {default = 2, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechWalkToRunTimeSkid = {default = 0.2, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechCrouchTime = {default = 0.5, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechJetpackJetScaleTime = {default = 0.2, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechJetpackLandTime = {default = 0.6, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechJetpackIgnitionTime = {default = 0.4, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechCoGAdjustTimeWindUp = {default = 0.2, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechCoGAdjustTimeAir = {default = 0.7, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechCoGAdjustTimeLand = {default = 0.2, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechDefaultBlendTime = {default = 0.3, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechSpeedBlendTime = {default = 1, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechLandBlendTime = {default = 0.1, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechJumpBlendTime = {default = 0.3, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechJumpFlyBlendTime = {default = 1, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechJumpDownBlendTime = {default = 0.3, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechIdleLowBlendTime = {default = 1.7, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechIdleLowDelay = {default = 0.1, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult},
					MechIdleStopDelay = {default = 0.6, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult}
				},
				multiply = true
			}
		},
		["MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT/ENTITIES/MECH.ENTITY.MBIN"] = {
			{
				fields = {
					Speed = lyr.tweakStates.mechAnimSpeedMult,
					FootPlantSpringTime = {default = 0.2, multiplier = 1/lyr.tweakStates.mechAnimSpeedMult}
				},
				multiply = true,
				replaceAll = true
			}
		}
	}

	return tweak
end; lyr.tweakTables.mechAnimSpeedMult = mechAnimSpeedMult

local betterMechJetPack = function()
	if not lyr:checkTweak("betterMechJetPack") then return false end

	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MechJetpackMaxSpeed = {default = 20, altered = 30},
					MechJetpackMaxUpSpeed = {default = 20, altered = 30},
					MechJetpackDrainRate = {default = 0.5, altered = 0.375},
					MechJetpackFillRate = {default = 0.5, altered = 0.5},
					MechJetpackTurnSpeed = {default = 3, altered = 0.5}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.betterMechJetPack = betterMechJetPack

local reworkedMechCamera = function()
	if not lyr:checkTweak("reworkedMechCamera") then return false end

	local tweak = {
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
	}

	return tweak
end; lyr.tweakTables.reworkedMechCamera = reworkedMechCamera

local generalMechTweaks = function()
	if not lyr:checkTweak("generalMechTweaks") then return false end

	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = "MechWeaponData",
				findAllSubSections = {{lyr.ignore, "GcExoMechWeaponData.xml"}},
				fields = {
					MaintainFireLocationMinTime = {default = 1.5, altered = 1}
				}
			},
			{
				fields = {
					MechArmPitchAngleMin = {default = -30, altered = -45},
					MechArmPitchAngleMax = {default = 60, altered = 75},
					MechLandCameraShakeDist = {default = 40, altered = 0.1},
					MechFootprintFadeTime = {default = 1, altered = 15},
					MechFootprintFadeDist = {default = 20, altered = 50}
				}
			}
		},
		{
			mbinPaths = {
				[[MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\ENTITIES\MECH.ENTITY.MBIN]],
				[[MODELS\COMMON\ROBOTS\MECH\ENTITIES\SENTINELMECH.ENTITY.EXML]],
			},
			{
				skw = {"Template", "GcCreatureFullBodyIKComponentData.xml"},
				fields = {
					MaxHeadYaw = {default = 125, altered = 115},
					MaxFootAngle = {default = 45, altered = 70},
					FootAngleSpeed = {default = 10, altered = 35},
					MovementDamp = {default = 0.2, altered = 0.60}
				}
			},
		}
	}

	return tweak
end; lyr.tweakTables.generalMechTweaks = generalMechTweaks

local experimentalMechTweaks = function()
	if not lyr:checkTweak("experimentalMechTweaks") then return false end

	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				skw = {lyr:parsePair([[<Property name="Name" value="MECH" />]])},
				fields = {
					VehicleGravity = {default = 70, altered = 700},
					VehicleGravityWater = {default = 13.5, altered = 350}
				},
			},
			{
				fields = {
 					MechJetpackForce = {default = 70, altered = 70},
 					MechJetpackUpForce = {default = 100, altered = 1000},
 					MechJetpackAvoidGroundForce = {default = 120, altered = 1200},
 					MechJetpackAvoidGroundProbeLength = {default = 6, altered = 6},
 					MechJetpackFallForce = {default = 80, altered = 0},
 					MechJetpackIgnitionForce = {default = 120, altered = 0},
 					MechJetpackIgnitionTime = {default = 0.4, altered = 0.4},	-- this feels like mislabeled; AvoidGround stuff is active during this time
					MechLandBrake = {default = 4, altered = 100},
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.experimentalMechTweaks = experimentalMechTweaks

local enhancedAIMechCombat = function()
	if not lyr:checkTweak("enhancedAIMechCombat") then return false end

	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					AIMechFlamethrowerFireInterval = {default = 0.025, altered = 0.025},
					AIMechFlamethrowerNumShotsMin = {default = 40, altered = 40},
					AIMechFlamethrowerNumShotsMax = {default = 50, altered = 120},
					AIMechLaserFireDurationMin = {default = 3, altered = 1},
					AIMechLaserFireDurationMax = {default = 5, altered = 3},
					AIMechGunFireInterval = {default = 0.5, altered = 0.5},
					AIMechGunNumShotsMin = {default = 3, altered = 2},
					AIMechGunNumShotsMax = {default = 5, altered = 6},
					AIMechStunGunFireInterval = {default = 1, altered = 1},
					AIMechStunGunNumShotsMin = {default = 1, altered = 1},
					AIMechStunGunNumShotsMax = {default = 1, altered = 1},
					-- AIMechGunProjectile = {default = "VEHICLEGUN", altered = "VEHICLESTUNGUN"},
					AIMechGunExplosionRadius = {default = 0, altered = 0},
					AIMechGunInheritVelocity = {default = 1, altered = 1},
				}
			},
			{
				precedingKeyWords = "MechWeaponData",
				findSubSections = {{"Flamethrower", "GcExoMechWeaponData.xml"}},
				fields = {
					AngleToleranceForArmAiming = {default = 60, altered = 60},
					AttackAngle = {default = 50, altered = 45},
					MinRange = {default = 6, altered = 1},
					MaxRange = {default = 60, altered = 20},
					CooldownTimeMin = {default = 3, altered = 0.95},
					CooldownTimeMax = {default = 5, altered = 0.95},
					SelectionWeight = {default = 1.5, altered = 2}
				}
			},
			{
				precedingKeyWords = "MechWeaponData",
				findSubSections = {{"Laser", "GcExoMechWeaponData.xml"}},
				fields = {
					AngleToleranceForArmAiming = {default = 30, altered = 60},
					AttackAngle = {default = 30, altered = 45},
					MinRange = {default = 3, altered = 20},
					MaxRange = {default = 30, altered = 60},
					CooldownTimeMin = {default = 2, altered = 0.95},
					CooldownTimeMax = {default = 4, altered = 0.95},
					SelectionWeight = {default = 1, altered = 0.5}
				}
			},
			{
				precedingKeyWords = "MechWeaponData",
				findSubSections = {{"Gun", "GcExoMechWeaponData.xml"}},
				fields = {
					AngleToleranceForArmAiming = {default = 60, altered = 60},
					AttackAngle = {default = 50, altered = 45},
					MinRange = {default = 6, altered = 1},
					MaxRange = {default = 60, altered = 60},
					CooldownTimeMin = {default = 3, altered = 0.95},
					CooldownTimeMax = {default = 5, altered = 0.95},
					SelectionWeight = {default = 1.5, altered = 1.5}
				}
			},
			{
				precedingKeyWords = "MechWeaponData",
				findSubSections = {{"StunGun", "GcExoMechWeaponData.xml"}},
				fields = {
					AngleToleranceForArmAiming = {default = 60, altered = 60},
					AttackAngle = {default = 50, altered = 45},
					MinRange = {default = 6, altered = 1},
					MaxRange = {default = 60, altered = 60},
					CooldownTimeMin = {default = 5, altered = 0.95},
					CooldownTimeMax = {default = 8, altered = 0.95},
					SelectionWeight = {default = 0.5, altered = 1}
				}
			},
		}
	}

	return tweak
end; lyr.tweakTables.enhancedAIMechCombat = enhancedAIMechCombat

local longerAIMechLeash = function()
	if not lyr:checkTweak("longerAIMechLeash") then return false end

	local tweak = {
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
					ExoMechJumpCooldownTimeInCombat = {default = 8, altered = 16},
					ExoMechJumpCooldownTimeOutOfCombat = {default = 4, altered = 2}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.longerAIMechLeash = longerAIMechLeash

local heavierTitanfall = function()
	if not lyr:checkTweak("heavierTitanfall") then return false end

	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MechTitanFallHeight = {default = 30, altered = 150},
					MechTitanFallTerrainEditSize = {default = 2, altered = 10},
					MechTitanFallTerrainEditOffset = {default = 0.45, altered = 0.15},
					MechTitanFallCameraShakeDist = {default = 80, altered = 100}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.heavierTitanfall = heavierTitanfall

local shipAndVehicleInventoryRange = function()
	if not lyr:checkTweak("shipAndVehicleInventoryRange") then return false end

	local tweak = {
		{
			mbinPaths = [[GCGAMEPLAYGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					ShipInteractRadius = {default = 50, altered = math.max(50, lyr.tweakStates.shipAndVehicleInventoryRange)}
				}
			}
		}
	}

	return tweak
end; lyr.tweakTables.shipAndVehicleInventoryRange = shipAndVehicleInventoryRange

--#endregion
-- END OF TWEAKS

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_vehicleTweaks.pak",
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