NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Effectsless Corvette Holopad",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.36",
["MOD_DESCRIPTION"] = "Only removes the annoying bright flashing light/pulsing effects from the corvette holopad, but keeps the blue platform made of beam effects intact",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACECRAFT\LANDINGZONE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE",
            },
          }
        },
      }
    }
  }
}