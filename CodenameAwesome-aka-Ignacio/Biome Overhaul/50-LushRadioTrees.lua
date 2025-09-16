dofile([[OBE_methods.lua]])

SETTINGS = {
	["PREFIX"] = "LRT",
	["SECTIONS"] = {
		"MAIN_LMK"
	},
	["REPLACEMENTS"] = {
		{
			["OLD_MODEL"] = "MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN",
			["NEW_MODEL"] = "CUSTOMMODELS/CODENAMEAWESOME/PLANETS/BIOMES/LUSH/LARGE/RADIOACTIVETREE.SCENE.MBIN",
			["FIRST_ONLY"] = true,
			["MULTIPLIERS"] = {
				["MinScale"] = 0.5,
				["MaxScale"] = 0.75,
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