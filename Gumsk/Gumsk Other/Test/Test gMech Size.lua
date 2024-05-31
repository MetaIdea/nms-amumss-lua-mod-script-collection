Author = "Gumsk"
ModName = "Test"
ModNameSub = "gMech Size"
BaseDescription = "Test"
GameVersion = "384"
ModVersion = "a"
FileSource1 = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT.SCENE.MBIN"

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
					["SPECIAL_KEY_WORDS"] = {"Transform","TkTransformData.xml"},
					["SECTION_ACTIVE"] = 178,
					["VALUE_CHANGE_TABLE"] = {
						{"ScaleX",3},
						{"ScaleY",3},
						{"ScaleZ",3},
					}
				},
			}
		}
	}
}
}}