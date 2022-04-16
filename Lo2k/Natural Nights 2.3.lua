NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Natural Nights 2.3.pak", 
["MOD_AUTHOR"]				= "Degraaaff & Lo2k",
["NMS_VERSION"]				= "3.52",
["MOD_DESCRIPTION"]			= "This mods changes night lighting",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCWATERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"]  = {"FoamColour"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.17"},
								{"G",	"0.19"},
								{"B",	"0.28"},
								{"A",	"0.7"},
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\NIGHTSKYCOLOURS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"SkyColour"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.056"},
								{"G",	"0.056"},
								{"B",	"0.075"},
								{"A",	"0.085"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SkyUpperColour"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.18"},
								{"G",	"0.2"},
								{"B",	"0.3"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"HorizonColour"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.09"},
								{"G",	"0.11"},
								{"B",	"0.16"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"FogColour"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.02"},
								{"G",	"0.024"},
								{"B",	"0.04"},
							}	
						},						{
							["PRECEDING_KEY_WORDS"] = {"HeightFogColour"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.136"},
								{"G",	"0.136"},
								{"B",	"0.136"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LightColour"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.18"},
								{"G",	"0.2"},
								{"B",	"0.28"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"CloudColour1"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.0387"},
								{"G",	"0.0512"},
								{"B",	"0.0678"},
							}	
						},						{
							["PRECEDING_KEY_WORDS"] = {"CloudColour2"},
							["REPLACE_TYPE"] = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.0581"},
								{"G",	"0.0769"},
								{"B",	"0.1019"},
							}	
						},

					}
				}
			}
		}
	}	
}