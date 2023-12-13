
--[[ Summery Description:
This mod changes the probability curve.
So normally, the probability curve leans toward a bad result.
This changes the curve to lean toward the better result.
]]--

WeightingCurve = "MinIsSuperRare"   --MaxIsRare

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "B_Black_Market_Best_X.pak",
    ["MOD_AUTHOR"]      = "Gumsk",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Quality","Illegal"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["LINE_OFFSET"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"WeightingCurve", WeightingCurve},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","UP_LASERX"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"NumStatsMax", 4},
                            }
                        },
                    }
                }
            }
        }
    }
}