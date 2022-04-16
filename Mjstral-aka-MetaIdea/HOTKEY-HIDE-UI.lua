NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "HOTKEY-HIDE-UI.pak",
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
						"UI\PCMISCPAGENEW.MBIN",				
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"ID", "BUTTON03"},
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IsHidden",	"True"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", ""},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IsHidden",	"False"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "PAGECONTENT"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IsHidden",	"False"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "CENTER"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IsHidden",	"False"},				
							}
						},
						{
--needsfix--["SPECIAL_KEY_WORDS"] 		= {"ID", "CENTER"},
							["PRECEDING_KEY_WORDS"] 	= {"CENTER", "GcNGuiLayoutData.xml"},						
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IsHidden",	"False"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"] 	= {"ID", "BUTTON03"},
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