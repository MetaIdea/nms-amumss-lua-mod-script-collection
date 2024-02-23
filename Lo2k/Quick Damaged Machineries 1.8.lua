NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Quick Damaged Machineries 1.8.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.51",
["MOD_DESCRIPTION"]			= "This mod opens damaged machineries in 1-click",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEBRIS\PARTS\DEBRILARGECONTAINER\ENTITIES\TECHDEBRIS.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CompletionRequirement",	"NoRequirement"}		-- Original "EmptySlot"   
							}
						},
					}
				}	
			}
		}
	}	
}