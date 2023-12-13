
--[[ Summery Description:
Refiners are SLOW at their task, regardless of the size and power of them.
This cuts 90% off the time to do their operation.
What took 5 minutes, now takes seconds.
]]--

-- 0.5 = faster
-- 2 = would take two times to produce same result
-- don't use 0, refiner won't work
REFINER_TIME_FACTOR = 0.1

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "G_Speed_Increase_Refiners.pak",
    ["MOD_AUTHOR"]      = "Mjjstral",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = {"METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            --["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "", 
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"TimeToMake",  REFINER_TIME_FACTOR}
                            }
                        }
                    }
                }
            }
        }
    }
}