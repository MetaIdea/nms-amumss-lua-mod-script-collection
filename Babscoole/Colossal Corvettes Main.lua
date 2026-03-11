NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Colossal Corvettes Main",
["MOD_AUTHOR"]      = "Ulfyn",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.24",
["MOD_DESCRIPTION"] = "Massively expanded corvette build area",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"ShipConstructionFreeCameraSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                { "MaxDistance",     "40000.000000"},
                { "CollisionRadius", "0.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RadiusMultiplier_DoNotPlace",             "0.000000"},
                {"RadiusMultiplier_DoNotPlaceClose",        "0.000000"},
                {"RadiusMultiplier_DoNotPlaceAnywhereNear", "0.500000"},
                {"RadiusMultiplier_OnlyPlaceAround",        "300.000000"},
                {"AddToRadius_DoNotPlaceClose",             "0.000000"},
                {"Radius_DoNotPlaceAnywhereNear",           "0.000000"},
                {"UnknownBuildingRange",                    "40000.000000"},
                {"MaxRadiusForSpaceBases",                  "40000.000000"},
                {"BuildingPlacementMaxShipBaseRadius",      "40000.000000"},
              }
            }
          }
        }
      }
    }
  }
}
