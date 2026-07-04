-- Oceanus Arena Red Initiate / Pet Battler daily lock bypass
-- AMUMSS Lua script for No Man's Sky
-- IMPORTANT: Use this file by itself. Remove/disable older Oceanus Lua scripts from ModScript first.

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "_OceanusChallengeUnlocker",
    ["MOD_AUTHOR"]      = "Moriggan",
    ["LUA_AUTHOR"]      = "Moriggan",
    ["NMS_VERSION"]     = "6.45",
    ["MOD_DESCRIPTION"] = "Keeps the Oceanus/Nexus Pet Battler daily challenge option available Always.",
    ["GLOBAL_INTEGER_TO_FLOAT"] = "PRESERVE",

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\RECURRINGMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- Daily option gate in D_NEXUS_PB_1:
                        -- Change the DONE_PB_DAILY test to a condition that remains true for normal saves.
                        -- Valid TkEqualityEnum value used here: GreaterEqual.
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "D_NEXUS_PB_1", "Name", "UI_NEXUSGT_PB_DAILY_OPT_A", "Stat", "DONE_PB_DAILY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Level", "0"},
                                {"EqualityEnum", "GreaterEqual"},
                            }
                        },

                        -- Prevent the mission from adding the used-daily stat after a win.
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "D_NEXUS_PB_1", "Stat", "DONE_PB_DAILY", "Amount", "1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Amount", "0"},
                            }
                        },

                        -- Allow the daily manager to restart the battle child mission if it evaluates this reward path again.
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "DM_NEXUS_PB", "Mission", "D_NEXUS_PB_1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Restart", "true"},
                            }
                        },

                        -- Allow mission restart from the battle win watcher stage.
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "D_NEXUS_PB_1", "Stat", "PB_D_NEXUS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ForceAllowMissionRestart", "true"},
                            }
                        },
                    }
                },
            }
        }
    }
}