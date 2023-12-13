
--[[ Summery Description:
Normally you can only put 3 upgrades/modules next to one another for the synergy bonus.
This mod increases said synergy limit to 99. A monstrous huge amount.
I could have made it 999 or 9999. But 99 is MORE then enough, believe you me.
So um... enjoy!
]]--

TechnologyStackingSize = 99 --original "3", change for new value 

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "B_Stacking_Technology_Modules.pak",
    ["MOD_AUTHOR"]      = "Wbertro", --suggested by Seekker
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
                                {"MaxNumSameGroupTech", TechnologyStackingSize} --Original "3"
                            }
                        }
                    }
                }
            }
        }
    }
}