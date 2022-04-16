
Author = "alchemist"
ModName = "ShipSpawns"
BaseDescription = "Survive."
GameVersion = "3-22"
ModVersion = "v1-alpha"

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

	{["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"] = {

		-- traders
		{["PRECEDING_KEY_WORDS"] = {
			"SpaceshipWeightings", 
			"GcAISpaceshipWeightingData.xml"
		},
		["VALUE_CHANGE_TABLE"] = {
			{"Dropship", 128},
			{"Fighter", 64},
			{"Scientific", 32},
			{"Shuttle", 64},
			{"Royal", 16},
		}},

		-- fighters
		{["PRECEDING_KEY_WORDS"] = {
			"SpaceshipWeightings", 
			"GcAISpaceshipWeightingData.xml",
			"GcAISpaceshipWeightingData.xml"
		},
		["VALUE_CHANGE_TABLE"] = {
			{"Dropship", 64},
			{"Fighter", 128},
			{"Scientific", 32},
			{"Shuttle", 64},
			{"Royal", 16},
		}},

		-- scientists
		{["PRECEDING_KEY_WORDS"] = {
			"SpaceshipWeightings", 
			"GcAISpaceshipWeightingData.xml",
			"GcAISpaceshipWeightingData.xml",
			"GcAISpaceshipWeightingData.xml"
		},
		["VALUE_CHANGE_TABLE"] = {
			{"Dropship", 64},
			{"Fighter", 32},
			{"Scientific", 128},
			{"Shuttle", 64},
			{"Royal", 16},
		}},

	}},

}}}}