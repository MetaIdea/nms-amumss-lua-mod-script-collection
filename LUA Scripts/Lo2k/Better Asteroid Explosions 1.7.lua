NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Asteroid Explosions 1.7.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.70",
["MOD_DESCRIPTION"]			= "This mod improves asteroid explosions",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\EFFECTS\SPACEEFFECTS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"Id","ASTEROID_R_EXP"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Speed",	"30"},
								{"AngularSpeed",	"8"},
							},
						},				
						{
							["SPECIAL_KEY_WORDS"]  = {"Id","ASTEROID_HIT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Scale",	"6"},
								{"CamShake",	"False"},
								{"CamShakeSpaceScale",	"False"},
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Id","ASTEROID_M_EXP",},  --forces to rewrite all scales as we can't target the last "Scale" property
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Scale",	"50"},	
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Id","ASTEROID_M_EXP", },
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Number",	"5"},
								{"Scale",	"0.08"},
								{"Speed",	"2000"},
								{"AngularSpeed",	"5"},
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Id","ASTEROID_M_EXP"},
							["PRECEDING_KEY_WORDS"]  = {"GcDebrisData.xml", "GcDebrisData.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Number",	"9"},
								{"Scale",	"0.055"},
								{"Speed",	"3000"},
								{"AngularSpeed",	"8"},
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Id","ASTEROID_M_EXP"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Life",	"4"},
								{"DistanceScaleMax",	"0"},
							},
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {"Id","ASTEROID_S_EXP",},  --forces to rewrite all scales as we can't target the last "Scale" property
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Life",	"1"},  --only one occurency
								{"Scale",	"50"},	
							},
						},	
						{
							["SPECIAL_KEY_WORDS"]  = {"Id","ASTEROID_S_EXP", },
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Scale",	"0.4"},
								{"Speed",	"1000"},
								{"AngularSpeed",	"5"},
							},
						},					
						{
							["SPECIAL_KEY_WORDS"]  = {"Id","ASTEROID_L_EXP", },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Life",	"0.2"},
								{"Scale",	"30"},
								{"DistanceScaleMax",	"0"},
							},
						},							
					}
				}
			}
		}
	}	
}