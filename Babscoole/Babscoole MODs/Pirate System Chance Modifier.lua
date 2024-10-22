--Probability variables by star type/color
YELLOW = 0.30 --original 0.25
GREEN  = 0.2 --original 0.15
BLUE   = 0.2 --original 0.15
RED    = 0.6  --original 0.5
PURPLE = 0    --original 0

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Pirate System Chance Modifier.pak",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.65",
["MOD_DESCRIPTION"] = "Change probability of system being Outlaw\Pirate",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "PirateSystemProbability",
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Yellow", YELLOW},
                                {"Green",  GREEN},
                                {"Blue",   BLUE},
                                {"Red",    RED},
                                {"Purple", PURPLE},
                            }
                        },
                    }
                }
            }
        }
    }
}
