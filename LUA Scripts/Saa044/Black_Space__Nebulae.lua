SUN_ATTENUATION = 0.8


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Black Space + Nebulae.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "2.33",
["MOD_DESCRIPTION"]			= "This mod makes space black",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACESKYCOLOURS.MBIN",
						"METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACERARESKYCOLOURS.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"]  = {"TopColour"},
							["REPLACE_TYPE"] 	= "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
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
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.01"},
								{"G",	"0.01"},
								{"B",	"0.01"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"BottomColour"},
							["REPLACE_TYPE"] 	= "ALL",
							["INTEGER_TO_FLOAT"] = "PRESERVE",
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
							["INTEGER_TO_FLOAT"] = "FORCE",
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
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.01"},
								{"G",	"0.01"},
								{"B",	"0.01"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"BottomColourPlanet"},
							["REPLACE_TYPE"] 	= "ALL",
							["INTEGER_TO_FLOAT"] = "PRESERVE",
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
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0.1"},
								{"G",	"0.1"},
								{"B",	"0.1"},
							},
						},	
						{
							["PRECEDING_KEY_WORDS"]  = {"LightColour"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	SUN_ATTENUATION},
								{"G",	SUN_ATTENUATION},
								{"B",	SUN_ATTENUATION},
							},
						},							
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING DOWN HERE IS IGNORED 
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE