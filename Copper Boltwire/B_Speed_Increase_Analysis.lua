
--[[ Summery Description:
significantly increases the analysis visors scan speed by nearly 3 times the speed.
It really doesn't do much else. It's a god send!
No longer will you be staring at a rock for 3-5 seconds to figure out that it indeed IS a rock...
Now it only takes 2-thirds of a second. HUGE improvement!
]]--

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "B_Speed_Increase_Analysis.pak",
    ["MOD_AUTHOR"]      = "Mjjstral", -- At least I THINK it was Mjjstral who wrote this mod...
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"BinocTimeBeforeScan",                 "0.2"}, -- Original "0.5"
                                {"BinocMinScanTime",                    "0.7"}, -- Original "3.9"
                                {"BinocScanTime",                       "0.7"}, -- Original "3.9"
                                {"BinocCreatureScanTime",               "0.7"}, -- Original "3.2"
                                {"BinocularScanTargetInitialFadeTime",  "0.2"}, -- Original "0.5"
                                {"BinocularScanTargetFadeTime",         "0.2"}, -- Original "0.5"
                                --{"TerrainResourceScanTime",             "30"}, -- Original "30"
                                --{"TerrainResourceScanRange",            "1200"}, -- Original "1200"
                            }
                        }
                    }
                }
            }
        }
    }
}