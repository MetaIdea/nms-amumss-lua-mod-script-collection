----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "SodiumHydrogenCrystalsGlow"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL, Babscoole, Lenni"
METADATA_NMS_VERSION    = "451"
METADATA_MOD_DESC       = "This mod adds glow effect to large Sodium and Di-hydrogen crystals found on planets, similar to the glow found on large Condensed Carbon crystals."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by this mod
--------------------------------------------------

FILE_MODELS_CRYSTAL_RED =         "MODELS\\PLANETS\\BIOMES\\COMMON\\CRYSTALS\\LARGE\\CRYSTAL_LARGE.SCENE.MBIN"
FILE_MODELS_CRYSTAL_BLUE =        "MODELS\\PLANETS\\BIOMES\\COMMON\\CRYSTALS\\LARGE\\CRYSTAL_LARGE_MOUNTAIN.SCENE.MBIN"
FILE_MODELS_CRYSTAL_YELLOW =      "MODELS\\PLANETS\\BIOMES\\COMMON\\CRYSTALS\\LARGE\\CRYSTAL_LARGE_UNDERWATER.SCENE.MBIN"

--------------------------------------------------
-- light parameters
--------------------------------------------------

-- light intensity for all crystals
LIGHT_INTENSITY = 30000.000000

-- blue crystal light RGB values
LIGHT_BLUE =
{
    0,  
    0.607843,
    0.929411
}

-- yellow crystal light RGB values
LIGHT_YELLOW =
{
    1,
    0.913725,
    0
}



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_CRYSTAL_RED,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- change light intesity value
                            ["SKW"] = {"Type","LIGHT","Name","INTENSITY",},
                            ["VCT"] = {{"Value",LIGHT_INTENSITY,},},
                        },

                        {
                            -- get data template for light node
                            ["SKW"] = {"Type","LIGHT",},
                            ["SEC_SAVE_TO"] = "SEC_LIGHT",
                        },
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_CRYSTAL_BLUE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- edit light template - change RGB values
                            ["SEC_EDIT"] = "SEC_LIGHT",
                            ["SKW"] = {"Name","COL_R",},
                            ["VCT"] = {{"Value",LIGHT_BLUE[1],},},
                        },

                        {
                            -- edit light template - change RGB values
                            ["SEC_EDIT"] = "SEC_LIGHT",
                            ["SKW"] = {"Name","COL_G",},
                            ["VCT"] = {{"Value",LIGHT_BLUE[2],},},
                        },

                        {
                            -- edit light template - change RGB values
                            ["SEC_EDIT"] = "SEC_LIGHT",
                            ["SKW"] = {"Name","COL_B",},
                            ["VCT"] = {{"Value",LIGHT_BLUE[3],},},
                        },

                        {
                            -- add modified light to the scene
                            ["PKW"] = "Children",
                            ["SEC_ADD_NAMED"] = "SEC_LIGHT",
                        },
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_CRYSTAL_YELLOW,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- edit light template - change RGB values
                            ["SEC_EDIT"] = "SEC_LIGHT",
                            ["SKW"] = {"Name","COL_R",},
                            ["VCT"] = {{"Value",LIGHT_YELLOW[1],},},
                        },

                        {
                            -- edit light template - change RGB values
                            ["SEC_EDIT"] = "SEC_LIGHT",
                            ["SKW"] = {"Name","COL_G",},
                            ["VCT"] = {{"Value",LIGHT_YELLOW[2],},},
                        },

                        {
                            -- edit light template - change RGB values
                            ["SEC_EDIT"] = "SEC_LIGHT",
                            ["SKW"] = {"Name","COL_B",},
                            ["VCT"] = {{"Value",LIGHT_YELLOW[3],},},
                        },

                        {
                            -- add modified light to the scene
                            ["PKW"] = "Children",
                            ["SEC_ADD_NAMED"] = "SEC_LIGHT",
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