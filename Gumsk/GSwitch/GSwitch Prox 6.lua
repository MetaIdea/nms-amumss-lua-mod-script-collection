DistanceOpen = 6
DistanceClose = 8

Author = "Gumsk"
ModName = "gSwitch Prox"
ModNameSub = DistanceOpen
BaseDescription = "Shortened proximity switch distance"
GameVersion = "398"
ModVersion = "a"
FileSource = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\SWITCH_PROXIMITY\ENTITIES\SWITCH_PROXIMITY.ENTITY.MBIN"

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
							["SPECIAL_KEY_WORDS"] = {"StateID","SWITCHON"},
							["VALUE_CHANGE_TABLE"] = {
								{"Distance",DistanceOpen},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"StateID","ON"},
							["VALUE_CHANGE_TABLE"] = {
								{"Distance",DistanceClose},
							},
						},
					},
				},
			}
		}
	}
}