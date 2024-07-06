Author = "PakMack"
ModName = "Silent Planet"
BaseDescription = "Removes sounds from certain enviroments"
GameVersion = "4.50"


["MBIN_FILE_SOURCE"]     = "GCSKYGLOBALS.GLOBALS.MBIN",
            ["EXML_CHANGE_TABLE"]     = {{
                ["PRECEDING_KEY_WORDS"] = "",
                ["VALUE_CHANGE_TABLE"]    = {
                    {"ExtremeAudioLevel",         "0.0"},       -- Original "0.3"
                    {"StormAudioLevel",           "0.0"}        -- Original "0.5"
                }
            }}