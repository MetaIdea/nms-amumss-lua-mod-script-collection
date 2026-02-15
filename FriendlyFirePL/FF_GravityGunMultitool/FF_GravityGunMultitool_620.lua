----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "GravityGunMultitool"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "620"
METADATA_MOD_DESC       = "This mod adds the Gravitino Coil (Gravity Gun) as stand-alone Multi-tool model. WARNING: make sure to equip a sacrificial Multi-tool before exchanging !!"



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_MODELS_SWITCHMT_SCENE =                        "MODELS\COMMON\WEAPONS\MULTITOOL\SWITCHMULTITOOL.SCENE.MBIN"
FILE_MODELS_SWITCHMT_DESCRIPTOR =                   "MODELS\COMMON\WEAPONS\MULTITOOL\SWITCHMULTITOOL.DESCRIPTOR.MBIN"
FILE_MODELS_LARGECRATE_ENTITY =                     "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\LARGE_CRATE\ENTITIES\CRATE.ENTITY.MBIN"

FILE_METADATA_REWARDTABLE =                         "METADATA\REALITY\TABLES\REWARDTABLE.MBIN"

-- new file
FILE_MODDED_GRAVITYGUN_MATERIAL =                   "MODELS\COMMON\WEAPONS\MULTITOOL\SWITCHMULTITOOL\GRAVITYGUNMAT.MATERIAL.MBIN"

--------------------------------------------------
-- vanilla template files (not modified)
--------------------------------------------------

