NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "FlourishingFauna-BiggerAnimals-NormalFlourish.pak",
["MOD_AUTHOR"]    = "Burryaga",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.68",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RideSpeedSlow",                      "0.5"},
                                {"RideSpeedFast",                      "2"},
                                {"MaxCreatureSize",                    "8"},
                                {"MaxEcosystemCreaturesNormal",        "40"},
                                {"MaxEcosystemCreaturesLow",           "20"},
                                {"FishSpeedMax",                       "5"},
                                {"MaxSpeed",                           "30"},
                                {"SpawnDistanceModifierForUnderwater", "0.1"},
                                {"DefaultSwimSpeed",                   "1"},
                                {"FastSwimSpeed",                      "2.5"},
                                {"DefaultWalkMoveSpeed",               "1"},
                                {"DefaultTrotMoveSpeed",               "2.5"},
                                {"DefaultRunMoveSpeed",                "5"},
                                {"PredatorWalkMoveSpeed",              "1"},
                                {"PredatorTrotMoveSpeed",              "3"},
                                {"PredatorRunMoveSpeed",               "6"},
                                {"SpawnDistAtMinSize",                 "40"},
                                {"MaxBirdsProportion",                 "0.15"},
                                {"HerdGroupSizeMultiplier",            "4"},
                                {"PauseBetweenCreatureSpawnRequests",  "5000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "1", 
                            ["VALUE_MATCH_OPTIONS"]= ">",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxPetSpeedScale", "2.4"},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "1", 
                            ["VALUE_MATCH_OPTIONS"]= "<=",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxPetSpeedScale", "1.5"},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL", 
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "@*2"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEBIGBIRD.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEBUSY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMON.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMONLIZARD.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMONSNAKE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGLIZARDONLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGSNAKESONLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\CAVE\CAVETABLECOMMON.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLEBUSY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLECOMMON.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLECOMMONLIZARD.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLECOMMONSNAKE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLEFLYINGLIZARDONLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLEFLYINGSNAKESONLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLESANDWORM.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\CAVE\CAVETABLECOMMON.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\FIEND\GROUNDTABLEFIEND.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEBUSY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLECOMMON.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEDEAD.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEGIANT.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEPREDATORS.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEPREHISTORIC.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEPREYBLOBS.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLESMALLPREDATORS.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLESPARSE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRD.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDBUTTERFLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDCRYSTAL.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDCRYSTALPREDATOR.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDFLOAT.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDROLL.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDROLLPREDATOR.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\TEST\GROUNDTABLEDIGGER.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\TEST\GROUNDTABLEDRILL.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\TEST\GROUNDTABLEFLOATER.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\TEST\GROUNDTABLEFLYINGBEETLE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\TEST\GROUNDTABLELARGEBUTTERFLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\TEST\GROUNDTABLEPLOW.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\TEST\GROUNDTABLERIDEABLE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\TEST\GROUNDTABLERIDEABLE2.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\TEST\GROUNDTABLERIDEABLE3.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\TEST\GROUNDTABLETEST.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\UNUSED\GROUNDTABLEALLCOW.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\UNUSED\GROUNDTABLEDINOSAURS.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\UNUSED\GROUNDTABLEGRUNTLAND.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\SENTINELS\GROUNDTABLESENTINELS.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLECOMMON.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLEEXTRA.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLESEASNAKE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLEWHALE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEALIEN.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEBONE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEBUTTERFLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREGIANT.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVORELARGE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREMED.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVORESMALL.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERDMED.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEMAYBEBUTTERFLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORMED.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPREDATORLARGE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPREDATORMED.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEROBOT.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEBUTTERFLOCK.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEBUTTERFLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEDIGGER.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEDRILL.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEFLOATER.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEFLYINGBEETLE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLELARGEBUTTERFLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEMOLE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEPETS.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEPLOW.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLERIDEABLE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLERIDEABLE2.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLERIDEABLE3.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLEROLLER.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLESMALLBIRD.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\TEST\GROUNDTABLETEST.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDBUTTERFLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDCRYSTAL.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDCRYSTALPREDATOR.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDFLOAT.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDROLL.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDROLLPREDATOR.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECOMMON.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECRABS.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEFLOCK.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEFLOCK2.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEFLOCK3.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEFLOCKSHARK.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLEJELLYFISH.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\TEST\UNDERWATERTABLESHARKEATSNAKE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALLINSIDESECTION",
                            ["SUB_LEVEL"] = 4,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Density", "Dense"},
                            }
                        },
                    }
                },
            }
        }
    }
}