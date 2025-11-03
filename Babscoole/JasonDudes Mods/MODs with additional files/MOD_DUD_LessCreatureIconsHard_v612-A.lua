--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_LessCreatureIconsHard_v612-A",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.12",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureDistanceAlpha", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\HUD\SCANNERICONS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CreatureUndiscovered", "GcScannerIcon"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "TEXTURES/UI/HUD/DUDCREATURE.RED.DDS"},
                            }
                        },
                    }
                },
            }
        },
    }
}