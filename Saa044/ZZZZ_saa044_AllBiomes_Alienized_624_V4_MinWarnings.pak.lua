NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "saa044_AllBiomes_Alienized_624_V4_MinWarnings.pak",
  ["MOD_AUTHOR"]      = "saa044",
  ["LUA_AUTHOR"]      = "saa044",
  ["NMS_VERSION"]     = "6.24",
  ["MOD_DESCRIPTION"] = "Alienizes major biome families in NMS 6.24 using only GitHub-verified file names and AMUMSS-verified matching keys, with terrain left untouched and warning-heavy sections removed.",
  ["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        ----------------------------------------------------------------------
        -- GLOBAL VISUALS
        -- Verified by latest AMUMSS run
        ----------------------------------------------------------------------
        {
          ["MBIN_FILE_SOURCE"] = "GLOBALS/GCGRAPHICSGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Sun Light Intensity",      "8.400000"},
                {"LightShaft Scattering",    "0.720000"},
                {"LightShaft Strength",      "2.700000"},
                {"SunRayDensity",            "1.450000"},
                {"SunRayExposure",           "0.170000"},
                {"SunRayWeight",             "0.170000"},
                {"Contrast",                 "1.120000"},
                {"Saturation",               "1.150000"},
                {"New_SkyLightIntensity",    "1.220000"},
                {"New_BounceLightIntensity", "1.200000"},
                {"New_TopRimIntensity",      "0.450000"}
              }
            }
          }
        },

        {
          ["MBIN_FILE_SOURCE"] = "GLOBALS/GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ViewImpostersFromSpace", "true"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Medium", "TkLODSettingsData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"LODAdjust", "1.300000"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"High", "TkLODSettingsData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"LODAdjust", "1.400000"}
              }
            }
          }
        },

        ----------------------------------------------------------------------
        -- BIOMES WITH VERIFIED MAIN + PLANT MATCHES
        -- Names verified against 6.24 GitHub archive
        -- Keywords verified against latest AMUMSS run
        ----------------------------------------------------------------------
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BURNT/BURNTBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DESOLATE/DESOLATEBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FLORAL/FLORALBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/IRRADIATED/IRRADIATEDBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/JUNGLE/JUNGLEBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVABIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/NOXIOUS/NOXIOUSBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SUBZERO/SUBZEROBIOME.MBIN"
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["SPECIAL_KEY_WORDS"] = {"Name", "MAIN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChooseUsingLifeLevel", "false"}
              }
            },
            {
              ["REPLACE_TYPE"] = "ALL",
              ["SPECIAL_KEY_WORDS"] = {"Name", "PLANT"},
              ["MATH_OPERATION"] = "*",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Probability", "1.250000"}
              }
            }
          }
        },

        ----------------------------------------------------------------------
        -- DEAD BIOME
        -- MAIN matched, PLANT did not match cleanly in latest run
        ----------------------------------------------------------------------
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADBIOME.MBIN"
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["SPECIAL_KEY_WORDS"] = {"Name", "MAIN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChooseUsingLifeLevel", "false"}
              }
            }
          }
        },

        ----------------------------------------------------------------------
        -- ROCKY / WATERWORLD
        -- File names verified against 6.24 archive
        -- Kept conservative: MAIN only
        ----------------------------------------------------------------------
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/ROCKY/ROCKBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WATERWORLD/WATERWORLDCORALBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WATERWORLD/WATERWORLDCRYSTALSBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WATERWORLD/WATERWORLDDEADFROZENBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WATERWORLD/WATERWORLDFROZENBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WATERWORLD/WATERWORLDHOTBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WATERWORLD/WATERWORLDROCKYBIOME.MBIN"
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["SPECIAL_KEY_WORDS"] = {"Name", "MAIN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChooseUsingLifeLevel", "false"}
              }
            }
          }
        },

        ----------------------------------------------------------------------
        -- WEIRD BIOMES
        -- File names verified against 6.24 archive
        -- Kept conservative: MAIN only
        ----------------------------------------------------------------------
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BEAMSTONE/BEAMSBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BONESPIRE/BONESPIREBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/CONTOUR/CONTOURBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HEXAGON/HEXAGONBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HYDROGARDEN/HYDROGARDENBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/IRRISHELLS/IRRISHELLSBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/SHARDS/SHARDSBIOME.MBIN",
            "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/WIRECELLS/WIRECELLSBIOME.MBIN"
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["SPECIAL_KEY_WORDS"] = {"Name", "MAIN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChooseUsingLifeLevel", "false"}
              }
            }
          }
        }
      }
    }
  }
}