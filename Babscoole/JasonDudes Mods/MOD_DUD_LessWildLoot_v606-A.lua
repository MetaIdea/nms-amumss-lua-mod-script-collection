NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "MOD_DUD_LessWildLoot_v606-A",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "6.06",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\LEVELONEOBJECTS\FULL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
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
                                {"CollideWithPlayerVehicle", "true"},
                                {"DestroyedByPlayerVehicle", "false"},
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
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/UNDERGROUNDPROP.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"ExtraTileTypes", "ExtraTileTypes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TileType", "Mountain"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/UNDERGROUNDPROP.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"ExtraTileTypes", "ExtraTileTypes", "ExtraTileTypes"},
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
                                {"CollideWithPlayerVehicle", "false"},
                                {"DestroyedByPlayerVehicle", "true"},
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
                                {"DestroyedByPlayerVehicle", "true"},
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