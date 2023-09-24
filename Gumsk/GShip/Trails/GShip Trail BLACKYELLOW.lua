Color = "BLACKYELLOW"

Author = "Gumsk"
ModName = "gShip Trail"
ModNameSub = Color
BaseDescription = "Changes color of stealth/dark ship trail to "..Color
GameVersion = "445"
ModVersion = "a"
FileSource = "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTGREENTRAIL.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "TEXTURES/EFFECTS/TRAILS/HOT/GUMSKSHIP"..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "DDS\GUMSKSHIP"..Color..".DDS",
		},
	},
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource,

					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "TEXTURES/EFFECTS/TRAILS/HOT/GUMSKSHIP"..Color..".DDS"},
							},
						},
					},
				},
			}
		}
	}
}