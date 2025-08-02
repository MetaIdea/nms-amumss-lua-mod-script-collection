NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "CSO No Space Dust",
  ["MOD_DESCRIPTION"] = "No more space dust.",
  ["MOD_AUTHOR"]      = "NeptuneX3 & Babscoole",
  ["NMS_VERSION"]     = "5.75",
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACE\ANIMATEDDUST\ANIMATEDDUST.MATERIAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              -- no more space dust
              ["SPECIAL_KEY_WORDS"] = {"Name", "AnimatedSmokeMat"},
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