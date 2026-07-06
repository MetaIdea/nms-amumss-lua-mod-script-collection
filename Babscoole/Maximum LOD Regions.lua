NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Maximum LOD Regions",
["MOD_AUTHOR"]      = "fabricator",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Increases the draw distance of terrain, objects, and buildings",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"GenerateFarLodBuildingDist", "3000"},
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Ultra", "TkLODSettingsData"},
              ["PRECEDING_KEY_WORDS"] = {"RegionLODRadius"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "7"},
                {"IGNORE", "17"},
                {"IGNORE", "19"},
                {"IGNORE", "15"},
                {"IGNORE", "15"},
                {"IGNORE", "13"},
              }
            }
          }
        },
      }
    }
  }
}
