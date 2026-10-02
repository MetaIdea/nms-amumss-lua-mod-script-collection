NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Better Build Mode and Camera",
["MOD_AUTHOR"]      = "Vhostymr",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.03",
["MOD_DESCRIPTION"] = "Speeds up the build camera, prevents items readjusting when picking up parts, greatly increases build camera max distance, and improves precision placement for smoother building",
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
              ["PRECEDING_KEY_WORDS"] = {"BuildingModeInitialOffset"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "0.000000"},
                {"Z", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BaseBuildingFreeCameraSettings", "GcCameraFreeSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MoveSpeed",   "30.000000"},
                {"MaxDistance", "9999.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"BaseBuildingFreeCameraSettings", "GcCameraFreeSettings"},
              ["PRECEDING_KEY_WORDS"] =
              {
                {"Offset"},
                {"InitialOffset"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.000000"},
                {"Y", "0.000000"},
                {"Z", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ShipConstructionFreeCameraSettings", "GcCameraFreeSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MoveSpeed", "30.000000"},
                {"TurnSpeed", "30.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ShipConstructionFreeCameraSettings", "GcCameraFreeSettings"},
              ["PRECEDING_KEY_WORDS"] = {"Offset"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.000000"},
                {"Y", "0.000000"},
                {"Z", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"StationExteriorFreeCameraSettings", "GcCameraFreeSettings"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MoveSpeed",   "30.000000"},
                {"MaxDistance", "9999.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"StationExteriorFreeCameraSettings", "GcCameraFreeSettings"},
              ["PRECEDING_KEY_WORDS"] = {"Offset"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.000000"},
                {"Y", "0.000000"},
                {"Z", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"StationExteriorFreeCameraSettings", "GcCameraFreeSettings"},
              ["PRECEDING_KEY_WORDS"] = {"InitialOffset"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.000000"},
                {"Y", "15.000000"},
                {"Z", "40.000000"},
              }
            },
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BuildingModeMaxDistance", "9999.000000"},
              }
            },
          }
        },
      }
    }
  }
}
