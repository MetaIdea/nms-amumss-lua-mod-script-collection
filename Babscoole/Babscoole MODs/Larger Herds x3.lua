MULTIPLIER = 3

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Larger Herds x3",
["MOD_AUTHOR"]    = "courtykat & Babscoole",
["NMS_VERSION"]   = "6.00",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
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
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\CAVE\CAVETABLECOMMON.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEBUSY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLECOMMON.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEDEAD.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEGIANT.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEPREDATORS.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEPREHISTORIC.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEPREYBLOBS.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLESMALLPREDATORS.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLESPARSE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\UNUSED\GROUNDTABLEALLCOW.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\UNUSED\GROUNDTABLEDINOSAURS.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\UNUSED\GROUNDTABLEGRUNTLAND.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLECOMMON.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLEEXTRA.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLEWHALE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEALIEN.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEBONE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEARTHROPODHERB.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEARTHROPODPRED.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEARTHROPODWORLD.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEBUTTERFLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREGIANT.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVORELARGE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREMED.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVORESMALL.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEMAYBEBUTTERFLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLANTCATHERB.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLANTCATPRED.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLANTCATWORLD.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORMED.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPREDATORLARGE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPREDATORMED.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEROBOT.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEWALKINGBUILDING.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECOMMON.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECRABS.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEEXTRAFISHBASE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEEXTRAFISHDEEPFISH.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEEXTRAFISHGLOW.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEEXTRAFISHNOGLOW.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEJUSTFISH.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEWATERALLGLOW.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEWATERWORLDBASE.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEWATERWORLDDEEPFISH.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEWATERWORLDGLOW.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEWATERWORLDNOGLOW.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinGroupSize", MULTIPLIER},
                                {"MaxGroupSize", MULTIPLIER},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\AIR\AIRTABLESANDWORM.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinGroupSize", MULTIPLIER},
                                {"MaxGroupSize", MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureType", "Weird"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRD.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDBUTTERFLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDCRYSTAL.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDCRYSTALPREDATOR.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDFLOAT.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDROLL.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\GROUND\GROUNDTABLEWEIRDROLLPREDATOR.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDBUTTERFLY.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDCRYSTAL.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDCRYSTALPREDATOR.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDFLOAT.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDROLL.MBIN",
                        "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDROLLPREDATOR.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinGroupSize", MULTIPLIER},
                                {"MaxGroupSize", MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureType", "MiniDrone"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\SIMULATION\ECOSYSTEM\DEPRECATE\UNDERWATER\UNDERWATERTABLESEASNAKE.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinGroupSize", MULTIPLIER},
                                {"MaxGroupSize", MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureType", "SpaceFloater"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERDMED.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription"},
                            ["SECTION_ACTIVE"] = {0},
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinGroupSize", MULTIPLIER},
                                {"MaxGroupSize", MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinGroupSize", "12"},
                                {"MaxGroupSize", "24"},
                            }
                        },
                    }
                },
            }
        },
    },
}