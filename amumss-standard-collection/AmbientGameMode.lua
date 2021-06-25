NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "AmbientGameMode.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "NewSaveGameMode",
              ["VALUE_MATCH_TYPE"] = "string",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PresetGameMode",  "6152"} --original is "Unspecified" a "string" 
							}                             --Since it does not match_type a "number", we use ["VALUE_MATCH_TYPE"] = "string"
						}                               --to force the tool at accepting the "number" as if it was a "string"
					} --1 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE