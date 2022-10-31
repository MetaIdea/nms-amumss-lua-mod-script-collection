NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FixGalaxyMapDestinationButtonOrder.pak", 
["MOD_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "4.05",
["MOD_DESCRIPTION"]			= "Fixes left/right button icon order in the galaxy map destination selection menu",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "UI/GALAXYBAR.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SKW"]					= {"ID", "GLYPH"},
							["SECTION_UP"]			= 1,
							["SECTION_ACTIVE"]		= 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Text",	"&lt;IMG&gt;GALAXY_NAV_R&lt;&gt;"},
							}
						},
						{
							["SKW"]					= {"ID", "GLYPH"},
							["SECTION_UP"]			= 1,
							["SECTION_ACTIVE"]		= 2,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Text",	"&lt;IMG&gt;GALAXY_NAV_L&lt;&gt;"},
							}
						},
					}
				},
			}
		}
	}	
}