--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "CapitalSystemFreighters.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "",         --optional, for reference
  ["MOD_AUTHOR"]			= "",         --optional, for reference
  ["NMS_VERSION"]			= "3.0",      --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] = "+186",	-- not reliable for future builds
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AIShipRole","CapitalFreighter"},	-- Original "Freighter"
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] = "+208",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x","1"},	-- Original "2"
								{"y","1"},	-- Original "5"
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
							["LINE_OFFSET"] = "+212",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y","0"},	-- Original "2"
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