NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "NoLandlockedPlanets.pak",
["MOD_AUTHOR"]    = "darkmessenger84",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.40",
["MODIFICATIONS"] =
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
                {"ForcePlanetsToHaveWater", "True"},
              }
            },
          }
        },
      }
    },
  }
}