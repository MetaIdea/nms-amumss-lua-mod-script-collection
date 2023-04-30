
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Mans Land No interaction with teleporters", 
["MOD_AUTHOR"]				= "Pythonaut", -- this mod incorporates all changes from Pythonauts great, no longer maintained No Teleporters mod, but still allows using the teleporter in the space station				
["NMS_VERSION"]				= "4.22",
["MOD_DESCRIPTION"]			= "This mods shortens intercation distance with telporters to zero",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				
				-- by Pythonaut:
				{
					["MBIN_FILE_SOURCE"] = {
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER\ENTITIES\TELEPORTERINTERACTION.ENTITY.MBIN", 
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER_NEXUS\ENTITIES\TELEPORTERNEXUSINTERACTION.ENTITY.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\TELEPOROOM\ENTITIES\TELEPORTERINTERACTION.ENTITY.MBIN"},  
					["EXML_CHANGE_TABLE"] = 
					{
						{
						["VALUE_CHANGE_TABLE"] = 
						{
							{"InteractDistance", "0"}, 
						}	
						},
					}
				}				
			}
		}
		
	}	
}
