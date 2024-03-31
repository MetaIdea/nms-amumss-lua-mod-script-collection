NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_AtmosphericSwimming-Aurfram.pak",
["MOD_AUTHOR"]    = "Aurfram",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.63",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"JetpackMaxSpeed",                       "15"},
                                {"JetpackFillRate",                       "100"},
                                {"JetpackFillRateMidair",                 "100"},
                                {"JetpackFillRateSpaceStationMultiplier", "100"},
                                {"JetpackFillRateFleetMultiplier",        "100"},
                                {"JetpackFillRateNexusMultiplier",        "100"},
                                {"MaxFallSpeed",                          "1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\PLAYER\PLAYERCHARACTERSTATETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Airborne", "GcPlayerCharacterStateData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Locomotion0H",   "0H_SWIM_LOCO"},
                                {"Locomotion1H",   "1H_SWIM_LOCO"},
                                {"Locomotion2H",   "1H_SWIM_LOCO"},
                                {"AimTree2HPitch", "1H_AIM_SPINE_P"},
                                {"HitReact0H",     ""},
                                {"HitReact1H",     ""},
                                {"HitReact2H",     ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Riding", "GcPlayerCharacterStateData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Locomotion0H",   "0H_SWIM_LOCO"},
                                {"Locomotion1H",   "1H_SWIM_LOCO"},
                                {"Locomotion2H",   "1H_SWIM_LOCO"},
                                {"AimTree1HPitch", "1H_AIM_SPINE_P"},
                                {"AimTree2HPitch", "1H_AIM_SPINE_P"},
                            }
                        },
                    }
                },
            }
        },
    }
}