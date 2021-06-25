NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "UnlimitedPhotoMode+NoClip+Speed3x.pak",
["MOD_AUTHOR"]				= "Mjstral",
["NMS_VERSION"]				= "3.52",
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
								{"PhotoModeMoveSpeed",			"30"},
								{"PhotoModeMaxDistance",		"10000000"},
								{"PhotoModeMaxDistanceSpace",	"10000000"},
								{"PhotoModeMaxDistance",		"9000000"},
								{"PhotoModeMaxDistanceSpace",	"9000000"},
								{"PhotoModeCollisionRadius",	"0.0"},
							}
						},
					}
				},
			}
		},
	}	
}