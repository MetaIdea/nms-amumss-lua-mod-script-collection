NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BetterDusks.pak",
["MOD_AUTHOR"]				= "Florian B.",
["NMS_VERSION"]				= "3.?",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinNightFade",		"0.6"}, -- Original "0.62"
								{"MaxNightFade",		"0.85"}, -- Original "0.68"
								{"MinSunsetFade",		"0.43333333"}, -- Original "0.4"
								{"MaxSunsetFade",		"0.66666667"}, -- Original "0.5"
								{"MinSunsetHorizonFade",	"0.41666667"}, -- Original "0.4"
								{"MaxSunsetHorizonFade",	"0.66666667"}, -- Original "0.5"
								{"MinSunsetAtmosphereFade",	"0.46666667"}, -- Original "0.4"
								{"MaxSunsetAtmosphereFade",	"0.73333333"}, -- Original "0.5"
								{"MinSunsetColourFade",		"0.5"}, -- Original "0.65"
								{"MaxSunsetColourFade",		"0.66666667"}, -- Original "0.7"
								{"AmbientFactor",		"0.4"}, -- Original "0.4"
								{"SunClampAngle",		"90"}, -- Original "55"
								{"HorizonMultiplier",		"1"}, -- Original "1"
								{"DuskHorizonMultiplier",	"0.9"}, -- Original "1.2"
								{"NightHorizonMultiplier",	"0.1"}, -- Original "1.554867"
							}	
						},
					}
				},
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\DUSKSKYCOLOURS.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GenericSettings","Settings","SkyColour"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.124"},
								{"G",	"0.355"},
								{"B",	"0.5"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenericSettings","Settings","SkyUpperColour"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0.007"},
								{"B",	"0.05"},
								{"A",	"1"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenericSettings","Settings","SkySolarColour"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.144"},
								{"G",	"0.392"},
								{"B",	"0.65"},
								{"A",	"1"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenericSettings","Settings","HorizonColour"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.903"},
								{"G",	"0.832"},
								{"B",	"0.253"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenericSettings","Settings","LightColour"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
								{"A",	"0"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenericSettings","Settings","SkyGradientSpeed"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"2"},
								{"y",	"1"},
								{"z",	"1"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenericSettings","Settings","CloudColour1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.2"},
								{"G",	"0.2"},
								{"B",	"0.3"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenericSettings","Settings","CloudColour2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.1"},
								{"G",	"0.1"},
								{"B",	"0.15"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PerBiomeSettings","Swamp","Settings","SkyColour"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.324"},
								{"G",	"0.411"},
								{"B",	"0.643"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PerBiomeSettings","Swamp","Settings","SkyUpperColour"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.043"},
								{"G",	"0.141"},
								{"B",	"0.256"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PerBiomeSettings","Swamp","Settings","HorizonColour"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.052"},
								{"G",	"0.17"},
								{"B",	"0.308"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PerBiomeSettings","Swamp","Settings","CloudColour1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.1"},
								{"G",	"0.1"},
								{"B",	"0.2"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PerBiomeSettings","Swamp","Settings","CloudColour2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.1"},
								{"G",	"0.1"},
								{"B",	"0.2"},
							}	
						},
					}
				},
			}
		},
	}	
}