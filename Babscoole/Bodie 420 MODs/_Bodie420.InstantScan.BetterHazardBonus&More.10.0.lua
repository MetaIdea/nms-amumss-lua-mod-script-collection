NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Bodie420.InstantScan.BetterHazardBonus&More.10.0.pak",
["MOD_AUTHOR"]    = "Bodie420",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.99",
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
                                {"ShipScanPlanetRechargeMultiplier",              "0.001"},
                                {"ShipScanSpaceRechargeMultiplier",               "0.01"},
                                {"PartyPlanetSearchDistance",                     "2000"},
                                {"MaxActiveWeatherHazardGifts",                   "100"},
                                {"WeatherHazardGiftMaxDistance",                  "10000"},
                                {"WeatherHazardGiftLifeTime",                     "9999"},
                                {"StormBonusJetpackMod",                          "0.0001"},
                                {"StormBonusSprintMod",                           "0.0001"},
                                {"StormBonusMiningHeatMod",                       "0.0001"},
                                {"StormBonusMiningAmountMod",                     "0.0001"},
                                {"MaxDistanceForLadderTeleport",                  "-1"},
                                {"AutoTranslateWordChance",                       "100"},
                                {"MissionSurveyMaxGuidanceDistance",              "99999"},
                                {"MissionSurveyMaxGuidanceDistanceWorms",         "99999"},
                                {"MissionSurveyScanRangeMultiplier",              "1"},
                                {"MissionSurveyScanSpeed",                        "9"},
                                {"SurveyScanMinSpeed",                            "100"},
                                {"SurveyScanMaxSpeed",                            "100"},
                                {"SurveyMaxDistance",                             "1000"},
                                {"AllowSpaceScanEvents",                          "True"},
                                {"NormalModeHeatBonus",                           "9"},
                                {"OverheatDecay",                                 "20"},
                                {"RefinerProductsMadeInTime",                     "9999"},
                                {"RefinerSubsMadeInTime",                         "9999"},
                                {"RefinerProductsMadeInTimeSurvival",             "9999"},
                                {"RefinerSubsMadeInTimeSurvival",                 "9999"},
                                {"HmdInteractionRangeMinDistance",                "500"},
                                {"FreighterRequiresRGBHyperdriveUpgrades",        "False"},
                                {"MaxNumSameGroupTech",                           "48"},
                                {"TerrainResourceScanTime",                       "3"},
                                {"TerrainResourceScanRange",                      "10000"},
                                {"TerrainResourceCompassRange",                   "12000"},
                                {"BinocMinScanTime",                              "0.1"},
                                {"BinocScanTime",                                 "0.1"},
                                {"BinocCreatureScanTime",                         "0.1"},
                                {"CriticalHitMultiplier",                         "4"},
                                {"InteractionDescriptionTextTime",                "0.01"},
                                {"InteractionMinTimeForResponseText",             "0.01"},
                                {"SpeedReadoutMultiplier",                        "3"},
                                {"SpaceSpeedReadoutMultiplier",                   "3"},
                                {"CombatSpeedReadoutMultiplier",                  "3"},
                                {"JumpToCenterFuelCost",                          "0"},
                                {"HUDLabelTime",                                  "5"},
                                {"FourthRaceSpawnPercentage",                     "100"},
                                {"DerelictPulseEncounterAtmosphericEffectChance", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"BulletTracer", "GcTracerData.xml"},
                                {"ShipTracer",   "GcTracerData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
  
                                {"DamageMaxDistance", "1000000"},
                                {"DamageMin",         "1000000"},
                                {"DamageMax",         "1000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Portal", "GcPortalData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"KnowAllRunes", "True"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienShipEvolveCosts"},
                            ["REPLACE_TYPE"] = "ALLINSIDESECTION",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"}
                            }
                        },
                    }
                },
            }
        }
    }
}