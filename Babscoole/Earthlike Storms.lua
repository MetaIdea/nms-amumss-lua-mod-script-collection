NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Earthlike Storms",
["MOD_AUTHOR"]      = "JeanLucPicardNMS",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "No more superheated storms. Put your coats on, travelers. It's gonna rain!",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHEREFFECTS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Effects"},
              ["ADD"] =
[[
    <Property name="Effects" value="GcWeatherEffect" _id="ESLIGHTNING_FAR">
      <Property name="Id" value="ESLIGHTNING_FAR" />
      <Property name="OSDMessage" value="" />
      <Property name="Effects">
        <Property name="Effects" value="GcWeightedFilename" _index="0">
          <Property name="Filename" value="ESCUSTOM/ESLIGHTNINGWEATHER.SCENE.MBIN" />
          <Property name="Weight" value="1.000000" />
        </Property>
      </Property>
      <Property name="SpawnConditions" value="DuringStorm" />
      <Property name="MaxHazardsOfThisTypeActive" value="5" />
      <Property name="ForcedOnByHazard" value="LIGHTNING" />
      <Property name="BlockedByCluster" value="" />
      <Property name="ExclusivePrimaryHazard" value="false" />
      <Property name="WeatherEffectBehaviour" value="Static" />
      <Property name="WeatherEffectSpawnType" value="Cluster" />
      <Property name="RandomRotationAroundUp" value="true" />
      <Property name="MinSpawnScale" value="3.000000" />
      <Property name="MaxSpawnScale" value="3.000000" />
      <Property name="SpawnAttemptsPerRegion" value="1" />
      <Property name="SpawnChancePerSecondPerAttempt" value="0.100000" />
      <Property name="MultiplySpawnChanceByHazardLevel" value="GcPlayerHazardType">
        <Property name="Hazard" value="None" />
      </Property>
      <Property name="ChanceOfPlanetBeingExtreme" value="0.500000" />
      <Property name="SpawnChancePerSecondExtreme" value="0.300000" />
      <Property name="MinSpawnDistance" value="1800.000000" />
      <Property name="MaxSpawnDistance" value="3000.000000" />
      <Property name="MinLifetime" value="6.000000" />
      <Property name="MaxLifetime" value="10.000000" />
      <Property name="FadeoutStart" value="1.000000" />
      <Property name="FadeoutVisuals" value="true" />
      <Property name="FadeoutAudio" value="true" />
      <Property name="Audio" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="ImpactGift" value="" />
      <Property name="ImpactGiftChance" value="0.000000" />
      <Property name="ClusterSpawnChance" value="0.002000" />
      <Property name="ClusterMinLifetime" value="40.000000" />
      <Property name="ClusterMaxLifetime" value="60.000000" />
      <Property name="PatchMaxTimeSpawnOffset" value="0.000000" />
      <Property name="PatchMinRadius" value="10.000000" />
      <Property name="PatchMaxRadius" value="10.000000" />
      <Property name="PatchMinSpawns" value="1" />
      <Property name="PatchMaxSpawns" value="10" />
      <Property name="PatchScaling" value="0.000000" />
      <Property name="MoveSpeed" value="10.000000" />
      <Property name="WanderMinRadius" value="10.000000" />
      <Property name="WanderMaxRadius" value="30.000000" />
      <Property name="WanderMinArcDeg" value="0.000000" />
      <Property name="WanderMaxArcDeg" value="90.000000" />
      <Property name="EffectData" value="GcWeatherEffectLightningData">
        <Property name="GcWeatherEffectLightningData" />
      </Property>
    </Property>
    <Property name="Effects" value="GcWeatherEffect" _id="ESLIGHTNING_MID">
      <Property name="Id" value="ESLIGHTNING_MID" />
      <Property name="OSDMessage" value="" />
      <Property name="Effects">
        <Property name="Effects" value="GcWeightedFilename" _index="0">
          <Property name="Filename" value="ESCUSTOM/ESLIGHTNINGWEATHER.SCENE.MBIN" />
          <Property name="Weight" value="1.000000" />
        </Property>
      </Property>
      <Property name="SpawnConditions" value="DuringStorm" />
      <Property name="MaxHazardsOfThisTypeActive" value="5" />
      <Property name="ForcedOnByHazard" value="" />
      <Property name="BlockedByCluster" value="" />
      <Property name="ExclusivePrimaryHazard" value="false" />
      <Property name="WeatherEffectBehaviour" value="Static" />
      <Property name="WeatherEffectSpawnType" value="Cluster" />
      <Property name="RandomRotationAroundUp" value="true" />
      <Property name="MinSpawnScale" value="3.000000" />
      <Property name="MaxSpawnScale" value="3.000000" />
      <Property name="SpawnAttemptsPerRegion" value="1" />
      <Property name="SpawnChancePerSecondPerAttempt" value="0.100000" />
      <Property name="MultiplySpawnChanceByHazardLevel" value="GcPlayerHazardType">
        <Property name="Hazard" value="None" />
      </Property>
      <Property name="ChanceOfPlanetBeingExtreme" value="0.500000" />
      <Property name="SpawnChancePerSecondExtreme" value="0.020000" />
      <Property name="MinSpawnDistance" value="800.000000" />
      <Property name="MaxSpawnDistance" value="1200.000000" />
      <Property name="MinLifetime" value="6.000000" />
      <Property name="MaxLifetime" value="10.000000" />
      <Property name="FadeoutStart" value="1.000000" />
      <Property name="FadeoutVisuals" value="true" />
      <Property name="FadeoutAudio" value="true" />
      <Property name="Audio" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="ImpactGift" value="" />
      <Property name="ImpactGiftChance" value="0.000000" />
      <Property name="ClusterSpawnChance" value="0.000800" />
      <Property name="ClusterMinLifetime" value="40.000000" />
      <Property name="ClusterMaxLifetime" value="60.000000" />
      <Property name="PatchMaxTimeSpawnOffset" value="0.000000" />
      <Property name="PatchMinRadius" value="10.000000" />
      <Property name="PatchMaxRadius" value="10.000000" />
      <Property name="PatchMinSpawns" value="1" />
      <Property name="PatchMaxSpawns" value="10" />
      <Property name="PatchScaling" value="0.000000" />
      <Property name="MoveSpeed" value="10.000000" />
      <Property name="WanderMinRadius" value="10.000000" />
      <Property name="WanderMaxRadius" value="30.000000" />
      <Property name="WanderMinArcDeg" value="0.000000" />
      <Property name="WanderMaxArcDeg" value="90.000000" />
      <Property name="EffectData" value="GcWeatherEffectLightningData">
        <Property name="GcWeatherEffectLightningData" />
      </Property>
    </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERHAZARDS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Effects"},
              ["ADD"] =
[[
    <Property name="Effects" value="GcWeatherEffect" _id="LUSHLIGHTNING">
      <Property name="Id" value="LUSHLIGHTNING" />
      <Property name="OSDMessage" value="UI_LIGHTNING_WARNING_OSD" />
      <Property name="Effects">
        <Property name="Effects" value="GcWeightedFilename" _index="0">
          <Property name="Filename" value="MODELS/EFFECTS/WEATHER/LIGHTNINGHAZARD.SCENE.MBIN" />
          <Property name="Weight" value="1.000000" />
        </Property>
      </Property>
      <Property name="SpawnConditions" value="DuringStorm" />
      <Property name="MaxHazardsOfThisTypeActive" value="1" />
      <Property name="ForcedOnByHazard" value="" />
      <Property name="BlockedByCluster" value="" />
      <Property name="ExclusivePrimaryHazard" value="false" />
      <Property name="WeatherEffectBehaviour" value="Static" />
      <Property name="WeatherEffectSpawnType" value="Cluster" />
      <Property name="RandomRotationAroundUp" value="true" />
      <Property name="MinSpawnScale" value="1.000000" />
      <Property name="MaxSpawnScale" value="1.000000" />
      <Property name="SpawnAttemptsPerRegion" value="1" />
      <Property name="SpawnChancePerSecondPerAttempt" value="0.002000" />
      <Property name="MultiplySpawnChanceByHazardLevel" value="GcPlayerHazardType">
        <Property name="Hazard" value="None" />
      </Property>
      <Property name="ChanceOfPlanetBeingExtreme" value="0.000100" />
      <Property name="SpawnChancePerSecondExtreme" value="-1.000000" />
      <Property name="MinSpawnDistance" value="0.000000" />
      <Property name="MaxSpawnDistance" value="0.000000" />
      <Property name="MinLifetime" value="11.000000" />
      <Property name="MaxLifetime" value="11.000000" />
      <Property name="FadeoutStart" value="0.950000" />
      <Property name="FadeoutVisuals" value="true" />
      <Property name="FadeoutAudio" value="true" />
      <Property name="Audio" value="GcAudioWwiseEvents">
        <Property name="AkEvent" value="LIGHTNING" />
      </Property>
      <Property name="ImpactGift" value="MODELS/PLANETS/BIOMES/COMMON/RARERESOURCE/CRYSTALS/LIGHTNINGROCK.SCENE.MBIN" />
      <Property name="ImpactGiftChance" value="0.100000" />
      <Property name="ClusterSpawnChance" value="0.000000" />
      <Property name="ClusterMinLifetime" value="30.000000" />
      <Property name="ClusterMaxLifetime" value="60.000000" />
      <Property name="PatchMaxTimeSpawnOffset" value="0.000000" />
      <Property name="PatchMinRadius" value="10.000000" />
      <Property name="PatchMaxRadius" value="10.000000" />
      <Property name="PatchMinSpawns" value="1" />
      <Property name="PatchMaxSpawns" value="10" />
      <Property name="PatchScaling" value="0.000000" />
      <Property name="MoveSpeed" value="10.000000" />
      <Property name="WanderMinRadius" value="10.000000" />
      <Property name="WanderMaxRadius" value="30.000000" />
      <Property name="WanderMinArcDeg" value="0.000000" />
      <Property name="WanderMaxArcDeg" value="90.000000" />
      <Property name="EffectData" value="GcWeatherHazardLightningData">
        <Property name="GcWeatherHazardLightningData">
          <Property name="IndicatorDecal" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/WEATHER/METEORDECAL.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="StaticDecal" value="TkModelResource">
            <Property name="Filename" value="MODELS/EFFECTS/WEATHER/METEORDECALSTATIC.SCENE.MBIN" />
            <Property name="Seed" value="0" />
          </Property>
          <Property name="MinRadius" value="25.000000" />
          <Property name="MaxRadius" value="50.000000" />
          <Property name="DecalFullGrowthProgress" value="0.900000" />
          <Property name="NumFlashes" value="4.000000" />
          <Property name="FlashStartProgress" value="0.900000" />
          <Property name="EarliestImpact" value="3.000000" />
          <Property name="EarliestImpactFirstInstance" value="8.000000" />
          <Property name="StormDuration" value="10.000000" />
          <Property name="MinStrikes" value="4" />
          <Property name="MaxStrikes" value="8" />
          <Property name="ShakeID" value="LIGHTNINGSTRIKE" />
          <Property name="ImpactParticle" value="LIGHTNINGBOLTFX" />
          <Property name="DamageID" value="LIGHTNING" />
          <Property name="FullDamageRadius" value="2.500000" />
          <Property name="DamageRadius" value="2.500000" />
        </Property>
      </Property>
    </Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"UseWeatherFog",       "true"},
                {"MaxStormFilterBlend", "0.350000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogStrength",       "0.040000"},
                {"HeightFogStrength", "0.080000"},
                {"DepthOfField",      "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogStrength",              "0.040000"},
                {"FogColourStrength",        "5.000000"},
                {"HeightFogStrength",        "0.100000"},
                {"HeightFogFadeOutStrength", "0.250000"},
                {"HeightFogOffset",          "0.000000"},
                {"HeightFogMax",             "0.600000"},
                {"CloudRatio",               "0.550000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogStrength",              "0.040000"},
                {"HeightFogStrength",        "0.080000"},
                {"HeightFogFadeOutStrength", "0.250000"},
                {"HeightFogOffset",          "0.000000"},
                {"HeightFogMax",             "0.800000"},
                {"FogHeight",                "16.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogStrength",       "0.060000"},
                {"FogColourStrength", "10.000000"},
                {"HeightFogStrength", "0.080000"},
                {"FogHeight",         "128.000000"},
                {"DepthOfField",      "0.000000"},
                {"RainWetness",       "0.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ExtremeColourModifiers", "GcWeatherColourModifiers", "FogColour", "GcColourModifier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.400000"},
                {"G", "0.400000"},
                {"B", "0.400000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ExtremeColourModifiers", "GcWeatherColourModifiers", "HeightFogColour", "GcColourModifier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"R", "0.300000"},
                {"G", "0.300000"},
                {"B", "0.300000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"RainbowChance"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Always", "0.000000"},
                {"Storm",  "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Storms", "GcStormProperties", "Fog", "GcFogProperties"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogStrength",  "0.030000"},
                {"DepthOfField", "0.000000"},
                {"RainWetness",  "0.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Storms", "GcStormProperties", "ColourModifiers", "GcWeatherColourModifiers", "HorizonColour", "GcColourModifier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ForceColour", "true"},
                {"R",           "0.422000"},
                {"G",           "0.422000"},
                {"B",           "0.422000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Storms", "GcStormProperties", "ColourModifiers", "GcWeatherColourModifiers", "SunColour", "GcColourModifier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ForceColour", "true"},
                {"R",           "0.532000"},
                {"G",           "0.523000"},
                {"B",           "0.539000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Storms", "GcStormProperties", "ColourModifiers", "GcWeatherColourModifiers", "FogColour", "GcColourModifier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ForceColour", "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Storms", "GcStormProperties", "ColourModifiers", "GcWeatherColourModifiers", "HeightFogColour", "GcColourModifier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ForceColour", "true"},
                {"R",           "0.500000"},
                {"G",           "0.500000"},
                {"B",           "0.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Storms", "GcStormProperties", "ColourModifiers", "GcWeatherColourModifiers", "CloudColour1", "GcColourModifier"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ForceColour", "true"},
                {"R",           "0.300000"},
                {"G",           "0.300000"},
                {"B",           "0.300000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"HeavyAir", "MODELS/EFFECTS/HEAVYAIR/EARTH/EARTH.SCENE.MBIN"},
              ["SUB_LEVEL"] = 2,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeavyAir", "ESCUSTOM/LUSHRAIN.SCENE.MBIN"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Storm", "GcHazardValues"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"StormFilterOptions", "GcScreenFilters"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ScreenFilter", "FrozenStorm"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WeatherEffectsIds"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "ESLIGHTNING_FAR"},
                {"IGNORE", "SINGLE_METEOR"},
                {"IGNORE", "METEOR_EFFECT"},
                {"IGNORE", "ESLIGHTNING_MID"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WeatherHazardsIds"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WeatherHazardsIds"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
    <Property name="WeatherHazardsIds" value="LUSHLIGHTNING" _index="0" />
    <Property name="WeatherHazardsIds" value="METEOR" _index="1" />
]]
            },
          }
        },
      }
    },
  },
