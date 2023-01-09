Author = "Me"
ModName = "AntimatterReactorFix"
GameVersion = "4.07"
ModVersion = "v1.0"
Description = "Fix the Antimatter Reactor so it only produces 20 Antimatter, not a full stack."

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName.." "..GameVersion..ModVersion..".pak",
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MOD_DESCRIPTION"] 		= Description,
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\ANTIMATTERHARVESTER\ENTITIES\ANTIMATTERHARVESTER.ENTITY.MBIN",
						
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
						    ["PRECEDING_KEY_WORDS"] = {"GcMaintenanceElement.xml"},
							["SECTION_ACTIVE"] = {2,},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxCapacity",20},	-- -1
							}
						},
						
					}
				},
			}
		}
	}	
}