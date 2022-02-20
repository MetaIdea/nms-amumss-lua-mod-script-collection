GameVersion = "3_70"
ModeName = "MaxUpgradeFreighterSlotAllClasses"
Author = "Jackty89"
Description = "Tiny mod that allows any class of freighter to be upgraded to 48/21"

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] 			= ModeName..GameVersion..".pak",
    ["MOD_DESCRIPTION"]			= Description,   
    ["MOD_AUTHOR"]				= Author,
    ["NMS_VERSION"]				= GameVersion,
    ["MODIFICATIONS"] 			=
	{
		{
            ["MBIN_CHANGE_TABLE"] 	=
			{
                {
                    ["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] 	=
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Freighter","MaxInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"24","48"},
                                {"32","48"},
                                {"40","48"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Freighter","MaxTechInventoryCapacity"},
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"14","21"},
                                {"7","21"},
                                {"0","21"}
                            }
                        }
                    }
                }
            }
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE