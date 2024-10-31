NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Galactic Map Lines 2.0.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "2.11",
["MOD_DESCRIPTION"]			= "This mods improves visibility of galactic map paths",
["MODIFICATIONS"] 			= 
	{
		{
			--["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",  --Note : Uncomment this line is your AMUMSS version is older than 2.8.0W
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGALAXYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PathRenderingSelectedStartAlpha",	"0.9"},
								{"PathRenderingSelectedEndAlpha",	"0.0"},
								{"PathRenderingSelectedStepAlpha",	"0.1"},
								{"PathRenderingUnselectedStartAlpha",	"0.6"},
								{"PathRenderingUnselectedEndAlpha",	"0.05"},
								{"PathRenderingUnselectedStepAlpha",	"0.1"},
							}
						}
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE