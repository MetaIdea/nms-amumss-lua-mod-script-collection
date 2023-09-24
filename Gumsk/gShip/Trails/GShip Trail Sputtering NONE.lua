Color = "NONE"

Author = "Gumsk"
ModName = "gShip Trail Sputtering"
ModNameSub = Color
BaseDescription = "Changes color of stealth/dark ship trail to "..Color
GameVersion = "445"
ModVersion = "a"
FileSource = "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\SPLUTTERINGTRAIL.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["LUA_AUTHOR"]		= "Gumsk",
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource,

					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", ""},
							},
						},
					},
				},
			}
		}
	}
}