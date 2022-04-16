Author = "Gumsk"
ModName = "gWeather Heater"
ModNameSub = "Hide Effects"
BaseDescription = "Extends the range on the heaters"
GameVersion = "375"
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
						["SPECIAL_KEY_WORDS"] = {"VolumeTriggerType","TkVolumeTriggerType.xml"},
						["PRECEDING_KEY_WORDS"] = "",
						["LINE_OFFSET"] = "+1",
						["VALUE_CHANGE_TABLE"] = {
							{"VolumeTriggerType","GenericInterior"},
						}
					}
				}
			}
		}
	}
}}