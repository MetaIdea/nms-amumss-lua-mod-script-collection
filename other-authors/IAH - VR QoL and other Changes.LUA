NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "VR QoL and Other Changes", 
["MOD_AUTHOR"]				= "PC Mystic",
["LUA_AUTHOR"]				= "PC Mystic",
["NMS_VERSION"]				= "4.0",
["MOD_DESCRIPTION"]			= "Changes a number of values and QoL things for VR",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					-- Increases galaxy movement speed in VR only, extra .LUA files included for other speeds, this speed (25) is the default (5x)
					["MBIN_FILE_SOURCE"] 	= "GCGALAXYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HandControlMoveSpeed", "25"}
							}
						}
					},
				},
				{
					--
					-- The following changes are for the new VR Inventory Screen.
					--
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"InventoryOffset"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ScreenScale", "0.14"}
							}
						},
                        {
                            ["PRECEDING_KEY_WORDS"] = {"InventoryOffset", "ScreenOffset"},
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"x", "0.1"},
                                {"y", "0.15"},
                                {"z", "0"}
                            }
                        },
						--
						-- this changes the base building screen in VR, causing it to appear in front of the player, at an angle, at around chest height, more convenient for building in my opinion
						--
						{
							["PRECEDING_KEY_WORDS"] = {"FrontendOffset"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ScreenScale", "0.17"}
							}
						},
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FrontendOffset", "ScreenOffset"},
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"y", "-0.4"},
                                {"z", "-0.57"}
                            }
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"FrontendOffset", "ScreenRotation"},
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"x", "40"}
                            }
                        },
						--
						-- changes to VR photo mode, havent really played with this so not sure how it works, based on hiilights mod clean_hud_the traveler
						--
						{
                            ["PRECEDING_KEY_WORDS"] = {"FrontendPhotoModeVROffset"},
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"ScreenScale", "0.4"}
                            }
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"FrontendPhotoModeVROffset", "ScreenOffset"},
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"x", "10"},
                                {"y", "-4.5"},
                                {"z", "-4"}
                            }
                        },
						{
                            ["PRECEDING_KEY_WORDS"] = {"FrontendPhotoModeVROffset", "ScreenRotation"},
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"x", "40"}
                            }
                        },
						--
						-- this improves use of quickmenus in VR, making it easier to just touch the screen with your finger instead of clicking on everything
						--
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FingerTipOffset", "0.028"},
								{"FingerButtonClickSize", "0.01"},
								{"FingerButtonClickTime", "0"},
								{"HandScreenLookActiveAngle", "20"},
								{"HandScreenActivationAngle", "5"},
								{"HandScreenActivationAngleDown", "5"},
								{"HandScreenRestingTurnAngle", "10"}
							}
						},
						--
						-- removes in world compass from VR completely
						--
						{
                            ["PRECEDING_KEY_WORDS"] = {"InWorldCompass"},
                            ["VALUE_CHANGE_TABLE"]     = 
                            {
                                {"ScreenScale", "0"},
                            }
                        },
						--
						-- enables leaning for character model in VR
						--
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EnableLeaning", "True"},
								{"LeanBackMaxAngle", "60"},
								{"LeanLeftMaxAngle", "65"},
								{"LeanRightMaxAngle", "65"},
								{"LeanAmount", "0.8"},
								{"LeanAmountFwd", "0.1"}								
							}
						},
						--
						-- improves HMD reset time and experience, removes low ammo warning, increases VR crouching
						--
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HmdResetButtonTime", "0.01"},
							    {"HMDResetFlashTime", "0.1"},
								{"ShowLowAmmoWarning", "False"},
								{"MaximumCrouchVR", "-0.45"}						
							}
						}
					}
				}	
			}
		}
	}	
}
