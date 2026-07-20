NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Corrupted Sentinel Weapons",
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
                {"DefaultImpact",       "CORDRWPNIMP"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BOLTGUN"},
              ["PRECEDING_KEY_WORDS"] =
              {
                {"Colour"},
                {"LightColour"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.592000"},
                {"G", "0.272000"},
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
                {"Filename",            "MODELS/COMMON/PROJECTILES/CORRUPTEDFLAMETHROWER.SCENE.MBIN"},
                {"OverrideLightColour", "true"},
                {"DefaultImpact",       "CORFLAMEIMPACT"},
                {"CriticalImpact",      "CORFLAMEIMPACT"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "FLAMETHROW"},
                {"Id", "FLAME_VEH"},
              },
              ["PRECEDING_KEY_WORDS"] =
              {
                {"Colour"},
                {"LightColour"},
              },
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
                {"Id", "FLAMETHROW", "Effect", "FLAMEIMPACT"},
                {"Id", "FLAME_VEH",  "Effect", "FLAMEIMPACT"},
              },
              ["REPLACE_TYPE"] = "ALL",  
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Effect", "CORFLAMEIMPACT"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHOTGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename",            "MODELS/COMMON/PROJECTILES/CORRUPTEDDRONE_SHOTGUN.SCENE.MBIN"},
                {"AkEvent",             "DRONE_LASER"},
                {"OverrideLightColour", "true"},
                {"DefaultImpact",       "CORDRWPNIMP"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHOTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.744000"},
                {"G", "0.542000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHOTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"LightColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.796000"},
                {"G", "0.446000"},
                {"B", "0.000000"},
                {"A", "0.000000"},
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
                {"DefaultImpact",       "CORDRWPNIMP"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SMG"},
              ["PRECEDING_KEY_WORDS"] =
              {
                {"Colour"},
                {"LightColour"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.592000"},
                {"G", "0.272000"},
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
                {"Filename",            "MODELS/COMMON/PROJECTILES/CORRUPTEDDRONEGRENADEPROJECTILE.SCENE.MBIN"},
                {"OverrideLightColour", "true"},
                {"DefaultImpact",       "CORRUPTGRENEXPL"},
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
                {"BeamFile",     "MODELS/EFFECTS/LINES/LASERBEAMPURPLE.SCENE.MBIN"},
                {"BeamCoreFile", "MODELS/EFFECTS/LINES/LASERBEAMWHITECORE.SCENE.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER", "AkEvent", "WPN_PL_HANDLASER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AkEvent", "NPC_WPN_TURRET_START"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER", "AkEvent", "WPN_PL_HANDLASER_STOP"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AkEvent", "NPC_WPN_TURRET_STOP"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER"},
              ["PRECEDING_KEY_WORDS"] = {"LightColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.799000"},
                {"G", "0.217000"},
                {"B", "0.963000"},
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