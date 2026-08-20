DENSITY_MULT     = 20
DANGEROUS_WEIGHT = "1000.000000"
PACK_MIN         = "3"
PACK_MAX         = "5"
PERCEPTION       = "60.000000"
RUNAWAY_HP       = "0.000000"
PCT_HOSTILE      = "1.000000"
MAX_CREATURE     = "60"

FIEND_ATTACKERS  = "4"
FIEND_ENGAGED    = "10"
FIEND_SPAWN      = "10"
FIEND_AGGRO      = "90.000000"
FIEND_MARKERS    = "false"
FIEND_PERCEPTION = "70.000000"
HATCH_MIN        = "0.150000"
HATCH_MAX        = "1.000000"
AVOID_WEIGHT     = "10.000000"
WORM_RADIUS      = "20.000000"
FLURRY_MIN       = "3"
FLURRY_MAX       = "5"
POUNCE_DELAY     = "1.500000"
ANIM_SPEED       = "1.100000"

NOTICE_PAUSE     = "0.300000"
APPROACH_TIME    = "0.500000"
CHARGE_DIST      = "25.000000"
ENERGY_CHASING   = "0.000000"
STEER_RATE       = "0.150000"
TURN_RADIUS      = "3.000000"
COHERE_WEIGHT    = "0.800000"
ALIGN_WEIGHT     = "2.500000"
PUSH_SMALL       = "7.000000"
PUSH_MEDIUM      = "7.000000"
PUSH_LARGE       = "4.000000"
MELEE_SPEED      = "Fast"
MELEE_SLOWDOWN   = "2.000000"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "HorribleTerror_Predators_3-Dificil",
["MOD_AUTHOR"]      = "AldrichDDD",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "[DIFICIL] Conducta: 99% de planetas hostiles, manadas de 3-5, deteccion a 60 m, nunca huyen. Los Horrores Biologicos sin marcador de UI, te ven a 70 m, eclosionan en oleada, cargan sin acechar y pegan 3-5 golpes por racha.",
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
              ["COMMENT"]            = "Sin marcador de UI y percepcion de Fiend a "..FIEND_PERCEPTION,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FiendOnscreenMarkers",    FIEND_MARKERS},
                {"FiendPerceptionDistance", FIEND_PERCEPTION},
              }
            },
            {
              ["COMMENT"]            = "Eclosion en oleada",
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
              ["COMMENT"]            = "Sin acecho: te ve y arranca",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PredatorNoticePauseTime",  NOTICE_PAUSE},
                {"PredatorApproachTime",     APPROACH_TIME},
                {"PredatorChargeDist",       CHARGE_DIST},
                {"PredatorEnergyUseChasing", ENERGY_CHASING},
              }
            },
            {
              ["COMMENT"]            = "Rumbo directo: mas refresco de steering y giro cerrado",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SteeringUpdateRate", STEER_RATE},
                {"MaxTurnRadius",      TURN_RADIUS},
              }
            },
            {
              ["COMMENT"]            = "Horda: la manada se mueve como un bloque",
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
              ["COMMENT"]            = "MELEE: cierran distancia rapido y sin frenar",
              ["SPECIAL_KEY_WORDS"]  = {"Id", "MELEE"},
              ["REPLACE_TYPE"]       = "ONCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BehaviourMoveSpeed",         MELEE_SPEED},
                {"DynamicMoveSlowdownDistMul", MELEE_SLOWDOWN},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["COMMENT"]            = "FIEND: golpes por racha "..FLURRY_MIN.."/"..FLURRY_MAX,
              ["SPECIAL_KEY_WORDS"]  = {"Id", "FIEND"},
              ["REPLACE_TYPE"]       = "ONCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinFlurryHits", FLURRY_MIN},
                {"MaxFlurryHits", FLURRY_MAX},
              }
            },
            {
              ["COMMENT"]            = "FIEND: cadencia del salto -> "..POUNCE_DELAY,
              ["SPECIAL_KEY_WORDS"]  = {"Id", "FIEND"},
              ["REPLACE_TYPE"]       = "ONCE",
              ["VALUE_CHANGE_TABLE"] = { {"DelayBetweenPounceAttacks", POUNCE_DELAY} }
            },
            {
              ["COMMENT"]            = "FIEND: velocidad de animacion de ataque -> "..ANIM_SPEED,
              ["SPECIAL_KEY_WORDS"]  = {"Id", "FIEND"},
              ["REPLACE_TYPE"]       = "ONCE",
              ["VALUE_CHANGE_TABLE"] = { {"AnimSpeedModifier", ANIM_SPEED} }
            },
          }
        },
      }
    },
  },
}
