NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "TechPlantCollisionFix.pak",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.22",
["MOD_DESCRIPTION"] = "Fixes collision in Deuterium Rich Plants",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        -- "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FUELPLANT\ENTITIES\FUELPLANT.ENTITY.MBIN",
                        -- "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FUELPLANT1\ENTITIES\FUELPLANT_1.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\TECHPLANT\ENTITIES\TECHPLANT.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoPlayerCollide", "True"},
                            }
                        },
                    }
                },
            }
        }
    }
}