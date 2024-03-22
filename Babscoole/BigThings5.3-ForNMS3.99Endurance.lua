NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "BigThings5.3.pak",
["MOD_AUTHOR"]              = "BruceCambel",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "3.99",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "16"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "30"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8, 10, 11},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {15},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {16},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1.2"},
                                {"MaxScale", "3.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {14, 18},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {13, 19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.9"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {20},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1"},
                                {"MaxScale", "3.6"}
                            },
                        },
                    }
                },
                -- {
                    -- ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSOBJECTSFULLULTRA.MBIN",
                    -- ["EXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {1},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "16"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {2},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "30"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {3},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "5.8"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {4},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4.7"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {5},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4.8"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {6},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4.4"},
                                -- {"Coverage", "0.325"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {7},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4.2"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {9},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "5.5"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {8, 10, 11},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {11},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Coverage", "0.24"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {12},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "5"}
                            -- },
                        -- },
                    -- }
                -- },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {28},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {35},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {36},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {45},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale",         "1"},
                                {"MaxScale",         "4"},
                                {"SlopeScaling",     "1"},
                                {"PatchEdgeScaling", "1"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSDEAD.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.9"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2,5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {22, 29},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {26},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.6"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSLOW.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {24},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.2"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENOBJECTSMID.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2, 4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5, 7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.1"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENBIGPROPSOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "16"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "30"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8, 10, 11, 12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.5"}
                            },
                        },
                    }
                },
                -- {
                    -- ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENBIGPROPSOBJECTSFULLULTRA.MBIN",
                    -- ["EXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {1},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "16"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {2},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "30"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {3},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "5.8"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {4},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4.7"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {5},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4.8"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {6},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4.4"},
                                -- {"Coverage", "0.325"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {7},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4.2"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {8, 10, 11, 12},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {9},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "5.5"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {11},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Coverage", "0.24"}
                            -- },
                        -- },
                    -- }
                -- },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQOBJECTSMID.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.5"},
                                {"MaxScale", "4.4"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.5"},
                                {"MaxScale", "3.4"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8"},
                                {"Coverage", "0.08625"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.08625"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8"},
                                {"Coverage", "0.13125"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.13125"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8.2"},
                                {"Coverage", "0.135"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.135"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8"},
                                {"Coverage", "0.1875"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.1875"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.4"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.1"},
                                {"Coverage", "0.35"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.35"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.35"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {15},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.6"},
                                {"MaxScale", "2.8"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.8"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSDEAD.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4, 5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {11},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {16},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.9"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8"},
                                {"Coverage", "0.37875"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.37875"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.37875"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8"},
                                {"Coverage", "0.2"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.39"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml",  "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.39"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1.4"},
                                {"MaxScale", "8"},
                                {"Coverage", "0.39"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.39"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml",  "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.39"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {13, 14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {19, 27},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {20},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {22},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.9"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {26},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {28},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSLOW.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8"},
                                {"Coverage", "0.0825"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.0825"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8"},
                                {"Coverage", "0.0975"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.0975"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {11, 17},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.8"},
                                {"Coverage", "0.03"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {18},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {21},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.9"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {25},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {26},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {27},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENOBJECTSMID.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8"},
                                {"Coverage", "0.08625"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.08625"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8"},
                                {"Coverage", "0.13125"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.13125"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8"},
                                {"Coverage", "0.135"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.135"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8"},
                                {"Coverage", "0.09"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.09"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8"},
                                {"Coverage", "0.1875"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.1875"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8, 9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {13, 14, 18},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.8"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {21},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {22},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.9"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {26},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {27},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {28},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "16"},
                                {"Coverage", "0.265"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2, 3, 5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "18"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "20"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.1"},
                                {"MaxScale", "5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.1"},
                                {"MaxScale", "5.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {11},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.1"},
                                {"MaxScale", "5.15"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {13, 14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {18, 22},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.2"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "7.2"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1"},
                                {"MaxScale", "7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1.6"},
                                {"MaxScale", "7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "2.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {16, 17},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.8"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {18},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {20, 22},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.1"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSDEAD.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10, 14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.8"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {11},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {16},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.9"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1, 2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8.2"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.7"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {12, 13},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {16},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {17, 21},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {20},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.2"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8.3"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.4"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {11},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {13},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {17},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {18},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.2"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8.7"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.4"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {13, 15, 19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {16, 20},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.6"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1, 3, 4, 5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {11},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {13},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {15},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {17},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5"}
                            },
                        },
                    }
                },
                -- {
                    -- ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWOBJECTSULTRA.MBIN",
                    -- ["EXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {1},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "8"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {3},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "8"},
                                -- {"Coverage", "0.3"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {4},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "8"},
                                -- {"Coverage", "0.3"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {5},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "8"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {6},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4.5"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {8},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4.6"},
                            -- {"Coverage", "0.3"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {9},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {10},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.6"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {11},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.5"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {12},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {13},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "2.2"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {14},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "2.5"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {15},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.2"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {17},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "5"}
                            -- },
                        -- },
                    -- }
                -- },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSDEAD.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.2"},
                                {"Coverage", "0.09"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.09"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.1"},
                                {"Coverage", "0.12"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.135"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.135"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.1425"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.1425"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7, 13},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.2"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8, 12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10, 15},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {16},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {23},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.075"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {23},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.075"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.135"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.135"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.135"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.1425"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.1425"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.1425"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.2"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {21},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.1"},
                                {"Coverage", "0.075"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {21},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.075"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSLOW.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.0675"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.0675"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.1"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7, 16},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.8"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8, 20, 21},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {11, 19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.6"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {13},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.6"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {15},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.4"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {17, 18},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.2"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEOBJECTSMID.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.7"},
                                {"Coverage", "0.13125"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.13125"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.2"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.1875"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.1875"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9, 13},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {15},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.2"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "16"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3, 5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1.3"},
                                {"MaxScale", "3.7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.11"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.11"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.2"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.6"},
                                {"MaxScale", "4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.14"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.14"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10, 11},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {14, 18},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {16},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {20},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1"}
                            },
                        },
                    }
                },
                -- {
                    -- ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSOBJECTSULTRA.MBIN",
                    -- ["EXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {1},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "16"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {3},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.8"},
                                -- {"Coverage", "0.18"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {4},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.7"},
                                -- {"Coverage", "0.11"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {5},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.8"},
                                -- {"Coverage", "0.18"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {6},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.4"},
                                -- {"Coverage", "0.325"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {7},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4.2"},
                                -- {"Coverage", "0.14"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {8},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4"},
                                -- {"Coverage", "0.14"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {9},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "5.5"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {10, 11},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {12},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4"},
                                -- {"Coverage", "0.09"},
                            -- },
                        -- },
                    -- }
                -- },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "20"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "30"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3, 13},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4, 6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {11, 12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.9"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {15},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {16},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {17},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1.2"},
                                {"MaxScale", "3.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {21},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1"},
                                {"MaxScale", "3.6"}
                            },
                        },
                    }
                },
                -- {
                    -- ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSOBJECTSFULLULTRA.MBIN",
                    -- ["EXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {1},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "20"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {2},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "30"},
                                -- {"Coverage", "0.13"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {3},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "5"},
                                -- {"Coverage", "0.115"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {4, 6},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.8"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {5},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.7"},
                                -- {"Coverage", "0.11"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {7},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.4"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {8},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4.2"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {9},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {10},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4.5"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {11, 12},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {13},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "5"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {17, 21},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.6"}
                            -- },
                        -- },
                    -- }
                -- },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSDEAD.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.5"},
                                {"Coverage", "0.05625"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.05625"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.2"},
                                {"Coverage", "0.05"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4, 13},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.8"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.7"},
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.0375"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.0375"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml",  "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.0375"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.7"},
                                {"MaxScale", "9.5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.12"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml",  "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.12"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5"},
                                {"Coverage", "0.165"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.165"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml",  "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.165"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.9"},
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.15"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.15"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml",  "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.15"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9, 10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {11},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {12, 17, 23},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LargeObjectCoverage",    "AlwaysPlace"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSLOW.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.5"},
                                {"MaxScale", "10.5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.06"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.7"},
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.0975"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.0975"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.3"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.06"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4, 6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.9"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {11},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.3"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDOBJECTSMID.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.8"},
                                {"Coverage", "0.08625"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.08625"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.5"},
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.13125"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.13125"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.2"},
                                {"Coverage", "0.135"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.135"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.5"},
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.09"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.09"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.8"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.4"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.18"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {13},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.8"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1.3"},
                                {"MaxScale", "3.7"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.8"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.5"},
                                {"MaxScale", "4.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.6"},
                                {"MaxScale", "4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10, 11},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {16},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1.2"},
                                {"MaxScale", "3.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {20},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "1"},
                                {"MaxScale", "3.6"}
                            },
                        },
                    }
                },
                -- {
                    -- ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSOBJECTSFULLULTRA.MBIN",
                    -- ["EXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {3},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.8"},
                                -- {"Coverage", "0.18"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {4},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.7"},
                                -- {"Coverage", "0.11"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {5},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.8"},
                                -- {"Coverage", "0.18"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {6},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3.4"},
                                -- {"Coverage", "0.325"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {7},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4.2"},
                                -- {"Coverage", "0.14"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {8},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4"},
                                -- {"Coverage", "0.14"},
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {9},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "5.5"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {10, 11},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "3"}
                            -- },
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            -- ["SECTION_ACTIVE"] = {12},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "4"}
                            -- },
                        -- },
                    -- }
                -- },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSDEAD.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1, 4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.1"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5, 6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.2"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "15.6"},
                                {"Coverage", "0.1275"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.1275"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml",  "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.1275"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.1"},
                                {"Coverage", "0.075"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.075"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml",  "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.075"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10"},
                                {"Coverage", "0.1575"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.1575"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml",  "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.1575"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.43"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.7"},
                                {"Coverage", "0.1725"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.1725"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml",  "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.1725"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.9"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.1"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9, 11},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.1"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {13},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {14, 15},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {16},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {17},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {18},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {20},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "7.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {37},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.4"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSLOW.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.1"},
                                {"Coverage", "0.0825"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.0825"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.075"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.075"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.4"},
                                {"Coverage", "0.105"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.105"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.4"},
                                {"Coverage", "0.0975"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.0975"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5, 6},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7, 11},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.9"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {12, 14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.1"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {13, 15},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {17},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.8"},
                                {"Coverage", "0.105"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {17},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.105"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {18},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.7"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICOBJECTSMID.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.14625"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.14625"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.09"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.09"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "10.5"},
                                {"Coverage", "0.1875"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml", "QualityVariants", "GcObjectSpawnDataVariant.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.1875"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6, 12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9, 10, 13},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.8"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {11},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.2"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {14},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2.4"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BONESPIRE\BONESPIREOBJECTSDEAD.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1, 2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "8.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "6.5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5.4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6, 8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3.3"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                        {
                            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HYDROGARDEN\HYDROGARDENOBJECTSDEAD.MBIN",
                            --"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HYDROGARDEN\HYDROGARDENOBJECTSDEADULTRA.MBIN",
                        },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {1, 2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "15"},
                                {"MaxScale", "30"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "7.3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {6, 10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {7, 12},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "5"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {8},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "6"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "7"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {11},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"}
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
                            ["SECTION_ACTIVE"] = {13},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.5"}
                            },
                        },
                    }
                },
            }
        },
    }
}