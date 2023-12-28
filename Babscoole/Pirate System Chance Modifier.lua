--Probability variables by star type/color
YELLOW = 0.25  --original 0.25
GREEN = 0.15  --original 0.15
BLUE = 0.15 --original 0.15
RED = 0.5  --original 0.5

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Pirate System Chance Modifier.pak",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.08",
["MODIFICATIONS"] =
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
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", YELLOW},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "PirateSystemProbability",
                            ["LINE_OFFSET"] = "+2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", GREEN},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "PirateSystemProbability",
                            ["LINE_OFFSET"] = "+3",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", BLUE},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "PirateSystemProbability",
                            ["LINE_OFFSET"] = "+4",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", RED},
                            }
                        },
                    }
                }
            }
        }
    }
}
