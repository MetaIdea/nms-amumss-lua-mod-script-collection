local batchPakName = "_lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Vehicle Tweaks 5.20]]
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
	improvedVehicleScannerPulse = true,			-- reduces vehicle scanner pulse charge times
	mechSpeedMult = 1.5,						-- multiplier for mech movement and turn speeds (above 2 is not recommended)
	mechAnimSpeedMult = 1.5,					-- multiplier for all animation speeds, 1/value multiplier for times and delays (ideally, equal to 'mechSpeedMult')
	betterMechJetPack = true,					-- turning is now much easier while flying, max speed is increased and fuel drain is decreased slightly
	reworkedMechCamera = {"left", 0, false},	-- unifies mech cameras, options: mech side (string, "left"/"right"/"center"), extra distance (number), left handed (boolean, true/false)
--	noMechCameraShake = true,					-- mech walk and run animations will not shake the screen anymore (them walking over rocks and shit will still do)
	generalMechTweaks = true,					-- less janky animations, increased foot and arm angle limits, snappier fire location, shorter camera shake distance
--	experimentalMechTweaks = true,				-- increases mass to increase downhill traction, adjusts jetpack and brake parameters to compensate (experimental because janky)
	mechTechDurabilityFactor = 0,				-- tech damage difficulty setting doesn't include AI mech tech, this multiplier makes them more durable (0 disables it completely)
	enhancedAIMechCombat = true,				-- the AI mech uses both of its weapons more; changes the angle, range, cooldown and interval parameters of weapons
	longerAIMechLeash = true,					-- resummon distance for the AI controlled mech is increased
	heavierTitanfall = true,					-- titanfall (mech summon) takes a bit longer and is more impactful / TITANFALL 3 WHEN
	shipAndVehicleInventoryRange = 250,			-- ship and vehicle inventory access range is set to the given value (item teleporter works beyond this range)
	sturdyStormCrystals = true,					-- makes storm crystals withstand your vehicles (no more accidentally walking over them)
	skiffHazardProtectionVolume = 2.5,			-- adds an actual volume to the hazard protection on the skiff (2.5 is ideal that covers all)
--	skiffVehicleGarage = "nautilon"				-- options: "nautilon"/"nomad"/"dragonfly" // summon/customize vehicles from skiff ("nautilon" is great, "nomad" is big, "dragonfly" is secret)
	silentSkiff = true							-- embrace tranquility... till the game throws yet another storm at you
}

--#region METHODS

dofile("lyr_amumss/lyr_amumss.lua")

--#endregion
-- END OF METHODS

--#region TWEAKS

local improvedVehicleScannerPulse = function(tweakName, tweakState)
	local tweak = {
		["METADATA/SIMULATION/SCANNING/SCANDATATABLE.MBIN"] = {
			{
				skw = {"ID", "VEHICLE", "ScanType", "Ship"},
				thisLine = true,
				fields = {
					ScanType = {default = "Ship", "Ship"},
				}
			},
			{
				skw = {"ID", "VEHICLE"},
				fields = {
					PulseRange = {default = 1500, 2500},
					PulseTime = {default = 1, 2},
					PlayAudioOnMarkers = {default = true, true},
					ChargeTime = {default = 20, 10}
				}
			},
			{
				skw = {"ID", "VEHICLE_LOCAL", "ScanType", "Tool"},
				thisLine = true,
				fields = {
					ScanType = {default = "Tool", "Tool"},
				}
			},
			{
				skw = {"ID", "VEHICLE_LOCAL"},
				fields = {
					PulseRange = {default = 600, 1250},
					PulseTime = {default = 1, 2},
					PlayAudioOnMarkers = {default = true, true},
					ChargeTime = {default = 15, 10}
				}
			},
		}
	}

	return tweak
end
lyr.tweakTables.improvedVehicleScannerPulse = improvedVehicleScannerPulse

