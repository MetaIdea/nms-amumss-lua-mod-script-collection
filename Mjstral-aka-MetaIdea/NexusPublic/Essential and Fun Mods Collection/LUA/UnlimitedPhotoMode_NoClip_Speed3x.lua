NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "UnlimitedPhotoMode+NoClip+Speed3x.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.2+",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PhotoModeMoveSpeed",			"30"}, 			-- Original "10"
								{"PhotoModeMaxDistance",		"10000000"},	-- Original "100" --This will generate a WARNING
								{"PhotoModeMaxDistanceSpace",	"10000000"},	-- Original "200" --This will generate a WARNING
								{"PhotoModeMaxDistance",		"9000000"},	-- Original "100"
								{"PhotoModeMaxDistanceSpace",	"9000000"},	-- Original "200"
								{"PhotoModeCollisionRadius",	"0.0"}, 			-- Original "0.5"
							}
						},
					}
				},
			}
		},
	}	
}