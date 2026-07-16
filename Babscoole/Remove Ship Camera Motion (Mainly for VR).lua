NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Remove Ship Camera Motion (Mainly for VR)",
["MOD_AUTHOR"]      = "Aceship",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "Remove the ship camera motion lag when turning the ship",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ShipCamMotionInterp", "0.000000"},
              }
            },
          }
        },
      }
    }
  }
}