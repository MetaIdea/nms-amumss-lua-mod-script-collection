--|=======================================================================================--
--| USER SETTINGS
--|=======================================================================================--
_CameraType = 3 -- 1 = Centered | 2 = Right-Shoulder | 3 = Left-Shoulder

--|=======================================================================================--
--| CODE
--|=======================================================================================--
if _CameraType < 1 or _CameraType > 3 then print('>>> WARNING: Camera Type setting is INVALID, using 1 for "centered" by default. <<<') end
local OffsetX, modNameSub = 0, "centered"
if     _CameraType == 2 then OffsetX, modNameSub = 0.9, "right-shoulder"
elseif _CameraType == 3 then OffsetX, modNameSub = -0.9, "left-shoulder"
end

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]     = string.format("EnhancedThirdPersonCamera_%s.pak",modNameSub),
	["MOD_AUTHOR"]       = "Wazora",
	["LUA_AUTHOR"]       = "Umaroth",
	["NMS_VERSION"]      = "5.12",
	["MOD_DESCRIPTION"]  = "Improves third person camera in various ways.",
	["MAINTENANCE"]      = "Umaroth",
	["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
	["MODIFICATIONS"] = {{
		["MBIN_CT"] = {{
			["MBIN_FS"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
			["EXML_CT"] = {{
				["PKW"] = {
					{"CharacterUnarmedCam"},
					{"CharacterRunCam"},
					{"CharacterCombatCam"},
					{"CharacterMiningCam"},
					{"CharacterIndoorCam"},
					{"CharacterAbandCombatCam"},
					{"CharacterAbandCam"},
					{"CharacterNexusCam"},
					{"CharacterAirborneCam"},
					{"CharacterMeleeBoostCam"},
					{"CharacterRocketBootsCam"},
					{"CharacterRocketBootsChargeCam"},
					{"CharacterFallingCam"},
					{"CharacterAirborneCombatCam"},
					{"CharacterSpaceCam"},
					{"CharacterSteepSlopeCam"},
					{"CharacterUnderwaterCam"},
					{"CharacterUnderwaterCombatCam"},
					{"CharacterUnderwaterJetpackCam"}
				},
				["VCT"] = {
					{"MinSpeed", "4"},
					{"SpeedRange", "20"},
					{"OffsetX", OffsetX},
					{"OffsetY", "0"},
					{"OffsetYAlt", "0"},
					{"OffsetYSlopeExtra", "0.5"},
					{"OffsetZFlat", "0"},
					{"BackMinDistance", "5"},
					{"BackMaxDistance", "9"},
					{"BackSlopeAdjust", "0"},
					{"BackSlopeRotationAdjust", "0"},
					{"UpMinDistance", "0"},
					{"UpMaxDistance", "0"},
					{"UpSlopeAdjust", "0"},
					{"LeftMinDistance", "0"},
					{"LeftMaxDistance", "0"},
					{"OffsetYExtraMaxDistance", "0"},
					{"PanNear", "-1"},
					{"PanFar", "3"},
					{"UpGamma", "1.5"},
					{"HorizRotationAngleMaxPerFrame", "20"},
					{"VertRotationSpeed", "15"},
					{"VertRotationMin", "-65"},
					{"VertRotationMax", "65"},
					{"VertRotationOffset", "1"},
					{"VertRotationOffsetMinAngle", "-150"},
					{"VertRotationOffsetMaxAngle", "180"},
					{"VertStartLookingDown", "false"},
					{"DistSpeed", "5"},
					{"DistSpeedOutsideMainRange", "5"},
					{"DistStiffness", "0.2"},
					{"SpringSpeed", "0.18"},
					{"LockToObjectOnIdle", "false"},
					{"CenterStartTime", "2.2"},
					{"CenterBlendTime", "0.8"},
					{"CenterMaxSpring", "0.66"},
					{"CenterMaxSpeed", "0.1"},
					{"VelocityAnticipate", "0.17"},
					{"VelocityAnticipateSpringSpeed", "0.4"},
					{"VertMaxSpring", "0.5"},
					{"CenterStartSpeed", "1"},
					{"LookStickLimitAngle", "0"},
					{"EnableCollisionDetection", "true"},
					{"NumLRProbes", "10"},
					{"LRProbesRange", "13"},
					{"LRProbesRadius", "0.3"},
					{"NumUDProbes", "5"},
					{"UDProbesRange", "1.5"},
					{"ProbeCenterX", "0"},
					{"ProbeCenterY", "-0.65"},
					{"PushForwardDropoffLR", "1.6"},
					{"PushForwardDropoffUD", "0.2"},
					{"AvoidCollisionLRSpeed", "0.005"},
					{"AvoidCollisionUDSpeed", "0.005"},
					{"AvoidCollisionPushSpeed", "0.01"},
					{"AvoidCollisionUDUseStickDelay", "true"},
					{"AvoidCollisionLRUseStickDelay", "true"},
					{"UseSpeedBasedSpring", "true"},
					{"UseCustomBlendTime", "false"},
					{"CustomBlendTime", "0.5"},
				}
			}}
		}}
	}}
}