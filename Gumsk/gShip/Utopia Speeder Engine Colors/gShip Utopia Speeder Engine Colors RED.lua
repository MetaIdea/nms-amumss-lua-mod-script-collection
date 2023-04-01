Color = "RED"

ModName = "gShip Utopia Speeder Engine Colors"
ModNameSub = Color
GameVersion = "415"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= "Recolors the Utopia Speeder engine",
	["MOD_AUTHOR"]		= "Gumsk",
	["LUA_AUTHOR"]		= "Gumsk",
	["NMS_VERSION"]		= GameVersion,
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "GUMSK\\UTOPIA_ENGINEGLOW_"..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "UTOPIA_ENGINEGLOW_"..Color..".DDS",
		},
		{
			["FILE_DESTINATION"] 		= "GUMSK\\UTOPIA_ENGINEJET_"..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "UTOPIA_ENGINEJET_"..Color..".DDS",
		},
	},
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "MODELS\\COMMON\\SPACECRAFT\\FIGHTERS\\COMBPOUNDENGINEFLAME\\ENGINEGLOW_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK\\UTOPIA_ENGINEGLOW_"..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\\COMMON\\SPACECRAFT\\FIGHTERS\\COMBPOUNDENGINEFLAME\\ENGINEJET_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK\\UTOPIA_ENGINEJET_"..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\\COMMON\\SPACECRAFT\\FIGHTERS\\COMBPOUNDENGINEFLAMER\\ENGINEGLOW_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK\\UTOPIA_ENGINEGLOW_"..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\\COMMON\\SPACECRAFT\\FIGHTERS\\COMBPOUNDENGINEFLAMER\\ENGINEJET_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"Samplers"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK\\UTOPIA_ENGINEJET_"..Color..".DDS"}
							}
						},
					}
				},
			}
		},
	}
}