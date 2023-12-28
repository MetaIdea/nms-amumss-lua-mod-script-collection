NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "TurretsDoDamage+rangefixmaybe.pak",
["MOD_AUTHOR"]              = "Dad",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.05", --mod version 1.1
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTGUN"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="GcProjectileData.xml">
      <Property name="Id" value="FREIGHTPLASMAGUN" />
      <Property name="Model" value="GcResourceElement.xml">
        <Property name="Filename" value="MODELS/COMMON/PROJECTILES/SHIPPLASMAPROJECTILE.SCENE.MBIN" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="AltId" value="" />
        <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
          <Property name="Samplers" />
        </Property>
      </Property>
      <Property name="FireAudioEvent" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="WPN_PL_NEUTRON_CANNON_FIRE" />
      </Property>
      <Property name="ChargedFireAudioEvent" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="OverheatAudioEvent" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="Scale" value="33" />
      <Property name="IsAutonomous" value="False" />
      <Property name="ApplyCombatLevelMultipliers" value="False" />
      <Property name="Radius" value="65" />
      <Property name="CapsuleHeight" value="0" />
      <Property name="DefaultSpeed" value="1850" />
      <Property name="Gravity" value="0" />
      <Property name="Life" value="14" />
      <Property name="Offset" value="0" />
      <Property name="RagdollPush" value="5" />
      <Property name="PhysicsPush" value="2.5" />
      <Property name="DroneImpulse" value="0" />
      <Property name="DefaultDamage" value="200" />
      <Property name="ExtraPlayerDamage" value="0" />
      <Property name="DamageType" value="GcDamageType.xml">
        <Property name="DamageType" value="ShipPlasma" />
      </Property>
      <Property name="DefaultBounces" value="0" />
      <Property name="BounceMaxSpeed" value="0" />
      <Property name="BounceDamping" value="0.8" />
      <Property name="BounceFinalStopTime" value="0" />
      <Property name="HitOnBounce" value="True" />
      <Property name="PlayerDamage" value="FREIGHTERGUN" />
      <Property name="CriticalHitModifier" value="1.5" />
      <Property name="PiercingDamagePercentage" value="0" />
      <Property name="UseCustomBulletData" value="False" />
      <Property name="CustomBulletData" value="GcProjectileLineData.xml">
        <Property name="BulletLength" value="20" />
        <Property name="BulletGlowWidthTime" value="0.35" />
        <Property name="BulletGlowWidthMax" value="8" />
        <Property name="BulletGlowWidthMin" value="32" />
        <Property name="BulletGlowWidthCurve" value="TkCurveType.xml">
          <Property name="Curve" value="Linear" />
        </Property>
        <Property name="BulletScaler" value="4" />
        <Property name="BulletScalerMinDist" value="0" />
        <Property name="BulletScalerMaxDist" value="800" />
        <Property name="BulletMinScaleDistance" value="200" />
        <Property name="BulletMaxScaleDistance" value="2000" />
      </Property>
      <Property name="UseDamageNumberData" value="True" />
      <Property name="DamageImpactMergeTime" value="0.25" />
      <Property name="DamageImpactTimeBetweenNumbers" value="0.25" />
      <Property name="DamageImpactMinDistance" value="5" />
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="0.152" />
        <Property name="G" value="1" />
        <Property name="B" value="0.265" />
        <Property name="A" value="1" />
      </Property>
      <Property name="OverrideLightColour" value="True" />
      <Property name="LightColour" value="Colour.xml">
        <Property name="R" value="0.15" />
        <Property name="G" value="0.962" />
        <Property name="B" value="0.355" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BehaviourFlags" value="None" />
      <Property name="Class" value="Ship" />
      <Property name="DefaultImpact" value="SHIPPLASMAHIT" />
      <Property name="CriticalImpact" value="" />
      <Property name="Impacts">
        <Property value="GcProjectileImpactData.xml">
          <Property name="Effect" value="SHIPPLASMAHIT" />
          <Property name="Impact" value="GcProjectileImpactType.xml">
            <Property name="Impact" value="Freighter" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="World" />
        </Property>
        <Property value="GcProjectileImpactData.xml">
          <Property name="Effect" value="SHIPPLASMAHIT" />
          <Property name="Impact" value="GcProjectileImpactType.xml">
            <Property name="Impact" value="Cargo" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="World" />
        </Property>
        <Property value="GcProjectileImpactData.xml">
          <Property name="Effect" value="ASTEROIDWPNIMP" />
          <Property name="Impact" value="GcProjectileImpactType.xml">
            <Property name="Impact" value="Asteroid" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="World" />
        </Property>
        <Property value="GcProjectileImpactData.xml">
          <Property name="Effect" value="SHIPESHIELDIMP" />
          <Property name="Impact" value="GcProjectileImpactType.xml">
            <Property name="Impact" value="SpaceshipShield" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="HitBody" />
        </Property>
      </Property>
      <Property name="ImpactOffset" value="Vector3f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
      </Property>
      <Property name="CombatEffectsOnImpact">
        <Property value="GcImpactCombatEffectData.xml">
          <Property name="CombatEffectType" value="GcCombatEffectType.xml">
            <Property name="CombatEffectType" value="Slow" />
          </Property>
          <Property name="TotalDuration" value="4" />
          <Property name="DamagePerSeccond" value="0" />
          <Property name="CurrentDuration" value="0" />
        </Property>
      </Property>
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "AI_FREIGHTER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",          "1300"},
                                {"HitWidth",       "85"},
                                {"PulseFrequency", "32"},
                                {"PulseAmplitude", "0.8"},
                                {"DefaultDamage",  "150"},
                                {"HitRate",        "0.06"},
                                {"HasLight",       "True"},
                                {"LightIntensity", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "AI_FREIGHTER", "LightColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.597"},
                                {"G", "0.325"},
                                {"B", "0.951"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "AI_FREIGHTER", "Colour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.597"},
                                {"G", "0.325"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BASE_TURRET_L", "LightColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"G", "0.051"},
                                {"B", "1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\TURRET\TURRETA\ENTITIES\TURRET.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProjectileId",             "FREIGHTPLASMAGUN"},
                                {"TurretRange",              "17000"},
                                {"TurretLaserShootTime",     "2"},
                                {"TurretLaserLength",        "200"},
                                {"TurretLaserMoveSpeed",     "20"},
                                {"TurretLaserActiveTime",    "5"},
                                {"TurretLaserAbortDistance", "18000"},
                                {"TurretShootPauseTime",     "1.5"},
                                {"TurretBurstCount",         "27"},
                                {"TurretBurstTime",          "0.05"},
                                {"TurretMissileLaunchSpeed", "300"},
                                {"TurretProjectileRange",    "17000"},
                                {"TurretMissileRange",       "8000"},
                                {"TurretDispersionAngle",    "0"},
                                {"Health",                   "6000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FreighterAttackDisengageDistance", "8000"},
                            }
                        },
                    }
                },
            }
        }
    }
}