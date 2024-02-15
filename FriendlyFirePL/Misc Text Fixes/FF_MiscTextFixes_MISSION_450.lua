----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "MISSION"
METADATA_NMS_VERSION    = "450"
METADATA_MOD_DESC       = "This mod aims to fix various text inconsistencies, misleading descriptions and typos found in the game."



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

FILE_MISSIONS_FLEET =       "METADATA\\SIMULATION\\MISSIONS\\FLEETMISSIONTABLE.MBIN"
FILE_MISSIONS_PIRATE =      "METADATA\\SIMULATION\\MISSIONS\\PIRATEMISSIONTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_MISSIONS_FLEET,
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            -- get the template of Detail Message box
                            ["SKW"] = {"Stage","GcMissionSequenceDetailMessage.xml"},
                            ["SEC_SAVE_TO"] = "SEC_DETAIL_BOX",
                        },

                        {
                            -- change header text and image
                            ["SEC_EDIT"] = "SEC_DETAIL_BOX",
                            ["VCT"] = 
                            {
                                {"Title","UI_PIRATE_STATION_HINT_TITLE",},
                                {"Description","TEXT_TUTORIAL_PIRATES_0",},
                                {"Image","WARPING_DETAIL",},
                            },
                        },

                        {
                            -- change the 4 lines below the image
                            ["SEC_EDIT"] = "SEC_DETAIL_BOX",
                            ["SKW"] = {"Text","UI_FREIGHTER_DETAIL_LINE1",},
                            ["VCT"] = {{"Text","TEXT_TUTORIAL_PIRATES_1",},},
                        },

                        {
                            ["SEC_EDIT"] = "SEC_DETAIL_BOX",
                            ["SKW"] = {"Text","UI_FREIGHTER_DETAIL_LINE2",},
                            ["VCT"] = {{"Text","TEXT_TUTORIAL_PIRATES_2",},},
                        },

                        {
                            ["SEC_EDIT"] = "SEC_DETAIL_BOX",
                            ["SKW"] = {"Text","UI_FREIGHTER_DETAIL_LINE3",},
                            ["VCT"] = {{"Text","TEXT_TUTORIAL_PIRATES_3",},},
                        },

                        {
                            ["SEC_EDIT"] = "SEC_DETAIL_BOX",
                            ["SKW"] = {"Text","UI_FREIGHTER_DETAIL_LINE4",},
                            ["VCT"] = {{"Text","TEXT_TUTORIAL_PIRATES_4",},},
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_MISSIONS_PIRATE,
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SKW"] = {"MissionID","PIRATE_STATION","Stat","PIRATE_SYSTEMS",},
                            ["VCT"] = {{"Level",1,},},
                        },

                        {
                            ["SKW"] = {"Message","UI_PIRATE_STATION_HINT",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_DETAIL_BOX",
                        },

                        {
                            ["SKW"] = {"Message","UI_PIRATE_STATION_HINT",},
                            ["REMOVE"] = "SECTION",
                        },
                    },
                },
            }
        }
    },
}



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------