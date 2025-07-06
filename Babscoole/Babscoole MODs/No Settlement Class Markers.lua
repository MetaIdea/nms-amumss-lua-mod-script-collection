NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Settlement Class Markers",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.73",
["MOD_DESCRIPTION"] = "Removes settlement class markers from buildings",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SETTLEMENT\CLASSMARKERA.SCENE.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SETTLEMENT\CLASSMARKERB.SCENE.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SETTLEMENT\CLASSMARKERS.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["CREATE_HOES"] = "TRUE"
            },
          }
        },
      }
    },
  }
}