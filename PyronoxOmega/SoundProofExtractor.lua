--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "SoundProofExtractor.pak",     
  ["MOD_DESCRIPTION"]		= "Makes Noisy Mineral Extractors Silent",        
  ["MOD_AUTHOR"]				= "Pyronox Omega",         
  ["NMS_VERSION"]				= "3.91",     
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/UTILITYPARTS/MODULE_PUMPS/ENTITIES/MINERALEXTRACTOR.ENTITY.MBIN"},  
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = "", --Original value  Base_MineralExtractor
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Sound",	""}, 
							}	
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE