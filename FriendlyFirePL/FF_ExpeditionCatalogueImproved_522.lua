----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ExpeditionCatalogueImproved"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "522"
METADATA_MOD_DESC       = "This mod improves the Previous Expeditions page in Catalogue and Guide section by rescaling patches and removing bugged out entries"



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files to be modified
--------------------------------------------------

FILE_METADATA_JOURNEY =     "METADATA\\REALITY\\JOURNEY.MBIN"

FILE_UI_JOURNEY_PAGE =      "UI\\JOURNEYMILESTONEPAGE.MBIN"
FILE_UI_SEASONPATCH =       "UI\\COMPONENTS\\JOURNEYSEASONPATCH.MBIN"

--------------------------------------------------
-- lists of SKWs
--------------------------------------------------

-- list of keywords for released expeditions
LIST_DONE_EXPEDS =
{
    {"ID","PATCH01",},{"ID","PATCH02",},{"ID","PATCH03",},{"ID","PATCH04",},{"ID","PATCH05",},
    {"ID","PATCH06",},{"ID","PATCH07",},{"ID","PATCH08",},{"ID","PATCH09",},{"ID","PATCH10",},
    {"ID","PATCH11",},{"ID","PATCH12",},{"ID","PATCH13",},{"ID","PATCH14",},{"ID","PATCH15",},
    {"ID","PATCH16",},
}

-- list of keywords for hardcoded empty entries
LIST_REMOVED_EXPEDS =
{
    {"ID","PATCH17",},{"ID","PATCH18",},{"ID","PATCH19",},{"ID","PATCH20",},
    {"ID","PATCH21",},{"ID","PATCH22",},{"ID","PATCH23",},{"ID","PATCH24",},{"ID","PATCH25",},
    {"ID","PATCH26",},{"ID","PATCH27",},{"ID","PATCH28",},{"ID","PATCH29",},{"ID","PATCH30",},
    {"ID","PATCH31",},{"ID","PATCH32",},{"ID","PATCH33",},{"ID","PATCH34",},{"ID","PATCH35",},
    {"ID","PATCH36",},{"ID","PATCH37",},{"ID","PATCH38",},{"ID","PATCH39",},{"ID","PATCH40",},
    {"ID","PATCH41",},{"ID","PATCH42",},{"ID","PATCH43",},{"ID","PATCH44",},{"ID","PATCH45",},
    {"ID","PATCH46",},{"ID","PATCH47",},{"ID","PATCH48",},{"ID","PATCH49",},{"ID","PATCH50",},
}

-- scaling of expedition patches
VCT_SCALING = {{"Width","@*0.75",},{"Height","@*0.75",},}



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    ["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    --------------------------------------------------
                    -- journey milestones UI page MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_UI_JOURNEY_PAGE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- remove the empty expedition entries
                            ["SKW"] = LIST_REMOVED_EXPEDS,
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            -- apply scaling for released expeditions
                            ["SKW"] = LIST_DONE_EXPEDS,
                            ["VCT"] = VCT_SCALING,
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- expedition patch MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_UI_SEASONPATCH,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- apply scaling to containers
                            ["VCT"] = VCT_SCALING,
                        },

                        {
                            -- apply scaling to each type of icon
                            ["SKW"] = 
                            {
                                {"ID","ICON_NOTSTARTED",},
                                {"ID","ICON_UNFINISHED",},
                                {"ID","ICON_COMPLETED",},
                            },
                            ["VCT"] = VCT_SCALING,
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- journey milestones data MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_JOURNEY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- change the active icon to expedition marker with glow
                            ["SKW"] = {"NameIDLower","UI_JM_TITLE_SEASON","IconOn","TkTextureResource.xml",},
                            ["VCT"] = {{"Filename","TEXTURES\UI\FRONTEND\ICONS\MISSIONS\MISSION.SEASONAL.ON.DDS",},},
                        },

                        {
                            -- change the non-active icon to expedition marker
                            ["SKW"] = {"NameIDLower","UI_JM_TITLE_SEASON","IconOff","TkTextureResource.xml",},
                            ["VCT"] = {{"Filename","TEXTURES\UI\FRONTEND\ICONS\MISSIONS\MISSION.SEASONAL.OFF.DDS",},},
                        },
                    }
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------