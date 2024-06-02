----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProcedurallyColouredRareCrystals"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "4711"
METADATA_MOD_DESC       = "This mod enables procedurally generated colours on textures used for Floating Crystals and Buried Mineral Formations found on planets."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- file modified by this mod
FILE_MATERIAL_BURIEDCRYSTAL = "MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\UNDERGROUNDCRYSTALS\UNDERGROUNDCRYATAL.MATERIAL.MBIN"

-- file used as template for proc coloured textures
FILE_VANILLA_PROC_TEXTURE = "TEXTURES\COMMON\ROBOTS\SHARED\DETAILS.TEXTURE.MBIN"

-- new proc coloured textures for crystals
FILE_TEXTURE_FLOATING_CRYSTAL = "TEXTURES/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/AIRCRYSTAL.TEXTURE.MBIN"
FILE_TEXTURE_BURIED_CRYSTAL = "TEXTURES/BURIEDCRYSTAL/CRYSTAL.TEXTURE.MBIN"



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
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    --------------------------------------------------
                    -- buried crystal material MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MATERIAL_BURIEDCRYSTAL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- point material file to new textures to get proc colouring working
                        {   ["SKW"] = {"Name","gDiffuseMap",},      ["VCT"] = {{"Map","TEXTURES/BURIEDCRYSTAL/CRYSTAL.BASE.DDS",},},            },
                        {   ["SKW"] = {"Name","gMasksMap",},        ["VCT"] = {{"Map","TEXTURES/BURIEDCRYSTAL/CRYSTAL.BASE.MASKS.DDS",},},      },
                        {   ["SKW"] = {"Name","gNormalMap",},       ["VCT"] = {{"Map","TEXTURES/BURIEDCRYSTAL/CRYSTAL.BASE.NORMAL.DDS",},},     },
                    },
                },

                {
                    --------------------------------------------------
                    -- create new texture MBINs
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {   FILE_VANILLA_PROC_TEXTURE,     FILE_TEXTURE_FLOATING_CRYSTAL,               },
                        {   FILE_VANILLA_PROC_TEXTURE,     FILE_TEXTURE_BURIED_CRYSTAL,        "REMOVE",},
                    },
                },

                {
                    --------------------------------------------------
                    -- floating crystal texture MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_FLOATING_CRYSTAL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- set the Grass colour palette
                            ["SKW"] = {"Name","BASE","Palette","TkPaletteTexture.xml",},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VCT"] = {{"Palette","Grass",},},
                        },

                        {
                            -- set the Alternative1 colour and point to vanilla textures
                            ["SKW"] = {"Name","BASE",},
                            ["VCT"] = 
                            {
                                {"ColourAlt","Alternative1",},
                                {"Diffuse","TEXTURES/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/AIRCRYSTAL.BASE.DDS",},
                                {"Normal","TEXTURES/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/AIRCRYSTAL.BASE.NORMAL.DDS",},
                                {"Mask","TEXTURES/PLANETS/BIOMES/COMMON/RARERESOURCE/INAIR/AIRCRYSTAL.BASE.MASKS.DDS",},
                            },
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- buried crystal texture MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_BURIED_CRYSTAL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- set the Crystal colour palette
                            ["SKW"] = {"Name","BASE","Palette","TkPaletteTexture.xml",},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VCT"] = {{"Palette","Crystal",},},
                        },

                        {
                            -- set the Alternative1 colour and point to new textures
                            ["SKW"] = {"Name","BASE",},
                            ["VCT"] = 
                            {
                                {"ColourAlt","Alternative1",},
                                {"Diffuse","TEXTURES/BURIEDCRYSTAL/CRYSTAL.BASE.DDS",},
                                {"Normal","TEXTURES/BURIEDCRYSTAL/CRYSTAL.BASE.NORMAL.DDS",},
                                {"Mask","TEXTURES/BURIEDCRYSTAL/CRYSTAL.BASE.MASKS.DDS",},
                            },
                        },
                    },
                },
            },
        }
    },
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------