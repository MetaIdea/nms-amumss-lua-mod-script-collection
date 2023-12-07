FREIGHTPLASMAGUN = [[
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
      <Property name="DefaultSpeed" value="5000" />
      <Property name="Gravity" value="0" />
      <Property name="Life" value="14" />
      <Property name="Offset" value="0" />
      <Property name="RagdollPush" value="5" />
      <Property name="PhysicsPush" value="2.5" />
      <Property name="DroneImpulse" value="0" />
      <Property name="DefaultDamage" value="2000" />
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
          <Property name="TotalDuration" value="8" />
          <Property name="DamagePerSeccond" value="0" />
          <Property name="CurrentDuration" value="0" />
        </Property>
      </Property>
    </Property>
]]


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]            = "TurretsDoDamage.pak",
    ["MOD_AUTHOR"]              = "Dad",
    ["LUA_AUTHOR"]              = "Babscoole, gh0stwizard",
    ["NMS_VERSION"]             = "4.44",
    ["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
    ["MODIFICATIONS"]           = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/PROJECTILES/PROJECTILETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "FREIGHTGUN" },
                            ["ADD_OPTION"]        = "ADDafterSECTION",
                            ["ADD"]               = FREIGHTPLASMAGUN
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "AI_FREIGHTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Width",          300 },   -- 50
                                { "HitWidth",       90 },    -- 15
                                { "PulseFrequency", 32 },    -- 12
                                { "PulseAmplitude", 0.8 },   -- 0.1
                                { "DefaultDamage",  1000 },  -- 15
                                { "LightIntensity", 2 },     -- 1.5
                                { "StartTime",      0 },     -- 0.3
                                { "Speed",          28000 }, -- 0
                                --{ "HitRate",        0.06 },   -- 0.2
                                --{ "HasLight",       "True" }, -- True
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "AI_FREIGHTER", "LightColour", "Colour.xml", },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "R", 1 },
                                { "G", 0.2 },
                                { "B", 0 },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "AI_FREIGHTER", "Colour", "Colour.xml", },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "R", 1 },
                                { "G", 0.82 },
                                { "B", 0 },
                            }
                        },
                        -- pirate freighter gun
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "PI_FRE_SMAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "DefaultSpeed", 1000 }, -- 450
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  =
                    "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/TURRET/TURRETA/ENTITIES/TURRET.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "ProjectileId",             "FREIGHTPLASMAGUN" },
                                { "TurretRange",              1000000 }, -- 2000
                                { "TurretLaserShootTime",     1 },       -- 3
                                { "TurretLaserLength",        100 },     -- 100
                                { "TurretLaserMoveSpeed",     50 },      -- 50
                                { "TurretLaserActiveTime",    3 },       -- 2
                                { "TurretLaserChargeTime",    2 },       -- 0.5
                                { "TurretLaserAbortDistance", 1000 },    -- 1000
                                { "TurretShootPauseTime",     0.5 },     -- 0.15
                                { "TurretBurstCount",         7 },       -- 1
                                { "TurretBurstTime",          0.2 },     -- 0.15
                                { "TurretMissileLaunchSpeed", 1000 },    -- 125
                                { "TurretProjectileRange",    100000 },  -- 3000
                                { "TurretMissileRange",       100000 },  -- 6000
                                { "TurretDispersionAngle",    0 },       -- 2
                                --{ "TurretAngle",              5 },       -- 5
                                { "TurretMaxDownAngle",       25 },      -- 10
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  =
                    "MODELS/COMMON/SPACECRAFT/INDUSTRIAL/DESTRUCTIBLEPARTS/ANTISHIPTURRET/ENTITIES/ANTISHIPTURRET.ENTITY.EXML",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "TurretRange",              3000 }, -- 2000
                                { "TurretShootPauseTime",     2 },    -- 7
                                { "TurretMissileLaunchSpeed", 500 },  -- 125
                                { "TurretProjectileRange",    3000 }, -- 450
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "FreighterAttackDisengageDistance", 8000 }, -- 3000
                            }
                        },
                    }
                },
            }
        }
    }
}
