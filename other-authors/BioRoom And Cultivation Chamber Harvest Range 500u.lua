Range = 500;

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "BioRoom And Cultivation Chamber Harvest Range " .. Range .. "u.pak",
    ["MOD_AUTHOR"]      = "KuroPeach",
    ["LUA_AUTHOR"]      = "KuroPeach",
    ["NMS_VERSION"]     = "5.20",
    ["MOD_DESCRIPTION"] = "",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = {
                        "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/BIOROOM/ENTITIES/INTERACTION.ENTITY.MBIN",
                        "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/PLANTROOM/PARTS/FLOOR0/ENTITIES/INTERACTION.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "StateID", "HARVEST" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                { "Radius", Range }
                            }
                        }
                    }
                }
            }
        }
    }
}
