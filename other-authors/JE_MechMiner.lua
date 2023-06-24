Author = "Jaggid Edje"
ModName = "MechMiner"
ModNameSub = "JE"
BaseDescription = "Adjusts the fuel maximum and charge of the Minotaur Bore"
GameVersion = "4.36"
-- ModVersion = "v4.36"
FileSource1 = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

MB_Charge = 1000 -- default is 200
MB_Multipler = 5  -- Default is 1

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = ModNameSub.."_"..ModName..".pak",
    ["MOD_DESCRIPTION"]    = BaseDescription,
    ["MOD_AUTHOR"]        = Author,
    ["NMS_VERSION"]        = GameVersion,
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = FileSource1,
                    ["EXML_CHANGE_TABLE"] = {					
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "MECH_MINER"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ChargeAmount",	MB_Charge},
								{"ChargeMultiplier",	MB_Multipler}
							}
						}
						
                    }
                }
			}
        }
    }
}