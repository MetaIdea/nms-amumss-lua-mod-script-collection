NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Corvette Validation",
["MOD_AUTHOR"]      = "K00L",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.04",
["MOD_DESCRIPTION"] = "Very simple mod enabling the (almost titular) debug option, allowing builds with missing or unconnected modules",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DisableCorvetteValidation", "true"},
              }
            },
          }
        },
      }
    },
  }
}
