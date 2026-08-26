NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_IncreasedWeatherFog",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "Planets can have a denser fog, making it closer to NMS 1.0",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DayLength",                      "3600"},
                {"StormCloudBottomColourMinBlend", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetFog"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogStrength",              "0.080000"},
                {"HeightFogStrength",        "0.120000"},
                {"HeightFogFadeOutStrength", "1.250000"},
                {"HeightFogOffset",          "0.100000"},
                {"HeightFogMax",             "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetExtremeFog"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogMax",                   "1.000000"},
                {"HeightFogStrength",        "0.120000"},
                {"HeightFogFadeOutStrength", "1.130000"},
                {"HeightFogOffset",          "0.100000"},
                {"HeightFogMax",             "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetStormFog"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogMax",                   "1.000000"},
                {"HeightFogStrength",        "0.120000"},
                {"HeightFogFadeOutStrength", "1.300000"},
                {"HeightFogOffset",          "0.100000"},
                {"HeightFogMax",             "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetFlightFog"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogStrength",              "0.080000"},
                {"HeightFogStrength",        "0.120000"},
                {"HeightFogFadeOutStrength", "1.250000"},
                {"HeightFogOffset",          "0.100000"},
                {"HeightFogMax",             "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetFog"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogStrength",              "0.070000"},
                {"FogMax",                   "1.000000"},
                {"HeightFogStrength",        "0.120000"},
                {"HeightFogOffset",          "0.100000"},
                {"HeightFogMax",             "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetExtremeFog"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogMax",                   "1.000000"},
                {"HeightFogStrength",        "0.120000"},
                {"HeightFogFadeOutStrength", "1.100000"},
                {"HeightFogOffset",          "0.100000"},
                {"HeightFogMax",             "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetStormFog"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogMax",                   "1.000000"},
                {"HeightFogStrength",        "0.120000"},
                {"HeightFogFadeOutStrength", "1.300000"},
                {"HeightFogOffset",          "0.100000"},
                {"HeightFogMax",             "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetFlightFog"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogStrength",              "0.080000"},
                {"FogMax",                   "1.000000"},
                {"HeightFogStrength",        "0.120000"},
                {"HeightFogFadeOutStrength", "1.250000"},
                {"HeightFogOffset",          "0.100000"},
                {"HeightFogMax",             "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetGasGiantProperties", "PlanetFog"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogStrength",              "0.075000"},
                {"FogMax",                   "1.000000"},
                {"HeightFogStrength",        "0.120000"},
                {"HeightFogOffset",          "0.100000"},
                {"HeightFogMax",             "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetGasGiantProperties", "PlanetExtremeFog"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogMax",                   "1.000000"},
                {"HeightFogStrength",        "0.120000"},
                {"HeightFogFadeOutStrength", "1.100000"},
                {"HeightFogOffset",          "0.100000"},
                {"HeightFogMax",             "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetGasGiantProperties", "PlanetStormFog"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogMax",                   "1.000000"},
                {"HeightFogStrength",        "0.120000"},
                {"HeightFogFadeOutStrength", "1.300000"},
                {"HeightFogOffset",          "0.100000"},
                {"HeightFogMax",             "0.100000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"PlanetGasGiantProperties", "PlanetFlightFog"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogStrength",              "0.080000"},
                {"FogMax",                   "1.000000"},
                {"HeightFogStrength",        "0.120000"},
                {"HeightFogFadeOutStrength", "1.250000"},
                {"HeightFogOffset",          "0.100000"},
                {"HeightFogMax",             "0.100000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BLUEWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BUBBLEWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARCOLD.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\DUSTWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\FIRESTORMWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GASGIANTWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GRAVITYSTORMWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GREENWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\LAVAWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RADIOACTIVE.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RAINWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\REDWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SCORCHED.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SNOWWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SWAMPWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\TOXIC.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEIRDWEATHER.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name",          "Fog"},
                {"UseWeatherFog", "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Fog", "GcFogProperties"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogMax", "0.990000"},
                {"FullscreenEffect", "0.000000"},
                {"DepthOfField", "0.000000"},
                {"DepthOfFieldDistance", "700.000000"},
                {"DepthOfFieldFade", "1000.000000"},
                {"IsRaining", "false"},
                {"RainWetness", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FlightFog", "GcFogProperties"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogMax", "0.800000"},
                {"FullscreenEffect", "0.000000"},
                {"DepthOfField", "0.000000"},
                {"DepthOfFieldDistance", "700.000000"},
                {"DepthOfFieldFade", "1000.000000"},
                {"IsRaining", "false"},
                {"RainWetness", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"StormFog", "GcFogProperties"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogMax", "0.990000"},
                {"FullscreenEffect", "0.000000"},
                {"DepthOfField", "0.000000"},
                {"DepthOfFieldDistance", "700.000000"},
                {"DepthOfFieldFade", "1000.000000"},
                {"IsRaining", "false"},
                {"RainWetness", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ExtremeFog", "GcFogProperties"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FogMax", "0.990000"},
                {"FullscreenEffect", "0.000000"},
                {"DepthOfField", "0.000000"},
                {"DepthOfFieldDistance", "700.000000"},
                {"DepthOfFieldFade", "1000.000000"},
                {"IsRaining", "false"},
                {"RainWetness", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ExtremeColourModifiers", "GcWeatherColourModifiers"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"OffsetSaturation", "0.100000"},
                {"OffsetValue", "0.000000"},
                {"MultiplySaturation", "1.100000"},
                {"MultiplyValue", "1.000000"},
              }
            },
          }
        },
      }
    }
  }
}