FILE_VANILLA_GRAVITYGUN_SCENE =                     "MODELS\COMMON\WEAPONS\MULTITOOL\GRAVITYGUN.SCENE.MBIN"
FILE_VANILLA_GRAVITYGUN_MATERIAL =                  "MODELS\COMMON\WEAPONS\MULTITOOL\GRAVITYGUN\GRAVITYGUNMAT.MATERIAL.MBIN"
FILE_MODELS_BURIEDCACHE_ENTITY =                    "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\UNDERGROUNDCRATE\ENTITIES\UNDERGROUNDCRATE.ENTITY.MBIN"



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION,
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
                    -- create new material file
                    ["MBIN_FILE_SOURCE"] = {{   FILE_VANILLA_GRAVITYGUN_MATERIAL,   FILE_MODDED_GRAVITYGUN_MATERIAL },}
                },

                {
                    --------------------------------------------------
                    -- gravity multitool scene MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_VANILLA_GRAVITYGUN_SCENE,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- copy fucken everything
                            ["PKW"] = "Children",
                            ["SEC_SAVE_TO"] = "SEC_EVERYTHING",
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- Switch multitool scene MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_SWITCHMT_SCENE,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- link new geometry file
                            ["SKW"] = {"Name","GEOMETRY",},
                            ["VCT"] = {{"Value","MODELS\COMMON\WEAPONS\MULTITOOL\GRAVITYGUN.GEOMETRY.MBIN",},},
                        },

                        {
                            -- yeet all children nodes
                            ["PKW"] = "Children",
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            -- add everything from gravity gun
                            ["PKW"] = "Attributes",
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_EVERYTHING",
                        },

                        {
                            -- link to new entity
                            ["SKW"] = {"Name","GravityGunData","Name","ATTACHMENT",},
                            ["VCT"] = {{"Value","MODELS\COMMON\WEAPONS\MULTITOOL\MULTITOOL\ENTITIES\MULTITOOL.ENTITY.MBIN",},},
                        },

                        {
                            -- replace material to change gun colour
                            ["SKW"] = {"Value",FILE_VANILLA_GRAVITYGUN_MATERIAL,},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VCT"] = {{"Value",FILE_MODDED_GRAVITYGUN_MATERIAL,},},
                        },

                        {
                            -- remove RGB back buttons and one extra light
                            ["SKW"] = {{"Name","BackButtons",},{"Name","GlowLight",},},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- Switch multitool descriptor MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_SWITCHMT_DESCRIPTOR,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- change data for gravity gun
                            ["VCT"] =
                            {
                                {"TypeId","_GRAVITYGUN_",},
                                {"Id","_GRAVITYGUN_A",},
                                {"Name","_GravityGun_A",},
                            },
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- gravity multitool material MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODDED_GRAVITYGUN_MATERIAL,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- link to new texture file
                            ["SKW"] = {"Name","gDiffuseMap",},
                            ["VCT"] = {{"Map","TEXTURES/COMMON/WEAPONS/MULTITOOL/SWITCH/GRAVITYGUN.DDS",},},
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- reward table MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_REWARDTABLE,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get template for section with laser
                            ["SKW"] = {"Id","R_SWIT_GUN01","Id","LASER"},
                            ["SEC_SAVE_TO"] = "SEC_TECHSLOT",
                        },

                        {
                            -- modify the template for terrain manipulator
                            ["SEC_EDIT"] = "SEC_TECHSLOT",
                            ["VCT"] =
                            {
                                {"Id","TERRAINEDITOR",},
                                {"Amount",600,},
                                {"MaxAmount",600,},
                            },
                        },

                        {
                            -- add terrain manipulator
                            ["SKW"] = {"Id","R_SWIT_GUN01",},
                            ["PKW"] = "Slots",
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_TECHSLOT",
                        },

                        {
                            -- get template for section with scope
                            ["SKW"] = {"Id","R_SWIT_GUN01","Id","SCOPE"},
                            ["SEC_SAVE_TO"] = "SEC_TECHSLOT",
                        },

                        {
                            -- modify the template for advanced mining beam
                            ["SEC_EDIT"] = "SEC_TECHSLOT",
                            ["VCT"] = {{"Id","STRONGLASER",},},
                        },

                        {
                            -- add advanced mining beam
                            ["SKW"] = {"Id","R_SWIT_GUN01",},
                            ["PKW"] = "Slots",
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_TECHSLOT",
                        },

                        {
                            -- swap regular mining laser for Hijacked Laser
                            ["SKW"] = {"Id","R_SWIT_GUN01","Id","LASER"},
                            ["VCT"] = {{"Id","SENT_LASER",},},
                        },

                        {
                            -- swap Blaze Javelin for Neutron Cannon, set full charge
                            ["SKW"] = {"Id","R_SWIT_GUN01","Id","RAILGUN"},
                            ["VCT"] =
                            {
                                {"Id","CANNON",},
                                {"Amount",500,},
                                {"MaxAmount",500,},
                            },
                        },

                        {
                            -- swap weapon blueprint
                            ["SKW"] = {"Id","R_SWIT_GUN01","Id","UT_RAIL"},
                            ["VCT"] = {{"Id","UT_CANNON",},},
                        },

                        {
                            -- swap scope for actual gravity gun, set full charge
                            ["SKW"] = {"Id","R_SWIT_GUN01","Id","SCOPE"},
                            ["VCT"] =
                            {
                                {"Id","GRAVITYGUN",},
                                {"Amount",600,},
                                {"MaxAmount",600,},
                            },
                        },

                        {
                            -- change other properties
                            ["SKW"] = {"Id","R_SWIT_GUN01",},
                            ["VCT"] = {{"WeaponStatClass","Robot",},}
                        },

                        {
                            -- add couple more slots
                            ["SKW"] = {"Id","R_SWIT_GUN01","WeaponLayout","GcInventoryLayout",},
                            ["VCT"] = {{"Slots",28,},}
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- buried cache entity MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_BURIEDCACHE_ENTITY,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get template for simple interaction component
                            ["SKW"] = {"Components","GcSimpleInteractionComponentData",},
                            ["SEC_SAVE_TO"] = "SEC_INTERACTION",
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- large crate entity MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_LARGECRATE_ENTITY,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- change reward and interaction label
                            ["SEC_EDIT"] = "SEC_INTERACTION",
                            ["VCT"] =
                            {
                                {"Id","R_SWIT_GUN01",},
                                {"StatEnum","None",},
                                {"StartsBuried","false",},
                                {"Name","BINOC_TREASURE",},
                                {"ForceSubtitle","UI_SENTINEL_HIVE_SETUP_OPT3",},
                                {"ScanType","BINOC_TREASURE",},
                            },
                        },

                        {
                            -- remove reward override table
                            ["SEC_EDIT"] = "SEC_INTERACTION",
                            ["PKW"] = "RewardOverrideTable",
                            ["CREATE_HOES"] = "TRUE",
                        },

                        {
                            -- add interaction component to the crate
                            ["PKW"] = "Components",
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_INTERACTION",
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