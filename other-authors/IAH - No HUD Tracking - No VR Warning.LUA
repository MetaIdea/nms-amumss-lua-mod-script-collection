NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No HUD HMD Tracking Markers", 
["MOD_AUTHOR"]				= "PC Mystic",
["LUA_AUTHOR"]				= "PC Mystic",
["NMS_VERSION"]				= "4.0",
["MOD_DESCRIPTION"]			= "Removes tracking markers at edge of HMD HUD for objects not in direct view",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"HUDPlayerTrackArrowSize", "0"},	-- this section removes HUD HMD tracking markers
								{"HUDPlayerTrackArrowSizeMin", "0"},
								{"HUDPlayerTrackArrowSizeMax", "0"},
								{"HUDPlayerTrackArrowIconSize", "0"},
								{"HUDPlayerTrackArrowSmallIconSize", "0"},
								{"HUDPlayerTrackArrowArrowSize", "0"},
								{"HUDPlayerTrackArrowDotSize", "0"},
								{"ShowVRDistanceWarning", "False"},	-- this removes VR warning
								{"LoadingTravelDistance", "500"},	-- these two settings influence the loading screen and how far/fast you travel
								{"LoadingScreenTravelSpeed", "5"},
								{"HandScreenNearActivateDistance", "0.8"}, -- this section deals with how close the hand screens activate and their touch screen functionality
								{"HandButtonRadius", "0.1"},
								{"HandButtonRadiusTouch", "3.5"},
								{"HandButtonRadiusTouchNear", "0.5"},
								{"HandButtonRadiusTouchNearActive", "0.2"},
								{"HandButtonPostClickTime", "0.3"},
								{"HandButtonPushDistance", "0.15"},
								{"HandButtonNearDistance", "0.08"},
								{"HandButtonClickTime", "0.2"},
								{"HandButtonTouchReturnTime", "0.2"},
								{"QuickMenuScreenWidth", "768"},
								{"HandControlPointMargin", "45"},
								{"HandControlPointActiveMargin", "170"},
								{"ShowOnscreenPredatorMarkers", "False"}	-- this removes the predator markers (showing you that a animal is stalking you)						
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "HazardHeightmaps",
							["VALUE_CHANGE_TABLE"]     =
							{
									{"Value", ""}, -- untested, but this section *should* remove all HMD HUD hazard graphics, however Im not sure if I built this part of the .LUA right
									{"Value", ""},
									{"Value", ""},
									{"Value", ""},
									{"Value", ""},
									{"Value", ""}
							}
						}
					}
				}
			}
		}
	}
}
