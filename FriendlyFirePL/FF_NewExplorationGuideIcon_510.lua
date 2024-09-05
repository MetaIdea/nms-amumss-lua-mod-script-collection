----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "NewExplorationGuideIcon"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "510"
METADATA_MOD_DESC       = "This mod changes the icon for Exploration Guide in mission log and tooltips"



----------------------------------------------------------------------------------------------------
-- mod data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- new icon used for Exploration Guide
--------------------------------------------------

ICON_NAME   = "PORTAL"
ICON_ON     = "TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION."..ICON_NAME..".ON.DDS"
ICON_OFF    = "TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION."..ICON_NAME..".OFF.DDS"

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_MISSIONS_COREMISSIONTABLE =        "METADATA\\SIMULATION\\MISSIONS\\TABLES\\COREMISSIONTABLE.MBIN"
FILE_METADATA_DEFAULTREALITY =         "METADATA\\REALITY\\DEFAULTREALITY.MBIN"



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
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
                    ["MBIN_FILE_SOURCE"] = FILE_MISSIONS_COREMISSIONTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"MissionID","EXPLORE_LOG","MissionIconSelected","TkTextureResource.xml",},
                            ["VCT"] = {{"Filename",ICON_ON,},},
                        },

                        {
                            ["SKW"] = {"MissionID","EXPLORE_LOG","MissionIconNotSelected","TkTextureResource.xml",},
                            ["VCT"] = {{"Filename",ICON_OFF,},},
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_DEFAULTREALITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"ExploreMissionPlanetIcon","TkTextureResource.xml",},
                            ["VCT"] = {{"Filename",ICON_OFF,},},
                        },

                        {
                            ["SKW"] = {"ExploreMissionSystemIcon","TkTextureResource.xml",},
                            ["VCT"] = {{"Filename",ICON_OFF,},},
                        },
                    },
                },
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------