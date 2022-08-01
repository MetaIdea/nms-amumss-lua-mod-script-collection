Time = 10

Author = "Gumsk"
ModName = "gSwitch Push"
ModNameSub = Time
BaseDescription = "Extended switch button time"
GameVersion = "398"
ModVersion = "a"
FileSource = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\SWITCH_BUTTON\ENTITIES\INTERACTION.ENTITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"StateID","ON"},
							["PRECEDING_KEY_WORDS"] = {"GcActionTrigger.xml","GcActionTrigger.xml"},
							["WHERE_IN_SECTION"] = {
								{"Seconds",1},
							},
							["VALUE_CHANGE_TABLE"] = {
								{"Seconds",Time},
							},
						},
					},
				},
			}
		}
	}
}