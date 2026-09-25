NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Clouds from Space",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.00-Cosmos",
["MOD_DESCRIPTION"] = "No Clouds from Space",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MATERIALS\ATMOSPHERE.MATERIAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "gCloudNormalMap"},
                {"Name", "gCloudBumpMap"},
                {"Name", "gCloudMap"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Map", ""},
              }
            },
          }
        }
      }
    }
  }
}
