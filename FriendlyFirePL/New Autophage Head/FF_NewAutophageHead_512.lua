----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "NewAutophageHead"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "512"
METADATA_MOD_DESC       = "This mod adds a new Autophage head option to use in player customisation. Modifies various files in MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER and METADATA directories."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_METADATA_CUSTOMISATION_UI =        "METADATA\\UI\\CHARACTERCUSTOMISATIONUIDATA.MBIN"
FILE_METADATA_CHARACTER_DESCR =         "METADATA\\GAMESTATE\\PLAYERDATA\\CHARACTERCUSTOMISATIONDESCRIPTORGROUPSDATA.MBIN"

FILE_MODELS_PLAYER_SCENE =              "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\PLAYERCHARACTER.SCENE.MBIN"
FILE_MODELS_PLAYER_DESCR =              "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\PLAYERCHARACTER.DESCRIPTOR.MBIN"

--------------------------------------------------
-- files with Autophage data (not modified)
--------------------------------------------------

FILE_MODELS_NPCROBOT_SCENE =            "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\NPCROBOT.SCENE.MBIN"
FILE_MODELS_NPCROBOT_DESCR =            "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\NPCROBOT.DESCRIPTOR.MBIN"

FILE_TEXTURE_VANILLA_MAIN =             "TEXTURES\\COMMON\\ROBOTS\\SHARED\\DETAILS.TEXTURE.MBIN"
FILE_MATERIAL_VANILLA_MAIN =            "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\PLAYERCHARACTER\\BUILDERSUMDRONEMAT1.MATERIAL.MBIN"

FILE_TEXTURE_VANILLA_DETAIL =           "TEXTURES\\COMMON\\ROBOTS\\SHARED\\DETAILS.TEXTURE.MBIN"
FILE_MATERIAL_VANILLA_DETAIL =          "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\NPCROBOT\\CORRUPTEDDETMAT.MATERIAL.MBIN"

FILE_MATERIAL_VANILLA_INNER =           "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\NPCROBOT_SPIDER\\CORRUPTEDMAT1.MATERIAL.MBIN"

--------------------------------------------------
-- new files for the head (added)
--------------------------------------------------

FILE_MODELS_NEWHEAD_SCENE =             "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\NEWROBOTHEAD.SCENE.MBIN"

FILE_TEXTURE_ROBOTHEAD_MAIN =           "TEXTURES\\COMMON\\ROBOTS\\ROBOTHEADMAIN.TEXTURE.MBIN"
FILE_MATERIAL_ROBOTHEAD_MAIN =          "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\NPCROBOT\\ROBOTHEADMAIN.MATERIAL.MBIN"

FILE_TEXTURE_ROBOTHEAD_DETAIL =         "TEXTURES\\COMMON\\ROBOTS\\ROBOTHEADDETAIL.TEXTURE.MBIN"
FILE_MATERIAL_ROBOTHEAD_DETAIL =        "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\NPCROBOT\\ROBOTHEADDETAIL.MATERIAL.MBIN"

