-- File Settings --
FileName = "Keep Talking Polo E7.pak" -- can be changed to the name you want the mod but make sure to keep .pak at the end
ModAuthor = "Reikokuu" -- only for reference
LuaAuthor = "Reikokuu" -- only for reference
ModMaintenance = "Babscoole"
NMS_Version = "3.97" -- only for reference

-- File Sources --
FileSource1 = "METADATA/SIMULATION/MISSIONS/SEASONALMISSIONTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = FileName,
  ["MOD_AUTHOR"]      = ModAuthor,
  ["LUA_AUTHOR"]      = LuaAuthor,
  ["MOD_MAINTENANCE"] = ModMaintenance,
  ["NMS_VERSION"]     = NMS_Version,
  ["MODIFICATIONS"]   =                     
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
                    ["MBIN_FILE_SOURCE"] = {FileSource1},
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "D_ROGUE_REPEAT_2", "Cost", "C_ROGUE_M1"},
                            ["VALUE_MATCH"] = "False",
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"KeepOpen", "True"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "D_ROGUE_REPEAT_2", "Cost", "C_ROGUE_M2"},
                            ["VALUE_MATCH"] = "False",
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"KeepOpen", "True"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "D_ROGUE_REPEAT_2", "Cost", "C_ROGUE_M3"},
                            ["VALUE_MATCH"] = "False",
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"KeepOpen", "True"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "D_ROGUE_INTRO_3", "Cost", "C_ROGUE_M1"},
                            ["VALUE_MATCH"] = "False",
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"KeepOpen", "True"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "D_ROGUE_INTRO_3", "Cost", "C_ROGUE_M2"},
                            ["VALUE_MATCH"] = "False",
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"KeepOpen", "True"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "D_ROGUE_INTRO_3", "Cost", "C_ROGUE_M3"},
                            ["VALUE_MATCH"] = "False",
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"KeepOpen", "True"},
                            },
                        },
                    },
                }
            },
        }
    },
}