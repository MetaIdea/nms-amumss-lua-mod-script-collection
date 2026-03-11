NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME      = "Colossal Corvettes",
    MOD_DESCRIPTION   = "Massively expanded corvette build area",
    MOD_AUTHOR        = "Ulfyn",
    NMS_VERSION       = "6.24",

    MODIFICATIONS = {
        {
            MBIN_CHANGE_TABLE = {
                {
                    MBIN_FILE_SOURCE = "GLOBALS/GCCAMERAGLOBALS.GLOBAL.MBIN",
                    MXML_CHANGE_TABLE = {
                        {
                            PRECEDING_KEY_WORDS = "ShipConstructionFreeCameraSettings",
                            VALUE_CHANGE_TABLE = {
                                { "MaxDistance",     "40000.000000" },
                                { "CollisionRadius", "0.000000" },
                            }
                        },
                    }
                },
                {
                    MBIN_FILE_SOURCE = "GLOBALS/GCBUILDINGGLOBALS.GLOBAL.MBIN",
                    MXML_CHANGE_TABLE = {
                        {
                            VALUE_CHANGE_TABLE = {
                                { "RadiusMultiplier_DoNotPlace",             "0.000000" },
                                { "RadiusMultiplier_DoNotPlaceClose",        "0.000000" },
                                { "RadiusMultiplier_DoNotPlaceAnywhereNear", "0.500000" },
                                { "RadiusMultiplier_OnlyPlaceAround",        "300.000000" },
                                { "AddToRadius_DoNotPlaceClose",             "0.000000" },
                                { "Radius_DoNotPlaceAnywhereNear",           "0.000000" },
                                { "UnknownBuildingRange",                    "40000.000000" },
                                { "MaxRadiusForSpaceBases",                  "40000.000000" },
                                { "BuildingPlacementMaxShipBaseRadius",      "40000.000000" },
                            }
                        },
                    }
                },
            }
        },
    }
}