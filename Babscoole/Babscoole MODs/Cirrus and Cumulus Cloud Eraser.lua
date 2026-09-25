NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Cirrus and Cumulus Cloud Eraser",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.00-Cosmos",
["MOD_DESCRIPTION"] = "Cirrus and Cumulus Cloud Eraser",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "SHADERS\NEWCLOUD.SHADER.BIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "RAW",
              ["VALUE_CHANGE_TABLE"] =
              {
                {
                    [[    DefaultTexture = SHADER/CLOUDSHIGHRGB.DDS;]],
                    [[    DefaultTexture = COMMON/BLANK.DDS;]]
                },
              }
            },
            {
              ["REPLACE_TYPE"] = "RAW",
              ["VALUE_CHANGE_TABLE"] =
              {
                {
                    [[    DefaultTexture = SHADER/COVERAGE_SDF.DDS;]],
                    [[    DefaultTexture = COMMON/BLANK.DDS;]]
                },
              }
            },
          }
        }
      }
    }
  }
}
