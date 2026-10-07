NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] = "Fine_LOD_Classic",
["MOD_AUTHOR"] = "Prof Horatio Hafnaugels",
["LUA_AUTHOR"] = "Babscoole",
["NMS_VERSION"] = "7.05",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\UI\BOOTLOGOPC.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Textures"},
              ["SECTION_ACTIVE"] = {"1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Textures", ""} -- Original "TEXTURES/UI/LOADING/MIDDLEWAREPAIR.DDS"
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DisplayTime"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "1.000000"}, -- Original "3"
                {"IGNORE", "0.000000"}, -- Original "2"
                {"IGNORE", "0.000000"}, -- Original "1"
                {"IGNORE", "0.000000"}, -- Original "1"
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                -- {"AnimationScale",        "10"},  -- Original "50"
                {"TerrainFadeTime",       "1.000000"},   -- Original "2"
                {"TerrainFadeTimeInShip", "1.000000"},   -- Original "2"
                {"CreatureFadeTime",      "0.700000"}, -- Original "1.5"
                {"FloraFadeTimeMin",      "0.300000"}, -- Original "0.6"
                {"FloraFadeTimeMax",      "1.000000"}  -- Original "2.25"
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LODSettings", "Ultra", "LODAdjust"},
              ["REPLACE_TYPE"] = "ALLINSIDESECTION",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "3.000000"}, -- Original "1"
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"EnvironmentProperties"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PlanetObjectSwitch",        "2100.000000"},  -- Original "700"
                {"PlanetLodSwitch0",          "900.000000"},   -- Original "300"
                {"PlanetLodSwitch0Elevation", "2100.000000"},  -- Original "700"
                {"PlanetLodSwitch1",          "6000.000000"},  -- Original "2000"
                {"PlanetLodSwitch2",          "30000.000000"}, -- Original "10000"
                {"PlanetLodSwitch3",          "60000.000000"}, -- Original "20000"
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"EnvironmentPrimeProperties"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PlanetObjectSwitch",        "6000.000000"},  -- Original "2000"
                {"PlanetLodSwitch0",          "6000.000000"},  -- Original "2000"
                {"PlanetLodSwitch0Elevation", "6000.000000"},  -- Original "2000"
                {"PlanetLodSwitch1",          "6000.000000"},  -- Original "2000"
                {"PlanetLodSwitch2",          "30000.000000"}, -- Original "10000"
                {"PlanetLodSwitch3",          "60000.000000"}, -- Original "20000"
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"EnvironmentGasGiantProperties"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PlanetObjectSwitch",        "6000.000000"},  -- Original "2000"
                {"PlanetLodSwitch0",          "6000.000000"},  -- Original "2000"
                {"PlanetLodSwitch0Elevation", "6000.000000"},  -- Original "2000"
                {"PlanetLodSwitch1",          "6000.000000"},  -- Original "2000"
                {"PlanetLodSwitch2",          "30000.000000"}, -- Original "10000"
                {"PlanetLodSwitch3",          "60000.000000"}, -- Original "20000"
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ForceUncachedTerrain", "true"} -- Original "False"
              }
            }
          }
        },
      }
    }
  }
}