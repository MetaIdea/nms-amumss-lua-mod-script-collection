NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Asteroid Fields",
["MOD_AUTHOR"]      = "fabricator",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "It removes large asteroid fields, leaving small asteroids",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AsteroidNoiseOctaves", "0"},
              }
            }
          }
        }
      }
    }
  }
}
