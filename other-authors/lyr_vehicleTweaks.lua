local lyr = {tweakStates = {}, tweakTables = {}, ignore = "IGNORE"}
local batchPakName = "lyr_allTweaks.pak"	-- unless this line is removed, AMUMSS will combine the mods in this file
local modDescription = [[Lyravega's Vehicle Tweaks 1.2]]
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
	improvedVehicleScannerPulse = true,		-- reduces vehicle scanner pulse charge times
	sturdyVehicleTechs = true,				-- reduces the damage installed vehicle tech upgrades take
	mechSpeedMult = 1.25,					-- multiplier for mech movement and turn speeds
	mechAnimSpeedMult = 1.25,				-- multiplier for all animation speeds, 1/value multiplier for times and delays (ideally, equal to 'mechSpeedMult')
	betterMechJetPack = true,				-- turning is now much easier while flying, max speed is increased and fuel drain is decreased slightly
	reworkedMechCamera = true,				-- all mech cameras are unified; wide angle with mech on the side, camera no longer jumps when fire location changes
	generalMechTweaks = true,				-- some janky mech animations are fixed, foot and arm pitch angle limits are increased, fire location changes more often
	enhancedAIMechCombat = true,			-- the AI mech uses both of its weapons more; changes the angle, range, cooldown and interval parameters of weapons
	alternateAIMechCannon = true,			-- if enabled alongside 'enhancedAIMechCombat' option, allows the AI mech to fire stun cannon projectiles instead
	longerAIMechLeash = true,				-- resummon distance for the AI controlled mech is increased
	heavierTitanfall = true,				-- titanfall (mech summon) takes a bit longer and is more impactful / TITANFALL 3 WHEN
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

	for tweakName in next, tweakNames do
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
	improvedVehicleScannerPulse = lyr:checkTweak("improvedVehicleScannerPulse") and {
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
	sturdyVehicleTechs = lyr:checkTweak("sturdyVehicleTechs") and {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			{
				fields = {
					DamageTechNumHitsRequired = {default = 20, altered = 600},
					DamageTechMinHitIntervalSeconds = {default = 1, altered = 1}
				}
			}
		}
	},
	mechSpeedMult = lyr:checkTweak("mechSpeedMult") and {
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
	},
	mechAnimSpeedMult = lyr:checkTweak("mechAnimSpeedMult") and {
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
	},
	betterMechJetPack = lyr:checkTweak("betterMechJetPack") and {
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
	reworkedMechCamera = lyr:checkTweak("reworkedMechCamera") and {
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
	generalMechTweaks = lyr:checkTweak("generalMechTweaks") and {
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
					MechArmPitchAngleMax = {default = 60, altered = 75}
				}
			}
		},
		["MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT/ENTITIES/MECH.ENTITY.MBIN"] = {
			{
				precedingKeyWords = "GcCreatureFullBodyIKComponentData.xml",
				fields = {
					MaxHeadYaw = {default = 125, altered = 115},
					MaxFootAngle = {default = 45, altered = 70},
					MovementDamp = {default = 0.2, altered = 0.65}
				}
			},
		}
	},
	enhancedAIMechCombat = lyr:checkTweak("enhancedAIMechCombat") and {
		["GCVEHICLEGLOBALS.GLOBAL.MBIN"] = {
			lyr.tweakStates.alternateAIMechCannon and {
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
				precedingKeyWords = "MechWeaponData",
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
				precedingKeyWords = "MechWeaponData",
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
	longerAIMechLeash = lyr:checkTweak("longerAIMechLeash") and {
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
	heavierTitanfall = lyr:checkTweak("heavierTitanfall") and {
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

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME = "lyr_vehicleTweaks.pak",
	MOD_BATCHNAME = batchPakName or nil,
	MOD_AUTHOR = "lyravega",
	LUA_AUTHOR = "lyravega",
	MOD_DESCRIPTION = modDescription,
	NMS_VERSION = gameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	AMUMSS_SUPPRESS_MSG = "MULTIPLE_STATEMENTS",
	MODIFICATIONS =	lyr:processTweakTables()
}