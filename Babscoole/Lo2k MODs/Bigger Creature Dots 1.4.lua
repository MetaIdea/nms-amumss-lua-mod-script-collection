NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Bigger Creature Dots 1.4.pak",
["MOD_AUTHOR"]    = "Lo2k",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "1.4",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\HUD\SCANNERICONS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "CreatureDiscovered",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/UI/HUD/CREATURE.GREEN2.DDS"}, -- Original "TEXTURES/UI/HUD/CREATURE.GREEN.DDS"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "CreatureUndiscovered",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/UI/HUD/CREATURE.RED2.DDS"}, -- Original "TEXTURES/UI/HUD/CREATURE.RED.DDS"
                            }
                        },
                    }
                },
            }
        },
    }
}