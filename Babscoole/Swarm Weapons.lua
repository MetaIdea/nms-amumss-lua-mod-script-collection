NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Swarm Weapons",
["MOD_AUTHOR"]      = "OwenBoogie",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Reskins player weapons to look like robot weapons",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\ROBOTS\DRONESHIELD.SCENE.MBIN", "MODELS\COMMON\WEAPONS\PLAYERSHIELD\PLAYERSHIELD.SCENE.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\WEAPONS\PLAYERSHIELD\PLAYERSHIELD.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NameHash", "2618014881"},
                {"Name",     "MODELS\COMMON\WEAPONS\PLAYERSHIELD\PLAYERSHIELD"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Data", "Name", "ATTACHMENT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "MODELS/COMMON/ROBOTS/DRONESHIELD/ENTITIES/DRONESHIELDPLAYER.ENTITY.MBIN"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            {"MODELS\COMMON\ROBOTS\DRONESHIELD\ENTITIES\DRONESHIELD.ENTITY.MBIN", "MODELS\COMMON\ROBOTS\DRONESHIELD\ENTITIES\DRONESHIELDPLAYER.ENTITY.MBIN", "REMOVE"},
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\ROBOTS\DRONESHIELD\ENTITIES\DRONESHIELDPLAYER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcSentinelCoverComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HealthPercLostPerSecMin", "0.000000"},
                {"HealthPercLostPerSecMax", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "TkPhysicsComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NoPlayerCollide", "true"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "LASER"},
                {"ID", "STRONGLASER"},
                {"ID", "UT_MINER"},
                {"ID", "LASER_XO"},
                {"ID", "SENT_LASER"},
                {"ID", "ATLAS_LASER"},
                {"ID", "T_LASER"},
              },
              ["PRECEDING_KEY_WORDS"] =
              {
                {"UpgradeColour"},
                {"LinkColour"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.000000"},
                {"G", "0.000000"},
                {"B", "0.000000"},
                {"A", "0.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BOLTGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename",            "MODELS/EFFECTS/WEAPONS/ROBOTS/ROBOTPROJECTILE.SCENE.MBIN"},
                {"AkEvent",             "DRONE_LASER"},
                {"OverrideLightColour", "true"},
                {"DefaultImpact",       "SWARMWPNIMP"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BOLTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.500238"},
                {"B", "0.272000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BOLTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"LightColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.515978"},
                {"B", "0.272000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "BOLTGUN", "Effect", "GUNHIT_PLAYER"},
                {"Id", "BOLTGUN", "Effect", "SHIELDIMPACT"},
              },
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "FLAMETHROW"},
                {"Id", "FLAME_VEH"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename",            "MODELS/COMMON/PROJECTILES/MINIDRONEFLAMETHROWER.SCENE.MBIN"},
                {"OverrideLightColour", "true"},
                {"DefaultImpact",       "SWARFLAMEIMPACT"},
                {"CriticalImpact",      "SWARFLAMEIMPACT"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "FLAMETHROW"},
                {"Id", "FLAME_VEH"},
              },
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.744000"},
                {"G", "0.542000"},
                {"B", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "FLAMETHROW"},
                {"Id", "FLAME_VEH"},
              },
              ["PRECEDING_KEY_WORDS"] = {"LightColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"G", "0.392000"},
                {"B", "0.139000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "FLAMETHROW", "Effect", "FLAMEIMPACT"},
                {"Id", "FLAME_VEH",  "Effect", "FLAMEIMPACT"},
              },
              ["REPLACE_TYPE"] = "ALL",  
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Effect", "SWARFLAMEIMPACT"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHOTGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename",            "MODELS/COMMON/PROJECTILES/MINIDRONE_SHOTGUN.SCENE.MBIN"},
                {"AkEvent",             "DRONE_LASER"},
                {"OverrideLightColour", "true"},
                {"DefaultImpact",       "SWARMWPNIMP"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHOTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.495661"},
                {"B", "0.241441"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHOTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"LightColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.560302"},
                {"B", "0.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "SHOTGUN", "Effect", "GUNHIT"},
                {"Id", "SHOTGUN", "Effect", "SHIELDIMPACT"},
              },
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename",            "MODELS/EFFECTS/WEAPONS/ROBOTS/ROBOTPROJECTILE.SCENE.MBIN"},
                {"AkEvent",             "DRONE_LASER"},
                {"OverrideLightColour", "true"},
                {"DefaultImpact",       "SWARMWPNIMP"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SMG"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.500238"},
                {"B", "0.272000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SMG"},
              ["PRECEDING_KEY_WORDS"] = {"LightColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.515978"},
                {"B", "0.272000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "SMG", "Effect", "SMGHIT"},
                {"Id", "SMG", "Effect", "SHIELDIMPACT"},
              },
              ["REMOVE"] = "SECTION"
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "GRENADE"},
                {"Id", "MINE_GREN"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename",      "MODELS/COMMON/PROJECTILES/MINIDRONEGRENADEPROJECTILE.SCENE.MBIN"},
                {"DefaultImpact", "MINIGRENEXPL"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MINE_GREN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"G", "1.000000"},
                {"B", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "GRENADE"},
                {"Id", "MINE_GREN"},
              },
              ["PRECEDING_KEY_WORDS"] = {"LightColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.744000"},
                {"G", "0.542000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BeamFile",     "MODELS/EFFECTS/LINES/PIRATEFREIGHTERLASERBEAM.SCENE.MBIN"},
                {"BeamCoreFile", "MODELS/EFFECTS/LINES/LASERBEAMWHITECORE.SCENE.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER", "AkEvent", "WPN_PL_HANDLASER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AkEvent", "HIVE_ARM_LASER_START"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER", "AkEvent", "WPN_PL_HANDLASER_STOP"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AkEvent", "HIVE_ARM_LASER_END"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER"},
              ["PRECEDING_KEY_WORDS"] = {"LightColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.322000"},
                {"B", "0.041000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "1.000000"},
                {"B", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER_BOLT"},
              ["REPLACE_TYPE"] = "ALL",  
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AkEvent", "INVALID_EVENT"},
              }
            },
          }
        },
      }
    }
  }
}