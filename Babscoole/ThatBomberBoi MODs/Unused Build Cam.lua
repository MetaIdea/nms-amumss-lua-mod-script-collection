NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Unused Build Cam",
["MOD_AUTHOR"]      = "ThatBomberBoi",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.58",
["MOD_DESCRIPTION"] = "Re-implements every functional, yet unused, feature found in the game to best of our modding capabilities",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseBuildingCameraMode", "FocusCam"},
              }
            },
          }
        },
      }
    }
  }
}