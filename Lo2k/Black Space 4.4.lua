NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "Black Space 4.4.pak",
	["MOD_AUTHOR"]		= "Lo2k",
	["MOD_DESCRIPTION"]	= "This mod makes space black",
	["NMS_VERSION"]		= "7.0",	
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
			    {
					["MBIN_FILE_SOURCE"] 	= {"GLOBALS\GCGALAXYGLOBALS.GLOBAL.MBIN",},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"]  = {"Map Large Area Primary Default Colours"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.000000"},
								{"G",	"0.000000"},
								{"B",	"0.000000"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"Map Large Area Secondary Default Colours"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.000000"},
								{"G",	"0.000000"},
								{"B",	"0.000000"},
							},
						},					
					}   
				},
	        	{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACESKYCOLOURS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACERARESKYCOLOURS.MBIN",
					},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"]  = {"TopColour"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.03"},
								{"G",	"0.03"},
								{"B",	"0.03"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"MidColour"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.02"},
								{"G",	"0.02"},
								{"B",	"0.02"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"BottomColour"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"TopColourPlanet"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.03"},
								{"G",	"0.03"},
								{"B",	"0.03"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"MidColourPlanet"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.02"},
								{"G",	"0.02"},
								{"B",	"0.02"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"BottomColourPlanet"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
							},
						},		
						{
							["PRECEDING_KEY_WORDS"]  = {"CloudColour"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
							},
						},	
						{
							["PRECEDING_KEY_WORDS"]  = {"LightColour"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"1"},
								{"G",	"1"},
								{"B",	"1"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"NebulaColour1"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
							},
						},		
						{
							["PRECEDING_KEY_WORDS"]  = {"NebulaColour2"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
							},
						},	
						{
							["PRECEDING_KEY_WORDS"]  = {"NebulaColour3"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"0"},
								{"B",	"0"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"FogColour"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.025"},
								{"G",	"0.707"},
								{"B",	"1"},
							},
						},		
						{
							["PRECEDING_KEY_WORDS"]  = {"FogColour2"},
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.025"},
								{"G",	"0.707"},
								{"B",	"1"},
							},
						},	
							
					}   
				} 
			},
		},
	},
}