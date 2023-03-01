Color = "BLUE"

Author = "Gumsk"
ModName = "gShip Infraknife"
ModNameSub = Color
BaseDescription = "Changes color of ship's infraknife to "..Color
GameVersion = "399"
ModVersion = "a"

FileSource1 = "MODELS/COMMON/PROJECTILES/SHIP_MINIGUN/SHIPMINIGUNPROJECTILEGRADIENT.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "GUMSK/INFRA"..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "INFRA"..Color..".DDS",
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
								{"Map", "GUMSK/INFRA"..Color..".DDS"},
							},
						},
					},
				},
			}
		}
	}
}