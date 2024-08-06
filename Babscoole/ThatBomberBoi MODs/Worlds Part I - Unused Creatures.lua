NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "UnusedCreatures.pak",
["MOD_AUTHOR"]    = "ThatBomberBoi",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
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
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FISH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "MODELS/PLANETS/CREATURES/MANTARAY/MANTARAY.SCENE.MBIN"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FLYINGLIZARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "MODELS/PLANETS/CREATURES/FLYINGLIZARDRIG/FLYINGLIZARDGLOW.SCENE.MBIN"}
                            }
                        },
                    }
                },
            }
        }
    }
}