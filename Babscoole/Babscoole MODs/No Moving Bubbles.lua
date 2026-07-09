NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Moving Bubbles",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "No moving bubbles on bubblelush planets",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\EFFECTS\HEAVYAIR\BUBBLE\BUBBLE.HEAVYAIR.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles", "0"},
              },
            },
          }
        },
      }
    },
  }
}