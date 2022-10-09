Author = "Gumsk"
ModName = "gWeather Storm Crystals Always"
ModNameSub = ""
BaseDescription = "Allows you to collect storm crystals anytime"
GameVersion = "403"
ModVersion = "a"
FileSource1 = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN"
FileSource2 = "MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\CRYSTALS\STORMCRYSTALS\ENTITIES\STORMCRYSTALS.ENTITY.MBIN"

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
							["SPECIAL_KEY_WORDS"] = {"Id","STORMCRYSTALS"},
							["VALUE_CHANGE_TABLE"] = {
								{"OnlyOnExtremeWeather","False"},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DE_STORMCRYSTAL"},
							["VALUE_CHANGE_TABLE"] = {
								{"NeedsStorm","False"},
							},
						},
					},
				},
			}
		}
	}
}