NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Unpredictable Roaming Ships 1.4.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.0",
["MOD_DESCRIPTION"]			= "This mod makes roaming ship formation unpredictable",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{ 
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"]  = {"FlybySpawns"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinRange",	"500"},  --original : 200
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"FlybySpawns", "Scale"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0.5"},  --original : 1
								{"y",	"0.5"},  --original : 1
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"FlybySpawns", "Spread"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"60"},  --original : 30
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"FlybySpawns", "Count"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0"},  --original : 1
								{"y",	"5"},  --original : 3
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"FlybySpawns", "StartTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"3"},  --original : 0
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"FlybySpawns", "Array"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Offset",	"400"},  --original : 200
							},
						},
					}
				}
			}
		}
	}	
}


  
