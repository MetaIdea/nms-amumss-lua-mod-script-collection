NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "_hF_fSails_Rainbow.pak",
["MOD_AUTHOR"]		= "hemis FEAR",
["NMS_VERSION"]		= "1",
["MOD_DESCRIPTION"]	= "Rainbow Sails for Freighter",
["MODIFICATIONS"]	= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "SAIL_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"Name","gDifuseMap",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "Map", 								"TEXTURES/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/SAIL2.DDS" }, --Original "TEXTURES/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/SAIL1.DDS"
							}
						}
					}
				}
			}
		}
	}	
}	
