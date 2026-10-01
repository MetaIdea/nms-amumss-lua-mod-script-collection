NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Quick Warp",
["MOD_AUTHOR"]      = "JinxM0D",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.03",
["MOD_DESCRIPTION"] = "This mod changes the time needed to start a pulse warp while in the star system",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MiniWarpChargeTime", "0.750000"},
              }
            },
          }
        },
      }
    },
  }
}
