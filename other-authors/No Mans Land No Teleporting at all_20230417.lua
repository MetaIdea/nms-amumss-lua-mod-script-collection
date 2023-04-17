
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Mans Land No teleporting at all", 
["MOD_AUTHOR"]				= "Youngneil1 and Pythonaut", -- this mod also incorporates changes from Pythonauts great, no longer maintained No Teleporters mod				
["NMS_VERSION"]				= "4.22",
["MOD_DESCRIPTION"]			= "This mods disables all teleporters in the game.",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							
							["SPECIAL_KEY_WORDS"] = {"CreaturesToFeedForTutorial", "10"},				
							--["PRECEDING_KEY_WORDS"] = {"EnableTeleporters"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EnableTeleporters",	"False"}			
							}
						}
					}
				},
				-- by Pythonaut:
				{
					["MBIN_FILE_SOURCE"] = {
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER\ENTITIES\TELEPORTERINTERACTION.ENTITY.MBIN", 
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER_NEXUS\ENTITIES\TELEPORTERNEXUSINTERACTION.ENTITY.MBIN",
					"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\TELEPORTER_STATION\ENTITIES\TELEPORTERSTATIONINTERACTION.ENTITY.MBIN",
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
