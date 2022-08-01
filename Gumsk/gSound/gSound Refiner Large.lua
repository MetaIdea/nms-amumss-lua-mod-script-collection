Author = "Gumsk"
ModName = "GSound"
ModNameSub = "Refiner Large"
BaseDescription = "Mutes the large refiner"
GameVersion = "388"
ModVersion = "a"
FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\REFINER\ENTITIES\REFINER3.ENTITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {{
		["MBIN_FILE_SOURCE"] = FileSource1,
		["EXML_CHANGE_TABLE"] = {
			{
				["SPECIAL_KEY_WORDS"] = {"Sound","Obj_RefineryLarge_Start"},
				["REMOVE"] = "SECTION",
			},
		}
}}}}}