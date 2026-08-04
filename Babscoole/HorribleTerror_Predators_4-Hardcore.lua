NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "HorribleTerror_Predators_4-Hardcore",
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
                {"MaxEcosystemCreaturesNormal",   "70"},
                {"PredatorPerceptionDistance",    "80.000000"},
                {"PercentagePlayerPredators",     "1.000000"},
                {"PlayerPredatorBoredomDistance", "150.000000"},
                {"PredatorRunAwayHealthPercent",  "0.000000"},
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
                {"Weight", "1000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GroundGroupsPerKm"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Sparse",    "500.000000"},
                {"Normal",    "1000.000000"},
                {"Dense",     "2000.000000"},
                {"VeryDense", "4000.000000"},
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
                {"MinGroupSize", "5"},
                {"MaxGroupSize", "7"},
              }
            },
          }
        },
      }
    },
  }
}