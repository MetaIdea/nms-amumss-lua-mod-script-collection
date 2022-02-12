NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "NeoModuleStack6x-Expeditions-LUA.pak",     
  ["MOD_DESCRIPTION"]		= "You can put together more than 3 module upgrades.",         
  ["MOD_AUTHOR"]			= "Neo6891",         
  ["NMS_VERSION"]			= "3.35",     
  ["MODIFICATIONS"] 		=             
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",  
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxNumSameGroupTech",	"6"}, -- 3
								{"BinocTimeBeforeScan",	"0.1"}, -- 0.5
								{"BinocMinScanTime",	"1"}, -- 3.9
								{"BinocScanTime",	"1"}, -- 3.9
								{"BinocCreatureScanTime",	"1"}, -- 3.2
							}	
						},
					}
				},
			}
		},
	}
}