FILE_MATERIAL_ROBOTHEAD_INNER =         "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\NPCROBOT\\ROBOTHEADINNER.MATERIAL.MBIN"



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
                    -- create new files from vanilla files
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {   FILE_MODELS_NPCROBOT_SCENE,         FILE_MODELS_NEWHEAD_SCENE,          "REMOVE"},
                        {   FILE_TEXTURE_VANILLA_MAIN,          FILE_TEXTURE_ROBOTHEAD_MAIN,        "REMOVE"},
                        {   FILE_TEXTURE_VANILLA_DETAIL,        FILE_TEXTURE_ROBOTHEAD_DETAIL,      "REMOVE"},
                        {   FILE_MATERIAL_VANILLA_MAIN,         FILE_MATERIAL_ROBOTHEAD_MAIN,       "REMOVE"},
                        {   FILE_MATERIAL_VANILLA_DETAIL,       FILE_MATERIAL_ROBOTHEAD_DETAIL,     "REMOVE"},
                        {   FILE_MATERIAL_VANILLA_INNER,        FILE_MATERIAL_ROBOTHEAD_INNER,      "REMOVE"},
                    },
                },

                {
                    --------------------------------------------------
                    -- Autophage NPC scene MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_NPCROBOT_SCENE,
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get the node for specific head
                            ["SKW"] = {"Name","_Head_Build4",},
                            ["SEC_SAVE_TO"] = "SEC_NODE_HEAD",
                        },

                        {
                            -- apply transform to the head node
                            ["SEC_EDIT"] = "SEC_NODE_HEAD",
                            ["VCT"] = 
                            {
                                {"TransX",-2,},{"TransY",0,},{"TransZ",0,},
                                {"RotX",180,},{"RotY",0,},{"RotZ",-90,},
                            },
                        },

                        {
                            -- apply scalling to head meshes
                            ["SEC_EDIT"] = "SEC_NODE_HEAD",
                            ["SKW"] = {{"Name","HeadNPCRobotMech",},{"Name","HeadNPCRobotEyesMech",},},
                            ["VCT"] =
                            {
                                {"TransX",0,},{"TransY",0.2,},{"TransZ",0,},
                                {"ScaleX",0.9,},{"ScaleY",0.9,},{"ScaleZ",0.9,},
                            },
                        },

                        {
                            -- change skull material from rusty to pristine
                            ["SEC_EDIT"] = "SEC_NODE_HEAD",
                            ["SKW"] = {"Name","HeadNPCRobotMech","Name","MATERIAL",},
                            ["VCT"] = {{"Value","MODELS\COMMON\PLAYER\PLAYERCHARACTER\NPCROBOT\ROBOT_DETAILS3.MATERIAL.MBIN",},},
                        },
                        
                        {
                            -- change skull material from rusty to pristine
                            ["SEC_EDIT"] = "SEC_NODE_HEAD",
                            ["SKW"] = {"Name","SUB2HeadNPCRobotMech","Name","MATERIAL",},
                            ["VCT"] = {{"Value","MODELS\COMMON\PLAYER\PLAYERCHARACTER\NPCROBOT\DARKMETAL_MAT.MATERIAL.MBIN",},},
                        },
                    
                        {
                            -- change skull material from rusty to pristine
                            ["SEC_EDIT"] = "SEC_NODE_HEAD",
                            ["SKW"] = {"Name","SUB3HeadNPCRobotMech","Name","MATERIAL",},
                            ["VCT"] = {{"Value",FILE_MATERIAL_ROBOTHEAD_INNER,},},
                        },
                        
                        {
                            -- change shell decal material to enable colour customisation
                            ["SEC_EDIT"] = "SEC_NODE_HEAD",
                            ["SKW"] = {"Name","SUB4HeadNPCRobotMech","Name","MATERIAL",},
                            ["VCT"] = {{"Value",FILE_MATERIAL_ROBOTHEAD_DETAIL,},},
                        },
                        
                        {
                            -- change outer shell material to enable colour customisation
                            ["SEC_EDIT"] = "SEC_NODE_HEAD",
                            ["SKW"] = {"Name","SUB5HeadNPCRobotMech","Name","MATERIAL",},
                            ["VCT"] = {{"Value",FILE_MATERIAL_ROBOTHEAD_MAIN,},},
                        },

                        --------------------------------------------------

                        -- get headgear options from head 4
                        {   ["SKW"] = {"Name","_BH4Cloth_Null",},       ["SEC_SAVE_TO"] = "SEC_CLOTH_0",    },
                        {   ["SKW"] = {"Name","_BH4Cloth_1",},          ["SEC_SAVE_TO"] = "SEC_CLOTH_1",    },
                        {   ["SKW"] = {"Name","_BH4Cloth_2",},          ["SEC_SAVE_TO"] = "SEC_CLOTH_2",    },
                        {   ["SKW"] = {"Name","_BH4Cloth_3",},          ["SEC_SAVE_TO"] = "SEC_CLOTH_3",    },  
                            
                        -- add them to head node
                        {   ["SEC_EDIT"] = "SEC_NODE_HEAD",     ["PKW"] = "Children",   ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_CLOTH_0",  }, 
                        {   ["SEC_EDIT"] = "SEC_NODE_HEAD",     ["PKW"] = "Children",   ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_CLOTH_1",  }, 
                        {   ["SEC_EDIT"] = "SEC_NODE_HEAD",     ["PKW"] = "Children",   ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_CLOTH_2",  }, 
                        {   ["SEC_EDIT"] = "SEC_NODE_HEAD",     ["PKW"] = "Children",   ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_CLOTH_3",  },

                        --------------------------------------------------
                       
                        {
                            -- get template for reference node
                            ["SKW"] = {"Type","REFERENCE",},
                            ["SEC_SAVE_TO"] = "SEC_REFERENCE",
                        },

                        {
                            -- setup reference to new head scene
                            ["SEC_EDIT"] = "SEC_REFERENCE",
                            ["VCT"] = 
                            {
                                {"Name","_Head_Build4",},
                                {"Namehash",0,},
                                {"Value",FILE_MODELS_NEWHEAD_SCENE,},
                            },
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- new head scene MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_NEWHEAD_SCENE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- yeet out all the elements
                            ["PKW"] = "Children",
                            ["CREATE_HOES"] = "TRUE",
                        },

                        {
                            -- insert back the head node only
                            ["PKW"] = "Children",
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "SEC_NODE_HEAD",
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- player character scene MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_PLAYER_SCENE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- add reference to new head scene
                            -- head joint borrowed from Sean Sean's Sean
                            ["SKW"] = {"Name","player01_head_TopSHJnt",},
                            ["PKW"] = "Children",
                            ["SEC_ADD_NAMED"] = "SEC_REFERENCE",
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- Autophage descriptors MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_NPCROBOT_DESCR,
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get the descriptor for armored head
                            ["SKW"] = {"Name","_Head_Build4",},
                            ["SEC_SAVE_TO"] = "SEC_DESCR_HEAD",
                        },

                        {
                            -- remove reference to player scene
                            ["SEC_EDIT"] = "SEC_DESCR_HEAD",
                            ["PKW"] = "ReferencePaths",
                            ["CREATE_HOES"] = "TRUE",
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- player descriptors MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_PLAYER_DESCR,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- copy headgear descriptors from head 4
                            ["SKW"] = {"Id","_BHEAD_4",},
                            ["PKW"] = "TkModelDescriptorList.xml",
                            ["SEC_SAVE_TO"] = "SEC_DESCR_CLOTH",
                        },

                        {
                            -- add headgear descriptors to new head
                            ["SEC_EDIT"] = "SEC_DESCR_HEAD",
                            ["PKW"] = "Children",
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "SEC_DESCR_CLOTH",
                        },

                        {
                            -- add new head descriptor to the list
                            ["SKW"] = {"Id","_HEAD_DIVING",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_DESCR_HEAD",
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- character description groups MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CHARACTER_DESCR,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get template for a descriptors group
                            ["SKW"] = {"GroupID","BHEAD_1",},
                            ["SEC_SAVE_TO"] = "SEC_DESCR_GROUP",
                        },

                        {
                            -- edit the template - change ID, remove product, change tooltip
                            ["SEC_EDIT"] = "SEC_DESCR_GROUP",
                            ["VCT"] =
                            {
                                {"GroupID","BHEAD_20",},
                                {"LinkedSpecialID","",},
                                {"Tip","UI_FREI_LIFESUPP_NAME_L",},
                            },
                        },

                        {
                            -- change reference to the new head node
                            ["SEC_EDIT"] = "SEC_DESCR_GROUP",
                            ["SKW"] = {"Value","_HEAD_BUILDERS",},
                            ["VCT"] = {{"Value","_Head_Build4",},},
                        },

                        {
                            -- remove unused descriptor
                            ["SEC_EDIT"] = "SEC_DESCR_GROUP",
                            ["SKW"] = {"Value","_BBase_1",},
                            ["REMOVE"] = "SECTION",
                        },

                        {
                            -- add modified descriptor group to the list
                            ["SKW"] = {"Id","BUILDER_HEAD",},
                            ["PKW"] = "DescriptorGroups",
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_DESCR_GROUP",
                        },

                        {
                            -- add head gear / masks from head 4
                            ["SKW"] = {"GroupID","BUI_HCLOTH_NULL",},
                            ["PKW"] = "Descriptors",
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = [[<Property value="NMSString0x20.xml"><Property name="Value" value="_BH4Cloth_Null" /></Property>]],
                        },

                        {
                            -- add head gear / masks from head 4
                            ["SKW"] = {"GroupID","BUI_HCLOTH_1",},
                            ["PKW"] = "Descriptors",
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = [[<Property value="NMSString0x20.xml"><Property name="Value" value="_BH4Cloth_1" /></Property>]],
                        },

                        {
                            -- add head gear / masks from head 4
                            ["SKW"] = {"GroupID","BUI_HCLOTH_2",},
                            ["PKW"] = "Descriptors",
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = [[<Property value="NMSString0x20.xml"><Property name="Value" value="_BH4Cloth_2" /></Property>]],
                        },

                        {
                            -- add head gear / masks from head 4
                            ["SKW"] = {"GroupID","BUI_HCLOTH_3",},
                            ["PKW"] = "Descriptors",
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] = [[<Property value="NMSString0x20.xml"><Property name="Value" value="_BH4Cloth_3" /></Property>]],
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- customisation UI data MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CUSTOMISATION_UI,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get a template for customisation option
                            ["SKW"] = {"DescriptorOption","BHEAD_1",},
                            ["SEC_SAVE_TO"] = "SEC_CUSTOM_UI",
                        },

                        {
                            -- change reference to new descriptor group
                            ["SEC_EDIT"] = "SEC_CUSTOM_UI",
                            ["VCT"] = {{"DescriptorOption","BHEAD_20",},},
                        },

                        {
                            -- add new customisation option to Autophage race
                            ["SKW"] = {"DescriptorGroupOption","BUILDERS_BASE",},
                            ["PKW"] = "DescriptorGroupOptions",
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_CUSTOM_UI",
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- main head texture MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_ROBOTHEAD_MAIN,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- assign new textures to base layer
                            ["SKW"] = {{"Name","BASE",}},
                            ["VCT"] =
                            {
                                {"Diffuse","TEXTURES/COMMON/ROBOTS/ROBOTHEADMAIN.BASE.DDS",},
                                {"Normal","TEXTURES/COMMON/ROBOTS/ROBOTHEADMAIN.NORMAL.DDS",},
                                {"Mask","TEXTURES/COMMON/ROBOTS/ROBOTHEADMAIN.MASKS.DDS",},
                            },
                        },

                        {
                            -- assign colour palette
                            ["SKW"] = {"Name","BASE","Palette","TkPaletteTexture.xml",},
                            ["REPLACE_TYPE"] = "onceINSIDE",
                            ["VCT"] = {{"Palette","Custom_Head",},{"ColourAlt","Primary",},},

                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- main head material MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MATERIAL_ROBOTHEAD_MAIN,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- assign new textures
                        {   ["SKW"] = {"Name","gDiffuseMap",},      ["VCT"] = {{"Map","TEXTURES/COMMON/ROBOTS/ROBOTHEADMAIN.DDS",},},            },
                        {   ["SKW"] = {"Name","gMasksMap",},        ["VCT"] = {{"Map","TEXTURES/COMMON/ROBOTS/ROBOTHEADMAIN.MASKS.DDS",},},      },
                        {   ["SKW"] = {"Name","gNormalMap",},       ["VCT"] = {{"Map","TEXTURES/COMMON/ROBOTS/ROBOTHEADMAIN.NORMAL.DDS",},},     },
                    }
                },

                {
                    --------------------------------------------------
                    -- head detail texture MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_ROBOTHEAD_DETAIL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- assign new textures to base layer
                            ["SKW"] = {{"Name","BASE",}},
                            ["VCT"] =
                            {
                                {"Diffuse","TEXTURES/COMMON/ROBOTS/ROBOTHEADDETAIL.BASE.DDS",},
                                {"Normal","TEXTURES/COMMON/ROBOTS/ROBOTHEADDETAIL.NORMAL.DDS",},
                                {"Mask","TEXTURES/COMMON/ROBOTS/ROBOTHEADDETAIL.MASKS.DDS",},
                            },
                        },

                        {
                            -- assign colour palette
                            ["SKW"] = {"Name","BASE","Palette","TkPaletteTexture.xml",},
                            ["REPLACE_TYPE"] = "onceINSIDE",
                            ["VCT"] = {{"Palette","Custom_Head",},{"ColourAlt","Alternative1",},},
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- head detail material MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MATERIAL_ROBOTHEAD_DETAIL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- assign new textures
                        {   ["SKW"] = {"Name","gDiffuseMap",},      ["VCT"] = {{"Map","TEXTURES/COMMON/ROBOTS/ROBOTHEADDETAIL.DDS",},},            },
                        {   ["SKW"] = {"Name","gMasksMap",},        ["VCT"] = {{"Map","TEXTURES/COMMON/ROBOTS/ROBOTHEADDETAIL.MASKS.DDS",},},      },
                        {   ["SKW"] = {"Name","gNormalMap",},       ["VCT"] = {{"Map","TEXTURES/COMMON/ROBOTS/ROBOTHEADDETAIL.NORMAL.DDS",},},     },
                    }
                },

                {
                    --------------------------------------------------
                    -- head inner material MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MATERIAL_ROBOTHEAD_INNER,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- assign new textures
                        {   ["SKW"] = {"Name","gDiffuseMap",},      ["VCT"] = {{"Map","TEXTURES/COMMON/ROBOTS/ROBOTHEADINNER.BASE.DDS",},},       },
                        {   ["SKW"] = {"Name","gMasksMap",},        ["VCT"] = {{"Map","TEXTURES/COMMON/ROBOTS/ROBOTHEADINNER.MASKS.DDS",},},      },
                        {   ["SKW"] = {"Name","gNormalMap",},       ["VCT"] = {{"Map","TEXTURES/COMMON/ROBOTS/ROBOTHEADINNER.NORMAL.DDS",},},     },
                    }
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------