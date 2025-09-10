----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ColourfulMultitoolCabinets"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "603"
METADATA_MOD_DESC       = "this mod applies procedural colours to Multi-tool cabinets found on regulated and outlaw space stations."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by this mod
--------------------------------------------------

-- material files for regular stations
FILE_MATERIAL_NORMAL_WEAPONBOX =        "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\SHOPS\WEAPONSHOP_GUNBOX\COMMONTILED_MAT3.MATERIAL.MBIN"
FILE_MATERIAL_NORMAL_WEAPONHOLO =       "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\SHOPS\WEAPONSHOP_GUNBOX\GUNZ.MATERIAL.MBIN"

-- pirate station shop scene
FILE_MODELS_PIRATE_WEAPONSHOP =         "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\PIRATES\SHOPWEAPON.SCENE.MBIN"

--------------------------------------------------
-- template files
--------------------------------------------------

-- template for proc gen textures
FILE_TEXTURE_TEMPLATE =                 "TEXTURES\COMMON\ROBOTS\SHARED\DETAILS.TEXTURE.MBIN"

FILE_MODELS_WEAPONBOX =                 "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_WEAPON.SCENE.MBIN"
FILE_MODELS_PIRATE_WEAPONBOX =          "MODELS\WEAPONBOX\PIRATE\CRATE_WEAPON.SCENE.MBIN"

FILE_MATERIAL_WEAPONBOX =               "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_WEAPON\COMMONTILED_MAT3.MATERIAL.MBIN"
FILE_MATERIAL_WEAPONHOLO =              "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_WEAPON\GUNZ.MATERIAL.MBIN"

--------------------------------------------------
-- new files
--------------------------------------------------

-- material files for pirate stations
FILE_MATERIAL_PIRATE_WEAPONBOX =        "MODELS\WEAPONBOX\PIRATE\COMMONTILED_MAT3.MATERIAL.MBIN"
FILE_MATERIAL_PIRATE_WEAPONHOLO =       "MODELS\WEAPONBOX\PIRATE\GUNZ.MATERIAL.MBIN"

--- proc texture files for regular stations
FILE_TEXTURE_NORMAL_BOX_MBIN =          "TEXTURES\WEAPONBOX\NORMAL\COMMONTILLED.TEXTURE.MBIN"
FILE_TEXTURE_NORMAL_HOLO_MBIN =         "TEXTURES\WEAPONBOX\NORMAL\WEAPONUP.TEXTURE.MBIN"

-- proc texture files for pirate stations
FILE_TEXTURE_PIRATE_BOX_MBIN =          "TEXTURES\WEAPONBOX\PIRATE\COMMONTILLED.TEXTURE.MBIN"




----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

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
                    --------------------------------------------------
                    -- create new MBIN files
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {FILE_TEXTURE_TEMPLATE,FILE_TEXTURE_NORMAL_BOX_MBIN,},
                        {FILE_TEXTURE_TEMPLATE,FILE_TEXTURE_NORMAL_HOLO_MBIN,},
                        {FILE_TEXTURE_TEMPLATE,FILE_TEXTURE_PIRATE_BOX_MBIN,"REMOVE"},

                        {FILE_MATERIAL_WEAPONBOX,FILE_MATERIAL_PIRATE_WEAPONBOX,"REMOVE"},
                        {FILE_MATERIAL_WEAPONHOLO,FILE_MATERIAL_PIRATE_WEAPONHOLO,"REMOVE"},
                        {FILE_MODELS_WEAPONBOX,FILE_MODELS_PIRATE_WEAPONBOX,"REMOVE"},
                    },
                },

                {
                    --------------------------------------------------
                    -- new cabinet model for pirate stations
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_PIRATE_WEAPONBOX,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- replace box material
                            ["SKW"] = {"Value","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_WEAPON\COMMONTILED_MAT3.MATERIAL.MBIN",},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VCT"] = {{"Value",FILE_MATERIAL_PIRATE_WEAPONBOX,},},
                        },

                        {
                            -- replace holo material
                            ["SKW"] = {"Value","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_WEAPON\GUNZ.MATERIAL.MBIN",},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VCT"] = {{"Value",FILE_MATERIAL_PIRATE_WEAPONHOLO,},},
                        },

                    },
                },

                {
                    --------------------------------------------------
                    -- pirate station scene
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_PIRATE_WEAPONSHOP,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- link new cabinet scene
                            ["SKW"] = {"Value","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_WEAPON.SCENE.MBIN",},
                            ["VCT"] = {{"Value",FILE_MODELS_PIRATE_WEAPONBOX,},},
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- normal station weapon box texture
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_NORMAL_BOX_MBIN,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- point to a new texture
                            ["SKW"] = {"Name","BASE",},
                            ["VCT"] = {{"TextureName","TEXTURES\WEAPONBOX\NORMAL\COMMONTILLED.BASE.DDS",},},
                        },

                        {
                            -- set proc gen colours
                            ["SKW"] = {"Name","BASE","Palette","TkPaletteTexture",},
                            ["REPLACE_TYPE"] = "onceINSIDE",
                            ["VCT"] = {{"Palette","DeepWaterBioLum",},{"ColourAlt","Primary",},},
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- normal station weapon box material
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MATERIAL_NORMAL_WEAPONBOX,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Name","gDiffuseMap",},
                            ["VCT"] = {{"Map","TEXTURES\WEAPONBOX\NORMAL\COMMONTILLED.DDS",},},
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- normal station weapon holo texture
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_NORMAL_HOLO_MBIN,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- point to a new texture
                            ["SKW"] = {"Name","BASE",},
                            ["VCT"] = {{"TextureName","TEXTURES\WEAPONBOX\NORMAL\WEAPONUP.DDS",},},
                        },

                        {
                            -- set proc gen colours
                            ["SKW"] = {"Name","BASE","Palette","TkPaletteTexture",},
                            ["REPLACE_TYPE"] = "onceINSIDE",
                            ["VCT"] = {{"Palette","SpaceStationLights",},{"ColourAlt","Primary",},},
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- normal station weapon holo material
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MATERIAL_NORMAL_WEAPONHOLO,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Name","gDiffuseMap",},
                            ["VCT"] = {{"Map","TEXTURES\WEAPONBOX\NORMAL\WEAPONUP.DDS",},},
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- pirate station weapon box texture
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_PIRATE_BOX_MBIN,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- point to a new texture
                            ["SKW"] = {"Name","BASE",},
                            ["VCT"] = {{"TextureName","TEXTURES\WEAPONBOX\PIRATE\COMMONTILLED.BASE.DDS",},},
                        },

                        {
                            -- set proc gen colours
                            ["SKW"] = {"Name","BASE","Palette","TkPaletteTexture",},
                            ["REPLACE_TYPE"] = "onceINSIDE",
                            ["VCT"] = {{"Palette","PirateBase",},{"ColourAlt","Primary",},},
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- pirate station weapon box material
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MATERIAL_PIRATE_WEAPONBOX,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Name","gDiffuseMap",},
                            ["VCT"] = {{"Map","TEXTURES\WEAPONBOX\PIRATE\COMMONTILLED.DDS",},},
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- pirate station weapon holo material
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MATERIAL_PIRATE_WEAPONHOLO,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Name","gDiffuseMap",},
                            ["VCT"] = {{"Map","TEXTURES\WEAPONBOX\PIRATE\WEAPONUP.DDS",},},
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