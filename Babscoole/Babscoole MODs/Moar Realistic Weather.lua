NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "Moar Realistic Weather",
  ["MOD_AUTHOR"]      = "Florian B. & Babscoole",
  ["NMS_VERSION"]     = "6.18",
  ["MOD_DESCRIPTION"] = "Changes the temperature ranges with some biomes.",
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BLUEWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GREENWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\REDWEATHER.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Ambient"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "10.000000"},
                {"Extreme", "33.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Storm"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "6.000000"},
                {"Extreme", "32.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Night"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "5.000000"},
                {"Extreme", "25.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HazardModifiers", "Temperature"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X",  "0.000000"},
                {"Y",  "2.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARWEATHER.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Ambient"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "150.000000"},
                {"Extreme", "450.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Cave"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "0.000000"},
                {"Extreme", "0.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Storm"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "0.000000"},
                {"Extreme", "0.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Night"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "-125.000000"},
                {"Extreme", "-170.000000"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARCOLD.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Ambient"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "-172.000000"},
                {"Extreme", "-201.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Cave"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "-75.000000"},
                {"Extreme", "-99.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Storm"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "-172.000000"},
                {"Extreme", "-201.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Night"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "-188.000000"},
                {"Extreme", "-209.000000"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\DUSTWEATHER.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Ambient"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "35.000000"},
                {"Extreme", "50.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Storm"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "48.000000"},
                {"Extreme", "53.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Water"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "12.000000"},
                {"Extreme", "12.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Cave"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "5.000000"},
                {"Extreme", "20.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Night"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "-15.000000"},
                {"Extreme", "-25.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HazardModifiers", "Temperature"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X",  "2.000000"},
                {"Y",  "3.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SNOWWEATHER.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Ambient"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "-8.000000"},
                {"Extreme", "-30.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Cave"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "-5.000000"},
                {"Extreme", "-8.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Water"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "-25.000000"},
                {"Extreme", "-40.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Storm"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "-22.000000"},
                {"Extreme", "-55.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Night"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "-15.000000"},
                {"Extreme", "-45.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HazardModifiers", "Temperature"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X",  "2.000000"},
                {"Y",  "3.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SWAMPWEATHER.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Ambient"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "8.000000"},
                {"Extreme", "18.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Storm"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "6.000000"},
                {"Extreme", "15.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Night"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Normal",  "5.000000"},
                {"Extreme", "10.000000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HazardModifiers", "Temperature"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X",  "0.000000"},
                {"Y",  "0.000000"},
              }
            },
          }
        },
      }
    },
  }
}