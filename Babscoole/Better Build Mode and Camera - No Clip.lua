NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Better Build Mode and Camera - No Clip",
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
              ["SPECIAL_KEY_WORDS"] =
              {
                {"BaseBuildingFreeCameraSettings",     "GcCameraFreeSettings"},
                {"ShipConstructionFreeCameraSettings", "GcCameraFreeSettings"},
                {"StationExteriorFreeCameraSettings",  "GcCameraFreeSettings"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CollisionRadius", "-0.500000"},
              }
            },
          }
        },
      }
    }
  }
}
