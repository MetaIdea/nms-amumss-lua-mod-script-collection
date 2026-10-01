NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Better Gravitino Coil 2x",
["MOD_AUTHOR"]      = "Vhostymr",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.03",
["MOD_DESCRIPTION"] = "Improves the Gravitino Coil by increasing its range to 500 units (5x larger than default)",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"GravityLaserRange", "200.000000"},
              }
            },
          }
        },
      }
    },
  }
}
