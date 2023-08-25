----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "NewExplorationGuideIcon"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "440"
METADATA_MOD_DESC       = "This mod changes the icon for Exploration Guide in mission log and tooltips"



----------------------------------------------------------------------------------------------------
-- mod data
----------------------------------------------------------------------------------------------------

-- selected icon name, see the directory: TEXTURES/UI/FRONTEND/ICONS/MISSIONS
-- icon needs to have the .ON and .OFF variants available !!
ICON_NAME = "PORTAL"

ICON_ON     = "TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION."..ICON_NAME..".ON.DDS"
ICON_OFF    = "TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION."..ICON_NAME..".OFF.DDS"



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

FILE_MISSIONTABLE = "METADATA\\SIMULATION\\MISSIONS\\COREMISSIONTABLE.MBIN"
FILE_DEFAULTREALITY = "METADATA\\REALITY\\DEFAULTREALITY.MBIN"

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
                    ["MBIN_FILE_SOURCE"] = FILE_MISSIONTABLE,
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
                    ["MBIN_FILE_SOURCE"] = FILE_DEFAULTREALITY,
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