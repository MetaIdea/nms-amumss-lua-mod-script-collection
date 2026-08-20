DENSITY_MULT     = 3
DANGEROUS_WEIGHT = "4.000000"
PACK_MIN         = "1"
PACK_MAX         = "2"
PERCEPTION       = "50.000000"
RUNAWAY_HP       = "25.000000"
PCT_HOSTILE      = "0.600000"
MAX_CREATURE     = "50"

FIEND_ATTACKERS  = "3"
FIEND_ENGAGED    = "8"
FIEND_SPAWN      = "8"
FIEND_AGGRO      = "60.000000"
FIEND_PERCEPTION = "65.000000"
HATCH_MIN        = "0.200000"
HATCH_MAX        = "2.000000"
AVOID_WEIGHT     = "8.000000"
WORM_RADIUS      = "50.000000"
POUNCE_DELAY     = "1.800000"

NOTICE_PAUSE     = "0.800000"
APPROACH_TIME    = "2.000000"
CHARGE_DIST      = "12.000000"
ENERGY_CHASING   = "-0.050000"
STEER_RATE       = "0.200000"
TURN_RADIUS      = "4.000000"
COHERE_WEIGHT    = "0.400000"
ALIGN_WEIGHT     = "1.500000"
PUSH_SMALL       = "9.000000"
PUSH_MEDIUM      = "9.000000"
PUSH_LARGE       = "4.500000"
MELEE_SLOWDOWN   = "3.000000"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "HorribleTerror_Predators_2-Normal",
["MOD_AUTHOR"]      = "AldrichDDD",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "[NORMAL] Conducta: 27% de planetas hostiles, manadas de 1-2, deteccion a 50 m. Los Horrores Biologicos te ven a 65 m, eclosionan mas juntos, se acercan mas derechos y en grupo, y saltan cada 1.8 s.",
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
            {
              ["COMMENT"]            = "Generic/Ground: DANGEROUS -> "..DANGEROUS_WEIGHT,
              ["SPECIAL_KEY_WORDS"]  =
              {
                "Generic",   "GcCreatureGenerationWeightedList",
                "Archetype", "DANGEROUS",
              },
              ["REPLACE_TYPE"]       = "ONCE",
              ["VALUE_CHANGE_TABLE"] = { {"Weight ", DANGEROUS_WEIGHT} }
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
                {"PredatorRunAwayHealthPercent", RUNAWAY_HP},
                {"PercentagePlayerPredators",    PCT_HOSTILE},
                {"MaxEcosystemCreaturesNormal",  MAX_CREATURE},
              }
            },
            {
              ["COMMENT"]            = "Presion de los Horrores Biologicos",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FiendMaxAttackers", FIEND_ATTACKERS},
                {"FiendMaxEngaged",   FIEND_ENGAGED},
                {"MaxFiendsToSpawn",  FIEND_SPAWN},
                {"FiendAggroTime",    FIEND_AGGRO},
              }
            },
            {
              ["COMMENT"]            = "Percepcion de Fiend a "..FIEND_PERCEPTION,
              ["VALUE_CHANGE_TABLE"] = { {"FiendPerceptionDistance", FIEND_PERCEPTION} }
            },
            {
              ["COMMENT"]            = "Eclosion mas junta",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FiendMinSpawnTime", HATCH_MIN},
                {"FiendMaxSpawnTime", HATCH_MAX},
              }
            },
            {
              ["COMMENT"]            = "Separacion entre criaturas y gusano por cercania",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AvoidCreaturesWeight",            AVOID_WEIGHT},
                {"GroundWormSpawnerActivateRadius", WORM_RADIUS},
              }
            },
            {
              ["COMMENT"]            = "Menos acecho",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PredatorNoticePauseTime",  NOTICE_PAUSE},
                {"PredatorApproachTime",     APPROACH_TIME},
                {"PredatorChargeDist",       CHARGE_DIST},
                {"PredatorEnergyUseChasing", ENERGY_CHASING},
              }
            },
            {
              ["COMMENT"]            = "Rumbo directo: mas refresco de steering y giro mas cerrado",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SteeringUpdateRate", STEER_RATE},
                {"MaxTurnRadius",      TURN_RADIUS},
              }
            },
            {
              ["COMMENT"]            = "Horda: la manada se mantiene mas junta",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FollowLeaderCohereWeight", COHERE_WEIGHT},
                {"FollowLeaderAlignWeight",  ALIGN_WEIGHT},
              }
            },
            {
              ["COMMENT"]             = "Horda: menos empujon mutuo (struct por tamano)",
              ["PRECEDING_KEY_WORDS"] = {"SpherePusherWeight"},
              ["VALUE_CHANGE_TABLE"]  =
              {
                {"Small",  PUSH_SMALL},
                {"Medium", PUSH_MEDIUM},
                {"Large",  PUSH_LARGE},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREBEHAVIOURTREES.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["COMMENT"]            = "MELEE: frenan menos al acercarse",
              ["SPECIAL_KEY_WORDS"]  = {"Id", "MELEE"},
              ["REPLACE_TYPE"]       = "ONCE",
              ["VALUE_CHANGE_TABLE"] = { {"DynamicMoveSlowdownDistMul", MELEE_SLOWDOWN} }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["COMMENT"]            = "FIEND: cadencia del salto -> "..POUNCE_DELAY,
              ["SPECIAL_KEY_WORDS"]  = {"Id", "FIEND"},
              ["REPLACE_TYPE"]       = "ONCE",
              ["VALUE_CHANGE_TABLE"] = { {"DelayBetweenPounceAttacks", POUNCE_DELAY} }
            },
          }
        },
      }
    },
  },
}
