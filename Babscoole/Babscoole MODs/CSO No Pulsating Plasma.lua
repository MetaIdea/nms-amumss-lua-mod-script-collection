NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "CSO No Pulsating Plasma",
["MOD_AUTHOR"]      = "NeptuneX3 & Babscoole",
["NMS_VERSION"]     = "7.00-Cosmos",
["MOD_DESCRIPTION"] = "No more pulsating plasma in space.",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACE\PLASMA\PLASMA.MATERIAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              -- no more pulsating plasma in space
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaterialClass", "Unknown"},
              },
            },
          },
        },
      },
    },
  },
}