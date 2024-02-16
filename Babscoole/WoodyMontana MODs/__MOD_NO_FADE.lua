NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "__MOD_NO_FADE.pak",
["MOD_DESCRIPTION"] = "Tweak that removes the fading effect from terrain and objects",
["MOD_AUTHOR"]      = "WoodyMontana",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.50",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TerrainFadeTime",       "0"},  --Original "2"
                                {"TerrainFadeTimeInShip", "0"},  --Original "2"
                                {"CreatureFadeTime",      "0"},  --Original "1.5"
                                {"FloraFadeTimeMin",      "0"},  --Original "0.6"
                                {"FloraFadeTimeMax",      "0"},  --Original "2.25"
                            }
                        },
                    }
                }
            }
        }
    }
}