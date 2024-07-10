LOD_0_DISTANCE = 1000

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] = "ObjectsFromSpace.pak",
["MOD_AUTHOR"] = "Ignacio",
["NMS_VERSION"] = "4.45",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                           ["REPLACE_TYPE"] = "ALL",
						   ["INTEGER_TO_FLOAT"] = "PRESERVE",
						   ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetLodSwitch0", LOD_0_DISTANCE},
                                {"PlanetLodSwitch0Elevation", LOD_0_DISTANCE},
                                {"PlanetLodSwitch1", LOD_0_DISTANCE * (2^1)},
                                {"PlanetLodSwitch2", LOD_0_DISTANCE * (2^2)},
                                {"PlanetLodSwitch3", LOD_0_DISTANCE * (2^3)},
                            }
                        },
						{
                           ["REPLACE_TYPE"] = "ALL",
						   ["INTEGER_TO_FLOAT"] = "PRESERVE",
						   ["MATH_OPERATION"] = "*F:PlanetLodSwitch3",
						   ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetObjectSwitch",          1},
                            }
                        },
                    }
                }
            }
        }
    }
}