dofile([[OBE_methods.lua]])

SETTINGS = {
	["PREFIX"] = "BPL",
	["SECTIONS"] = {
		"MAIN_LMK"
	},
	["REPLACEMENTS"] = {
		{
			["OLD_MODEL"] = "MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN",
			["NEW_MODEL"] = "MODELS/PLANETS/BIOMES/COMMON/PLANTS/MEDIUMPLANT.SCENE.MBIN",
			["MULTIPLIERS"] = {
				["MaxScale"] = 2,
			}
		},
		{
			["OLD_MODEL"] = "MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN",
			["NEW_MODEL"] = "MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/VOLCANICPLANT.SCENE.MBIN",
			["MULTIPLIERS"] = {
				["MaxScale"] = 2,
				["LodDistances"] = 1.5,
			}
		},
	}
}

MBIN_CHANGE_TABLE = create_model_swap_table(SETTINGS)

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "Must be combined.pak",
  ["MOD_BATCHNAME"] = "Spacefarer-Biomes.pak",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE
		},
	}
}