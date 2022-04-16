NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoPirateSpawns.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "Count" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0"}, 		-- Original "1"   line 142 under 1.77
								{"y",	"0"}, 		-- Original "1"   line 143 under 1.77
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "Count", "Count" }, --test of reaching second "Count" in "PirateSpawns"
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	"0"}, 		-- Original "1"   line 182 under 1.77
								{"y",	"0"}, 		-- Original "1"   line 183 under 1.77
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "Count", "Count" }, --test of reversed value order
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"0"}, 		-- Original "1"   line 183 under 1.77
								{"x",	"0"}, 		-- Original "1"   line 182 under 1.77
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "GcAIShipSpawnData.xml", "GcAIShipSpawnData.xml", "Count" }, --test of alternate key_words
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"0"}, 		-- Original "1"   line 183 under 1.77
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PirateSpawns", "GcAIShipSpawnData.xml", "Count" }, --test of alternate key_words
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"y",	"0"}, 		-- Original "1"   line 143 under 1.77
							}
						},
					}
				},
			}
		}, --8 global replacements
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE