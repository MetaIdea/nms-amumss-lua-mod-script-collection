NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "UnlimitedPhotoMode+NoClip+Speed3x.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.2+",
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
								{"PhotoModeMaxDistance",		"1000000"},		-- Original "100"
								{"PhotoModeMaxDistanceSpace",	"1000000"},		-- Original "200"
								{"PhotoModeCollisionRadius",	"0.0"}, 		-- Original "0.5"
							}
						},
					}
				},
			}
		},
	}	
}
