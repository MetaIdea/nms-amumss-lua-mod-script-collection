----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "METADATA_SCANS"
METADATA_NMS_VERSION    = "DEV8"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for custom scan objects. Modifies various files in METADATA directory."



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------


FILE_SCANNING_PLANET =          "METADATA\\SIMULATION\\SCANNING\\SCANEVENTTABLEPLANET.MBIN"
FILE_SIMULATION_SPAWNTABLE =    "METADATA\\SIMULATION\\SCENE\\EXPERIENCESPAWNTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    --------------------------------------------------
                    -- planet scan events MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_SCANNING_PLANET,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- scan event: archive (no approximate location)
                        {   ["SKW"] = {"Name","LIBRARY",},          ["SEC_SAVE_TO"] = "SEC_SE_LIBRARY",                                     },
                        {   ["SEC_EDIT"] = "SEC_SE_LIBRARY",        ["VCT"] = {{"Name","SE_LIBRARY",},{"EventStartType","Special",},},      },
                        {   ["PKW"] = "Events",                     ["SEC_ADD_NAMED"] = "SEC_SE_LIBRARY",                                   },

                        -- scan event: portal
                        {   ["SKW"] = {"Name","LIBRARY",},          ["SEC_SAVE_TO"] = "SEC_SE_PORTAL",                                                                                                              },
                        {   ["SEC_EDIT"] = "SEC_SE_PORTAL",         ["VCT"] = {{"Name","SE_PORTAL",},{"EventStartType","Special",},{"OSDMessage","SIGNAL_PORTAL",},{"TooltipMessage","TIP_PORTAL",},},              },
                        {   ["SEC_EDIT"] = "SEC_SE_PORTAL",         ["SKW"] = {"BuildingClass","GcBuildingClassification.xml",},    ["REPLACE_TYPE"] = "ONCEINSIDE",    ["VCT"] = {{"BuildingClass","Portal",},},   },
                        {   ["PKW"] = "Events",                     ["SEC_ADD_NAMED"] = "SEC_SE_PORTAL",                                                                                                            },
                            
                        -- scan event: dissonant planet
                        {   ["SKW"] = {"Name","LIBRARY",},          ["SEC_SAVE_TO"] = "SEC_SE_DISSONANT",                                                                                                                       },
                        {   ["SEC_EDIT"] = "SEC_SE_DISSONANT",      ["VCT"] = {{"Name","SE_DISSONANT",},{"EventStartType","Special",},{"OSDMessage","UI_MP_CORRUPT_PLANET_OSD",},{"InterstellarOSDMessage","",},
                                                                    {"MarkerLabel","UI_MP_CORRUPT_PLANET_MARKER",},{"Filename","TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PLANET.DDS",},{"TooltipMessage","",},},                  },
                        {   ["SEC_EDIT"] = "SEC_SE_DISSONANT",      ["SKW"] = {"BuildingClass","GcBuildingClassification.xml",},    ["REPLACE_TYPE"] = "ONCEINSIDE",    ["VCT"] = {{"BuildingClass","AbandonedRobotCamp",},},   },
                        {   ["PKW"] = "Events",                     ["SEC_ADD_NAMED"] = "SEC_SE_DISSONANT",                                                                                                                     },
                    },
                },

                {
                    --------------------------------------------------
                    -- encounter spawn table MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_SIMULATION_SPAWNTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- new space encounter - temporal fracture
                        {   ["SKW"] = {"Id","JELLYFISH",},      ["SEC_SAVE_TO"] = "SEC_ENCOUNTER",                                                                                              },
                        {   ["SEC_EDIT"] = "SEC_ENCOUNTER",     ["VCT"] = {{"Id","OBJ_FRACTURE",},{"MarkerLabel","TEXT_FRACTURE_MARKER",},{"ChatMessageName","",},
                                                                {"CustomNotify","TEXT_FRACTURE_TIP",},{"CustomNotifyTitle","TEXT_FRACTURE_LABEL",},{"CustomNotifyOSD","TEXT_FRACTURE_OSD",},
                                                                {"UseMarkerIconInOSD","True",},{"RequiresMissionActive","M_STARTER",},{"AkEvent","MUS_STORYMODE_MUSICCUE_06_LP",},},            },
                        {   ["SEC_EDIT"] = "SEC_ENCOUNTER",     ["SKW"] = {"MarkerIcon","TkTextureResource.xml",},      ["VCT"] = {{"Filename","TEXTURES/MISSION/MAIN.DDS",},},                 },
                        {   ["SEC_EDIT"] = "SEC_ENCOUNTER",     ["SKW"] = {"Object","TkModelResource.xml",},            ["VCT"] = {{"Filename","MODELS/OBJECTS/FRACTURE.SCENE.MBIN",},},        },
                        {   ["PKW"] = "PulseEncounters",        ["SEC_ADD_NAMED"] = "SEC_ENCOUNTER",                                                                                            },
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------