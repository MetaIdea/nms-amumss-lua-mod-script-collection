NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "NeoInventoryStack-Expeditions-LUA.pak",     
  ["MOD_DESCRIPTION"]		= "9999 materials - 10x more items",         
  ["MOD_AUTHOR"]			= "Neo6891",         
  ["NMS_VERSION"]			= "3.35",     
  ["MODIFICATIONS"] 		=             
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",  
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DefaultSubstanceMaxAmount",	"9999"}, -- 250
								{"DefaultProductMaxAmount",	"10"}, -- 1
							}	
						},
					}
				},
			}
		},
	}
}