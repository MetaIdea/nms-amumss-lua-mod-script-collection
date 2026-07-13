NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Restore Secondary Resources",
["MOD_AUTHOR"]      = "quinn",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Allow you to find biome-exclusive materials by breaking rocks again, instead of having to use the terrain manipulator and finding deposits",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"UseSecondaryBiomeSubstances", "true"},
              }
            },
          }
        },
      }
    }
  }
}