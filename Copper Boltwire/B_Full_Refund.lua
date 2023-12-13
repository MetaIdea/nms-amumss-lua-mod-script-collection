
--[[ Summery Description:
When deconstructing upgrades and modules in inventory and the like, vanilla only gives you half.
HOWEVER, this TINY little mod gives you a FULL refund of the materials used in the making of the module/upgrade.
More reason the stacking mod was added to this mod collection.
]]--

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "B_Full_Refund.pak", 
    ["MOD_AUTHOR"]      = "Lo2k",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    =  {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
                                                "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",},
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"DeconstructRefundPercentage", "1.0"} --original 0.5
                            }
                        }
                    }
                }
            }
        }
    }
}