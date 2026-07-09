NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Static Bubbles",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "No static bubbles on bubblelush planets",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\PLANETS\BIOMES\WEIRD\ELBUBBLE\DETAILBUBBLE\BUBBLELODDETAILMAT.MATERIAL.MBIN",
            "MODELS\PLANETS\BIOMES\WEIRD\ELBUBBLE\ELBUBBLE\BUBBLELODMAT1.MATERIAL.MBIN",
            "MODELS\PLANETS\BIOMES\WEIRD\ELBUBBLE\SMALLBUBBLE\BUBBLELODMAT.MATERIAL.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"SAMPLERS"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Map", ""},
              },
            },
          }
        },
      }
    },
  }
}