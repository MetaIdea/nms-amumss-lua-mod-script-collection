NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Unlimited Base Building",
["MOD_AUTHOR"]      = "Mjjstral & Babscoole",
["NMS_VERSION"]     = "6.20",
["MOD_DESCRIPTION"] = "Removes some build restrictions",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BuildableOnPlanetBase",        "true"},
                {"BuildableOnSpaceBase",         "true"},
                {"BuildableOnFreighter",         "true"},
                {"BuildableOnPlanet",            "true"},
                {"BuildableOnPlanetWithProduct", "true"},
                {"BuildableUnderwater",          "true"},
                {"BuildableAboveWater",          "true"},
                {"PlanetLimit",                  "0"},
                {"RegionLimit",                  "0"},
                {"PlanetBaseLimit",              "0"},
                {"FreighterBaseLimit",           "0"},
                {"CheckPlaceholderCollision",    "false"},
                {"CanRotate3D",                  "true"},
                {"CanScale",                     "true"},
                --{"BaseBuildingDecorationType",   "Normal"},
                --{"IsDecoration",                 "false"},
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                --{"DisableLimits",                "true"},
                {"DisableBaseBuildingLimits",    "true"},
                {"DisableBasePowerRequirements", "true"},
                {"BaseDownloadTimeout",          "120"}, --ORIGINAL 40
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxBuildHeight", "1024"} --ORIGINAL 64
              }
            }
          }
        }
      }
    }
  }
}