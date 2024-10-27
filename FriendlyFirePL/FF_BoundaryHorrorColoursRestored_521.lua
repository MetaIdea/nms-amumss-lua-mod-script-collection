----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "BoundaryHorrorColoursRestored"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "521"
METADATA_MOD_DESC       = "This mod adds the missing colour customisation options to the Boundary Horror helmet from Expedition 16. Modifies TEXTURES\COMMON\PLAYER\PLAYERCHARACTER\OCTHULHU\OCTHULHUHEAD\OCTHULHUHEAD.TEXTURE.MBIN."



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_TEXTURE_HORRORMASK = "TEXTURES\COMMON\PLAYER\PLAYERCHARACTER\OCTHULHU\OCTHULHUHEAD\OCTHULHUHEAD.TEXTURE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
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
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_HORRORMASK,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Name","BASE",},
                            ["VCT"] =
                            {
                                {"Diffuse","TEXTURES/COMMON/PLAYER/PLAYERCHARACTER/OCTHULHU/OCTHULHUHEAD/OCTHULHUHEAD.BASE.DDS",},
                                {"Normal","TEXTURES/COMMON/PLAYER/PLAYERCHARACTER/OCTHULHU/OCTHULHUHEAD/OCTHULHUHEAD.BASE.NORMAL.DDS",},
                                {"Mask","TEXTURES/COMMON/PLAYER/PLAYERCHARACTER/OCTHULHU/OCTHULHUHEAD/OCTHULHUHEAD.BASE.MASKS.DDS",},
                            },
                        },

                        {
                            ["SKW"] = {"Name","PRIMARY",},
                            ["VCT"] = {{"Diffuse","TEXTURES/COMMON/PLAYER/PLAYERCHARACTER/OCTHULHU/OCTHULHUHEAD/OCTHULHUHEAD.PRIMARY.DDS",},},
                        },

                        {
                            ["SKW"] = {"Name","HELMET_0",},
                            ["VCT"] = {{"Diffuse","TEXTURES/COMMON/PLAYER/PLAYERCHARACTER/OCTHULHU/OCTHULHUHEAD/OCTHULHUHEAD.MARKINGS.00.DDS",},},
                        },

                        {
                            ["SKW"] = {"Name","HELMET_1",},
                            ["VCT"] = {{"Diffuse","TEXTURES/COMMON/PLAYER/PLAYERCHARACTER/OCTHULHU/OCTHULHUHEAD/OCTHULHUHEAD.MARKINGS.01.DDS",},},
                        },

                        {
                            ["SKW"] = {"Name","HELMET_2",},
                            ["VCT"] = {{"Diffuse","TEXTURES/COMMON/PLAYER/PLAYERCHARACTER/OCTHULHU/OCTHULHUHEAD/OCTHULHUHEAD.MARKINGS.02.DDS",},},
                        },

                        {
                            ["SKW"] = {"Name","HELMET_3",},
                            ["VCT"] = {{"Diffuse","TEXTURES/COMMON/PLAYER/PLAYERCHARACTER/OCTHULHU/OCTHULHUHEAD/OCTHULHUHEAD.MARKINGS.03.DDS",},},
                        },

                        {
                            ["SKW"] = {"Name","TERTIARY",},
                            ["VCT"] = {{"Diffuse","TEXTURES/COMMON/PLAYER/PLAYERCHARACTER/OCTHULHU/OCTHULHUHEAD/OCTHULHUHEAD.TERTIARY.DDS",},},
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