NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "~~~~~~~~TornadoTopia.pak",
["MOD_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.44",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHEREFFECTS.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERHAZARDS.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcWeatherEffect.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Effects"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="GcWeatherEffect.xml">
      <Property name="Id" value="TORNADO" />
      <Property name="OSDMessage" value="UI_TORNADO_WARNING_OSD" />
      <Property name="Effects">
        <Property value="GcWeightedFilename.xml">
          <Property name="Filename" value="MODELS/EFFECTS/WEATHER/TORNADO.SCENE.MBIN" />
          <Property name="Weight" value="1" />
        </Property>
      </Property>
      <Property name="SpawnConditions" value="Anytime" />
      <Property name="MaxHazardsOfThisTypeActive" value="5" />
      <Property name="ForcedOnByHazard" value="" />
      <Property name="BlockedByCluster" value="" />
      <Property name="WeatherEffectBehaviour" value="Wander" />
      <Property name="WeatherEffectSpawnType" value="Single" />
      <Property name="RandomRotationAroundUp" value="True" />
      <Property name="MinSpawnScale" value="1" />
      <Property name="MaxSpawnScale" value="1" />
      <Property name="SpawnAttemptsPerRegion" value="5" />
      <Property name="SpawnChancePerSecondPerAttempt" value="0.80" />
      <Property name="ChanceOfPlanetBeingExtreme" value="0.80" />
      <Property name="SpawnChancePerSecondExtreme" value="0.8" />
      <Property name="MinSpawnDistance" value="50" />
      <Property name="MaxSpawnDistance" value="250" />
      <Property name="MinLifetime" value="50" />
      <Property name="MaxLifetime" value="100" />
      <Property name="FadeoutStart" value="0.925" />
      <Property name="FadeoutVisuals" value="True" />
      <Property name="FadeoutAudio" value="True" />
      <Property name="Audio" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="TORNADO" />
      </Property>
      <Property name="ImpactGift" value="" />
      <Property name="ImpactGiftChance" value="0" />
      <Property name="ClusterSpawnChance" value="0.5" />
      <Property name="ClusterMinLifetime" value="10" />
      <Property name="ClusterMaxLifetime" value="10" />
      <Property name="PatchMaxTimeSpawnOffset" value="0" />
      <Property name="PatchMinRadius" value="10" />
      <Property name="PatchMaxRadius" value="10" />
      <Property name="PatchMinSpawns" value="1" />
      <Property name="PatchMaxSpawns" value="10" />
      <Property name="PatchScaling" value="0" />
      <Property name="MoveSpeed" value="5" />
      <Property name="WanderMinRadius" value="10" />
      <Property name="WanderMaxRadius" value="30" />
      <Property name="WanderMinArcDeg" value="0" />
      <Property name="WanderMaxArcDeg" value="90" />
      <Property name="EffectData" value="GcWeatherHazardTornadoData.xml">
        <Property name="SuckInRadius" value="40" />
        <Property name="SuckInStrength" value="5" />
        <Property name="SuckUpRadius" value="7" />
        <Property name="SuckUpStrength" value="2" />
        <Property name="SuckUpHeight" value="100" />
        <Property name="SuckUpHeightCutoff" value="80" />
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARCOLD.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\DUSTWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\LAVAWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RADIOACTIVE.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SCORCHED.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SNOWWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SWAMPWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\TOXIC.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeatherHazardsIds", "NMSString0x10.xml"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeatherHazardsIds"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TORNADO" />
    </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeatherEffectsIds", "NMSString0x10.xml"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeatherEffectsIds"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TORNADO" />
    </Property>
]]
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ExtremeWeatherChance", "0.8"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BLUEWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BUBBLEWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GRAVITYSTORMWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GREENWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\REDWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEIRDWEATHER.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeatherHazardsIds"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TORNADO" />
    </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeatherEffectsIds", "NMSString0x10.xml"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeatherEffectsIds"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TORNADO" />
    </Property>
]]
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ExtremeWeatherChance", "0.8"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\FIRESTORMWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeatherEffectsIds"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TORNADO" />
    </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeatherHazardsIds", "NMSString0x10.xml"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeatherHazardsIds"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TORNADO" />
    </Property>
]]
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ExtremeWeatherChance", "0.8"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RAINWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeatherEffectsIds"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TORNADO" />
    </Property>
]]
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeatherHazardsIds"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
    <Property value="NMSString0x10.xml">
      <Property name="Value" value="TORNADO" />
    </Property>
]]
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ExtremeWeatherChance", "0.8"},
                            }
                        },
                    }
                },
            }
        },
    }
}
