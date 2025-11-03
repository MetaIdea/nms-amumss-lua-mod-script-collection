--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_UIHazardFX_v606-A",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.06",
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
                            ["PRECEDING_KEY_WORDS"] = {"WonderValueModifiersCreature"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IntelligenceMax", "21.200001"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MainMenuSaveIconPosition"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "50.799999"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CrosshairTargetLockSizeSpecific"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bolt",         "0.000000"},
                                {"Shotgun",      "160.000000"},
                                {"Burst",        "260.000000"},
                                {"Rail",         "0.000000"},
                                {"Cannon",       "100.000000"},
                                {"Laser",        "0.000000"},
                                {"Grenade",      "0.000000"},
                                {"MineGrenade",  "0.000000"},
                                {"Scope",        "0.000000"},
                                {"FrontShield",  "0.000000"},
                                {"Melee",        "0.000000"},
                                {"TerrainEdit",  "0.000000"},
                                {"SunLaser",     "0.000000"},
                                {"Spawner",      "0.000000"},
                                {"SpawnerAlt",   "0.000000"},
                                {"SoulLaser",    "0.000000"},
                                {"Flamethrower", "0.000000"},
                                {"StunGrenade",  "0.000000"},
                                {"Stealth",      "0.000000"},
                                {"FishLaser",    "0.000000"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HazardWarningPulseStrength",   "1.200000"},
                                {"HazardPainPulseStrength",      "1.300000"},
                                {"AlwaysOnHazardThreshold",      "0.000000"},
                                {"AlwaysOnHazardStrengthHeat",   "0.800000"},
                                {"AlwaysOnHazardStrengthCold",   "1.150000"},
                                {"AlwaysOnHazardMultiplierHeat", "1.200000"},
                                {"AlwaysOnHazardMultiplierCold", "1.150000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HazardNormalMaps"},
                            ["SECTION_ACTIVE"] = {"5"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HazardNormalMaps", "TEXTURES/EFFECTS/FULLSCREEN/HAZARDS/RADIATION.NORMAL.DDS"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HazardHeightmaps"},
                            ["SECTION_ACTIVE"] = {"5"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HazardHeightmaps", "TEXTURES/EFFECTS/FULLSCREEN/HAZARDS/RADIATION.REFRACT.DDS"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HazardNormalMapsVR"},
                            ["SECTION_ACTIVE"] = {"5"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HazardNormalMapsVR", "TEXTURES/EFFECTS/FULLSCREEN/HAZARDS/RADIATION.NORMAL.DDS"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HazardHeightmapsVR"},
                            ["SECTION_ACTIVE"] = {"5"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HazardHeightmapsVR", "TEXTURES/EFFECTS/FULLSCREEN/HAZARDS/RADIATION.REFRACT.DDS"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HazardDistortionParams"},
                            ["SECTION_ACTIVE"] = {"2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "7.000000"},
                                {"Y", "0.600000"},
                                {"Z", "0.005000"},
                                {"W", "1.000000"},
                            }
                        },
                    }
                },
            }
        },
    }
}