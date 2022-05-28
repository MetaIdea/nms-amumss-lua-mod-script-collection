NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ClearWeather.pak",
["MOD_AUTHOR"]				= "Biostar Ten-ExhaustBearing on Nexus",
["NMS_VERSION"]				= "3.90",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERLIST.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "Dust",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",					"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MBIN"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Humid",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",					"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MBIN"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Snow",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",					"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MBIN"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Toxic",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",					"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MBIN"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Scorched",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",					"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MBIN"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "Radioactive",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",					"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MBIN"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "RedWeather",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",					"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MBIN"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "GreenWeather",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",					"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MBIN"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "BlueWeather",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",					"METADATA/SIMULATION/SOLARSYSTEM/WEATHER/CLEARWEATHER.MBIN"},
							}
						},
					}
				}, --9 global replacements
			}
		},
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE