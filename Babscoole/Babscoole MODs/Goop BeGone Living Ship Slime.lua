NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Goop Begone Living Ship Slime",
["MOD_DESCRIPTION"] = "Remove trypophobia triggers from Living Ship",
["MOD_AUTHOR"]      = "Gumsk & Babscoole",
["NMS_VERSION"]     = "6.10",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\BIOSHIP_PROC.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Slime5"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\NOSTRILBURSTS.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "Slime13"},
              },
              ["REMOVE"] = "SECTION"
            },
          },
        },
      },
    },
  },
}
