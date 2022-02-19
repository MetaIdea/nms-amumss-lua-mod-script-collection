NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Buried Technologies near Damaged Machineries 1.8.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.66",
["MOD_DESCRIPTION"]			= "This mod removes buried Technologies near EACH AND EVERY damaged machinery",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEBRIS\DEBRISLARGE_COMMON.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "UNDERGROUNDPROP_",},
							["SECTION_UP"] = 1,
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Value", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEBRIS\DEBRISLARGE_COMMON\ENTITIES\OBJECTPLACEMENTDATA.ENTITY.MBIN"},
							["LINE_OFFSET"] = "+2",
							["REPLACE_TYPE"] = "",
							["ADD"] = [[		<Property name="Children" />]],
						},
					},
				},			
			}
		}
	}	
}