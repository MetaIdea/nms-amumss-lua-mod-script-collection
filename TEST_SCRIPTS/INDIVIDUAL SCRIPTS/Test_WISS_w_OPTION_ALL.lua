NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]  = "Test_WISS_w_OPTION_ALL.pak", 
  ["MOD_AUTHOR"]  = "Wbertro+Trimires",
  ["LUA_AUTHOR"]  = "Wbertro+Trimires",
  ["MOD_DESCRIPTION"] = "Test mod",
  ["MODIFICATIONS"]  = 
  {
    {
      ["MBIN_CHANGE_TABLE"]  = 
      {
        {
          ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
          ["EXML_CHANGE_TABLE"]  = 
          {
            {
              COMMENT = [[Only one section changed]],
              WISS = {{"DeploysInto","",}},
              WISUBSEC_LOP = "NOR",
              VCT =
              {
                {"SpaceStationMarkup",30},
              }
            },
       
            {
              COMMENT = [[ALL sections changed]],
              WISS = {{"DeploysInto","",}},
              WISUBSEC_LOP = "NOR",
              WISUBSEC_OPTION = "ALL",
              VCT =
              {
                {"SpaceStationMarkup",60},
              }
            },
     
          }
        },
      }
    },
  } --213 global replacements
}