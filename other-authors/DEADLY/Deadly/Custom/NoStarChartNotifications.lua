NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "NoStarChartNotifications.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Disables star chart and scanner tip messages. They appear once, but annoying asf.",
    ["NMS_VERSION"]     = "5.10",
    ["MODIFICATIONS"]   = {
        { -- search regexp: Property name="TooltipMessage" value="[a-zA-Z]+
            ["MBIN_CHANGE_TABLE"] = {
                { -- METADATA/SIMULATION/SCANNING/SCANEVENTTABLETUTORIAL.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SCANNING/SCANEVENTTABLETUTORIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "TooltipMessage", "TIP_WAYPOINT" },
                                { "TooltipMessage", "TIP_RESOURCE" },
                                { "TooltipMessage", "TIP_DAMAGEDMACHINE" },
                                -- { "TooltipMessage", "TIP_UNKNOWN" },
                                { "TooltipMessage", "UI_OUTPOST_TRADE" },
                                { "TooltipMessage", "UI_TREASURE_LOCATED" },
                                { "TooltipMessage", "UI_SETTLEMENT_LOCATED" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "TooltipMessage", "" },
                            }
                        },
                    }
                },
                { -- METADATA/SIMULATION/SCANNING/SCANEVENTTABLEPLANET.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SCANNING/SCANEVENTTABLEPLANET.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "TooltipMessage", "TIP_LIBRARY" },
                                { "TooltipMessage", "TIP_SHELTER" },
                                { "TooltipMessage", "TIP_BEACON" },
                                { "TooltipMessage", "TIP_TERMINAL" },
                                { "TooltipMessage", "TIP_WAYPOINT" },
                                -- { "TooltipMessage", "TIP_PLAQUE" },
                                { "TooltipMessage", "UI_TIP_TREASURERUIN" },
                                { "TooltipMessage", "TIP_DEBRIS" },
                                { "TooltipMessage", "UI_SETTLEMENT_LOCATED" },
                                -- { "TooltipMessage", "UI_DRONEHIVE_LOCATED" },
                                -- { "TooltipMessage", "UI_DRONEHIVE_DISABLED_LOCATED" },
                                { "TooltipMessage", "UI_CRASH_REVEAL_MSG" },
                                { "TooltipMessage", "UI_CAMP_REVEAL_MSG" },
                                -- { "TooltipMessage", "UI_BUILDER_SE_MSG" },
                                { "TooltipMessage", "TIP_MONOLITH" },
                                { "TooltipMessage", "TIP_RADIOTOWER" },
                                { "TooltipMessage", "TIP_FACTORY" },
                                { "TooltipMessage", "TIP_ABANDONED" },
                                { "TooltipMessage", "TIP_OUTPOST" },
                                { "TooltipMessage", "TIP_SHOP" },
                                { "TooltipMessage", "TIP_OBSERVATORY" },
                                { "TooltipMessage", "TIP_DISTRESSSIGNAL" },
                                -- { "TooltipMessage", "UI_CORE_ACT2_STEP8_OBJ2" },
                                { "TooltipMessage", "TIP_HARVESTER" },
                                { "TooltipMessage", "TIP_DEPOT" },
                                { "TooltipMessage", "TIP_DAMAGEDMACHINE" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "TooltipMessage", "" },
                            }
                        },
                    }
                },
                { -- METADATA/SIMULATION/SCANNING/SCANEVENTTABLESPACE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SCANNING/SCANEVENTTABLESPACE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "TooltipMessage", "TIP_RADIOTOWER" },
                                { "TooltipMessage", "TIP_FACTORY" },
                                { "TooltipMessage", "TIP_OUTPOST" },
                                { "TooltipMessage", "TIP_SHOP" },
                                { "TooltipMessage", "TIP_OBSERVATORY" },
                                { "TooltipMessage", "TIP_HARVESTER" },
                                { "TooltipMessage", "TIP_DEPOT" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "TooltipMessage", "" },
                            }
                        },
                    }
                },
                { -- METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "TooltipMessage", "TIP_MONOLITH" },
                                { "TooltipMessage", "TIP_RADIOTOWER" },
                                { "TooltipMessage", "TIP_FACTORY" },
                                { "TooltipMessage", "TIP_ABANDONED" },
                                { "TooltipMessage", "TIP_OUTPOST" },
                                { "TooltipMessage", "TIP_SHOP" },
                                { "TooltipMessage", "TIP_OBSERVATORY" },
                                { "TooltipMessage", "TIP_DISTRESSSIGNAL" },
                                -- { "TooltipMessage", "UI_CORE_ACT2_STEP8_OBJ2" },
                                { "TooltipMessage", "TIP_HARVESTER" },
                                { "TooltipMessage", "TIP_DEPOT" },
                                -- { "TooltipMessage", "TIP_UNKNOWN" },
                                { "TooltipMessage", "TIP_DAMAGEDMACHINE" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "TooltipMessage", "" },
                            }
                        },
                    }
                },
            }
        }
    }
}
