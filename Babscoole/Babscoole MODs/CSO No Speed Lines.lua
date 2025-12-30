NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "CSO No Speed Lines",
["MOD_DESCRIPTION"] = "No more speed lines at cruise/boost/pulse speed in space.",
["MOD_AUTHOR"]      = "NeptuneX3 & Babscoole",
["NMS_VERSION"]     = "6.18",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\EFFECTS\LINES\SPEEDLINEMATERIAL.MATERIAL.MBIN",
            "MODELS\EFFECTS\LINES\SPEEDLINE2MATERIAL.MATERIAL.MBIN",
            "MODELS\EFFECTS\LINES\SPEEDLINE3MATERIAL.MATERIAL.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              -- no more speed lines
              ["SPECIAL_KEY_WORDS"] = {"Name", "Line"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Class", ""},
              },
            },
          },
        },
      },
    },
  },
}