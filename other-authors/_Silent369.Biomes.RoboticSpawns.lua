local modfilename = "Biomes.RoboticSpawns"
local lua_author  = "Silent"
local lua_version = "v1.1"
local mod_author  = "Silent369"
local nms_version = "3.9x"
local description = "Robotic life forms spawn in more biomes and more often within Empty Systems."

--|-----------------------------------------------------------------------------------------
--| Probability / Scale Multiplier
--|-----------------------------------------------------------------------------------------

_Probability     = 0.6  --Original "0.1"
_Min_Scale       = 3    --Original "0.4"
_Max_Scale       = 12   --Original "3"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]         = "_"..modfilename..lua_version..".pak",
    ["LUA_AUTHOR"]           = lua_author,
    ["MOD_AUTHOR"]           = mod_author,
    ["NMS_VERSION"]          = nms_version,
    ["MOD_DESCRIPTION"]      = description,
    ["MODIFICATIONS"]        =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                    --|-----------------------------------------------------------------------------------------
                    --| Creature Generation Data MBIN
                    --|-----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"EmptySystemSpecific", "GcCreatureGenerationOptionalWeightedList.xml"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Probability",     _Probability},
                            }
                        },
                    }
                },
                    --|-----------------------------------------------------------------------------------------
                    --| Creature Data Table MBIN
                    --|-----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id", "ROBOTANTELOPE", "HerbivoreProbabilityModifier", "GcCreatureRoleFrequencyModifier.xml"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CreatureRoleFrequencyModifier",     "High"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Id", "ROBOTANTELOPE"},
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinScale",        _Min_Scale}, --Original "0.4"
                                {"MaxScale",        _Max_Scale}, --Original "3"
                            }
                        },
                    }
                },
                    --|-----------------------------------------------------------------------------------------
                    --| Ground Table Robot MBIN
                    --|-----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEROBOT.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["MATH_OPERATION"]      = "*",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IncreasedSpawnDistance",    "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {""},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CreatureActiveTime",  "AnyTime"},
                                {"ProbabilityOfBeingEnabled", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ForceID", "ROBOTANTELOPE"},
                            ["PRECEDING_KEY_WORDS"] = {"MinSize"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CreatureSizeClass",    "Large"}, --Original "Medium"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ForceID", "ROBOTANTELOPE"},
                            ["PRECEDING_KEY_WORDS"] = {"MaxSize"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CreatureSizeClass",     "Huge"}, --Original "Medium"
                            }
                        },
                    }
                },
            }
        },
    }
}
