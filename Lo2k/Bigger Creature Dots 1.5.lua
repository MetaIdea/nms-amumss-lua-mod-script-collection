NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "Bigger Creature Dots 1.5.pak",
    ["MOD_DESCRIPTION"]    = "Increases creature dot sizes",
    ["MOD_AUTHOR"]        = "Lo2k",
    ["NMS_VERSION"]        = "3.84",
    ["MODIFICATIONS"]    = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\HUD\SCANNERICONS.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CreatureDiscovered","Main"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Filename","TEXTURES/UI/HUD/CREATURE.GREEN2.DDS"}
                            }
                        }, 
						{
                            ["PRECEDING_KEY_WORDS"] = {"CreatureUndiscovered","Main"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Filename","TEXTURES/UI/HUD/CREATURE.RED2.DDS"}
                            }
                        },
                    }
                },
            }
        },
    }
}