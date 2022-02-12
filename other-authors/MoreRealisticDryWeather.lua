--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 		= "MoreRealisticDryWeather.pak",
  ["MOD_AUTHOR"]		= "Florian B.",    
  ["NMS_VERSION"]		= "3.42",
  ["MODIFICATIONS"] 		= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak", --example, only one pak file here -OPTIONAL
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\DUSTWEATHER.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Ambient"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Normal",	"35"},
								{"Extreme",	"50"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Storm"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Normal",	"48"},
								{"Extreme",	"53"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Water"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Normal",	"12"},
								{"Extreme",	"12"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Cave"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Normal",	"5"},
								{"Extreme",	"20"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Night"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Normal",	"-15"},
								{"Extreme",	"-25"},
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