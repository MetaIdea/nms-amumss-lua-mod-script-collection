MULTIPLIER = 2
DISABLELOCALIZED = false

DISABLELOCALIZED = GUIF({false, [[Do you want to disable localized storms?  Default = N.  Press ENTER for default value.]]},10)
print("DISABLELOCALIZED = "..tostring(DISABLELOCALIZED))

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Worse Weather",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.40",
["MOD_DESCRIPTION"] = "Worse Weather",
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
                {"MinTimeBetweenStormsLow",             "4500"},
                {"MaxTimeBetweenStormsLow",             "1200"},
                {"MinTimeBetweenStormsHigh",            "80"},
                {"MaxTimeBetweenStormsHigh",            "400"},
                {"MinTimeBetweenStormsExtremeFallback", "160"},
                {"MaxTimeBetweenStormsExtremeFallback", "400"},
                {"MinStormLengthLow",                   "120"},
                {"MaxStormLengthLow",                   "480"},
                {"MinStormLengthHigh",                  "150"},
                {"MaxStormLengthHigh",                  "750"},
                {"StormTransitionTime",                 "30"},
                {"MaxStormCloudCover",                  "1"},
                {"StormAudioLevel",                     "0.4"},
                {"CloudCoverSmoothTime",                "180"},
                {"CloudRatioSmoothTime",                "72"},
                {"StormCloudSmoothTime",                "14.4"},
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
                {"LowStormsChance",      "@*0.5"},
                {"HighStormsChance",     "@*0.5"},
                {"ExtremeWeatherChance", "@*0.5"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] =
              {
                {"Temperature"},
                {"Toxicity"},
                {"Radiation"},
              },
							["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "@*"..MULTIPLIER},
                {"Extreme", "@*"..MULTIPLIER},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHEREFFECTS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxHazardsOfThisTypeActive", "@*"..MULTIPLIER},
                {"MaxSpawnScale",              "@*"..MULTIPLIER},
                {"MaxLifetime",                "@*"..MULTIPLIER},
                {"PatchMaxSpawns",             "@*"..MULTIPLIER},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERHAZARDS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxHazardsOfThisTypeActive", "@*"..MULTIPLIER},
                {"MaxSpawnScale",              "@*"..MULTIPLIER},
                {"MaxLifetime",                "@*"..MULTIPLIER},
                {"PatchMaxSpawns",             "@*"..MULTIPLIER},
                {"FullDamageRadius",           "@*"..MULTIPLIER},
                {"DamageRadius",               "@*"..MULTIPLIER},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "METEOR"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinMeteors", "@*"..MULTIPLIER},
                {"MaxMeteors", "@*"..MULTIPLIER},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "LIGHTNING"},
                {"Id", "LIGHTNING_GAS"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinRadius",  "@*"..MULTIPLIER},
                {"MaxRadius",  "@*"..MULTIPLIER},
                {"NumFlashes", "@*"..MULTIPLIER},
                {"MinStrikes", "@*"..MULTIPLIER},
                {"MaxStrikes", "@*"..MULTIPLIER},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "TORNADO"},
                {"Id", "TORNADO_GAS"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MoveSpeed",          "@*"..MULTIPLIER},
                {"SuckInRadius",       "@*"..MULTIPLIER},
                {"SuckInStrength",     "@*"..MULTIPLIER},
                {"SuckUpRadius",       "@*"..MULTIPLIER},
                {"SuckUpStrength",     "@*"..MULTIPLIER},
                {"SuckUpHeight",       "@*"..MULTIPLIER},
                {"SuckUpHeightCutoff", "@*"..MULTIPLIER},
              }
            },
          }
        },
      }
    },
  }
}

local Change_Table_Array = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["MXML_CHANGE_TABLE"]

if DISABLELOCALIZED then

    Change_Table_Array[#Change_Table_Array + 1] =
    {
      ["SPECIAL_KEY_WORDS"] =
      {
        {"Id", "GRAVANOMALY"},
        {"Id", "ELECANOMALY"},
        {"Id", "RADIOANOMALY"},
        {"Id", "TOXICCLOUD"},
      },
      ["VALUE_CHANGE_TABLE"] =
      {
        {"MaxHazardsOfThisTypeActive",     "0"},
        {"SpawnAttemptsPerRegion",         "0"},
        {"SpawnChancePerSecondPerAttempt", "0.000000"},
      }
    }
end