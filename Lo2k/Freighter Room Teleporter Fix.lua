NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Freighter Room Teleporter Fix.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.96",
["MOD_DESCRIPTION"]			= "This mod aligns the teleporter with the modular room",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{	
				{  
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\TELEPOROOM\PARTS\FLOOR0.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{					
						{  -- Missing power icon
							["SPECIAL_KEY_WORDS"] = {"Name","NotConOn1_"},
							["REMOVE"] 	= "SECTION",
						},
						{  -- Wire snapping point
							["SPECIAL_KEY_WORDS"] = {"Name", "RefSnapScene5",},
							["REMOVE"] 	= "SECTION",
						},
						{  --Wire box
							["SPECIAL_KEY_WORDS"] = {"Name", "SolarPanelLOD0",},
							["REMOVE"] 	= "SECTION",
						},
						{  -- Teleporter
							["SPECIAL_KEY_WORDS"]  = {"Name", "TeleporterGeo"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"45"},  --original : 0
							},
						},	
						{  -- Interaction
							["SPECIAL_KEY_WORDS"]  = {"Name", "Data"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"45"},  --original : 0
							},
						},					
						{  -- Blue Effects
							["SPECIAL_KEY_WORDS"]  = {"Name", "ConON1_"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY",	"0"},  --original : -45
							},
						},	
					}
				} 
			}
		}
	}	
}


  
