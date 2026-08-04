NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "HorribleTerror_Predators_2-Normal",
["MOD_AUTHOR"]      = "AldrichDDD",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Predators hunt you in packs, spot you from further away, and never flee",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxEcosystemCreaturesNormal",  "50"},
                {"PredatorPerceptionDistance",   "50.000000"},
                {"PercentagePlayerPredators",    "0.7500000"},
                {"PredatorRunAwayHealthPercent", "15.000000"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Generic", "GcCreatureGenerationWeightedList", "Ground", "GcCreatureGenerationWeightedListDomainEntry"},
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weight", "10.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GroundGroupsPerKm"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Sparse",    "125.000000"},
                {"Normal",    "250.000000"},
                {"Dense",     "500.000000"},
                {"VeryDense", "1000.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORMED.MBIN",
          },
          ["MXML_CHANGE_TABLE"] = 
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinGroupSize", "2"},
                {"MaxGroupSize", "3"},
              }
            },
          }
        },
      }
    },
  }
}