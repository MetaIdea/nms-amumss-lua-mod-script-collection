Color = "NONE"

Author = "Gumsk"
ModName = "gShip Phase Beam"
ModNameSub = Color
BaseDescription = "Changes color of phase beam to "..Color
GameVersion = "399"
ModVersion = "a"

FileSource1 = "MODELS\EFFECTS\LINES\SHIPLASERLINECORE.MATERIAL.MBIN"
FileSource2 = "MODELS\EFFECTS\LINES\LASERLINEVEHICLE.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = {FileSource1},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", ""},
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
								{"Map", ""},
							},
						},
					},
				},
			}
		}
	}
}