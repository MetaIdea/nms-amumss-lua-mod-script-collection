--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 		= "MoreRealisticColdWeather.pak",
  ["MOD_AUTHOR"]		= "Florian B.",    
  ["NMS_VERSION"]		= "3.42",
  ["MODIFICATIONS"] 		= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak", --example, only one pak file here -OPTIONAL
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SNOWWEATHER.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Ambient"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Normal",	"-8"},
								{"Extreme",	"-30"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Cave"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Normal",	"-5"},
								{"Extreme",	"-8"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Water"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Normal",	"-25"},
								{"Extreme",	"-40"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Storm"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Normal",	"-22"},
								{"Extreme",	"-55"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Night"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Normal",	"-15"},
								{"Extreme",	"-45"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"HazardModifiers","Temperature"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Normal",	"2"},
								{"Extreme",	"3"},
							}	
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE