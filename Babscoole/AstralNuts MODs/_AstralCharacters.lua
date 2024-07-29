NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_AstralCharacters.pak",
["MOD_AUTHOR"]              = "AstralNut",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.01.1",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCHARACTERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CharacterTurnSpeed",    "2.8"},
                                {"CharacterRunTurnSpeed", "8.4"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GroundWalkSpeed",                "2.8"},
                                {"GroundRunSpeed",                 "7.18"},
                                {"DoPlayerAppearInVehicleEffect",  "True"},
                                {"EnableLeaning",                  "True"},
                            }
                        },
                    }
                },
            }
        }
    }
}