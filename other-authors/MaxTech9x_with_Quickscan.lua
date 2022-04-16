NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Sae-MAXTECH4x.pak",
["MOD_AUTHOR"]				= "Saelath",
["NMS_VERSION"]				= "1.09.1",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "_Sae-MAXTECH4x.pak",
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxNumSameGroupTech", "9"}, 			-- Original "3"
			{"TerrainResourceScanTime" value="10"}, 			-- Original "30"
								{"TerrainResourceScanRange" value="3000"}	-- Original "1000"
			
							}
						},
					} --3 global replacements
				},
			}
		},
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE