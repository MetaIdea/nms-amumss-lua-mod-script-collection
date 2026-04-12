NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Waste Depots On All Scrap Planets",
["MOD_AUTHOR"]      = "IgorGaming",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.32",
["MOD_DESCRIPTION"] = "This mod makes Processing Plants and Waste Heaps spawn on Scrap Planets they couldn't before",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"CargoDrop", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead",       "1.500000"},
                {"Weird",      "3.000000"},
                {"HalfWeird",  "1.500000"},
                {"Waterworld", "1.500000"},
                {"GasGiant",   "3.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ScrapYard", "GcBuildingDefinitionData"},
              ["PRECEDING_KEY_WORDS"] = {"Density"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Dead",       "1.000000"},
                {"Weird",      "1.000000"},
                {"HalfWeird",  "1.000000"},
                {"Waterworld", "1.000000"},
                {"GasGiant",   "1.000000"},
              }
            },
          }
        }
      }
    }
  }
}