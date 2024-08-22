NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Anti-Arachnophobia.pak",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.48",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREFILENAMETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["FOREACH_SKW_GROUP"] =  -- Allows for specifying multiple Special Keyword Pairs in one section of the Lua
                            {
                                {"ID", "SPIDER"},
                                {"ID", "FLOATSPIDER"},
                                {"ID", "ROCKCREATURE"},
                                {"ID", "SCUTTLER"},
                                {"ID", "CRAB"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "MODELS/PLANETS/CREATURES/GRUNTRIG/GRUNT.SCENE.MBIN"}, -- This value change will be made in all sections specified by the FOREACH_SKW_GROUP
                            }
                        },
                    },
                },
            },
        },
    },
}