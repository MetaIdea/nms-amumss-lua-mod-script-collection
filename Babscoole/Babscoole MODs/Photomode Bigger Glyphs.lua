NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Photomode Bigger Glyphs",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.40",
["MOD_DESCRIPTION"] = "Doubles the size of the photomode glyphs",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "UI\PHOTOMODE\PHOTOOVERLAY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",  "60.000000"},
                {"Height", "80.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Default",   "TkNGuiGraphicStyleData"},
                {"Highlight", "TkNGuiGraphicStyleData"},
                {"Active",    "TkNGuiGraphicStyleData"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"A", "0.400000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RUNES"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",  "1024.000000"},
                {"Height", "80.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "SLOT01"},
                {"ID", "SLOT02"},
                {"ID", "SLOT03"},
                {"ID", "SLOT04"},
                {"ID", "SLOT05"},
                {"ID", "SLOT06"},
                {"ID", "SLOT07"},
                {"ID", "SLOT08"},
                {"ID", "SLOT09"},
                {"ID", "SLOT10"},
                {"ID", "SLOT11"},
                {"ID", "SLOT12"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Position X", "@*2"},
                {"Width",  "64.000000"},
                {"Height", "64.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GALAXYTEXT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Position X", "784.000000"},
                {"Position Y", "16.000000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Font Height", "22.000000"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Font Height", "30.000000"},
                {"Vertical",    "Middle"},
              },
            },
          },
        },
      }
    }
  }
}