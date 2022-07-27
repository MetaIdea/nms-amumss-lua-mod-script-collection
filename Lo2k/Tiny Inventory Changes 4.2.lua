NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Tiny Inventory Changes 4.2.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.97",
["MOD_DESCRIPTION"]			= "This mods changes orientation and lighting of inventory 3D models",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"ModelViews","ModelViews","Suit"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LightPitch",	"60"},
								{"LightRotate",	"0"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ModelViews","ModelViews","Weapon"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Distance",	"2.4"},
								{"x",	"-0.4"},
								{"y",	"0.02"},
								{"LightPitch",	"30"},
								{"LightRotate",	"-30"},
								{"FocusType",	"ResourceBoundingHeight"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ModelViews","ModelViews","Ship"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Distance",	"0.48"},
								{"x",	"-0.24"},
								{"y",	"-0.03"},
								{"z",	"0.6"},
								{"Pitch",	"20"},
								{"Rotate",	"-40"},
								{"LightPitch",	"35"},
								{"LightRotate",	"315"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ModelViews","ModelViews","Vehicle"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"-0.28"},
								{"Pitch",	"5"},
								{"Rotate",	"-43"},
								{"LightPitch",	"30"},
								{"LightRotate",	"290"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ModelViews","ModelViews","TradeCompareShips"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"-0.015"},
								{"Pitch",	"15"},
								{"Rotate",	"-15"},
								{"Fov",	"10"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ModelViews","ModelViews","Freighter"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"-0.05"},
								{"z",	"-0.05"},
								{"Pitch",	"15"},
								{"LightPitch",	"35"},
								{"LightRotate",	"251"}
							}	
						}
					}
				}
			}
		}
	}	
}