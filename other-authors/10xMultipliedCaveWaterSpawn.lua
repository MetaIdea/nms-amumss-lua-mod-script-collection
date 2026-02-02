SPAWN_RATE_MULTIPLIER 	= 10

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "10xMultipliedCaveWaterSpawn",
["MOD_AUTHOR"]				= "DracoSys",
["NMS_VERSION"]				= "5.57",
["MOD_DESCRIPTION"]			= "Multiplies cave and water creature spawns to waste less time searching for the rares.",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CaveGroupsPerKm"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Sparse",    SPAWN_RATE_MULTIPLIER},
                                {"Normal",    SPAWN_RATE_MULTIPLIER},
                                {"Dense",     SPAWN_RATE_MULTIPLIER},
                                {"VeryDense", SPAWN_RATE_MULTIPLIER},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterGroupsPerKm"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Sparse",    SPAWN_RATE_MULTIPLIER},
                                {"Normal",    SPAWN_RATE_MULTIPLIER},
                                {"Dense",     SPAWN_RATE_MULTIPLIER},
                                {"VeryDense", SPAWN_RATE_MULTIPLIER},
                            }
                        },
                    }
                },
            }
        },
    },
}