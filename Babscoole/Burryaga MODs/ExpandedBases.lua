NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ExpandedBases.pak",
["MOD_AUTHOR"]    = "Burryaga",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.70",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinRadiusForBases",                       "2000"},
                                {"BaseRadiusExtension",                     "200"},
                                {"MaxRadiusForPlanetBases",                 "2000"},
                                {"MaxRadiusForSpaceBases",                  "2000"},
                                {"BuildingPlacementMaxConnectionLength",    "2000"},
                                {"BuildingPlacementGhostHeartSizeScale",    "1"},
                                {"BuildingPlacementGhostHeartSizeSelected", "1"},
                            }
                        },
                    }
                },
            }
        }
    }
}