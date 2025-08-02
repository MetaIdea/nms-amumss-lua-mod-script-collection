NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "CSO No Metrics Lines",
  ["MOD_DESCRIPTION"] = "No more white lines in front of the ship at pulse speed.",
  ["MOD_AUTHOR"]      = "NeptuneX3 & Babscoole",
  ["NMS_VERSION"]     = "5.75",
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
                {"MiniWarpLinesNum", 0}, -- Vanilla = 4
              },

            },
          },
        },
      },
    },
  },
}