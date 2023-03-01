ColorCore = "BLACK"
Color = "RED"

Author = "Gumsk"
ModName = "gShip Phase Beam"
ModNameSub = ColorCore..Color
BaseDescription = "Changes color of phase beam to "..ColorCore..Color
GameVersion = "399"
ModVersion = "a"

FileSource1 = "MODELS\EFFECTS\LINES\SHIPLASERLINECORE.MATERIAL.MBIN"
FileSource2 = "MODELS\EFFECTS\LINES\LASERLINEVEHICLE.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "GUMSK/GUMSKLASERCORE"..ColorCore..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "GUMSKLASERCORE"..ColorCore..".DDS",
		},
		{
			["FILE_DESTINATION"] 		= "GUMSK/GUMSKLASER"..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "GUMSKLASER"..Color..".DDS",
		},
	},
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = {FileSource1},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK/GUMSKLASERCORE"..ColorCore..".DDS"},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = {FileSource2},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK/GUMSKLASER"..Color..".DDS"},
							},
						},
					},
				},
			}
		}
	}
}