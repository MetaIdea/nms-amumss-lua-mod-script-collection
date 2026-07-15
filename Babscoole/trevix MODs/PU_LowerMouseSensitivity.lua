NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_LowerMouseSensitivity",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "Good if you're using a high dpi mouse",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MouseSensitivity",        "0.400000"},
                {"MouseSensitivityShip",    "15"},
                {"MouseSensitivityVehicle", "15"},
              }
            },
          }
        },
      }
    }
  }
}