Author = "Gumsk"
ModName = "Biome"
ModNameSub = "Waterworld Lush Yellow"
BaseDescription = ""
GameVersion = "303"
ModVersion = "a"
FileSource1 = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMELISTPERSTARTYPE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {

	{["PRECEDING_KEY_WORDS"] = {"LushYellow","PrimeBiomeProbability"},
		["VALUE_CHANGE_TABLE"] = {
			{"Lush", 0},
			{"Toxic", 0},
			{"Scorched", 0},
			{"Radioactive", 0},
			{"Frozen", 0},
			{"Barren", 0},
			{"Dead", 0},
			{"Weird", 0},
			{"Red", 0},
			{"Green", 0},
			{"Blue", 0},
			{"Test", 0},
			{"Swamp", 0},
			{"Lava", 0},
			{"Waterworld", 10},
			{"All", 0},
	}},

}}}}}}