Color = "PINK"

Author = "Gumsk"
ModName = "gShip Trail"
ModNameSub = "Timeloop "..Color
BaseDescription = "Changes color of stealth/dark ship trail to "..Color
GameVersion = "399"
ModVersion = "a"
FileSource1 = "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\TIMELOOPTRAIL.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "TEXTURES/EFFECTS/TRAILS/HOT/GUMSKTIMELOOP"..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "DDS\GUMSKTIMELOOP"..Color..".DDS",
		},
	},
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,

					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "TEXTURES/EFFECTS/TRAILS/HOT/GUMSKTIMELOOP"..Color..".DDS"},
							},
						},
					},
				},
			}
		}
	}
}