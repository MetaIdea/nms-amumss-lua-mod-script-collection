NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "X-NoCargoDrops.pak", 
["MOD_AUTHOR"]				= "Lowkie ORG Lo2k",
["NMS_VERSION"]				= "3.37",
["MOD_DESCRIPTION"]			= "This mod removes cargo drops and ALL damaged machineries",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 				
				{
					["MBIN_FILE_SOURCE"] 	= {
							"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SHACK\SHACK_SCIENTIFIC.LSYSTEM.MBIN", 
							"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SHACK\SHACK_TRADER.LSYSTEM.MBIN", 
							"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SHACK\SHACK_WARRIOR.LSYSTEM.MBIN",
							"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\ABANDONED\ABANDONDEDSCIENTIFIC.LSYSTEM.MBIN", 
							"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\ABANDONED\ABANDONDEDTRADER.LSYSTEM.MBIN", 
							"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\ABANDONED\ABANDONDEDWARRIOR.LSYSTEM.MBIN",
							"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\ABANDONED\UNDERWATER_ABANDONDEDSCIENTIFIC.LSYSTEM.MBIN", 
							"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\ABANDONED\UNDERWATER_ABANDONDEDTRADER.LSYSTEM.MBIN", 
							"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\ABANDONED\UNDERWATER_ABANDONDEDWARRIOR.LSYSTEM.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Model", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/DEBRISLARGE_COMMON.SCENE.MBIN"},
                            ["REPLACE_TYPE"] = "All",
							["REMOVE"] 	= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LocatorType", "TECHBOX_"},
                            ["REPLACE_TYPE"] = "All",
							["REMOVE"] 	= "SECTION"
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL.SCENE.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "_Clump1"},
							["REMOVE"] 	= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "_Clump2"},
							["REMOVE"] 	= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "_Clump3"},
							["REMOVE"] 	= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "_Clump4"},
							["REMOVE"] 	= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "_Clump5"},
							["REMOVE"] 	= "SECTION"
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "_Clump6"},
							["REMOVE"] 	= "SECTION"
						},
					},
				},
                {--No Buried Technologies near Damaged Machineries.pak"
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