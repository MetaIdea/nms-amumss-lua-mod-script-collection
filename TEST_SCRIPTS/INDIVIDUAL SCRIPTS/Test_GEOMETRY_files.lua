----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "Test_GEOMETRY_files" -- "AutophageHeadNew"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "TEST"
METADATA_MOD_DESC       = ""



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
FILE_MODELS_PLAYER_GEO_DATA =           "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\PLAYERCHARACTER.GEOMETRY.DATA.MBIN"
FILE_MODELS_PLAYER_GEOMETRY =           "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\PLAYERCHARACTER.GEOMETRY.MBIN"

--------------------------------------------------
-- files with Autophage data
--------------------------------------------------

FILE_MODELS_NPCROBOT_SCENE =            "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\NPCROBOT.SCENE.MBIN"
FILE_MODELS_NPCROBOT_DESCR =            "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\NPCROBOT.DESCRIPTOR.MBIN"
FILE_MODELS_NPCROBOT_GEO_DATA =         "MODELS\\COMMON\\PLAYER\\PLAYERCHARACTER\\NPCROBOT.GEOMETRY.DATA.MBIN"

--------------------------------------------------
-- list of new geometry nodes
--------------------------------------------------

PROPERTY_GEOMETRY_NODES =
[[
<Property value="VariableSizeString.xml">
    <Property name="Value" value="_HEAD_BUILD4" />
</Property>
<Property value="VariableSizeString.xml">
    <Property name="Value" value="HEADNPCROBOTMECH" />
</Property>
<Property value="VariableSizeString.xml">
    <Property name="Value" value="SUB1HEADNPCROBOTMECH" />
</Property>
<Property value="VariableSizeString.xml">
    <Property name="Value" value="SUB2HEADNPCROBOTMECH" />
</Property>
<Property value="VariableSizeString.xml">
    <Property name="Value" value="SUB3HEADNPCROBOTMECH" />
</Property>
<Property value="VariableSizeString.xml">
    <Property name="Value" value="SUB4HEADNPCROBOTMECH" />
</Property>
<Property value="VariableSizeString.xml">
    <Property name="Value" value="SUB5HEADNPCROBOTMECH" />
</Property>
<Property value="VariableSizeString.xml">
    <Property name="Value" value="HEADNPCROBOTEYESMECH" />
</Property>
]]



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
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    --------------------------------------------------
                    -- Autophage NPC scene MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_NPCROBOT_SCENE,
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get the node for armored head
                            ["SKW"] = {"Name","_Head_Build4",},
                            ["SEC_SAVE_TO"] = "SEC_NODE_HEAD",
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
                            -- add the node to player scene
                            ["SKW"] = {"Name","_Head_Diving",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_NODE_HEAD",
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
                            -- add new descriptor to player list
                            ["SKW"] = {"Id","_HEAD_DIVING",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_DESCR_HEAD",
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- Autophage geometry data MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_NPCROBOT_GEO_DATA,
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- get the required meshes
                        {   ["SKW"] = {"IdString","SUB1HEADNPCROBOTMECH",},     ["SEC_SAVE_TO"] = "SEC_MESH_1",     },
                        {   ["SKW"] = {"IdString","SUB2HEADNPCROBOTMECH",},     ["SEC_SAVE_TO"] = "SEC_MESH_2",     },
                        {   ["SKW"] = {"IdString","SUB3HEADNPCROBOTMECH",},     ["SEC_SAVE_TO"] = "SEC_MESH_3",     },
                        {   ["SKW"] = {"IdString","SUB4HEADNPCROBOTMECH",},     ["SEC_SAVE_TO"] = "SEC_MESH_4",     },
                        {   ["SKW"] = {"IdString","SUB5HEADNPCROBOTMECH",},     ["SEC_SAVE_TO"] = "SEC_MESH_5",     },
                        {   ["SKW"] = {"IdString","HEADNPCROBOTMECH",},         ["SEC_SAVE_TO"] = "SEC_MESH_6",     },
                        {   ["SKW"] = {"IdString","HEADNPCROBOTEYESMECH",},     ["SEC_SAVE_TO"] = "SEC_MESH_7",     },
                    }
                },

                {
                    --------------------------------------------------
                    -- player geometry data MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_PLAYER_GEO_DATA,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add the required meshes
                        {   ["PKW"] = "StreamDataArray",    ["SEC_ADD_NAMED"] = "SEC_MESH_1",     },
                        {   ["PKW"] = "StreamDataArray",    ["SEC_ADD_NAMED"] = "SEC_MESH_2",     },
                        {   ["PKW"] = "StreamDataArray",    ["SEC_ADD_NAMED"] = "SEC_MESH_3",     },
                        {   ["PKW"] = "StreamDataArray",    ["SEC_ADD_NAMED"] = "SEC_MESH_4",     },
                        {   ["PKW"] = "StreamDataArray",    ["SEC_ADD_NAMED"] = "SEC_MESH_5",     },
                        {   ["PKW"] = "StreamDataArray",    ["SEC_ADD_NAMED"] = "SEC_MESH_6",     },
                        {   ["PKW"] = "StreamDataArray",    ["SEC_ADD_NAMED"] = "SEC_MESH_7",     },
                    }
                },

                {
                    --------------------------------------------------
                    -- player geometry MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_PLAYER_GEOMETRY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- add new proc gen nodes
                            ["PKW"] = "ProcGenNodeNames",
                            ["ADD"] = PROPERTY_GEOMETRY_NODES,
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
                            -- edit the template - change ID, remove associated product
                            -- change tooltip text visible in customiser UI
                            ["SEC_EDIT"] = "SEC_DESCR_GROUP",
                            ["VCT"] =
                            {
                                {"GroupID","BHEAD_20",},
                                {"LinkedSpecialID","",},
                                {"Tip","SUBSTANCE_STEEL",},
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

            }
        }
    } -- 30 global replacements
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------