["ADD_FILES"] =
  {
    {
      ["FILE_DESTINATION"] = "ESCUSTOM/ESLIGHTNINGWEATHER.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (6.24.0.1)-->
<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\EFFECTS\WEATHER\LIGHTNINGWEATHER" />
  <Property name="NameHash" value="110687605" />
  <Property name="Type" value="MODEL" />
  <Property name="Transform" value="TkTransformData">
    <Property name="TransX" value="0.000000" />
    <Property name="TransY" value="0.000000" />
    <Property name="TransZ" value="200.000000" />
    <Property name="RotX" value="0.000000" />
    <Property name="RotY" value="0.000000" />
    <Property name="RotZ" value="0.000000" />
    <Property name="ScaleX" value="1.000000" />
    <Property name="ScaleY" value="1.000000" />
    <Property name="ScaleZ" value="1.000000" />
  </Property>
  <Property name="PlatformExclusion" value="0" />
  <Property name="Attributes">
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\EFFECTS\WEATHER\LIGHTNINGWEATHER.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="LightningWeatherData" />
      <Property name="NameHash" value="825814274" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\EFFECTS\WEATHER\LIGHTNINGWEATHER\ENTITIES\LIGHTNINGWEATHERDATA.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="LOCBase" />
          <Property name="NameHash" value="3608498361" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="LOCTop" />
          <Property name="NameHash" value="2752312610" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="169.973100" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="2">
          <Property name="Name" value="pointLight1" />
          <Property name="NameHash" value="4219409884" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="3.166367" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="180.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="FOV" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="100.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="200.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="0.450900" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="0.911900" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="Value" value="-1" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LIGHTLAYERS" />
              <Property name="Value" value="3" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="3">
          <Property name="Name" value="ScorchDecal" />
          <Property name="NameHash" value="3778966208" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="90.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="14.8070126" />
            <Property name="ScaleY" value="14.8070126" />
            <Property name="ScaleZ" value="3.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="23" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="36" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="23" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="8" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-1.048850" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="-1.039534" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-1.057133" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="1.048850" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="1.039534" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="1.057133" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="3778966208" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\EFFECTS\WEATHER\LIGHTNINGWEATHER\SCORCHDECALMAT.MATERIAL.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
              <Property name="Name" value="MESHLINK" />
              <Property name="Value" value="ScorchDecalShape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "ESCUSTOM/ESRAIN2.MATERIAL.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (6.24.0.1)-->
<Data template="cTkMaterialData">
  <Property name="Name" value="" />
  <Property name="Metamaterial" value="" />
  <Property name="Class" value="TkMaterialClass">
    <Property name="MaterialClass" value="Translucent" />
  </Property>
  <Property name="TransparencyLayerID" value="0" />
  <Property name="CastShadow" value="false" />
  <Property name="DisableZTest" value="false" />
  <Property name="CreateFur" value="false" />
  <Property name="EnableLodFade" value="false" />
  <Property name="UseShaderMill" value="false" />
  <Property name="Link" value="" />
  <Property name="Shader" value="SHADERS/PARTICLE.SHADER.BIN" />
  <Property name="Flags" />
  <Property name="FxFlags">
    <Property name="FxFlags" value="TkMaterialFxFlags" _index="0">
      <Property name="MaterialFxFlag" value="_X03_NORMALMAP" />
    </Property>
    <Property name="FxFlags" value="TkMaterialFxFlags" _index="1">
      <Property name="MaterialFxFlag" value="_X30_REFRACTION" />
    </Property>
  </Property>
  <Property name="Uniforms_Float">
    <Property name="Uniforms_Float" value="TkMaterialUniform_Float" _index="0">
      <Property name="Name" value="gRefractionParamsVec4" />
      <Property name="Values">
        <Property name="X" value="0.100000" />
        <Property name="Y" value="-0.500000" />
        <Property name="Z" value="1.000000" />
        <Property name="W" value="0.200000" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
  </Property>
  <Property name="Uniforms_UInt" />
  <Property name="Samplers">
    <Property name="Samplers" value="TkMaterialSampler" _index="0">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="ESCUSTOM/ESRAIN2.DDS" />
      <Property name="IsCube" value="false" />
      <Property name="UseCompression" value="true" />
      <Property name="UseMipMaps" value="true" />
      <Property name="IsSRGB" value="true" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Clamp" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property name="Samplers" value="TkMaterialSampler" _index="1">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/EFFECTS/HEAVYAIR/RAINDROPS.NORMAL.DDS" />
      <Property name="IsCube" value="false" />
      <Property name="UseCompression" value="true" />
      <Property name="UseMipMaps" value="true" />
      <Property name="IsSRGB" value="false" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Clamp" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property name="Samplers" value="TkMaterialSampler" _index="2">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/EFFECTS/HEAVYAIR/RAINDROPS.MASKS.DDS" />
      <Property name="IsCube" value="false" />
      <Property name="UseCompression" value="true" />
      <Property name="UseMipMaps" value="true" />
      <Property name="IsSRGB" value="false" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
  </Property>
  <Property name="ShaderMillDataHash" value="0" />
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "ESCUSTOM/LUSHRAIN.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (6.24.0.1)-->
<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\EFFECTS\HEAVYAIR\EARTH\LUSHRAIN.SCENE.MXML" />
  <Property name="NameHash" value="0" />
  <Property name="Type" value="GROUP" />
  <Property name="Transform" value="TkTransformData">
    <Property name="TransX" value="0.000000" />
    <Property name="TransY" value="0.000000" />
    <Property name="TransZ" value="0.000000" />
    <Property name="RotX" value="0.000000" />
    <Property name="RotY" value="0.000000" />
    <Property name="RotZ" value="0.000000" />
    <Property name="ScaleX" value="1.000000" />
    <Property name="ScaleY" value="1.000000" />
    <Property name="ScaleZ" value="1.000000" />
  </Property>
  <Property name="PlatformExclusion" value="0" />
  <Property name="Attributes" />
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="EarthHeavyAir2" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="HEAVYAIR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="DATA" />
          <Property name="Value" value="MODELS/EFFECTS/HEAVYAIR/EARTH/EARTH2.HEAVYAIR.MXML" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="EarthHeavyAirNode" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="HEAVYAIR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="DATA" />
          <Property name="Value" value="MODELS/EFFECTS/HEAVYAIR/EARTH/EARTH.HEAVYAIR.MXML" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="RainNode1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="HEAVYAIR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="DATA" />
          <Property name="Value" value="ESCUSTOM/LUSHRAIN1.HEAVYAIR.MXML" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "ESCUSTOM/LUSHRAIN1.HEAVYAIR.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (6.24.0.1)-->
<Data template="cTkHeavyAirData">
  <Property name="Material" value="ESCUSTOM/ESRAIN2.MATERIAL.MBIN" />
  <Property name="Number Of Particles" value="1600" />
  <Property name="Radius" value="40.000000" />
  <Property name="RadiusY" value="25.000000" />
  <Property name="Min Particle Lifetime" value="1.000000" />
  <Property name="Max Particle Lifetime" value="1.000000" />
  <Property name="Fade Time" value="0.000000" />
  <Property name="Speed Fade In Time" value="0.000000" />
  <Property name="Min Visible Speed" value="0.000000" />
  <Property name="Speed Fade Out Time" value="0.000000" />
  <Property name="Max Visible Speed" value="1500.000000" />
  <Property name="Soft Fade Strength" value="5.000000" />
  <Property name="Spawn Rotation Range" value="0.000000" />
  <Property name="Major Direction">
    <Property name="X" value="0.000000" />
    <Property name="Y" value="-5.000000" />
    <Property name="Z" value="0.000000" />
  </Property>
  <Property name="Scale Range">
    <Property name="X" value="3.000000" />
    <Property name="Y" value="3.000000" />
    <Property name="Z" value="3.000000" />
  </Property>
  <Property name="Rotation Speed Range">
    <Property name="X" value="0.000000" />
    <Property name="Y" value="0.000000" />
    <Property name="Z" value="0.000000" />
  </Property>
  <Property name="Twinkle Range">
    <Property name="X" value="1.000000" />
    <Property name="Y" value="2.000000" />
    <Property name="Z" value="0.000000" />
  </Property>
  <Property name="Amplitude Min">
    <Property name="X" value="0.000000" />
    <Property name="Y" value="0.000000" />
    <Property name="Z" value="0.000000" />
  </Property>
  <Property name="Amplitude Max">
    <Property name="X" value="0.000000" />
    <Property name="Y" value="0.000000" />
    <Property name="Z" value="0.000000" />
  </Property>
  <Property name="Colour 1">
    <Property name="R" value="0.629000" />
    <Property name="G" value="0.618000" />
    <Property name="B" value="0.680240" />
    <Property name="A" value="0.300000" />
  </Property>
  <Property name="Colour 2">
    <Property name="R" value="0.629000" />
    <Property name="G" value="0.618000" />
    <Property name="B" value="0.680240" />
    <Property name="A" value="0.300000" />
  </Property>
  <Property name="EmitterShape" value="UpperHalfSphere" />
  <Property name="VelocityAlignment" value="true" />
  <Property name="WindDrift" value="TkEmitterWindDrift">
    <Property name="Strength" value="5.000000" />
    <Property name="LimitEmitterSpeed" value="false" />
    <Property name="Speed" value="0.500000" />
    <Property name="LimitEmitterLifetime" value="false" />
    <Property name="CurveStartValue" value="0.000000" />
    <Property name="CurveMidValue" value="0.350000" />
    <Property name="CurveEndValue" value="0.700000" />
    <Property name="CurveBlendMidpoint" value="0.500000" />
    <Property name="Curve1Shape" value="TkCurveType">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
</Data>
]]
    },
  }
}