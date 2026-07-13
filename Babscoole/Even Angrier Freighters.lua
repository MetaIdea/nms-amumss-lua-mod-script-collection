NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Even Angrier Freighters",
["MOD_AUTHOR"]      = "Bluescreen800832",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "Freighters have unionized and have been rearmed to better defend themselves",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FreighterAlertThreshold",          "0.000000"},
                {"FreighterAttackDisengageDistance", "8000.000000"},
                {"FreighterAttackAlertThreshold",    "0.000000"},
                {"VisibleDistance",                  "8500.000000"},
                {"MinAggroDamage",                   "0"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "CANNON"},
                {"Id", "MINIROBOTGUN"},
                {"Id", "ROBOTGUN"},
                {"Id", "ROBOTGUNFRIENDL"},
                {"Id", "ROBOTGUNWEAK"},
                {"Id", "ROBOTBIGGUN"},
                {"Id", "TRADERGUN"},
                {"Id", "COP_FREIGHTGUN"},
                {"Id", "PI_FRE_SMAL"},
                {"Id", "BASE_TURRET_M"},
                {"Id", "TURRETINT"},
                {"Id", "SENMECHCANON"},
                {"Id", "SENMECHSMG"},
                {"Id", "PIRATERAIDGUN"},
              },
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.000000"},
                {"B", "0.000000"},
                {"A", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "SHIPGUN"},
                {"Id", "AISHIPGUN"},
              },
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.000000"},
                {"G", "0.000000"},
                {"B", "0.000000"},
                {"A", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.000000"},
                {"B", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename",           "MODELS/COMMON/PROJECTILES/PIRATEFREIGHTERSMALLTURRETGUN.SCENE.MBIN"},
                {"Scale",              "250.000000"},
                {"Radius",             "2.000000"},
                {"DefaultSpeed",       "3450.000000"},
                {"Life",               "5.000000"},
                {"DefaultDamage",      "20"},
                {"BulletGlowWidthMin", "2.000000"},
                {"DefaultImpact",      "FRANTISHIPIMP"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Colour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.000000"},
                {"G", "0.000000"},
                {"B", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTGUN", "FireAudioEvent", "GcAudioWwiseEvents"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AkEvent", "NPC_WPN_FREIGHTER_TURRET_FIRE"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTGUN", "OverheatAudioEvent", "GcAudioWwiseEvents"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AkEvent", "WPN_SHIP_INFRAKNIFE_OVERHEAT"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Impacts"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Impacts"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Impacts" value="GcProjectileImpactData" _index="0">
          <Property name="Effect" value="FRANTISHIPIMP" />
          <Property name="Impact" value="GcProjectileImpactType">
            <Property name="Impact" value="Player" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="HitBody" />
        </Property>
        <Property name="Impacts" value="GcProjectileImpactData" _index="1">
          <Property name="Effect" value="FRANTISHIPIMP" />
          <Property name="Impact" value="GcProjectileImpactType">
            <Property name="Impact" value="Freighter" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="HitBody" />
        </Property>
        <Property name="Impacts" value="GcProjectileImpactData" _index="2">
          <Property name="Effect" value="FRANTISHIPIMP" />
          <Property name="Impact" value="GcProjectileImpactType">
            <Property name="Impact" value="Cargo" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="HitBody" />
        </Property>
        <Property name="Impacts" value="GcProjectileImpactData" _index="3">
          <Property name="Effect" value="ASTEROIDWPNIMP" />
          <Property name="Impact" value="GcProjectileImpactType">
            <Property name="Impact" value="Asteroid" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="World" />
        </Property>
        <Property name="Impacts" value="GcProjectileImpactData" _index="4">
          <Property name="Effect" value="SHPSHLDIMPWEAK" />
          <Property name="Impact" value="GcProjectileImpactType">
            <Property name="Impact" value="SpaceshipShield" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="HitBody" />
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "AI_FREIGHTER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BeamFile",            "MODELS/EFFECTS/LINES/PIRATEFREIGHTERLASERBEAM.SCENE.MBIN"},
                {"BeamTipFile",         "MODELS/EFFECTS/WEAPONS/PIRATELASERTIP.SCENE.MBIN"},
                {"Width",               "400.000000"},
                {"HitWidth",            "150.000000"},
                {"StartTime",           "0.000000"},
                {"EndTime",             "0.400000"},
                {"DefaultDamage",       "2150"},
                {"CriticalHitModifier", "1.000000"},
                {"ImpactEffect",        "CAPSHIPLASERIMP"},
                {"LightIntensity",      "5.000000"},
                {"Speed",               "28000.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "AI_FREIGHTER"},
              ["PRECEDING_KEY_WORDS"] = {"LightColour"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "1.000000"},
                {"G", "0.322000"},
                {"B", "0.041000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "AI_FREIGHTER", "AudioStart", "GcAudioWwiseEvents"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AkEvent", "NPC_WPN_FREIGHTER_LASER"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "AI_FREIGHTER", "AudioStop", "GcAudioWwiseEvents"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AkEvent", "NPC_WPN_FREIGHTER_LASER_END"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "AI_FREIGHTER", "DamageType", "GcDamageType"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DamageType", "FreighterLaser"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "AI_FREIGHTER"},
              ["PRECEDING_KEY_WORDS"] = {"Impacts"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
        <Property name="Impacts" value="GcProjectileImpactData" _index="0">
          <Property name="Effect" value="CAPSHIPLSRSHLD" />
          <Property name="Impact" value="GcProjectileImpactType">
            <Property name="Impact" value="FreighterShield" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="HitBody" />
        </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AttackFreighter", "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"PoliceSpawns", "GcPoliceSpawnWaveData"},
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["SECTION_ACTIVE"] = 4,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "5.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"PoliceSpawns", "GcPoliceSpawnWaveData"},
              ["SECTION_ACTIVE"] = 4,
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxCountsForFireteamSize", "2"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AmbientSpawns", "GcAIShipSpawnData"},
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["REPLACE_TYPE"] = "ALL",
              ["SUB_LEVEL"] = 4,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "5.000000"},
                {"Y", "15.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AmbientSpawns", "GcAIShipSpawnData", "ChildSpawns", "GcAIShipSpawnData"},
              ["PRECEDING_KEY_WORDS"] = {"Scale"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1.200000"},
                {"Y", "1.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"AmbientSpawns", "GcAIShipSpawnData", "ChildSpawns", "GcAIShipSpawnData"},
              ["PRECEDING_KEY_WORDS"] = {"Count"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "3.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "AmbientSpawns", "AmbientSpawns", "Spread"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "4000.000000"},
                {"Y", "6000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "AmbientSpawns", "AmbientSpawns", "ChildSpawns", "Scale"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1.400000"},
                {"Y", "1.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "AmbientSpawns", "AmbientSpawns", "ChildSpawns", "ChildSpawns", "ChildSpawns", "Count"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Y", "4.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "AmbientSpawns", "AmbientSpawns", "ChildSpawns", "ChildSpawns", "ChildSpawns", "Scale"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "1.400000"},
                {"Y", "1.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"SpaceBattleSpawns", "Count"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "2.000000"},
                {"Y", "6.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ShieldTable", "GcSpaceshipShieldData", "Id", "FREIGHTER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Health",            "9000"},
                {"RechargeTime",      "8.000000"},
                {"RechargeDelayTime", "3.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\TURRET\TURRETA\ENTITIES\TURRET.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcTurretComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TurretRange",                      "17000.000000"},
                {"TurretLaserLength",                "200.000000"},
                {"TurretLaserMoveSpeed",             "100.000000"},
                {"TurretLaserActiveTime",            "9.000000"},
                {"TurretLaserAbortDistance",         "1800.000000"},
                {"TurretBurstCount",                 "27"},
                {"LevelledBurstCountExtra",          "5.000000"},
                {"TurretMissileLaunchSpeed",         "300.000000"},
                {"TurretMaxYawTurnSpeedDegPerSec",   "90.000000"},
                {"TurretMaxPitchTurnSpeedDegPerSec", "90.000000"},
                {"TurretAngle",                      "100.000000"},
                {"TurretProjectileRange",            "17000.000000"},
                {"TurretMissileRange",               "8000.000000"},
                {"TurretDispersionAngle",            "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcShootableComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Health",        "13000"},
                {"AutoAimTarget", "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "TkPhysicsComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Friction", "0.200000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\TURRET\TURRETB\ENTITIES\TURRET.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcTurretComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TurretRange",                      "17000.000000"},
                {"TurretLaserLength",                "200.000000"},
                {"TurretLaserMoveSpeed",             "100.000000"},
                {"TurretLaserActiveTime",            "9.000000"},
                {"TurretLaserAbortDistance",         "1800.000000"},
                {"TurretBurstCount",                 "27"},
                {"LevelledBurstCountExtra",          "5.000000"},
                {"TurretMissileLaunchSpeed",         "300.000000"},
                {"TurretMaxYawTurnSpeedDegPerSec",   "90.000000"},
                {"TurretMaxPitchTurnSpeedDegPerSec", "90.000000"},
                {"TurretAngle",                      "100.000000"},
                {"TurretProjectileRange",            "17000.000000"},
                {"TurretMissileRange",               "8000.000000"},
                {"TurretDispersionAngle",            "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcShootableComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Health",        "13000"},
                {"AutoAimTarget", "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "TkPhysicsComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Friction",         "0.200000"},
                {"DamageMultiplier", "OBJECT"},
              }
            },
          }
        },
      }
    }
  }
}