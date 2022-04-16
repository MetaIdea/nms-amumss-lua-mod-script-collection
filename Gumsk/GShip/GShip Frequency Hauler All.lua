Author = "Gumsk"
ModName = "GShip Frequency"
ModNameSub = "Hauler All"
BaseDescription = "Changes frequency of ships spawning in the wild"
GameVersion = "363"
ModVersion = "a"
FileSource1 = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {{
		["MBIN_FILE_SOURCE"] = FileSource1,
		["EXML_CHANGE_TABLE"] = {
			{
				["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings","CivilianClassWeightings"},
				["VALUE_CHANGE_TABLE"] = {
					{"Freighter","0"},
					{"Dropship","100"},
					{"Fighter","0"},
					{"Scientific","0"},
					{"Shuttle","0"},
					{"PlayerFreighter","0"},
					{"Royal","1"},
					{"Alien","0"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings","CivilianClassWeightings","CivilianClassWeightings"},
				["VALUE_CHANGE_TABLE"] = {
					{"Freighter","0"},
					{"Dropship","100"},
					{"Fighter","0"},
					{"Scientific","0"},
					{"Shuttle","0"},
					{"PlayerFreighter","0"},
					{"Royal","1"},
					{"Alien","0"},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings","CivilianClassWeightings","CivilianClassWeightings","CivilianClassWeightings"},
				["VALUE_CHANGE_TABLE"] = {
					{"Freighter","0"},
					{"Dropship","100"},
					{"Fighter","0"},
					{"Scientific","0"},
					{"Shuttle","0"},
					{"PlayerFreighter","0"},
					{"Royal","1"},
					{"Alien","0"},
				},
			},
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings","Robots"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Freighter","0"},
					-- {"Dropship","100"},
					-- {"Fighter","100"},
					-- {"Scientific","100"},
					-- {"Shuttle","100"},
					-- {"PlayerFreighter","0"},
					-- {"Royal","1"},
					-- {"Alien","0"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings","Atlas"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Freighter","0"},
					-- {"Dropship","100"},
					-- {"Fighter","100"},
					-- {"Scientific","100"},
					-- {"Shuttle","100"},
					-- {"PlayerFreighter","0"},
					-- {"Royal","1"},
					-- {"Alien","0"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings","Diplomats"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Freighter","0"},
					-- {"Dropship","100"},
					-- {"Fighter","100"},
					-- {"Scientific","100"},
					-- {"Shuttle","100"},
					-- {"PlayerFreighter","0"},
					-- {"Royal","1"},
					-- {"Alien","0"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings","Exotics"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Freighter","0"},
					-- {"Dropship","100"},
					-- {"Fighter","100"},
					-- {"Scientific","100"},
					-- {"Shuttle","100"},
					-- {"PlayerFreighter","0"},
					-- {"Royal","1"},
					-- {"Alien","0"},
				-- },
			-- },
			-- {
				-- ["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings","None"},
				-- ["VALUE_CHANGE_TABLE"] = {
					-- {"Freighter","0"},
					-- {"Dropship","100"},
					-- {"Fighter","100"},
					-- {"Scientific","100"},
					-- {"Shuttle","100"},
					-- {"PlayerFreighter","0"},
					-- {"Royal","1"},
					-- {"Alien","0"},
				-- },
			-- },
		}
}}}}}