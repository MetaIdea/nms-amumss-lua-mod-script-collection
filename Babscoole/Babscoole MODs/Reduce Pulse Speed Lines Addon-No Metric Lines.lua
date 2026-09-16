NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Reduce Pulse Speed Lines Addon-No Metric Lines",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.00-Cosmos",
["MOD_DESCRIPTION"] = "No more white lines in front of the ship at pulse speed",
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
                {"MiniWarpLinesNum", 0},
              },
            },
          },
        },
      },
    },
  },
}