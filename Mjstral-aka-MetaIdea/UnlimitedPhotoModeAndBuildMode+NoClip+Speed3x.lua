NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "UnlimitedPhotoModeAndBuildMode+NoClip+Speed3x.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.06",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PhotoModeMoveSpeed",			"30"}, 			-- Original "10"
								{"PhotoModeMaxDistance",		"9999999"},		-- Original "100"
								{"PhotoModeMaxDistanceSpace",	"9999999"},		-- Original "200"
								{"PhotoModeMaxDistance",		"9999999"},		-- Original "100"
								{"PhotoModeMaxDistanceSpace",	"9999999"},		-- Original "200"
								{"PhotoModeCollisionRadius",	"0.0"}, 		-- Original "0.5"
								{"BuildingModeMaxDistance",		"9999999"}, 	-- Original "60"							
							}
						},
					}
				},
			}
		},
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE