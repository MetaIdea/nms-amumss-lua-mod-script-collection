NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "CapitalSystemFreighters.pak",
  ["MOD_AUTHOR"]			= "revaneldaris9",
  ["NMS_VERSION"]			= "4.0",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\\SIMULATION\\SCENE\\EXPERIENCESPAWNTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns","Role","Role","Role","Role","Role"},
							["SECTION_UP"] = 5,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AIShipRole","CapitalFreighter"},	-- Original "Freighter"
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