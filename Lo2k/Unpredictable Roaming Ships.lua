NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Unpredictable Roaming Ships.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.91",
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


  
