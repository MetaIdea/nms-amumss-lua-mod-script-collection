NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "__CleanHUDVR_Add_InterCamOff.pak",
["MOD_AUTHOR"]    = "enifleR",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.37",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"InWorldScreenScaleDistance",                "9"},
                                {"ShowVRDistanceWarning",                     "False"},
                                {"VRFaceLockedScreenWidth",                   "700"},
                                {"CompassScreenWidth",                        "600"},
                                {"CompassScreenHeight",                       "150"},
                                {"CompassLineThickness",                      "3"},
                                {"InWorldInteractionScreenScale",             "0.7"},
                                {"InWorldNPCInteractionScreenScale",          "0.3"},
                                {"CrosshairScaleHmd",                         "1.5"},
                                {"TakeoffFuelMessageTime",                    "0"},
                                {"RepairTechRepairedWaitTime1",               "1.2"},
                                {"RepairTechRepairedMessageTime",             "1.2"},
                                {"MissionStartEndTime",                       "3.5"},
                                {"MissionStartEndOSDTime",                    "4.5"},
                                {"MissionStartEndOSDTimeProcedural",          "3"},
                                {"ShowOnscreenPredatorMarkers",               "False"},
                                {"MissionMarkerSize",                         "48"},
                                {"LargeSpaceIconSize",                        "48"},
                                {"SmallSpaceIconSize",                        "36"},
                                {"PetHoverIconSize",                          "0"},
                                {"PetIconSize",                               "0"},
                                {"HUDPlayerTrackArrowSize",                   "0"},
                                {"HUDPlayerTrackArrowSizeMin",                "0"},
                                {"HUDPlayerTrackArrowSizeMax",                "0"},
                                {"HUDPlayerTrackArrowIconSize",               "0"},
                                {"HUDPlayerTrackArrowSmallIconSize",          "0"},
                                {"HUDPlayerTrackArrowArrowSize",              "0"},
                                {"HUDPlayerTrackArrowDotSize",                "0"},
                                {"HideExtremePlanetNotifications",            "True"},
                                {"NotificationBackgroundGradientAlphaInShip", "0.85"},
                                {"NotificationCantFireTime",                  "0"},
                                {"NotificationMessageCycleTime",              "9999999"},
                                {"NotificationMissionHintTime",               "999999"},
                                {"NotificationMissionHintTimeSecondary",      "999999"},
                                {"MessageNotificationTime",                   "6"},
                                {"MessageTimeQuick",                          "3"},
                                {"PlanetLabelTime",                           "1"},
                                {"DiscoverPlanetTotalTime",                   "5"},
                                {"DiscoverPlanetMessageWait",                 "0"},
                                {"DiscoverPlanetMessageTime",                 "3"},
                                {"TextChatMaxDisplayTime",                    "30"},
                                {"InfoPortalGuideCycleTime",                  "5"},
                                {"InfoPortalMilestonesCycleTime",             "5"},
                            }
                        },
                    }
                },
            }
        },
    }
}