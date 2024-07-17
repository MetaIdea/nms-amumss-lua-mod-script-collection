NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Bodie420.BaseBuildingUltra.13.0.pak",
["MOD_AUTHOR"]    = "Bodie420",
["Maintainer"]    = "Babscoole",
["NMS_VERSION"]   = "4.72",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BuildableOnPlanetBase",        "True"},
                                {"BuildableOnSpaceBase",         "True"},
                                {"BuildableOnFreighter",         "True"},
                                {"BuildableOnPlanet",            "True"},
                                {"CanChangeMaterial",            "True"},
                                {"BuildableUnderwater",          "True"},
                                {"BuildableAboveWater",          "True"},
                                {"PlanetLimit",                  "9999990"},
                                {"RegionLimit",                  "9999990"},
                                {"PlanetBaseLimit",              "9999990"},
                                {"FreighterBaseLimit",           "9999990"},
                                {"CanChangeColour",              "True"},
                                {"CheckPlayerCollision",         "False"},
                                {"CanRotate3D",                  "True"},
                                {"CanScale",                     "True"},
                                {"CanPickUp",                    "True"},
                                {"EditsTerrain",                 "False"},
                                {"ShowInBuildMenu",              "True"},
                                {"IsPlaceable",                  "True"},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALLINSIDESECTION",
                            ["SUB_LEVEL"] = 4,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Biome", "All"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "RADIOPLANT", "Biome", "GcBiomeType.xml"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE", 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Biome", "Radioactive"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TOXICPLANT", "Biome", "GcBiomeType.xml"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE", 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Biome", "Toxic"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SNOWPLANT", "Biome", "GcBiomeType.xml"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE", 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Biome", "Frozen"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BARRENPLANT", "Biome", "GcBiomeType.xml"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE", 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Biome", "Barren"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SCORCHEDPLANT", "Biome", "GcBiomeType.xml"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE", 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Biome", "Scorched"},
                            }
                        },
                    }
                },
            }
        }
    }
}