----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProcedurallyColouredRareCrystals"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "471"
METADATA_MOD_DESC       = "This mod enables procedurally generated colours on textures used for Floating Crystals and Buried Mineral Formations found on planets."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files modified by this mod
--------------------------------------------------

FILE_MATERIAL_CRYSTAL_BURIED =      "MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\UNDERGROUNDCRYSTALS\UNDERGROUNDCRYATAL.MATERIAL.MBIN"
FILE_MATERIAL_CRYSTAL_FLOATING =    "MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\INAIR\FLOATINGGASBAGS\AIRCRYSTAL_MAT.MATERIAL.MBIN"

--------------------------------------------------
-- files for new proc coloured textures
--------------------------------------------------

-- vanilla template
FILE_VANILLA_PROC_TEXTURE =         "TEXTURES\COMMON\ROBOTS\SHARED\DETAILS.TEXTURE.MBIN"

-- new texture files
FILE_TEXTURE_FLOATING_CRYSTAL =     "TEXTURES/CRYSTALS/FLOATING/CRYSTAL.TEXTURE.MBIN"
FILE_TEXTURE_BURIED_CRYSTAL =       "TEXTURES/CRYSTALS/BURIED/CRYSTAL.TEXTURE.MBIN"



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
                    -- buried crystal material MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MATERIAL_CRYSTAL_BURIED,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- point material file to new textures to get proc colouring working
                        {   ["SKW"] = {"Name","gDiffuseMap",},      ["VCT"] = {{"Map","TEXTURES/CRYSTALS/BURIED/CRYSTAL.BASE.DDS",},},            },
                        {   ["SKW"] = {"Name","gMasksMap",},        ["VCT"] = {{"Map","TEXTURES/CRYSTALS/BURIED/CRYSTAL.BASE.MASKS.DDS",},},      },
                        {   ["SKW"] = {"Name","gNormalMap",},       ["VCT"] = {{"Map","TEXTURES/CRYSTALS/BURIED/CRYSTAL.BASE.NORMAL.DDS",},},     },
                    },
                },

                {
                    --------------------------------------------------
                    -- floating crystal material MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MATERIAL_CRYSTAL_FLOATING,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- point material file to new textures to get proc colouring working
                        {   ["SKW"] = {"Name","gDiffuseMap",},      ["VCT"] = {{"Map","TEXTURES/CRYSTALS/FLOATING/CRYSTAL.BASE.DDS",},},            },
                        {   ["SKW"] = {"Name","gMasksMap",},        ["VCT"] = {{"Map","TEXTURES/CRYSTALS/FLOATING/CRYSTAL.BASE.MASKS.DDS",},},      },
                        {   ["SKW"] = {"Name","gNormalMap",},       ["VCT"] = {{"Map","TEXTURES/CRYSTALS/FLOATING/CRYSTAL.BASE.NORMAL.DDS",},},     },
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
                            ["VCT"] = {{"Palette","Grass",},{"ColourAlt","Alternative1",},},
                        },

                        {
                            -- point material to new textures
                            ["SKW"] = {"Name","BASE",},
                            ["VCT"] = 
                            {
                                {"Diffuse","TEXTURES/CRYSTALS/FLOATING/CRYSTAL.BASE.DDS",},
                                {"Normal","TEXTURES/CRYSTALS/FLOATING/CRYSTAL.BASE.NORMAL.DDS",},
                                {"Mask","TEXTURES/CRYSTALS/FLOATING/CRYSTAL.BASE.MASKS.DDS",},
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
                            ["VCT"] = {{"Palette","Crystal",},{"ColourAlt","Alternative1",},},
                        },

                        {
                            -- point material to new textures
                            ["SKW"] = {"Name","BASE",},
                            ["VCT"] = 
                            {
                                {"Diffuse","TEXTURES/CRYSTALS/BURIED/CRYSTAL.BASE.DDS",},
                                {"Normal","TEXTURES/CRYSTALS/BURIED/CRYSTAL.BASE.NORMAL.DDS",},
                                {"Mask","TEXTURES/CRYSTALS/BURIED/CRYSTAL.BASE.MASKS.DDS",},
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