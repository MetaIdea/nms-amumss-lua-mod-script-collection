NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SolarShipUnfoldWithoutSails.pak",
["MOD_AUTHOR"]				= "Mjstral",
["NMS_VERSION"]				= "3.85+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_SHARED\ENTITIES\ROOTJNT.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] 	= {"Anim","TAKEOFF"},
							["VALUE_CHANGE_TABLE"] 	= {{"Filename", ""},}
						},
						-- {
							-- ["SPECIAL_KEY_WORDS"] 	= {"Anim","LANDING"},
							-- ["VALUE_CHANGE_TABLE"] 	= {{"Filename", ""},}
						-- },
						-- {
							-- ["SPECIAL_KEY_WORDS"] 	= {"Anim","LOWALTITUDE"},
							-- ["VALUE_CHANGE_TABLE"] 	= {{"Filename", ""},}
						-- },
						{
							["SPECIAL_KEY_WORDS"] 	= {"Anim","TURNLEFT"},
							["VALUE_CHANGE_TABLE"] 	= {{"Filename", ""},}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"Anim","TURNRIGHT"},
							["VALUE_CHANGE_TABLE"] 	= {{"Filename", ""},}
						},
					}
				}
			}
		}
	}	
}
