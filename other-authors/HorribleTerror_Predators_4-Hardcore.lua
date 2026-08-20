DENSITY_MULT     = 20
DANGEROUS_WEIGHT = "1000.000000"
PACK_MIN         = "5"
PACK_MAX         = "7"
PERCEPTION       = "80.000000"
RUNAWAY_HP       = "0.000000"
PCT_HOSTILE      = "1.000000"
MAX_CREATURE     = "70"
BOREDOM          = "150.000000"

FIEND_ATTACKERS  = "8"
FIEND_ENGAGED    = "16"
FIEND_SPAWN      = "16"
FIEND_AGGRO      = "600.000000"
FIEND_MARKERS    = "false"
FIEND_PERCEPTION = "120.000000"

PREDATOR_MARKERS  = "false"
FIEND_AGGRO_DECAY = "0.000000"
FIEND_AGGRO_EGG   = "3.000000"
FIEND_SHOT_MEMORY = "60.000000"
FIEND_DESPAWN     = "300.000000"
HATCH_MIN        = "0.100000"
HATCH_MAX        = "0.500000"
AVOID_WEIGHT     = "10.000000"
WORM_RADIUS      = "10.000000"
FLURRY_MIN       = "3"
FLURRY_MAX       = "6"
POUNCE_DELAY     = "1.200000"
ANIM_SPEED       = "1.200000"
BROOD_ALLOW      = "true"
BROOD_ID         = "BUGFIENDS"
BROOD_TIMER      = "10.000000"

NOTICE_PAUSE     = "0.000000"
APPROACH_TIME    = "0.000000"
CHARGE_DIST      = "40.000000"
ENERGY_CHASING   = "0.000000"
STEER_RATE       = "0.100000"
TURN_RADIUS      = "2.000000"
COHERE_WEIGHT    = "1.200000"
ALIGN_WEIGHT     = "3.500000"
PUSH_SMALL       = "5.000000"
PUSH_MEDIUM      = "5.000000"
PUSH_LARGE       = "3.000000"
MELEE_SPEED      = "Fast"
MELEE_SLOWDOWN   = "1.000000"

FREIGHTER_SPAWN   = "60.000000"
FREIGHTER_DESPAWN = "150.000000"
FIEND_SPAWN_DIST  = "120.000000"

POD_TORCH        = "12.000000"
POD_GUNFIRE      = "8.000000"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "HorribleTerror_Predators_4-Hardcore",
["MOD_AUTHOR"]      = "AldrichDDD",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "[HARDCORE] Conducta: manadas de 5-7, te detectan a 80 m y te persiguen 150. Los Horrores Biologicos te ven a 120 m, no llevan marcador, eclosionan de golpe, cargan sin acechar, se multiplican al rugir, las crias pegan igual que sus padres y no pierden el interes. Los nidos de carguero reaccionan a la linterna y a los disparos.",
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
                {"PlayerPredatorBoredomDistance", BOREDOM},
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
                {"PredatorNoticePauseTime", NOTICE_PAUSE},
                {"PredatorApproachTime",    APPROACH_TIME},
                {"PredatorChargeDist",      CHARGE_DIST},
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
            {
              ["COMMENT"]            = "El aggro no se drena ni caduca",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FiendAggroDecreasePerSpawn",   FIEND_AGGRO_DECAY},
                {"FiendAggroIncreaseDamageEgg",  FIEND_AGGRO_EGG},
                {"FiendAggroIncreaseDestroyEgg", FIEND_AGGRO_EGG},
              }
            },
            {
              ["COMMENT"]            = "Memoria y correa: no te sueltan ni te pierden",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FiendBeingShotMemoryTime", FIEND_SHOT_MEMORY},
                {"FiendDespawnDistance",     FIEND_DESPAWN},
              }
            },
            {
              ["COMMENT"]            = "Interiores: los Horrores del carguero salen antes y aguantan mas",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FreighterSpawnDist",   FREIGHTER_SPAWN},
                {"FreighterDespawnDist", FREIGHTER_DESPAWN},
                {"FiendSpawnDistance",   FIEND_SPAWN_DIST},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\INFESTATION\LARGEPILLARSLIME\ENTITIES\LARGEPILLARSLIME.ENTITY.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\INFESTATION\MEDIUMHANGSLIME\ENTITIES\MEDIUMHANGSLIME.ENTITY.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["COMMENT"]            = "El nido despierta con la linterna y con los disparos",
              ["SPECIAL_KEY_WORDS"]  = {"Components", "GcAlienPodComponentData"},
              ["REPLACE_TYPE"]       = "ONCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AgroTorch",   POD_TORCH},
                {"GunfireAgro", POD_GUNFIRE},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GLOBALS\GCUIGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["COMMENT"]            = "Sin marcador de UI en los depredadores",
              ["VALUE_CHANGE_TABLE"] = { {"ShowOnscreenPredatorMarkers", PREDATOR_MARKERS} }
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
                {"BehaviourMoveSpeed",          MELEE_SPEED},
                {"DynamicMoveSlowdownDistMul",  MELEE_SLOWDOWN},
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
            {
              ["COMMENT"]            = "FIEND: se multiplica mientras luchas",
              ["SPECIAL_KEY_WORDS"]  = {"Id", "FIEND"},
              ["REPLACE_TYPE"]       = "ONCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AllowSpawnBrood",  BROOD_ALLOW},
                {"SpawnBroodID",     BROOD_ID},
                {"SpawnBroodTimer",  BROOD_TIMER},
              }
            },
            {
              ["COMMENT"]            = "BUGFIEND: golpes por racha "..FLURRY_MIN.."/"..FLURRY_MAX,
              ["SPECIAL_KEY_WORDS"]  = {"Id", "BUGFIEND"},
              ["REPLACE_TYPE"]       = "ONCE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinFlurryHits", FLURRY_MIN},
                {"MaxFlurryHits", FLURRY_MAX},
              }
            },
            {
              ["COMMENT"]            = "BUGFIEND: cadencia del salto -> "..POUNCE_DELAY,
              ["SPECIAL_KEY_WORDS"]  = {"Id", "BUGFIEND"},
              ["REPLACE_TYPE"]       = "ONCE",
              ["VALUE_CHANGE_TABLE"] = { {"DelayBetweenPounceAttacks", POUNCE_DELAY} }
            },
            {
              ["COMMENT"]            = "BUGFIEND: velocidad de animacion de ataque -> "..ANIM_SPEED,
              ["SPECIAL_KEY_WORDS"]  = {"Id", "BUGFIEND"},
              ["REPLACE_TYPE"]       = "ONCE",
              ["VALUE_CHANGE_TABLE"] = { {"AnimSpeedModifier", ANIM_SPEED} }
            },
          }
        },
      }
    },
  },
}
