NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Damaged Machineries Near Shelters 1.7.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.12.1",
["MOD_DESCRIPTION"]			= "This mod removes damaged machineries near shelters",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SHACK\SHACK_SCIENTIFIC.LSYSTEM.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SHACK\SHACK_TRADER.LSYSTEM.MBIN", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SHACK\SHACK_WARRIOR.LSYSTEM.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Model", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/DEBRISLARGE_COMMON.SCENE.MBIN",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LocatorType", "TECHBOX_",},
							["REMOVE"] 	= "SECTION",
						},
					},
				}	
			}
		}
	}	
}