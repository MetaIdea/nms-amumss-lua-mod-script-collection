DENSITY_MULT     = 2
PACK_MIN         = "1"
PACK_MAX         = "2"
PERCEPTION       = "45.000000"
MAX_CREATURE     = "45"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "HorribleTerror_Predators_1-Facil",
["MOD_AUTHOR"]      = "AldrichDDD",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "[FACIL] Conducta: depredadores mas agresivos, manadas de 1-2, deteccion a 45 m, sin tocar que planetas son hostiles. Los Horrores Biologicos se quedan en vanilla en esta configuracion.",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["COMMENT"]             = "GroundGroupsPerKm x"..DENSITY_MULT,
              ["PRECEDING_KEY_WORDS"] = {"GroundGroupsPerKm"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Sparse",    "@*"..DENSITY_MULT},
                {"Normal",    "@*"..DENSITY_MULT},
                {"Dense",     "@*"..DENSITY_MULT},
                {"VeryDense", "@*"..DENSITY_MULT},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORMED.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["COMMENT"]            = "Manada "..PACK_MIN.."/"..PACK_MAX,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinGroupSize", PACK_MIN},
                {"MaxGroupSize", PACK_MAX},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GLOBALS\GCCREATUREGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["COMMENT"]            = "Sentidos y tenacidad del depredador",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PredatorPerceptionDistance",   PERCEPTION},
                {"MaxEcosystemCreaturesNormal",  MAX_CREATURE},
              }
            },
          }
        },
      }
    },
  },
}
