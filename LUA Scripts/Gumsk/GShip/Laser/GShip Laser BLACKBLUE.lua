ColorCore = "BLACK"
Color = "BLUE"

Author = "Gumsk"
ModName = "GShip"
ModNameSub = "Laser".." "..ColorCore..Color
BaseDescription = "Changes color of phase beam/laser to "..Color
GameVersion = "315"
ModVersion = "a"
FileSource1 = "MODELS\EFFECTS\LINES\SHIPLASERLINE.MATERIAL.MBIN"
FileSource2 = "MODELS\EFFECTS\LINES\SHIPLASERLINECORE.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["ADD_FILES"] = {{
	["FILE_DESTINATION"] 		= "GUMSK/GUMSKLASER"..Color..".DDS",
	["EXTERNAL_FILE_SOURCE"] 	= "GUMSKLASER"..Color..".DDS",
},
{
	["FILE_DESTINATION"] 		= "GUMSK/GUMSKLASERCORE"..ColorCore..".DDS",
	["EXTERNAL_FILE_SOURCE"] 	= "GUMSKLASERCORE"..ColorCore..".DDS",
}
},
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
{["MBIN_FILE_SOURCE"] = {FileSource1},

	["EXML_CHANGE_TABLE"] = {
		{["PRECEDING_KEY_WORDS"] = {"Samplers"},
			["VALUE_CHANGE_TABLE"] = {
				{"Map", "GUMSK/GUMSKLASER"..Color..".DDS"}
			}},
	}
},
{["MBIN_FILE_SOURCE"] = {FileSource2},

	["EXML_CHANGE_TABLE"] = {
		{["PRECEDING_KEY_WORDS"] = {"Samplers"},
			["VALUE_CHANGE_TABLE"] = {
				{"Map", "GUMSK/GUMSKLASERCORE"..ColorCore..".DDS"}
			}},
	}
},
}},}}