NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "GalaxyMap.pak",
["MOD_AUTHOR"]		        = "OTBP",
["NMS_VERSION"]				= "ORBITAL 4.65",
["MOD_DESCRIPTION"]			= "DeBug Galaxy Map quick menu",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.globals.pak", 
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
							    {"DebugGalaxyMapInQuickMenu",			"true"},		--Oribital "False"							
							}
						}
					} --9 global replacements
				}
		    }
	    }	
    }
}	
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE