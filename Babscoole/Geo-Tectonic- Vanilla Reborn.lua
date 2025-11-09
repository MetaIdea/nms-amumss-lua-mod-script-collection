NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Geo-Tectonic- Vanilla Reborn",
["MOD_AUTHOR"]      = "BornTBFast",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.16",
["MOD_DESCRIPTION"] = "Terrain changes",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",    "8"},
                {"Lacunarity", "2.200000"},
              }
            }
          }
        }
      }
    }
  }
}
