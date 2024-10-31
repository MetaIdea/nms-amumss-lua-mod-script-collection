
NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 		= "SemiRealisticDusks.pak",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]		= "Florian B.",
  ["NMS_VERSION"]		= "3.68",
  ["MODIFICATIONS"] 		=
	{
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
								{"G",	"0"},
								{"B",	"0"},
								{"A",	"0.9"},
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
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenericSettings","Settings","SkyGradientSpeed"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"5"},
								{"y",	"1"},
								{"z",	"1"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenericSettings","Settings","CloudColor1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenericSettings","Settings","SkySolarColour"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.192"},
								{"G",	"0.512"},
								{"B",	"1"},
							}	
						},
					}
				},
			}
		},
	}
}