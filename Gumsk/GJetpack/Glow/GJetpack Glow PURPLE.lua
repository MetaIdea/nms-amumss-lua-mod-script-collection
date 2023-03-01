Color = "PURPLE"

Author = "Gumsk"
ModName = "gJetpack Glow"
ModNameSub = Color
BaseDescription = "Changes color of jetpack exhaust glow to "..Color
GameVersion = "399"
ModVersion = "a"

FileSource1 = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENGINEGLOW_MAT.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "GUMSK/GUMSK.JETPACK.ENGINEGLOW.2."..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "GUMSK.JETPACK.ENGINEGLOW.2."..Color..".DDS",
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
								{"Map", "GUMSK/GUMSK.JETPACK.ENGINEGLOW.2."..Color..".DDS"},
							},
						},
					},
				},
			}
		}
	}
}