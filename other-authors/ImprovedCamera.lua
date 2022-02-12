NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] = "ImprovedCamera.pak",
["MOD_DESCRIPTION"] = "Centered third person camera, Consistent camera position, No camera lag, Improved Spaceship camera, Improved Exocraft camera",
["MOD_AUTHOR"] = "Azzinoth",
["NMS_VERSION"] = "2.09.3",
["MODIFICATIONS"] = 
	{
		{
			["PAK_FILE_SOURCE"] = "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = "CharacterUnarmedCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"OffsetX", "0"},
								{"OffsetY", "0"},
								{"BackMaxDistance", "10"},
								{"PanNear", "0"},
								{"PanFar", "0"},
								{"SpringSpeed", "0.01"},
								{"UseSpeedBasedSpring", "False"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterRunCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"SpeedRange", "20"},
								{"OffsetX", "0"},
								{"OffsetY", "0"},
								{"BackMinDistance", "4.2"},
								{"BackMaxDistance", "10"},
								{"PanNear", "0"},
								{"PanFar", "0"},
								{"HorizRotationAngleMaxPerFrame", "20"},
								{"VertRotationMin", "-65"},
								{"VertRotationMax", "65"},
								{"SpringSpeed", "0.01"},
								{"CenterStartTime", "2.2"},
								{"CenterBlendTime", "0.8"},
								{"CenterMaxSpring", "0.66"},
								{"CenterMaxSpeed", "0.1"},
								{"CenterStartSpeed", "1"},
								{"LRProbesRange", "13"},
								{"UseSpeedBasedSpring", "False"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterCombatCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MinSpeed", "4"},
								{"OffsetX", "0.1"},
								{"OffsetY", "0"},
								{"BackMinDistance", "4.2"},
								{"VertRotationMin", "-65"},
								{"DistSpeed", "5"},
								{"DistStiffness", "0.2"},
								{"SpringSpeed", "0.01"},
								{"CenterStartTime", "2.2"},
								{"CenterBlendTime", "0.8"},
								{"CenterMaxSpring", "0.66"},
								{"CenterMaxSpeed", "0.1"},
								{"VertMaxSpring", "0.5"},
								{"CenterStartSpeed", "1"},
								{"CloseSpring", "3"},
								{"LRProbesRange", "13"},
								{"LRProbesRadius", "0.3"},
								{"NumUDProbes", "5"},
								{"UDProbesRange", "1.5"},
								{"ProbeCenterY", "-0.65"},
								{"PushForwardDropoffLR", "1.6"},
								{"AvoidCollisionLRSpeed", "0.005"},
								{"AvoidCollisionUDSpeed", "0.005"},
								{"AvoidCollisionPushSpeed", "0.01"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterIndoorCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MinSpeed", "4"},
								{"SpeedRange", "20"},
								{"OffsetX", "0"},
								{"OffsetY", "-0.35"},
								{"BackMinDistance", "4.2"},
								{"BackMaxDistance", "10"},
								{"PanNear", "0"},
								{"PanFar", "0"},
								{"HorizRotationAngleMaxPerFrame", "20"},
								{"VertRotationMax", "65"},
								{"DistStiffness", "0.2"},
								{"SpringSpeed", "0.01"},
								{"CenterStartTime", "2.2"},
								{"CenterBlendTime", "0.8"},
								{"CenterMaxSpring", "0.66"},
								{"CenterMaxSpeed", "0.1"},
								{"VertMaxSpring", "0.5"},
								{"CenterStartSpeed", "1"},
								{"MinClose", "0.4"},
								{"MaxClose", "0.6"},
								{"ProbeCenterX", "0"},
								{"ProbeCenterY", "-0.65"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterNexusCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MinSpeed", "4"},
								{"SpeedRange", "20"},
								{"OffsetX", "0"},
								{"OffsetY", "0"},
								{"BackMinDistance", "4.2"},
								{"BackMaxDistance", "10"},
								{"PanNear", "0"},
								{"PanFar", "0"},
								{"HorizRotationAngleMaxPerFrame", "20"},
								{"VertRotationMax", "65"},
								{"DistStiffness", "0.2"},
								{"SpringSpeed", "0.01"},
								{"CenterStartTime", "2.2"},
								{"CenterBlendTime", "0.8"},
								{"CenterMaxSpring", "0.66"},
								{"CenterMaxSpeed", "0.1"},
								{"VertMaxSpring", "0.5"},
								{"CenterStartSpeed", "1"},
								{"MinClose", "0.4"},
								{"MaxClose", "0.6"},
								{"ProbeCenterX", "0"},
								{"ProbeCenterY", "-0.65"},
								{"UseSpeedBasedSpring", "False"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterAirborneCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MinSpeed", "4"},
								{"SpeedRange", "20"},
								{"OffsetX", "0"},
								{"OffsetY", "0"},
								{"BackMinDistance", "4.2"},
								{"BackMaxDistance", "10"},
								{"PanFar", "0"},
								{"HorizRotationAngleMaxPerFrame", "20"},
								{"VertRotationMin", "-65"},
								{"VertRotationMax", "65"},
								{"DistSpeed", "5"},
								{"DistStiffness", "0.2"},
								{"SpringSpeed", "0.01"},
								{"CenterStartTime", "2.2"},
								{"CenterBlendTime", "0.8"},
								{"CenterMaxSpring", "0.66"},
								{"CenterMaxSpeed", "0.1"},
								{"VertMaxSpring", "0.5"},
								{"CenterStartSpeed", "1"},
								{"CloseSpring", "3"},
								{"LRProbesRange", "13"},
								{"UseSpeedBasedSpring", "False"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterMeleeBoostCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"SpeedRange", "20"},
								{"OffsetX", "0"},
								{"OffsetY", "0"},
								{"BackMinDistance", "4.2"},
								{"PanNear", "0"},
								{"PanFar", "0"},
								{"HorizRotationAngleMaxPerFrame", "20"},
								{"VertRotationMin", "-65"},
								{"VertRotationMax", "65"},
								{"SpringSpeed", "0.01"},
								{"CenterStartTime", "2.2"},
								{"CenterMaxSpring", "0.66"},
								{"CenterMaxSpeed", "0.1"},
								{"CenterStartSpeed", "1"},
								{"LRProbesRange", "13"},
								{"UseSpeedBasedSpring", "False"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterRocketBootsCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MinSpeed", "4"},
								{"SpeedRange", "20"},
								{"OffsetX", "0"},
								{"OffsetY", "0"},
								{"BackMinDistance", "4.2"},
								{"BackMaxDistance", "10"},
								{"PanFar", "0"},
								{"HorizRotationAngleMaxPerFrame", "20"},
								{"VertRotationMin", "-65"},
								{"VertRotationMax", "65"},
								{"VertRotationOffset", "1"},
								{"DistSpeed", "5"},
								{"DistStiffness", "0.2"},
								{"SpringSpeed", "0.01"},
								{"CenterStartTime", "2.2"},
								{"CenterBlendTime", "0.8"},
								{"CenterMaxSpring", "0.66"},
								{"CenterMaxSpeed", "0.1"},
								{"VertMaxSpring", "0.5"},
								{"CenterStartSpeed", "1"},
								{"CloseSpring", "3"},
								{"LRProbesRange", "13"},
								{"UseSpeedBasedSpring", "False"},
								{"UseCustomBlendTime", "False"},
								{"CustomBlendTime", "0.5"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterRocketBootsChargeCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"OffsetX", "0"},
								{"OffsetY", "0"},
								{"BackMinDistance", "4.2"},
								{"BackMaxDistance", "10"},
								{"PanNear", "0"},
								{"PanFar", "0"},
								{"VertRotationMin", "-65"},
								{"VertRotationMax", "65"},
								{"SpringSpeed", "0.01"},
								{"UseSpeedBasedSpring", "False"},
								{"UseCustomBlendTime", "False"},
								{"CustomBlendTime", "0.5"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterFallingCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MinSpeed", "4"},
								{"OffsetX", "0"},
								{"OffsetY", "0"},
								{"BackMinDistance", "4.2"},
								{"BackMaxDistance", "10"},
								{"UpMaxDistance", "0"},
								{"PanFar", "0"},
								{"HorizRotationAngleMaxPerFrame", "20"},
								{"VertRotationMin", "-65"},
								{"VertRotationMax", "65"},
								{"DistSpeed", "5"},
								{"DistSpeedOutsideMainRange", "5"},
								{"DistStiffness", "0.2"},
								{"SpringSpeed", "0.01"},
								{"CenterStartTime", "2.2"},
								{"CenterBlendTime", "0.8"},
								{"CenterMaxSpring", "0.66"},
								{"CenterMaxSpeed", "0.1"},
								{"VertMaxSpring", "0.5"},
								{"CenterStartSpeed", "1"},
								{"CloseSpring", "3"},
								{"LRProbesRange", "13"},
								{"UseSpeedBasedSpring", "False"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterAirborneCombatCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MinSpeed", "4"},
								{"SpeedRange", "20"},
								{"OffsetX", "0.1"},
								{"OffsetY", "0"},
								{"BackMinDistance", "4.2"},
								{"BackMaxDistance", "10"},
								{"PanFar", "0"},
								{"HorizRotationAngleMaxPerFrame", "20"},
								{"VertRotationMin", "-65"},
								{"VertRotationMax", "65"},
								{"DistSpeed", "5"},
								{"DistStiffness", "0.2"},
								{"SpringSpeed", "0.01"},
								{"CenterStartTime", "2.2"},
								{"CenterBlendTime", "0.8"},
								{"CenterMaxSpring", "0.66"},
								{"CenterMaxSpeed", "0.1"},
								{"VertMaxSpring", "0.5"},
								{"CenterStartSpeed", "1"},
								{"CloseSpring", "3"},
								{"LRProbesRange", "13"},
								{"UseSpeedBasedSpring", "False"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterSpaceCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MinSpeed", "4"},
								{"SpeedRange", "20"},
								{"OffsetX", "0"},
								{"OffsetY", "0"},
								{"BackMinDistance", "4.2"},
								{"BackMaxDistance", "10"},
								{"PanFar", "0"},
								{"HorizRotationAngleMaxPerFrame", "20"},
								{"VertRotationMin", "-65"},
								{"VertRotationMax", "65"},
								{"VertRotationOffset", "1"},
								{"DistSpeed", "5"},
								{"DistStiffness", "0.2"},
								{"SpringSpeed", "0.01"},
								{"CenterStartTime", "2.2"},
								{"CenterBlendTime", "0.8"},
								{"CenterMaxSpring", "0.66"},
								{"CenterMaxSpeed", "0.1"},
								{"VertMaxSpring", "0.5"},
								{"CenterStartSpeed", "1"},
								{"CloseSpring", "3"},
								{"LRProbesRange", "13"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterSteepSlopeCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"OffsetX", "0"},
								{"OffsetY", "0"},
								{"BackMinDistance", "4.2"},
								{"BackMaxDistance", "10"},
								{"PanNear", "0"},
								{"PanFar", "0"},
								{"VertRotationMin", "-65"},
								{"VertRotationMax", "65"},
								{"DistStiffness", "0.2"},
								{"SpringSpeed", "0.01"},
								{"UseSpeedBasedSpring", "False"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterUnderwaterCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"SpeedRange", "20"},
								{"OffsetX", "0"},
								{"OffsetY", "0"},
								{"BackMinDistance", "4.2"},
								{"BackMaxDistance", "10"},
								{"VertRotationMin", "-65"},
								{"VertRotationMax", "65"},
								{"SpringSpeed", "0.01"},
								{"CenterBlendTime", "0.8"},
								{"VertMaxSpring", "0.5"},
								{"ProbeCenterY", "-0.65"},
								{"UseSpeedBasedSpring", "False"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterUnderwaterCombatCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"SpeedRange", "20"},
								{"OffsetX", "0"},
								{"OffsetY", "0"},
								{"BackMinDistance", "4.2"},
								{"BackMaxDistance", "10"},
								{"VertRotationMin", "-65"},
								{"SpringSpeed", "0.01"},
								{"CenterStartTime", "2.2"},
								{"CenterBlendTime", "0.8"},
								{"CenterMaxSpring", "0.66"},
								{"CenterMaxSpeed", "0.1"},
								{"VertMaxSpring", "0.5"},
								{"CenterStartSpeed", "1"},
								{"LRProbesRange", "13"},
								{"LRProbesRadius", "0.3"},
								{"NumUDProbes", "5"},
								{"UDProbesRange", "1.5"},
								{"ProbeCenterY", "-0.65"},
								{"PushForwardDropoffLR", "1.6"},
								{"AvoidCollisionLRSpeed", "0.005"},
								{"AvoidCollisionUDSpeed", "0.005"},
								{"AvoidCollisionPushSpeed", "0.01"},
								{"UseSpeedBasedSpring", "False"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterUnderwaterJetpackCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MinSpeed", "4"},
								{"SpeedRange", "20"},
								{"OffsetX", "0"},
								{"OffsetY", "0"},
								{"BackMinDistance", "4.2"},
								{"PanFar", "0"},
								{"HorizRotationAngleMaxPerFrame", "20"},
								{"VertRotationMin", "-65"},
								{"VertRotationMax", "65"},
								{"DistSpeed", "5"},
								{"DistStiffness", "0.2"},
								{"SpringSpeed", "0.01"},
								{"CenterStartTime", "2.2"},
								{"CenterBlendTime", "0.8"},
								{"CenterMaxSpring", "0.66"},
								{"CenterMaxSpeed", "0.1"},
								{"VertMaxSpring", "0.5"},
								{"CenterStartSpeed", "1"},
								{"CloseSpring", "3"},
								{"LRProbesRange", "13"},
								{"UseSpeedBasedSpring", "False"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "CharacterSitCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"OffsetX", "0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "BuggyFollowCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"OffsetY", "4.25"},
								{"OffsetZFlat", "-0.5"},
								{"BackMaxDistance", "30"},
								{"VertRotationMax", "75"},
								{"VertRotationOffset", "0"},
								{"VertRotationOffsetMinAngle", "-30"},
								{"VertRotationOffsetMaxAngle", "70"},
								{"LockToObjectOnIdle", "False"},
								{"CenterStartTime", "100"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "HovercraftFollowCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"OffsetZFlat", "-1"},
								{"BackMaxDistance", "20"},
								{"LockToObjectOnIdle", "False"},
								{"CenterStartTime", "100"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "SubmarineFollowCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"OffsetY", "5"},
								{"OffsetZFlat", "-2.5"},
								{"BackMaxDistance", "30"},
								{"VertRotationOffset", "0"},
								{"LockToObjectOnIdle", "False"},
								{"CenterStartTime", "100"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "BikeFollowCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"OffsetY", "2.5"},
								{"OffsetZFlat", "-0.5"},
								{"LockToObjectOnIdle", "False"},
								{"CenterStartTime", "100"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WheeledBikeFollowCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"OffsetY", "1"},
								{"BackMaxDistance", "35"},
								{"LockToObjectOnIdle", "False"},
								{"CenterStartTime", "100"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "TruckFollowCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"OffsetY", "4.1"},
								{"BackMaxDistance", "35"},
								{"VertRotationMax", "75"},
								{"LockToObjectOnIdle", "False"},
								{"CenterStartTime", "100"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "SpaceshipFollowCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"OffsetY", "0"},
								{"LookStickLimitAngle", "90"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "DropshipFollowCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"LookStickLimitAngle", "90"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ShuttleFollowCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"LookStickLimitAngle", "90"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "RoyalShipFollowCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"LookStickLimitAngle", "90"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ScienceShipFollowCam",
							["VALUE_CHANGE_TABLE"] =
							{
								{"LookStickLimitAngle", "90"},
							}
						},
					}
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE