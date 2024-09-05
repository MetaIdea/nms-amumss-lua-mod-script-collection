----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "AutophageStuffUnlocker"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "510"
METADATA_MOD_DESC       = "This mod allows players to access Autophage content without completing main story line quests and unlocking a Harmonic Camp (other conditions still apply)"



-- files affected by this mod
FILE_MISSIONS_AUTOPHAGE = "METADATA\\SIMULATION\\MISSIONS\\TABLES\\NPCBUILDERSMISSIONTABLE.MBIN"
FILE_METADATA_CUSTOMISATION = "METADATA\\GAMESTATE\\PLAYERDATA\\CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA.MBIN"

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
    
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_MISSIONS_AUTOPHAGE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- remove the story related conditions from 
                            -- starting conditions for initial Autophage quest
                            ["SKW"] = {"MissionID","ROBOMISS_0",},
                            ["PKW"] = "GcMissionConditionGroup.xml",
                            ["SECTION_ACTIVE"] = {1,2},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CUSTOMISATION,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- for all standard Authophage customisation options
                            -- remove the requirement of a product purchased
                            ["SKW"] = 
                            {
                                {"Id","BUILDER_HEAD",},
                                {"Id","BUI_HCLOTH",},
                                {"GroupID","ARMOUR_BUI1",},
                                {"GroupID","ARMOUR_BUI2",},
                                {"GroupID","ARMOUR_BUI3",},
                                {"GroupID","ARMOUR_BUI4",},
                            },
                            ["REPLACE_TYPE"] = "ALLinSECTION",
                            ["VCT"] = {{"LinkedSpecialID","",},},
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