local mechTechDurabilityFactor = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 0 or math.max(0, math.floor(tweakState))

	local tweak = {
		{
			mbinPaths = [[METADATA\GAMESTATE\DIFFICULTYCONFIG.EXML]],
			{
				pkw = "DamageReceivedAIMechTechDamageHits",
				fields = {
					Low = "@*"..tweakState,
					Normal = "@*"..tweakState,
					High = "@*"..tweakState,
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.mechTechDurabilityFactor = mechTechDurabilityFactor

local mechSpeedMult = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 1.5 or math.max(0.5, tweakState)

	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				specialKeyWords = {"Name", "MECH"},
				fields = {
					TopSpeedForward = "@*"..tweakState
				}
			},
			{
				fields = {
					MechPlayerGroundTurnSpeed = "@*"..(1/tweakState),
					MechAIGroundTurnSpeed = "@*"..(1/tweakState),
					MechTurretTurnTimeGroundPlayerCombat = "@*"..(1/tweakState),
					MechTurretTurnTimeGround = "@*"..(1/tweakState),
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.mechSpeedMult = mechSpeedMult

local mechAnimSpeedMult = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 1.5 or math.max(0.5, tweakState)

	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MechPowerUpTime = "@*"..(1/tweakState),
					MechTitanFallLandIntroTime = "@*"..(1/tweakState),
					MechTitanFallLandIdleTime = "@*"..(1/tweakState),
					MechWalkToRunTimeIdle = "@*"..(1/tweakState),
					MechWalkToRunTimeSkid = "@*"..(1/tweakState),
					MechCrouchTime = "@*"..(1/tweakState),
					MechJetpackJetScaleTime = "@*"..(1/tweakState),
					MechJetpackLandTime = "@*"..(1/tweakState),
					MechJetpackIgnitionTime = "@*"..(1/tweakState),
					MechCoGAdjustTimeWindUp = "@*"..(1/tweakState),
					MechCoGAdjustTimeAir = "@*"..(1/tweakState),
					MechCoGAdjustTimeLand = "@*"..(1/tweakState),
					MechDefaultBlendTime = "@*"..(1/tweakState),
					MechSpeedBlendTime = "@*"..(1/tweakState),
					MechLandBlendTime = "@*"..(1/tweakState),
					MechJumpBlendTime = "@*"..(1/tweakState),
					MechJumpFlyBlendTime = "@*"..(1/tweakState),
					MechJumpDownBlendTime = "@*"..(1/tweakState),
					MechIdleLowBlendTime = "@*"..(1/tweakState),
					MechIdleLowDelay = "@*"..(1/tweakState),
					MechIdleStopDelay = "@*"..(1/tweakState)
				}
			}
		},
		["MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT/ENTITIES/MECH.ENTITY.MBIN"] = {
			{
				fields = {
					Speed = "@*"..tweakState,
					FootPlantSpringTime = "@*"..(1/tweakState)
				},
				replaceAll = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.mechAnimSpeedMult = mechAnimSpeedMult

local betterMechJetPack = function(tweakName, tweakState)
	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MechJetpackMaxSpeed = {default = 20, 30},
					MechJetpackMaxUpSpeed = {default = 20, 30},
					MechJetpackDrainRate = {default = 0.5, 0.375},
					MechJetpackFillRate = {default = 0.5, 0.5},
					MechJetpackTurnSpeed = {default = 3, 0.5}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.betterMechJetPack = betterMechJetPack

local reworkedMechCamera = function(tweakName, tweakState)
	local options = tweakState
	options = type(options) == "table" and {
		side = options[1] and options[1] or "left",
		extraOffset = options[2] and options[2] or 0,
		leftHanded = options[3] and options[3] or false
	} or {side = "left", extraOffset = 0, leftHanded = false}

	local sides = {
		left = {x = 3 + options.extraOffset, y = 0, z = 0, back = 8},
		right = {x = -3 - options.extraOffset, y = 0, z = 0, back = 8},
		center = {x = 0, y = 3 + options.extraOffset, z = -2, back = 10}
	}

	if options.leftHanded then
		local temp = sides.left
		sides.left = sides.right
		sides.right = temp
	end

	local offsets = sides[options.side]

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
					OffsetX = offsets.x + (options.leftHanded and -1 or 1),
					OffsetY = offsets.y,
					OffsetYAlt = offsets.y,
					OffsetYSlopeExtra = 0,
					OffsetYExtraMaxDistance = 0,
					OffsetZFlat = offsets.z,
					BackMinDistance = offsets.back,
					BackMaxDistance = offsets.back,
					BackSlopeAdjust = 0,
					BackSlopeRotationAdjust = 0,
					UpMinDistance = 0,
					UpMaxDistance = 0,
					UpSlopeAdjust = 0,
					LeftMinDistance = 0,
					LeftMaxDistance = 0,
					PanNear = 10,
					PanFar = 10,
					CenterMaxSpring = 1,
					VertMaxSpring = 1,
					-- SpringSpeed = 0.5,
					-- VelocityAnticipateSpringSpeed = 2.5,
					-- VelocityAnticipate = 0.15,
					UseSpeedBasedSpring = true,
					-- CenterStartSpeed = 2.5,
					CenterStartTime = 60,
					CenterBlendTime = 1,
					CustomBlendTime = 1,
					LockToObjectOnIdle = false
				},
				replaceAll = true
			},
			{
				fields = {
  					MechCameraNoExtraYTimeAfterLand = {default = 2, 0},
  					MechCameraExtraYPostLandingBlendTime = {default = 2, 0},
  					MechCameraArmShootOffsetY = {default = 1, offsets.y},
  					MechCameraCombatFakeSpeed = {default = 14, 2}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.reworkedMechCamera = reworkedMechCamera

local noMechCameraShake = function(tweakName, tweakState)
	local tweak = {
		["GCCAMERAGLOBALS.GLOBAL.MBIN"] = {
			{
				pkw = [[<Property value="GcCameraShakeData.xml">]],
				fs = [[<Property name="Name" value="LARGECREATUREWA" />]],
				copySection = true
			},
			{
				editSection = true,
				fields = {
					Name = "LYR_CRTRWALK"	-- mech is hardcoded to use "LARGECREATUREWA", so duping this for creatures
				}
			},
			{
				pkw = "CameraShakeTable",
				pasteSection = true
			},
			{
				pkw = [[<Property value="GcCameraShakeData.xml">]],
				fs = [[<Property name="Name" value="NOSHAKE" />]],
				copySection = true
			},
			{
				editSection = true,
				fields = {
					Name = "LARGECREATUREWA"
				}
			},
			{
				pkw1st = "CameraShakeTable",
				skw = {"Name", "LARGECREATUREWA"},
				replaceSection = true
			}
		},
		["GCCREATUREGLOBALS.EXML"] = {
			{
				fields = {
					CreatureLargeWalkShake = "LYR_CRTRWALK",
					CreatureLargeRunShake = "LYR_CRTRWALK",
					CreatureHugeWalkShake = "LYR_CRTRWALK",
					CreatureHugeRunShake = "LYR_CRTRWALK"
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.noMechCameraShake = noMechCameraShake

local generalMechTweaks = function(tweakName, tweakState)
	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				precedingKeyWords = "MechWeaponData",
				findAllSubSections = {{lyr.ignore, "GcExoMechWeaponData.xml"}},
				fields = {
					MaintainFireLocationMinTime = {default = 1.5, 1}
				}
			},
			{
				fields = {
					MechArmPitchAngleMin = {default = -30, -45},
					MechArmPitchAngleMax = {default = 60, 75},
					MechFootprintFadeTime = {default = 1, 15},
					MechFootprintFadeDist = {default = 20, 50}
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
					MaxHeadYaw = {default = 125, 115},
					MaxFootAngle = {default = 45, 70},
					FootAngleSpeed = {default = 10, 35},
					MovementDamp = {default = 0.2, 0.60}
				}
			},
		}
	}

	return tweak
end
lyr.tweakTables.generalMechTweaks = generalMechTweaks

local experimentalMechTweaks = function(tweakName, tweakState)
	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				skw = [[<Property name="Name" value="MECH" />]],
				fields = {
					VehicleGravity = {default = 70, 700},
					VehicleGravityWater = {default = 13.5, 350}
				},
			},
			{
				fields = {
 					MechJetpackForce = {default = 70, 70},
 					MechJetpackUpForce = {default = 100, 1000},
 					MechJetpackAvoidGroundForce = {default = 120, 1200},
 					MechJetpackAvoidGroundProbeLength = {default = 6, 6},
 					MechJetpackFallForce = {default = 80, 800},
 					MechJetpackIgnitionForce = {default = 120, 0},
 					MechJetpackIgnitionTime = {default = 0.4, 0.4},	-- this feels like mislabeled; AvoidGround stuff is active during this time
					MechLandBrake = {default = 4, 100},
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.experimentalMechTweaks = experimentalMechTweaks

local enhancedAIMechCombat = function(tweakName, tweakState)
	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					AIMechFlamethrowerFireInterval = {default = 0.025, 0.025},
					AIMechFlamethrowerNumShotsMin = {default = 40, 40},
					AIMechFlamethrowerNumShotsMax = {default = 50, 120},
					AIMechLaserFireDurationMin = {default = 3, 1},
					AIMechLaserFireDurationMax = {default = 5, 3},
					AIMechGunFireInterval = {default = 0.5, 0.5},
					AIMechGunNumShotsMin = {default = 3, 2},
					AIMechGunNumShotsMax = {default = 5, 6},
					AIMechStunGunFireInterval = {default = 1, 1},
					AIMechStunGunNumShotsMin = {default = 1, 1},
					AIMechStunGunNumShotsMax = {default = 1, 1},
					-- AIMechGunProjectile = {default = "VEHICLEGUN", "VEHICLESTUNGUN"},
					AIMechGunExplosionRadius = {default = 0, 0},
					AIMechGunInheritVelocity = {default = 1, 1},
				}
			},
			{
				precedingKeyWords = "MechWeaponData",
				findSubSections = {{"Flamethrower", "GcExoMechWeaponData.xml"}},
				fields = {
					AngleToleranceForArmAiming = {default = 60, 60},
					AttackAngle = {default = 50, 45},
					MinRange = {default = 6, 1},
					MaxRange = {default = 60, 20},
					CooldownTimeMin = {default = 3, 0.95},
					CooldownTimeMax = {default = 5, 0.95},
					SelectionWeight = {default = 1.5, 2}
				}
			},
			{
				precedingKeyWords = "MechWeaponData",
				findSubSections = {{"Laser", "GcExoMechWeaponData.xml"}},
				fields = {
					AngleToleranceForArmAiming = {default = 30, 60},
					AttackAngle = {default = 30, 45},
					MinRange = {default = 3, 20},
					MaxRange = {default = 30, 60},
					CooldownTimeMin = {default = 2, 0.95},
					CooldownTimeMax = {default = 4, 0.95},
					SelectionWeight = {default = 1, 0.5}
				}
			},
			{
				precedingKeyWords = "MechWeaponData",
				findSubSections = {{"Gun", "GcExoMechWeaponData.xml"}},
				fields = {
					AngleToleranceForArmAiming = {default = 60, 60},
					AttackAngle = {default = 50, 45},
					MinRange = {default = 6, 1},
					MaxRange = {default = 60, 60},
					CooldownTimeMin = {default = 3, 0.95},
					CooldownTimeMax = {default = 5, 0.95},
					SelectionWeight = {default = 1.5, 1.5}
				}
			},
			{
				precedingKeyWords = "MechWeaponData",
				findSubSections = {{"StunGun", "GcExoMechWeaponData.xml"}},
				fields = {
					AngleToleranceForArmAiming = {default = 60, 60},
					AttackAngle = {default = 50, 45},
					MinRange = {default = 6, 1},
					MaxRange = {default = 60, 60},
					CooldownTimeMin = {default = 5, 0.95},
					CooldownTimeMax = {default = 8, 0.95},
					SelectionWeight = {default = 0.5, 1}
				}
			},
		}
	}

	return tweak
end
lyr.tweakTables.enhancedAIMechCombat = enhancedAIMechCombat

local longerAIMechLeash = function(tweakName, tweakState)
	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MechAIResummonTriggerDistance = {default = 100, 250}
				}
			}
		},
		["GCROBOTGLOBALS.MBIN"] = {
			{
				fields = {
					ExoMechJumpCooldownTimeInCombat = {default = 8, 16},
					ExoMechJumpCooldownTimeOutOfCombat = {default = 4, 2}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.longerAIMechLeash = longerAIMechLeash

local heavierTitanfall = function(tweakName, tweakState)
	local tweak = {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					MechTitanFallHeight = {default = 30, 150},
					MechTitanFallTerrainEditSize = {default = 2, 10},
					MechTitanFallTerrainEditOffset = {default = 0.45, 0.15},
					MechTitanFallCameraShakeDist = {default = 80, 80},
					MechLandCameraShakeDist = {default = 40, 40}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.heavierTitanfall = heavierTitanfall

local shipAndVehicleInventoryRange = function(tweakName, tweakState)
	tweakState = type(tweakState) ~= "number" and 125 or math.max(50, tweakState)

	local tweak = {
		{
			mbinPaths = [[GCGAMEPLAYGLOBALS.GLOBAL.MBIN]],
			{
				fields = {
					ShipInteractRadius = {default = 50, math.max(50, tweakState)}
				}
			}
		}
	}

	return tweak
end
lyr.tweakTables.shipAndVehicleInventoryRange = shipAndVehicleInventoryRange

local skiffHazardProtectionVolume = function(tweakName, tweakState)
	tweakState = tweakState ~= "number" and 2.5 or math.max(1, tweakState)

	local tweak = {
		lyr:sceneTools([[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\FISHINGPLATFORM.SCENE.EXML]])
		:insertNode("HazardProtection", "HazardProtectionCollision", {TransY = 2.5}):sphereCollision(tweakState):done(),
	}

	return tweak
end
lyr.tweakTables.skiffHazardProtectionVolume = skiffHazardProtectionVolume

local skiffVehicleGarage = function(tweakName, tweakState)
	local vehicles, useStaticPhysics = {
		dragonfly = {vehicleName = "Hovercraft", OffsetY = 0, OffsetZ = -1},
		nautilon = {vehicleName = "Submarine", OffsetY = -1, OffsetZ = -1.5},
		nomad = {vehicleName = "Bike", OffsetY = 0, OffsetZ = -2}
	}, false

	tweakState = type(tweakState) ~= "string" and vehicles.nautilon or vehicles[tweakState] or vehicles.nautilon

	local vehicleGarage = {name = "VehicleGarage", transform = {TransY = -1 + tweakState.OffsetY, TransZ = -5 + tweakState.OffsetZ, RotY = 180}, entity = [[LYR/ENTITIES/VEHICLEGARAGE.ENTITY.MBIN]]}
	local vehicleCustomizer = {name = "VehicleCustomizer", transform = {TransX = -0.325, TransY = 3.25 - tweakState.OffsetY, TransZ = -7.3 + tweakState.OffsetZ}, entity = [[LYR/ENTITIES/VEHICLECUSTOMIZER.ENTITY.MBIN]]}
	local vehicleSummoner = {name = "VehicleSummoner", transform =  {TransX = 0.175, TransY = 3.25 - tweakState.OffsetY, TransZ = -7.3 + tweakState.OffsetZ}, entity = [[LYR/ENTITIES/VEHICLESUMMONER.ENTITY.MBIN]]}

	return {
		{
			mbinPaths = {
				{[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\VEHICLEGARAGEHOVER\ENTITIES\VEHICLEGARAGEHOVER.ENTITY.EXML]], vehicleGarage.entity},
				{[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\VEHICLEGARAGEHOVER\ENTITIES\CUSTOMISER.ENTITY.EXML]], vehicleCustomizer.entity},
				{[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\VEHICLEGARAGESMALL\ENTITIES\SUMMONBUGGYSMALL.ENTITY.EXML]], vehicleSummoner.entity},
			}
		},
		useStaticPhysics and {
			mbinPaths = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\ENTITIES\DECORATIONNOCOLLIDE.ENTITY.EXML]],
			{
				pkw = "LinkableNMSTemplate.xml",
				fs = [[<Property name="Template" value="TkStaticPhysicsComponentData.xml">]],
				copySection = true
			},
			{
				editSection = true,
				fields = {
					Mass = 0,
					Gravity = 0,
					NoVehicleCollide = true,
					NoPlayerCollide = true,
				}
			}
		} or {
			mbinPaths = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\FISHINGPLATFORM\ENTITIES\FISHCASES.ENTITY.EXML]],
			{
				pkw = "LinkableNMSTemplate.xml",
				fs = [[<Property name="Template" value="TkPhysicsComponentData.xml">]],
				copySection = true
			},
			{
				editSection = true,
				fields = {
					Mass = 0,
					Gravity = 0,
					NoVehicleCollide = true,
					NoPlayerCollide = true,
				}
			}
		},
		{
			mbinPaths = {
				vehicleGarage.entity,
				vehicleCustomizer.entity,
				vehicleSummoner.entity,
			},
			{
				pkw = "LinkableNMSTemplate.xml",
				fs_nor = {
					-- [[<Property name="Template" value="TkPhysicsComponentData.xml">]],
					[[<Property name="Template" value="GcInteractionComponentData.xml">]],
					[[<Property name="Template" value="GcSimpleInteractionComponentData.xml">]],
					[[<Property name="Template" value="GcVehicleGarageComponentData.xml">]],
				},
				removeSections = true
			},
			{
				pkw = "Components",
				pasteSection = true
			}
		},
		{
			mbinPaths = vehicleGarage.entity,
			{
				fields = {
					VehicleType = tweakState.vehicleName
				}
			}
		},
		{
			mbinPaths = {
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\FISHINGPLATFORM.SCENE.EXML]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\PARTS\SKIFFCUSTOMISATIONINTERACTION.SCENE.MBIN]],
				[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\PARTS\FISHINGBOX.SCENE.MBIN]],
			},
			{
				skw = {"Name", "INTERACT"},
				removeSection = true
			}
		},
		lyr:sceneTools([[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\FISHINGPLATFORM.SCENE.EXML]])
		:insertNode("FishingPlatform", vehicleGarage.name, vehicleGarage.transform):entityLocator(vehicleGarage.entity)
		:insertNode(vehicleGarage.name, vehicleGarage.name.."Collision"):sphereCollision(0.1)
		:insertNode(vehicleGarage.name, vehicleCustomizer.name, vehicleCustomizer.transform):entityLocator(vehicleCustomizer.entity)
		:insertNode(vehicleCustomizer.name, vehicleGarage.name.."Collision"):sphereCollision(0.1)
		:insertNode(vehicleGarage.name, vehicleSummoner.name, vehicleSummoner.transform):entityLocator(vehicleSummoner.entity)
		:insertNode(vehicleSummoner.name, vehicleGarage.name.."Collision"):sphereCollision(0.1)
		:done(),
	}
end
lyr.tweakTables.skiffVehicleGarage = skiffVehicleGarage

local silentSkiff = function(tweakName, tweakState)
	local tweak = {
		{
			mbinPaths = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\FISHINGPLATFORM\ENTITIES\FISHINGPLATFORM.ENTITY.EXML]],
			{
				pkw = "LinkableNMSTemplate.xml",
				fs = [[<Property name="Template" value="TkAudioComponentData.xml">]],
				removeSection = true
			}
		}
	}

	return tweak
end
lyr.tweakTables.silentSkiff = silentSkiff

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