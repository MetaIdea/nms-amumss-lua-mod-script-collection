ModName         =   "_More_Persistent_Debris"
ModAuthor       =   "Knightmare077"
LuaAuthor       =   "Hypn0tick"
BaseDescription =   "Spawns more debris and keeps it around longer."
GameVersion     =   "3.99"
ModVersion      =   "0.5"

DebrisLife                  = "60"
WarpsBetweenBattles         = "0"
HoursBetweenBattles         = "0"
DebrisMaxSpawnDistance      = "90000"
DebrisDistanceScaleMax      = "100"
ExplosionMaxSpawnDistance   = "100"
PlayerEffectsNumber         = "14"
PlayerEffectsLife           = "9" -- Default: 45
LaserHitEffectLife          = "0.8"
DroneDebrisSpeed            = "60"
DroneExplodeSpeed           = "80"
DroneEyeGibSpeed            = "40"
DronePanelDebrisNumber      = "9"
DroneChassisDebrisNumber    = "5"
DroneChassisDebrisNumber2   = "1"
DroneDyingScale             = "1"
DroneExplodeAngularSpeed    = "70"
ShipExplodeNumber           = "8"
ShipExplodeSpeed            = "800"
ShipExplodeAngularSpeed     = "100"
ShipDyingScale              = "2"
ShipDyingCamShake           = "True"
ShipDyingCamShakeScale      = "True"
TurretExplosionNumber       = "13"
CargoShipExplosionNumber1   = "13"
CargoShipExplosionNumber2   = "20"
MedAsteroidExplosionNumber  = "6"
RockDebrisNumber            = "13"
PlantDebrisNumber           = "13"
StormCrystalNumber          = "3"
GroundExplodeNumber         = "10"
ResourceExplodeNumber       = "10"
FiendDeathNumber            = "2"
WalkerExplodeScale          = "1"
SparksSlowLife              = "0.5"

EXPLOSIONTABLE_TEXT = [[
      <Property name="Debris">
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.6" />
          <Property name="Speed" value="30" />
          <Property name="AngularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="35" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="35" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="35" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
      </Property>
]]

SPACEEFFECTS_TEXT = [[
        </Property>    
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="20" />
          <Property name="Scale" value="0.02" />
          <Property name="Speed" value="10" />
          <Property name="AngularSpeed" value="100" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="True" />
          </Property>
]]

