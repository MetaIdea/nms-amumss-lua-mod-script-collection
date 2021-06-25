NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "VR-QUICKMENU-ADDITIONS.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.24+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{ 
						--"UI\HUD\HUDQUICKMENUSLOT.MBIN",
						"UI\HUD\HANDCONTROLS\QUICKMENULAUNCHER.MBIN",			
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IsHidden",	"False"},				
							}
						}
					}
				}
			}
		}
	}	
}

--"LONG_BG", "SHORT_BG", "QUICKMENU", "BUILDMENU", "INVENTORY"