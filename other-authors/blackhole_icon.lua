NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "blackhole_icon.pak",
["MOD_AUTHOR"]				= "Nim",
["NMS_VERSION"]				= "2.26",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGALAXYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "Blackhole",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Icon", "TEXTURES/UI/HUD/ICONS/PLAYER/BLACKHOLE.PNG"}, 	-- Original "True"
							}
						}
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE