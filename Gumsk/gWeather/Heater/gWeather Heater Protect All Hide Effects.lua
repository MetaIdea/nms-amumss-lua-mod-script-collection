Author = "Gumsk"
ModName = "gWeather Heater Protect All"
ModNameSub = "Hide Effects"
BaseDescription = "Extends the range on the heaters"
GameVersion = "397"
ModVersion = "a"
FileSource1 = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\STANDINGLIGHT_SMALL\ENTITIES\HEATER.ENTITY.MBIN"


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
							["SPECIAL_KEY_WORDS"] = {"TriggerVolumeType","TkVolumeTriggerType.xml"},
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] = {
								{"VolumeTriggerType","GenericInterior"},
							},
						},
					},
				},
			}
		}
	}
}