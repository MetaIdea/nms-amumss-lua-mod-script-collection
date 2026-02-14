----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "NoRustyTechClothes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "620"
METADATA_MOD_DESC       = "This mod removes the rusty tech modules from selected Autophage clothing pieces available for the player"



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- files affected by this mod
FILE_MODELS_PLAYER_SCENE =      "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER.SCENE.MBIN"


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION,
["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
["NMS_VERSION"]		    = METADATA_NMS_VERSION,
["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,

["MODIFICATIONS"] =
{
    {
        ["MBIN_CHANGE_TABLE"]   =
        {
            {
                ["MBIN_FILE_SOURCE"] = FILE_MODELS_PLAYER_SCENE,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- remove the scene nodes
                        ["SKW"] = 
                        {
                            {"Name","B2Chesttech",},
                            {"Name","B2tech1",},
                            {"Name","b2Techbelt",},

                            {"Name","B3Tech",},
                            {"Name","b3Techbelt",},
                            
                            {"Name","B4Tech",},
                        },
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