NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Freighter Landing.pak", 
["MOD_AUTHOR"]				= "Van",
["NMS_VERSION"]				= "3.37",
["MOD_DESCRIPTION"]			= "Reduces the distance and time of auto-landing in a freighter.",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"HANGARA.ENTITY.MBIN",},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ApproachAngle",		"15"},  --Original : 45
								{"ApproachSpeed",		"50"},  --Original : 60
								{"PlayerAutoLandRange",	"200"},  --Original : 500
								{"LandingSpeed",		"30"},  --Original : 5
								{"TakeOffSpeed", 		"120"},  --Original : 80
								{"TakeOffBoost", 		"60"},  --Original : 0
							}
						}
					}
				}
			}
		}
	}	
}