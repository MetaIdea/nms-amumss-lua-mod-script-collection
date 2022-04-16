Color = "NONE"

Author = "Gumsk"
ModName = "GShip"
ModNameSub = "Laser".." "..Color
BaseDescription = "Changes color of photon cannon to "..Color
GameVersion = "315"
ModVersion = "a"
FileSource1 = "MODELS\EFFECTS\LINES\SHIPLASERLINE.MATERIAL.MBIN"
FileSource2 = "MODELS\EFFECTS\LINES\SHIPLASERLINECORE.MATERIAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
-- ["ADD_FILES"] = {{
	-- ["FILE_DESTINATION"] 		= "GUMSK/GUMSKPHOTON"..Color..".DDS",
	-- ["EXTERNAL_FILE_SOURCE"] 	= "GUMSKPHOTON"..Color..".DDS",
-- }},
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = {FileSource1,FileSource2},

["EXML_CHANGE_TABLE"] = {
	{["PRECEDING_KEY_WORDS"] = {"Samplers"},
		["VALUE_CHANGE_TABLE"] = {
			{"Map", ""}
			--{"Map", "GUMSK/GUMSKPHOTON"..Color..".DDS"}
		}},
	}
},}},}}