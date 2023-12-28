NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_LessWildLoot_v443-A.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.43",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/DEBRISLARGE_COMMON.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",     "0.5"},
                                {"FlatDensity",  "0.01"},
                                {"SlopeDensity", "0.01"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/RUINPARTS/WORDSTONE.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CollideWithPlayerVehicle", "True"},
                                {"DestroyedByPlayerVehicle", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATELAYOUTS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAngle", "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATELAYOUTS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",     "0.6"},
                                {"FlatDensity",  "0.01"},
                                {"SlopeDensity", "0.01"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULLSAFE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/UNDERGROUNDPROP.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"GcTerrainTileType.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TileType", "Mountain"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/UNDERGROUNDPROP.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"GcTerrainTileType.xml", "GcTerrainTileType.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TileType", "Rock"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/DEBRISLARGE_COMMON.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Placement",                "DEBRIS"},
                                {"OverlapStyle",             "None"},
                                {"CollideWithPlayerVehicle", "False"},
                                {"DestroyedByPlayerVehicle", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/DEBRIS/DEBRISLARGE_COMMON.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",        "0.5"},
                                {"FlatDensity",     "0.01"},
                                {"SlopeDensity",    "0.01"},
                                {"SlopeMultiplier", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/RUINPARTS/WORDSTONE.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Placement",    "WORDSTONE"},
                                {"OverlapStyle", "None"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/RUINPARTS/WORDSTONE.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",     "1"},
                                {"FlatDensity",  "0.02"},
                                {"SlopeDensity", "0.02"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATELAYOUTS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Placement",                "CRATES"},
                                {"MaxAngle",                 "45"},
                                {"DestroyedByPlayerVehicle", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATELAYOUTS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",        "0.6"},
                                {"FlatDensity",     "0.01"},
                                {"SlopeDensity",    "0.01"},
                                {"SlopeMultiplier", "1"},
                            }
                        },
                    }
                },
            }
        }
    }
}