SPACEEFFECTS_TEXT_2 = [[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/SMALLASTEROID.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="5" />
          <Property name="Radius" value="60" />
          <Property name="Scale" value="0.15" />
          <Property name="Speed" value="700" />
          <Property name="AngularSpeed" value="4" />                                                           
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]

SPACEEFFECTS_TEXT_3 = [[
        <Property name="Debris">
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.013" />
          <Property name="Speed" value="1000" />
          <Property name="AngularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.01" />
          <Property name="Speed" value="1000" />
          <Property name="AngularSpeed" value="20" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
      </Property>
]]

SPACEEFFECTS_TEXT_4 = [[
      <Property name="Debris">
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISA.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="5" />
          <Property name="Scale" value="7" />
          <Property name="Speed" value="600" />
          <Property name="AngularSpeed" value="160" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="5" />
          <Property name="Scale" value="7" />
          <Property name="Speed" value="600" />
          <Property name="AngularSpeed" value="160" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
      </Property>
]]

SPACEEFFECTS_TEXT_5 = [[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="4" />
          <Property name="Radius" value="5" />
          <Property name="Scale" value="7" />
          <Property name="Speed" value="600" />
          <Property name="AngularSpeed" value="160" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]

PLANETEFFECTS_TEXT = [[
      <Property name="Debris">
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="0" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.6" />
          <Property name="Speed" value="80" />
          <Property name="AngularSpeed" value="70" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="80" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISA.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="80" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="80" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="40" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="9" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="60" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="9" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="60" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="60" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
      </Property>
]]

PLANETEFFECTS_TEXT_2 = [[
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISA.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="80" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="80" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
]]

PLANETEFFECTS_TEXT_3 = [[
      <Property name="Debris">
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.6" />
          <Property name="Speed" value="30" />
          <Property name="AngularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SCRAPEXPLOSIONDEBRIS.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="10" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="35" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="35" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="35" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
      </Property>
]]

PLANETEFFECTS_TEXT_4 = [[
          <Property name="Radius" value="0.2" />
          <Property name="Scale" value="1.0" />
          <Property name="Speed" value="8" />
          <Property name="AngularSpeed" value="12" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="True" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/SPOREBAG_DESTROYED.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="4" />
          <Property name="Radius" value="0.5" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="12" />
          <Property name="AngularSpeed" value="2" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="false" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/GROUND/SPOREBAG_DESTROYED.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="7" />
          <Property name="AngularSpeed" value="30" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="false" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/FIENDDEBRIS.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="0.4" />
          <Property name="Scale" value="1.0" />
          <Property name="Speed" value="6" />
          <Property name="AngularSpeed" value="0.2" />
]]

PLANETEFFECTS_TEXT_5 = [[
      <Property name="Debris">
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="0" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.6" />
          <Property name="Speed" value="30" />
          <Property name="AngularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SHIPEXPLMODELDEBRISA.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="9" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="2" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.7" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
      </Property>
]]

PLANETEFFECTS_TEXT_6 = [[
      <Property name="Debris">
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/INEDITOR/PLANET/DRONEEXPLODE/DEBRISTRAIL.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.6" />
          <Property name="Speed" value="30" />
          <Property name="AngularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/ENGINE_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/SCRAPEXPLOSIONDEBRIS.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="10" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.5" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="8" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="35" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="35" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN" />
          </Property>
          <Property name="Number" value="35" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="1" />
          <Property name="Speed" value="20" />
          <Property name="AngularSpeed" value="0.1" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
      </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]      = ModAuthor.."_"..ModName.."-"..ModVersion..".pak",
    ["MOD_DESCRIPTION"]   = BaseDescription,
    ["MOD_AUTHOR"]        = ModAuthor,
    ["LUA_AUTHOR"]        = LuaAuthor,
    ["NMS_VERSION"]       = GameVersion,
    ["MODIFICATIONS"]     = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceCombatRadius", "5000"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"WarpsBetweenBattles", WarpsBetweenBattles},
                                {"HoursBetweenBattles", HoursBetweenBattles}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CommonAsteroidResourceSecondaryOdds", "0.2"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"LargeAsteroidFadeTime",   DebrisLife}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/EFFECTS/EXPLOSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "FIREWORKEND"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "GASEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ENERGYEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "REPAIRFLASH"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "EXPLOSION"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "GROUNDEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",  GroundExplodeNumber},
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SPARKSSLOW"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    SparksSlowLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SPACEEXPLOSION"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DEPOEXPLOSION"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "CRYSTALEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "CARGOEXPLOSION"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "CARGOEXPL_FINAL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",    "10"},
                                {"Life",    DebrisLife},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "TURRETEXPL"},
                            ["VALUE_MATCH"] = "3",
                            ["REPLACE_TYPE"] = {"ALL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",    TurretExplosionNumber},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "TURRETEXPL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"MaxSpawnDistance",  DebrisMaxSpawnDistance}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "METALEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "BARRELEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ADRONEEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"DistanceScaleMax",    DebrisDistanceScaleMax},
                                {"MaxSpawnDistance",    ExplosionMaxSpawnDistance}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SENTHIVEEXPL"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SENTHIVEEXPL"},
                            ["PRECEDING_KEY_WORDS"] = {"AkEvent"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = EXPLOSIONTABLE_TEXT,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SENTHIVEEXPL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"DistanceScaleMax",    DebrisDistanceScaleMax},
                                {"MaxSpawnDistance",    ExplosionMaxSpawnDistance}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "CARGOSHIPEXPL"},
                            ["VALUE_MATCH"] = "3",
                            ["REPLACE_TYPE"] = {"ALL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",    CargoShipExplosionNumber1},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "CARGOSHIPEXPL"},
                            ["VALUE_MATCH"] = "10",
                            ["REPLACE_TYPE"] = {"ALL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",    CargoShipExplosionNumber2},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "CARGOSHIPEXPL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "PIRATERAIDIMP"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/EFFECTS/SPACEEFFECTS.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ASTEROID_R_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"UseSeedValue"},
                            ["LINE_OFFSET"]         = "+1",
                            ["ADD"] = SPACEEFFECTS_TEXT,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ASTEROID_R_EXP"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ASTEROID_HIT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ASTEROID_M_EXP"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",  MedAsteroidExplosionNumber},
                                {"Life",    DebrisLife},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ASTEROID_S_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"UseSeedValue"},
                            ["LINE_OFFSET"]         = "+2",
                            ["ADD"] = SPACEEFFECTS_TEXT_2,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ASTEROID_S_EXP"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ASTEROID_L_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},
                            --["ADD"] = SPACEEFFECTS_TEXT_3,
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ASTEROID_L_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"AkEvent"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = SPACEEFFECTS_TEXT_3,
                            --["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ASTEROID_L_EXP"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "AISHIPSMOKE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "AISHIPDAMAGED"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SHIPDYING"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"Scale",    ShipDyingScale},
                                {"CamShake",    ShipDyingCamShake},
                                {"CamShakeSpaceScale",    ShipDyingCamShakeScale},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SHIPDYING"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SHIPDYING"},
                            ["PRECEDING_KEY_WORDS"] = {"AkEvent"},
                            ["ADD_OPTION"] = {"ADDafterSECTION"},
                            ["ADD"] = SPACEEFFECTS_TEXT_4,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SHIPEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",    ShipExplodeNumber},
                                {"Speed",    ShipExplodeSpeed},
                                {"AngularSpeed",    ShipExplodeAngularSpeed},
                                {"Life",    DebrisLife},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SHIPEXPLODE"},
                            ["PRECEDING_KEY_WORDS"] = {"UseSeedValue"},
                            ["LINE_OFFSET"]         = "+2",
                            ["ADD"] = SPACEEFFECTS_TEXT_5,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SPACEPOI"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "INFESTATIONBURS"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "INFESTPILLAREXP"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ASTEROIDWPNIMP"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "MININGLASERIMP"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/EFFECTS/PLANETEFFECTS.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "BLUEEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DOOREXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DRONEDYING"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"Scale",    DroneDyingScale},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DRONEDYING"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DRONEDYING"},
                            ["PRECEDING_KEY_WORDS"] = {"AkEvent"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = PLANETEFFECTS_TEXT,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DRONEEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Speed",    DroneExplodeSpeed},
                                {"AngularSpeed",    DroneExplodeAngularSpeed},
                                {"Life", DebrisLife},
                                {"MaxSpawnDistance", DebrisMaxSpawnDistance}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DRONEEXPLODE"},
                            ["VALUE_MATCH"] = "20",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Speed",    DroneExplodeSpeed},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename",  "MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Speed",    DroneEyeGibSpeed},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename",  "MODELS/EFFECTS/DEBRIS/DRONE/PANELL_GIB.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",    DronePanelDebrisNumber},
                                {"Speed",    DroneDebrisSpeed},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename",  "MODELS/EFFECTS/DEBRIS/DRONE/PANELR_GIB.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",    DronePanelDebrisNumber},
                                {"Speed",    DroneDebrisSpeed},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename",  "MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_MATCH"] = "1",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",    DroneChassisDebrisNumber},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename",  "MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_MATCH"] = "20",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Speed",    DroneDebrisSpeed},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename",  "MODELS/EFFECTS/DEBRIS/DRONE/CHASSIS_GIB.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",    DroneChassisDebrisNumber2},
                                {"Speed",     DroneDebrisSpeed},
                                {"Life",      DebrisLife},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DRONEEXPLODE"},
                            ["PRECEDING_KEY_WORDS"] = {"MODELS/EFFECTS/DEBRIS/DRONE/EYE_GIB.SCENE.MBIN"},
                            ["LINE_OFFSET"]         = "-1",
                            ["ADD"] = PLANETEFFECTS_TEXT_2,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "RESOURCEEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",    ResourceExplodeNumber},
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "BLOODSPLAT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "WALKEREXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"Scale",    WalkerExplodeScale},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WALKEREXPLODE"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WALKEREXPLODE"},
                            ["PRECEDING_KEY_WORDS"] = {"AkEvent"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = PLANETEFFECTS_TEXT_3,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ALIENBLOBEXPLOD"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DEPOTWAREXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DRONEHIT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "LASERROBOT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "BEAMEXP"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DEATHBLOODSMALL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DEATHBLOODMED"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DEATHBLOODBIG"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "BLOODDECAL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "BLOODDECALMED"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "BLOODDECALBIG"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "S_ROCKEXPLODE"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ROCKDEBRIS"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",    RockDebrisNumber},
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "PLANTDEBRIS"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",    PlantDebrisNumber},
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "BAITDEBRIS"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SPOREBAGPOP"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "FIENDDEATH"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",    FiendDeathNumber},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDDEATH"},
                            ["PRECEDING_KEY_WORDS"] = {"Number"},
                            ["ADD"] = PLANETEFFECTS_TEXT_4,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/EFFECTS/DEBRIS/FIENDDEBRIS.SCENE.MBIN"},
                            ["SECTION_ACTIVE"] = 2,
                            ["SECTION_UP"] = 2,
                            ["LINE_OFFSET"]         = "+7",
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/EFFECTS/DEBRIS/FIENDDEBRIS.SCENE.MBIN"},
                            ["SECTION_ACTIVE"] = 2,
                            ["SECTION_UP"] = 2,
                            ["LINE_OFFSET"]         = "+7",
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/EFFECTS/DEBRIS/FIENDDEBRIS.SCENE.MBIN"},
                            ["SECTION_ACTIVE"] = 2,
                            ["SECTION_UP"] = 2,
                            ["LINE_OFFSET"]         = "+7",
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/EFFECTS/DEBRIS/FIENDDEBRIS.SCENE.MBIN"},
                            ["SECTION_ACTIVE"] = 2,
                            ["SECTION_UP"] = 2,
                            ["LINE_OFFSET"]         = "+7",
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "FIENDDEATH"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "FIENDSPLAT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "FIENDFISHDEATH"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "FREIGHTERBROKEN"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SCRAPEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "STORMCRYSTAL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",    StormCrystalNumber},
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "WEIRDCRYSTAL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "REDEXPLODE"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "GREENEXPLODE"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "YELLOWEXPLODE"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SENTINELARMOUR"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SENTINELARMOUR"},
                            ["PRECEDING_KEY_WORDS"] = {"AkEvent"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = PLANETEFFECTS_TEXT_5,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SENTINELARMOUR"},
                            ["VALUE_MATCH"] = "3",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "SENTINELARMOUR"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"DistanceScaleMax",    DebrisDistanceScaleMax},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DRONEWALKEREXPL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",    DebrisLife},
                                {"DistanceScaleMax",    DebrisDistanceScaleMax},
                                {"MaxSpawnDistance",    DebrisMaxSpawnDistance},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DRONEWALKEREXPL"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "DRONEWALKEREXPL"},
                            ["PRECEDING_KEY_WORDS"] = {"AkEvent"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = PLANETEFFECTS_TEXT_6,
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/EFFECTS/PLAYEREFFECTS.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FASTLAND"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",  PlayerEffectsNumber},
                                {"Life",  PlayerEffectsLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SUBSTANCEPOP"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",  PlayerEffectsNumber},
                                {"Life",  PlayerEffectsLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TERRAINEDIT"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",  PlayerEffectsNumber},
                                {"Life",  PlayerEffectsLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TERRAINCREATE"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",  PlayerEffectsNumber},
                                {"Life",  PlayerEffectsLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GROUNDPOP"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",  PlayerEffectsNumber},
                                {"Life",  PlayerEffectsLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GRENADEEXPLODE"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",  PlayerEffectsNumber},
                                {"Life",  PlayerEffectsLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLEGUNHIT"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",  PlayerEffectsNumber},
                                {"Life",  PlayerEffectsLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "LASERHIT"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Life",   LaserHitEffectLife},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TERRAIN_FLATTEN"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Number",  PlayerEffectsNumber},
                                {"Life",  PlayerEffectsLife},
                            }
                        },
                    }
                },
            }
        },
    }
}