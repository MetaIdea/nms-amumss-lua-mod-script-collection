NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_Flashlight_v465-A.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.65",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpaceSpeedReadoutMultiplier",  "1"},
                                {"TorchFoV",                     "50"},
                                {"TorchStrength",                "8"},
                                {"TorchDimFoV",                  "25"},
                                {"UndergroundTorchFoV",          "50"},
                                {"UndergroundTorchStrength",     "8"},
                                {"CombatSpeedReadoutMultiplier", "1"},
                                {"TorchOffsetX",                 "0"},
                            }
                        },
						{
							["PRECEDING_KEY_WORDS"] =
                            {
                                {"FlybyTimers", "High"},
                                {"FlybyTimers", "Normal"},
                                {"FlybyTimers", "Low"},
                            },
							["VALUE_CHANGE_TABLE"] =
							{
								{"y", "@*2"},
							}
						},
                    },
                },
            },
        },
    },
}