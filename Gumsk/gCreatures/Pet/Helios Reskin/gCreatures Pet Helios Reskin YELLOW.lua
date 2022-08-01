Color = "YELLOW"

Author = "Gumsk"
ModName = "gCreatures Pet Helios Reskin"
ModNameSub = Color
BaseDescription = "Changes color of of the child of Helios pet to "..Color
GameVersion = "397"
ModVersion = "a"

FileSource1 = "MODELS/PLANETS/CREATURES/FISH/LANDJELLYFISH/GLOWAURACAM_MAT.MATERIAL.MBIN"
FileSource2 = "MODELS/PLANETS/CREATURES/FISH/LANDJELLYFISH/JELLYFISHCAP_MAT.MATERIAL.MBIN"
FileSource3 = "MODELS/PLANETS/CREATURES/FISH/LANDJELLYFISH/JELLYFISHINNER_MAT.MATERIAL.MBIN"
FileSource4 = "MODELS/PLANETS/CREATURES/FISH/LANDJELLYFISH/JELLYFISHSMALLTENT_MAT.MATERIAL.MBIN"
FileSource5 = "MODELS/PLANETS/CREATURES/FISH/LANDJELLYFISH/JELLYFISHTENT_MAT.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "GUMSK/BLUEFLASHCROP."..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "BLUEFLASHCROP."..Color..".DDS",
		},
		{
			["FILE_DESTINATION"] 		= "GUMSK/JELLYFISH_01.BASE."..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "JELLYFISH_01.BASE."..Color..".DDS",
		},
		{
			["FILE_DESTINATION"] 		= "GUMSK/JELLYFISH_02.BASE."..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "JELLYFISH_02.BASE."..Color..".DDS",
		},
	},

	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK/BLUEFLASHCROP."..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK/JELLYFISH_01.BASE."..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource3,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK/JELLYFISH_02.BASE."..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource4,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK/JELLYFISH_02.BASE."..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource5,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK/JELLYFISH_02.BASE."..Color..".DDS"}
							}
						},
					}
				},
			}
		},
	}
}