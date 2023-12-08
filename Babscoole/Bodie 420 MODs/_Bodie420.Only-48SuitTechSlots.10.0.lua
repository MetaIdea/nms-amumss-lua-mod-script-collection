NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Bodie420.Only-48SuitTechSlots.10.0.pak",
["MOD_AUTHOR"]    = "Bodie420",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.97",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
                        "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlayerPersonalInventoryTechWidth",  "8"},
                                {"PlayerPersonalInventoryTechHeight", "6"},
                            }
                        }
                    }
                }
            }
        }
    }
}