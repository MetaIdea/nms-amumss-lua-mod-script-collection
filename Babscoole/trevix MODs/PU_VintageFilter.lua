NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_VintageFilter",
["MOD_AUTHOR"]      = "trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "Like the good old days",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\EFFECTS\SCREENFILTERS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "TEXTURES/LUT/FILTERS/DEFAULT.DDS"},
              }
            },
          }
        }
      }
    }
  }
}