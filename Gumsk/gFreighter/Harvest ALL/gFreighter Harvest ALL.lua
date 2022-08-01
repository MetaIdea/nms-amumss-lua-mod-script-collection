Author = "Gumsk"
ModName = "gFreighter Harvest ALL"
ModNameSub = ""
BaseDescription = "Changes the harvest all button on freighter planter rooms to cover the entire freighter base"
GameVersion = "397"
ModVersion = "a"
FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\FREIGHTERBASE\ROOMS\PLANTROOM\PARTS\FLOOR0\ENTITIES\INTERACTION.ENTITY.MBIN"
FileSource2 = "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSNOW.SCENE.MBIN"
FileSource3 = "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSNOW_LOD.SCENE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
	{
		["MBIN_CHANGE_TABLE"] = {
			{
				["MBIN_FILE_SOURCE"] = FileSource1,
				["EXML_CHANGE_TABLE"] = {		
					{
						["SPECIAL_KEY_WORDS"] = {"StateID","HARVEST"},
						["VALUE_CHANGE_TABLE"] = {
							{"Radius",2000},
						},
					},
				}
			},
			
			{
				["MBIN_FILE_SOURCE"] = FileSource2,
				["EXML_CHANGE_TABLE"] = {		
					{
						["SPECIAL_KEY_WORDS"] = {"Name","LODDIST1"},
						["VALUE_CHANGE_TABLE"] = {
							{"Value",2000},
						},
					},
				}
			},

			{
				["MBIN_FILE_SOURCE"] = FileSource3,
				["EXML_CHANGE_TABLE"] = {		
					{
						["SPECIAL_KEY_WORDS"] = {"Name","LODDIST1"},
						["VALUE_CHANGE_TABLE"] = {
							{"Value",2000},
						},
					},
				}
			},

		}
	}
}}