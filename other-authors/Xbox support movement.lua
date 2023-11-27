NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Xbox realistic movement.pak",
["MOD_AUTHOR"]    = "isturnburg",
["LUA_AUTHOR"]    = "isturnburg",
["NMS_VERSION"]   = "4.45",
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
                                {"GroundWalkSpeed",           "4.9"},
                                {"GroundRunSpeed",            "7.9"},
                                {"CharacterTurnSpeed",        "8.5"},
			        {"CharacterJetpackTurnSpeed", "18"},
				{"TimeAfterDeathRagdollIsEnabledForward", "0.0001"},
				{"TimeAfterDeathRagdollIsEnabledBackward", "0.00013"},
				{"TimeAfterDeathRagdollIsEnabledWhenBlocked", "0.02"},
				{"MinStickForIntoJogAnim", "7.0"},
				{"SmoothVelocitySpeed", "0.3"},
                                {"AnimWalkSpeed", "4.5"},
				{"AnimRunSpeed", "1"},
			        {"AnimWalkToRunSpeed", "0.5"},
                            }
                        },
                    }
                },
            }
        },
    }
}