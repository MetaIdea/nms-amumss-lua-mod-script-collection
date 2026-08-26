NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]        = "PU_TerrainVariety",
["MOD_AUTHOR"]          = "Trevix",
["LUA_AUTHOR"]          = "Babscoole",
["NMS_VERSION"]         = "6.30",
["MOD_DESCRIPTION"]     = "Changes how the terrains are generated",
["AMUMSS_SUPPRESS_MSG"] = "NUMBERtoSTRING",
["MODIFICATIONS"]       =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PercentChanceExtraPrime", "66"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCTERRAINGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightBlend",                   "0.1500000"},
                {"SmoothStepBelow",               "0.0200000"},
                {"SmoothStepAbove",               "0.0200000"},
                {"SmoothStepStrength",            "0.500000"},
                {"TileBlendMultiplier",           "1.500000"},
                {"NumGeneratorCalls",             "12"},
                {"NumPolygoniseCalls",            "2"},
                {"NumPostPolygoniseCalls",        "4"},
                {"TerrainPrimeIndexStart",        "21"},
                {"TerrainPurpleSystemIndexStart", "23"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
                {"SeaLevel", "30.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "3"},
                {"SlopeGain",       "0.495000"},
                {"SlopeBias",       "0.300000"},
                {"PerturbFeatures", "0.000000"},
                {"AltitudeErosion", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.000000"},
                {"Remap From Max",  "1.000000"},
                {"Height",          "16.000000"},
                {"Width",           "256.000000"},
                {"OffsetType",      "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.600000"},
                {"NoiseVoxelType",       "Rock"},
                {"Height",               "32.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.495000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"Remap From Min",       "0.500000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionGain",           "5.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"NoiseVoxelType",       "Base"},
                {"Height",               "4.000000"},
                {"Width",                "64.000000"},
                {"RegionRatio",          "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height", "20.000000"},
                {"Width",  "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",           "3"},
                {"SlopeGain",         "0.400000"},
                {"SlopeBias",         "0.400000"},
                {"AltitudeErosion",   "0.000000"},
                {"RidgeErosion",      "0.000000"},
                {"Remap From Min",    "0.600000"},
                {"Remap From Max",    "1.000000"},
                {"Remap To Min",      "0.040000"},
                {"Height",            "800.000000"},
                {"Width",             "8192.000000"},
                {"RegionRatio",       "1.000000"},
                {"PlateauSharpness",  "10"},
                {"PlateauRegionSize", "500.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaximumLOD",      "1"},
                {"Hemisphere",      "false"},
                {"NoiseVoxelType",  "Base"},
                {"MinWidth",        "30.000000"},
                {"MaxWidth",        "40.000000"},
                {"MinHeight",       "10.000000"},
                {"MaxHeight",       "10.000000"},
                {"MaxHeightOffset", "50.000000"},
                {"OffsetType",      "All"},
                {"RegionRatio",     "0.012500"},
                {"RegionScale",     "1.000000"},
                {"SeedOffset",      "0"},
                {"TileBlendMeters", "4.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active", "true"},
                {"Height", "10.000000"},
                {"Width",  "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Small", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CornerRadiusXY", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"Hemisphere",      "true"},
                {"NoiseVoxelType",  "Base"},
                {"NoiseGridType",   "Sphere"},
                {"MinWidth",        "200.000000"},
                {"MaxWidth",        "200.000000"},
                {"MinHeight",       "50.000000"},
                {"MaxHeight",       "50.000000"},
                {"MaxHeightOffset", "70.000000"},
                {"HeightOffset",    "-50.000000"},
                {"OffsetType",      "Zero"},
                {"RegionRatio",     "0.100000"},
                {"SmoothRadius",    "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",    "3"},
                {"Height",     "20.000000"},
                {"OffsetType", "All"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",              "1.000000"},
                {"Height",             "1.000000"},
                {"BottomRadiusOffset", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",         "false"},
                {"NoiseVoxelType", "Base"},
                {"Width",          "100.000000"},
                {"Height",         "25.000000"},
                {"Octaves",        "5"},
                {"RegionSize",     "600.000000"},
                {"HeightOffset",   "0.000000"},
                {"OffsetType",     "Base"},
                {"SmoothRadius",   "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NoiseVoxelType",          "Base"},
                {"Width",                   "75.000000"},
                {"Height",                  "50.000000"},
                {"Octaves",                 "1"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "10.000000"},
                {"HeightVarianceFrequency", "50.000000"},
                {"HeightOffset",            "110.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
                {"TileBlendMeters",         "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FeatureType",  "Tube"},
                {"Width",        "10.000000"},
                {"Height",       "2.500000"},
                {"Octaves",      "3"},
                {"RegionSize",   "100.000000"},
                {"HeightOffset", "0.000000"},
                {"SmoothRadius", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
                {"SeaLevel", "120.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.250000"},
                {"Remap From Max",       "1.000000"},
                {"Height",               "64.000000"},
                {"Width",                "512.000000"},
                {"OffsetType",           "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "9"},
                {"SlopeGain",       "0.605000"},
                {"SlopeBias",       "0.600000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.800000"},
                {"NoiseVoxelType",  "Rock"},
                {"Width",           "1024.000000"},
                {"RegionRatio",     "1.000000"},
                {"OffsetType",      "All"},
                {"TileBlendMeters", "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.605000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"Remap From Min",       "0.750000"},
                {"Width",                "2048.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionGain",           "5.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "4"},
                {"SlopeGain",       "0.605000"},
                {"SlopeBias",       "0.700000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.500000"},
                {"NoiseVoxelType",  "Base"},
                {"Width",           "128.000000"},
                {"RegionRatio",     "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
                {"Height",    "20.000000"},
                {"Width",     "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",         "0.400000"},
                {"SlopeBias",         "0.800000"},
                {"AltitudeErosion",   "0.000000"},
                {"RidgeErosion",      "0.000000"},
                {"Remap From Min",    "0.800000"},
                {"Remap From Max",    "1.000000"},
                {"Remap To Min",      "0.040000"},
                {"Height",            "400.000000"},
                {"Width",             "16384.000000"},
                {"RegionRatio",       "1.000000"},
                {"PlateauSharpness",  "10"},
                {"PlateauRegionSize", "1000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaximumLOD",      "1"},
                {"Hemisphere",      "false"},
                {"NoiseVoxelType",  "Rock"},
                {"MinWidth",        "40.000000"},
                {"MaxWidth",        "80.000000"},
                {"MinHeight",       "10.000000"},
                {"MaxHeight",       "30.000000"},
                {"MaxHeightOffset", "110.000000"},
                {"OffsetType",      "All"},
                {"RegionRatio",     "0.012500"},
                {"RegionScale",     "1.000000"},
                {"SeedOffset",      "0"},
                {"TileBlendMeters", "4.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active", "true"},
                {"Height", "10.000000"},
                {"Width",  "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Small", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CornerRadiusXY", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"Hemisphere",      "true"},
                {"NoiseVoxelType",  "Base"},
                {"NoiseGridType",   "Sphere"},
                {"MinWidth",        "200.000000"},
                {"MaxWidth",        "200.000000"},
                {"MinHeight",       "50.000000"},
                {"MaxHeight",       "50.000000"},
                {"MaxHeightOffset", "70.000000"},
                {"HeightOffset",    "-50.000000"},
                {"OffsetType",      "Zero"},
                {"RegionRatio",     "0.100000"},
                {"SmoothRadius",    "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",    "3"},
                {"Height",     "20.000000"},
                {"OffsetType", "All"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",              "1.000000"},
                {"Height",             "1.000000"},
                {"BottomRadiusOffset", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"NoiseVoxelType",          "Base"},
                {"Width",                   "100.000000"},
                {"Height",                  "50.000000"},
                {"Octaves",                 "8"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"HeightOffset",            "25.000000"},
                {"OffsetType",              "Base"},
                {"SmoothRadius",            "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "150.000000"},
                {"Height",                  "75.000000"},
                {"Octaves",                 "1"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "10.000000"},
                {"HeightVarianceFrequency", "50.000000"},
                {"HeightOffset",            "110.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
                {"TileBlendMeters",         "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FeatureType",  "Tube"},
                {"Width",        "10.000000"},
                {"Height",       "2.500000"},
                {"Octaves",      "3"},
                {"RegionSize",   "100.000000"},
                {"HeightOffset", "0.000000"},
                {"SmoothRadius", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"MaximumLOD",           "3"},
                {"Height",               "16.000000"},
                {"Width",                "256.000000"},
                {"OffsetType",           "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"Remap From Min",       "0.600000"},
                {"NoiseVoxelType",       "Rock"},
                {"Height",               "32.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.495000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.500000"},
                {"Remap From Max",       "1.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionScale",          "4.000000"},
                {"RegionGain",           "5.000000"},
                {"OffsetType",           "All"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"MaximumLOD",           "1"},
                {"Height",               "4.000000"},
                {"Width",                "64.000000"},
                {"RegionRatio",          "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",         "0.400000"},
                {"SlopeBias",         "0.400000"},
                {"AmplifyFeatures",   "0.250000"},
                {"RidgeErosion",      "0.000000"},
                {"Remap To Min",      "0.040000"},
                {"Height",            "400.000000"},
                {"Width",             "8192.000000"},
                {"RegionRatio",       "1.000000"},
                {"PlateauStratas",    "1.000000"},
                {"PlateauSharpness",  "10"},
                {"PlateauRegionSize", "500.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"MaximumLOD",      "2"},
                {"MinWidth",        "128.000000"},
                {"MaxWidth",        "128.000000"},
                {"MinHeight",       "32.000000"},
                {"MaxHeight",       "32.000000"},
                {"MinHeightOffset", "0.000000"},
                {"HeightOffset",    "-16.000000"},
                {"OffsetType",      "Zero"},
                {"RegionRatio",     "0.100000"},
                {"SmoothRadius",    "8.000000"},
                {"TileBlendMeters", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",          "16.000000"},
                {"Width",           "32.000000"},
                {"TileBlendMeters", "2.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Hemisphere",      "false"},
                {"MinWidth",        "100.000000"},
                {"MaxWidth",        "100.000000"},
                {"MinHeight",       "10.000000"},
                {"MaxHeight",       "10.000000"},
                {"MinHeightOffset", "10.000000"},
                {"MaxHeightOffset", "10.000000"},
                {"HeightOffset",    "0.000000"},
                {"OffsetType",      "Base"},
                {"RegionRatio",     "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",    "5"},
                {"Height",     "10.000000"},
                {"OffsetType", "Base"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "50.000000"},
                {"Octaves",                 "8"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"HeightOffset",            "25.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"FeatureType",             "Tube"},
                {"Width",                   "10.000000"},
                {"Height",                  "2.500000"},
                {"Octaves",                 "3"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"HeightOffset",            "0.000000"},
                {"OffsetType",              "Base"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"Remap From Min",       "0.600000"},
                {"MaximumLOD",           "3"},
                {"Height",               "108.000000"},
                {"Width",                "512.000000"},
                {"OffsetType",           "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"Remap From Min",       "0.800000"},
                {"NoiseVoxelType",       "Rock"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.605000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.750000"},
                {"Remap From Max",       "1.000000"},
                {"Width",                "2048.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionScale",          "4.000000"},
                {"RegionGain",           "5.000000"},
                {"OffsetType",           "All"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"Remap From Min",       "0.500000"},
                {"MaximumLOD",           "1"},
                {"Width",                "128.000000"},
                {"RegionRatio",          "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "12"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.250000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.200000"},
                {"Remap To Min",         "0.040000"},
                {"Height",               "400.000000"},
                {"Width",                "16384.000000"},
                {"RegionRatio",          "1.000000"},
                {"PlateauStratas",       "5.000000"},
                {"PlateauSharpness",     "10"},
                {"PlateauRegionSize",    "1000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"MaximumLOD",      "2"},
                {"MinWidth",        "128.000000"},
                {"MaxWidth",        "128.000000"},
                {"MinHeight",       "32.000000"},
                {"MaxHeight",       "32.000000"},
                {"MinHeightOffset", "0.000000"},
                {"HeightOffset",    "-16.000000"},
                {"OffsetType",      "Zero"},
                {"RegionRatio",     "0.100000"},
                {"SmoothRadius",    "8.000000"},
                {"TileBlendMeters", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",          "16.000000"},
                {"Width",           "32.000000"},
                {"TileBlendMeters", "2.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Hemisphere",      "false"},
                {"MinWidth",        "100.000000"},
                {"MaxWidth",        "100.000000"},
                {"MinHeight",       "10.000000"},
                {"MaxHeight",       "10.000000"},
                {"MinHeightOffset", "10.000000"},
                {"MaxHeightOffset", "10.000000"},
                {"HeightOffset",    "0.000000"},
                {"OffsetType",      "Base"},
                {"RegionRatio",     "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",    "5"},
                {"Height",     "10.000000"},
                {"OffsetType", "Base"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "50.000000"},
                {"Octaves",                 "8"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"HeightOffset",            "25.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"FeatureType",             "Tube"},
                {"Width",                   "10.000000"},
                {"Height",                  "2.500000"},
                {"Octaves",                 "3"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"HeightOffset",            "0.000000"},
                {"OffsetType",              "Base"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
                {"SeaLevel", "30.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "3"},
                {"SlopeGain",       "0.495000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.000000"},
                {"Remap From Max",  "1.000000"},
                {"MaximumLOD",      "3"},
                {"Height",          "16.000000"},
                {"Width",           "256.000000"},
                {"OffsetType",      "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.600000"},
                {"NoiseVoxelType",       "Rock"},
                {"Height",               "32.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionScale",          "2.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"Remap From Min",       "0.500000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionGain",           "5.000000"},
                {"PlateauStratas",       "0.000000"},
                {"PlateauSharpness",     "3"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.495000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"NoiseVoxelType",       "Base"},
                {"Height",               "4.000000"},
                {"Width",                "64.000000"},
                {"RegionRatio",          "1.000000"},
                {"PlateauStratas",       "0.000000"},
                {"PlateauSharpness",     "3"},
                {"TileBlendMeters",      "4.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height", "20.000000"},
                {"Width",  "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",         "0.300000"},
                {"SlopeBias",         "0.300000"},
                {"AmplifyFeatures",   "0.250000"},
                {"RidgeErosion",      "0.000000"},
                {"Remap From Min",    "0.000000"},
                {"Remap From Max",    "1.000000"},
                {"Remap To Min",      "0.040000"},
                {"Remap To Max",      "1.000000"},
                {"Height",            "800.000000"},
                {"Width",             "4096.000000"},
                {"PlateauStratas",    "0.000000"},
                {"PlateauSharpness",  "10"},
                {"PlateauRegionSize", "500.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaximumLOD",      "2"},
                {"NoiseGridType",   "Sphere"},
                {"MinWidth",        "128.000000"},
                {"MaxWidth",        "128.000000"},
                {"MinHeight",       "32.000000"},
                {"MaxHeight",       "32.000000"},
                {"MaxHeightOffset", "0.000000"},
                {"HeightOffset",    "-16.000000"},
                {"OffsetType",      "Zero"},
                {"RegionRatio",     "0.100000"},
                {"VaryYaw",         "0.000000"},
                {"SmoothRadius",    "8.000000"},
                {"TileBlendMeters", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",          "16.000000"},
                {"Width",           "32.000000"},
                {"TileBlendMeters", "2.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Small", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Depth",          "1.000000"},
                {"Thickness",      "1.000000"},
                {"CornerRadiusXY", "0.000000"},
                {"CornerRadiusZ",  "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaximumLOD",      "3"},
                {"NoiseGridType",   "Sphere"},
                {"MinWidth",        "100.000000"},
                {"MaxWidth",        "100.000000"},
                {"MinHeight",       "10.000000"},
                {"MaxHeight",       "10.000000"},
                {"MinHeightOffset", "10.000000"},
                {"MaxHeightOffset", "10.000000"},
                {"HeightOffset",    "0.000000"},
                {"OffsetType",      "Base"},
                {"RegionRatio",     "1.000000"},
                {"VaryYaw",         "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves", "5"},
                {"Active",  "false"},
                {"Width",   "100.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Large", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Depth",          "1.000000"},
                {"Thickness",      "1.000000"},
                {"CornerRadiusXY", "0.000000"},
                {"CornerRadiusZ",  "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "100.000000"},
                {"Height",                  "50.000000"},
                {"Octaves",                 "8"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"HeightOffset",            "25.000000"},
                {"OffsetType",              "Base"},
                {"SmoothRadius",            "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
                {"SeaLevel", "120.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.250000"},
                {"Remap From Max",       "1.000000"},
                {"MaximumLOD",           "3"},
                {"Height",               "108.000000"},
                {"Width",                "512.000000"},
                {"OffsetType",           "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.800000"},
                {"NoiseVoxelType",       "Rock"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionScale",          "2.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"Remap From Min",       "0.750000"},
                {"Width",                "2048.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionGain",           "5.000000"},
                {"PlateauStratas",       "0.000000"},
                {"PlateauSharpness",     "3"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"Remap From Min",       "0.500000"},
                {"NoiseVoxelType",       "Base"},
                {"Height",               "8.000000"},
                {"Width",                "128.000000"},
                {"RegionRatio",          "1.000000"},
                {"PlateauStratas",       "0.000000"},
                {"PlateauSharpness",     "3"},
                {"TileBlendMeters",      "4.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
                {"Height",    "20.000000"},
                {"Width",     "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "12"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.250000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.250000"},
                {"Remap From Max",       "1.000000"},
                {"Remap To Min",         "0.040000"},
                {"Remap To Max",         "1.000000"},
                {"Height",               "400.000000"},
                {"Width",                "8192.000000"},
                {"PlateauStratas",       "0.000000"},
                {"PlateauSharpness",     "10"},
                {"PlateauRegionSize",    "1000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaximumLOD",      "2"},
                {"NoiseGridType",   "Sphere"},
                {"MinWidth",        "128.000000"},
                {"MaxWidth",        "128.000000"},
                {"MinHeight",       "32.000000"},
                {"MaxHeight",       "32.000000"},
                {"MaxHeightOffset", "0.000000"},
                {"HeightOffset",    "-16.000000"},
                {"OffsetType",      "Zero"},
                {"RegionRatio",     "0.100000"},
                {"VaryYaw",         "0.000000"},
                {"SmoothRadius",    "8.000000"},
                {"TileBlendMeters", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",          "16.000000"},
                {"Width",           "32.000000"},
                {"TileBlendMeters", "2.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Small", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Depth",          "1.000000"},
                {"Thickness",      "1.000000"},
                {"CornerRadiusXY", "0.000000"},
                {"CornerRadiusZ",  "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaximumLOD",      "3"},
                {"NoiseGridType",   "Sphere"},
                {"MinWidth",        "100.000000"},
                {"MaxWidth",        "100.000000"},
                {"MinHeight",       "10.000000"},
                {"MaxHeight",       "10.000000"},
                {"MinHeightOffset", "10.000000"},
                {"MaxHeightOffset", "10.000000"},
                {"HeightOffset",    "0.000000"},
                {"OffsetType",      "Base"},
                {"RegionRatio",     "1.000000"},
                {"VaryYaw",         "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves", "5"},
                {"Active",  "false"},
                {"Width",   "100.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Large", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Depth",          "1.000000"},
                {"Thickness",      "1.000000"},
                {"CornerRadiusXY", "0.000000"},
                {"CornerRadiusZ",  "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "100.000000"},
                {"Height",                  "50.000000"},
                {"Octaves",                 "8"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"HeightOffset",            "25.000000"},
                {"OffsetType",              "Base"},
                {"SmoothRadius",            "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Height",               "16.000000"},
                {"Width",                "256.000000"},
                {"OffsetType",           "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.600000"},
                {"Active",               "false"},
                {"NoiseVoxelType",       "Rock"},
                {"Height",               "32.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.495000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Remap From Min",       "0.500000"},
                {"Remap From Max",       "1.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionGain",           "5.000000"},
                {"OffsetType",           "All"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"NoiseVoxelType",       "Base"},
                {"Height",               "4.000000"},
                {"Width",                "64.000000"},
                {"RegionRatio",          "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.200000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.250000"},
                {"Remap To Min",         "0.040000"},
                {"Height",               "800.000000"},
                {"Width",                "8192.000000"},
                {"RegionGain",           "1.000000"},
                {"PlateauSharpness",     "10"},
                {"PlateauRegionSize",    "500.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NoiseVoxelType",  "Rock"},
                {"NoiseGridType",   "SuperPrimitiveRandom"},
                {"MinWidth",        "200.000000"},
                {"MaxWidth",        "200.000000"},
                {"MinHeight",       "100.000000"},
                {"MaxHeight",       "100.000000"},
                {"MinHeightOffset", "0.000000"},
                {"MaxHeightOffset", "0.000000"},
                {"OffsetType",      "Zero"},
                {"RegionRatio",     "0.025000"},
                {"VaryYaw",         "90.000000"},
                {"SmoothRadius",    "50.000000"},
                {"RandomPrimitive", "0.950657"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves", "2"},
                {"Active",  "true"},
                {"Width",   "30.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Large", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Depth",          "0.546056"},
                {"Thickness",      "0.703944"},
                {"CornerRadiusXY", "1.000000"},
                {"CornerRadiusZ",  "0.151315"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "5"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"NoiseVoxelType",          "Mountain"},
                {"Width",                   "96.000000"},
                {"Height",                  "48.000000"},
                {"Octaves",                 "1"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "400.000000"},
                {"HeightOffset",            "16.000000"},
                {"OffsetType",              "Zero"},
                {"SmoothRadius",            "20.000000"},
                {"TileBlendMeters",         "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "96.000000"},
                {"Height",                  "48.000000"},
                {"Octaves",                 "1"},
                {"RegionSize",              "1400.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"HeightOffset",            "16.000000"},
                {"OffsetType",              "Zero"},
                {"SmoothRadius",            "10.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"FeatureType",             "Blob"},
                {"Width",                   "75.000000"},
                {"Height",                  "50.000000"},
                {"Octaves",                 "1"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "5.000000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"HeightOffset",            "15.000000"},
                {"SmoothRadius",            "8.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "8"},
                {"SlopeGain",       "0.605000"},
                {"SlopeBias",       "0.600000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.600000"},
                {"Width",           "512.000000"},
                {"OffsetType",      "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "9"},
                {"SlopeGain",       "0.605000"},
                {"SlopeBias",       "0.600000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.800000"},
                {"NoiseVoxelType",  "Rock"},
                {"Width",           "1024.000000"},
                {"RegionRatio",     "1.000000"},
                {"OffsetType",      "All"},
                {"TileBlendMeters", "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.605000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Remap From Min",       "0.750000"},
                {"Remap From Max",       "1.000000"},
                {"Width",                "2048.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionGain",           "5.000000"},
                {"OffsetType",           "All"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "4"},
                {"SlopeGain",       "0.605000"},
                {"SlopeBias",       "0.700000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.500000"},
                {"NoiseVoxelType",  "Base"},
                {"Width",           "128.000000"},
                {"RegionRatio",     "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",           "12"},
                {"SlopeGain",         "0.400000"},
                {"SlopeBias",         "0.800000"},
                {"AmplifyFeatures",   "0.000000"},
                {"PerturbFeatures",   "0.000000"},
                {"RidgeErosion",      "0.000000"},
                {"Remap From Min",    "0.750000"},
                {"Remap To Min",      "0.040000"},
                {"Height",            "400.000000"},
                {"Width",             "16384.000000"},
                {"RegionGain",        "1.000000"},
                {"PlateauSharpness",  "10"},
                {"PlateauRegionSize", "1000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NoiseVoxelType",  "Rock"},
                {"NoiseGridType",   "SuperPrimitiveRandom"},
                {"MinWidth",        "200.000000"},
                {"MaxWidth",        "200.000000"},
                {"MinHeight",       "100.000000"},
                {"MaxHeight",       "100.000000"},
                {"MinHeightOffset", "0.000000"},
                {"MaxHeightOffset", "0.000000"},
                {"OffsetType",      "Zero"},
                {"RegionRatio",     "0.025000"},
                {"VaryYaw",         "90.000000"},
                {"SmoothRadius",    "50.000000"},
                {"RandomPrimitive", "0.950657"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves", "2"},
                {"Active",  "true"},
                {"Width",   "30.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Large", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Depth",          "0.546056"},
                {"Thickness",      "0.703944"},
                {"CornerRadiusXY", "1.000000"},
                {"CornerRadiusZ",  "0.151315"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "5"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"NoiseVoxelType",          "Mountain"},
                {"Width",                   "256.000000"},
                {"Height",                  "64.000000"},
                {"Octaves",                 "1"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "400.000000"},
                {"HeightOffset",            "32.000000"},
                {"OffsetType",              "Zero"},
                {"SmoothRadius",            "20.000000"},
                {"TileBlendMeters",         "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "128.000000"},
                {"Height",                  "48.000000"},
                {"Octaves",                 "1"},
                {"RegionSize",              "1400.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"HeightOffset",            "48.000000"},
                {"OffsetType",              "Zero"},
                {"SmoothRadius",            "10.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"FeatureType",             "Blob"},
                {"Width",                   "75.000000"},
                {"Height",                  "50.000000"},
                {"Octaves",                 "1"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "5.000000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"HeightOffset",            "15.000000"},
                {"SmoothRadius",            "8.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Height",               "16.000000"},
                {"Width",                "256.000000"},
                {"OffsetType",           "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.600000"},
                {"NoiseVoxelType",       "Rock"},
                {"Height",               "32.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Remap From Min",       "0.600000"},
                {"Remap From Max",       "1.000000"},
                {"Active",               "true"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionScale",          "4.000000"},
                {"RegionGain",           "5.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"NoiseVoxelType",       "Base"},
                {"Height",               "4.000000"},
                {"Width",                "64.000000"},
                {"RegionRatio",          "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"Remap From Min",       "0.600000"},
                {"Remap To Min",         "0.040000"},
                {"Height",               "400.000000"},
                {"Width",                "4096.000000"},
                {"PlateauSharpness",     "10"},
                {"PlateauRegionSize",    "500.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"MaximumLOD",      "2"},
                {"MinWidth",        "128.000000"},
                {"MaxWidth",        "128.000000"},
                {"MinHeight",       "32.000000"},
                {"MaxHeight",       "32.000000"},
                {"MinHeightOffset", "0.000000"},
                {"MaxHeightOffset", "0.000000"},
                {"HeightOffset",    "-16.000000"},
                {"OffsetType",      "Zero"},
                {"RegionRatio",     "0.100000"},
                {"SmoothRadius",    "8.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height", "16.000000"},
                {"Width",  "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NoiseVoxelType",  "Base"},
                {"NoiseGridType",   "Sphere"},
                {"MinWidth",        "100.000000"},
                {"MaxWidth",        "100.000000"},
                {"MinHeight",       "10.000000"},
                {"MaxHeight",       "10.000000"},
                {"MinHeightOffset", "10.000000"},
                {"MaxHeightOffset", "10.000000"},
                {"OffsetType",      "Base"},
                {"RegionRatio",     "1.000000"},
                {"VaryYaw",         "0.000000"},
                {"SmoothRadius",    "0.000000"},
                {"RandomPrimitive", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves", "5"},
                {"Active",  "false"},
                {"Width",   "100.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Large", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Depth",          "1.000000"},
                {"Thickness",      "1.000000"},
                {"CornerRadiusXY", "0.000000"},
                {"CornerRadiusZ",  "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "8"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"NoiseVoxelType",          "Base"},
                {"Width",                   "10.000000"},
                {"Height",                  "2.500000"},
                {"Octaves",                 "3"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"HeightOffset",            "0.000000"},
                {"OffsetType",              "Base"},
                {"SmoothRadius",            "0.000000"},
                {"TileBlendMeters",         "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Width",                   "10.000000"},
                {"Height",                  "2.500000"},
                {"Octaves",                 "3"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"HeightOffset",            "0.000000"},
                {"OffsetType",              "Base"},
                {"SmoothRadius",            "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"FeatureType",             "Tube"},
                {"Width",                   "10.000000"},
                {"Height",                  "2.500000"},
                {"Octaves",                 "3"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"HeightOffset",            "0.000000"},
                {"SmoothRadius",            "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "8"},
                {"SlopeGain",       "0.605000"},
                {"SlopeBias",       "0.600000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.250000"},
                {"Height",          "108.000000"},
                {"Width",           "1024.000000"},
                {"OffsetType",      "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "9"},
                {"SlopeGain",       "0.605000"},
                {"SlopeBias",       "0.600000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.800000"},
                {"NoiseVoxelType",  "Rock"},
                {"Width",           "1024.000000"},
                {"RegionRatio",     "1.000000"},
                {"OffsetType",      "All"},
                {"TileBlendMeters", "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Remap From Min",       "0.750000"},
                {"Remap From Max",       "1.000000"},
                {"Active",               "true"},
                {"Width",                "2048.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionScale",          "4.000000"},
                {"RegionGain",           "5.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "4"},
                {"SlopeGain",       "0.605000"},
                {"SlopeBias",       "0.700000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.500000"},
                {"NoiseVoxelType",  "Base"},
                {"Width",           "128.000000"},
                {"RegionRatio",     "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",           "12"},
                {"SlopeGain",         "0.400000"},
                {"SlopeBias",         "0.600000"},
                {"Remap From Min",    "0.750000"},
                {"Remap To Min",      "0.040000"},
                {"Height",            "400.000000"},
                {"Width",             "8192.000000"},
                {"PlateauSharpness",  "10"},
                {"PlateauRegionSize", "1000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"MaximumLOD",      "2"},
                {"MinWidth",        "128.000000"},
                {"MaxWidth",        "128.000000"},
                {"MinHeight",       "32.000000"},
                {"MaxHeight",       "32.000000"},
                {"MinHeightOffset", "0.000000"},
                {"MaxHeightOffset", "0.000000"},
                {"HeightOffset",    "-16.000000"},
                {"OffsetType",      "Zero"},
                {"RegionRatio",     "0.100000"},
                {"SmoothRadius",    "8.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height", "16.000000"},
                {"Width",  "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NoiseVoxelType",  "Base"},
                {"NoiseGridType",   "Sphere"},
                {"MinWidth",        "100.000000"},
                {"MaxWidth",        "100.000000"},
                {"MinHeight",       "10.000000"},
                {"MaxHeight",       "10.000000"},
                {"MinHeightOffset", "10.000000"},
                {"MaxHeightOffset", "10.000000"},
                {"OffsetType",      "Base"},
                {"RegionRatio",     "1.000000"},
                {"VaryYaw",         "0.000000"},
                {"SmoothRadius",    "0.000000"},
                {"RandomPrimitive", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves", "5"},
                {"Active",  "false"},
                {"Width",   "100.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Large", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Depth",          "1.000000"},
                {"Thickness",      "1.000000"},
                {"CornerRadiusXY", "0.000000"},
                {"CornerRadiusZ",  "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "8"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"NoiseVoxelType",          "Base"},
                {"Width",                   "10.000000"},
                {"Height",                  "2.500000"},
                {"Octaves",                 "3"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"HeightOffset",            "0.000000"},
                {"OffsetType",              "Base"},
                {"SmoothRadius",            "0.000000"},
                {"TileBlendMeters",         "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Width",                   "10.000000"},
                {"Height",                  "2.500000"},
                {"Octaves",                 "3"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"HeightOffset",            "0.000000"},
                {"OffsetType",              "Base"},
                {"SmoothRadius",            "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"FeatureType",             "Tube"},
                {"Width",                   "10.000000"},
                {"Height",                  "2.500000"},
                {"Octaves",                 "3"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"HeightOffset",            "0.000000"},
                {"SmoothRadius",            "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
                {"SeaLevel", "30.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"MaximumLOD",           "3"},
                {"Height",               "16.000000"},
                {"Width",                "256.000000"},
                {"OffsetType",           "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"Remap From Min",       "0.600000"},
                {"NoiseVoxelType",       "Rock"},
                {"Height",               "32.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.495000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Remap From Min",       "0.500000"},
                {"Active",               "true"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionScale",          "4.000000"},
                {"RegionGain",           "5.000000"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"Active",               "true"},
                {"MaximumLOD",           "1"},
                {"NoiseVoxelType",       "Base"},
                {"Height",               "4.000000"},
                {"Width",                "64.000000"},
                {"RegionRatio",          "1.000000"},
                {"TileBlendMeters",      "4.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height", "20.000000"},
                {"Width",  "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"Remap From Min",       "0.000000"},
                {"Remap To Min",         "0.040000"},
                {"Height",               "400.000000"},
                {"Width",                "8192.000000"},
                {"PlateauSharpness",     "1"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NoiseGridType",   "Sphere"},
                {"MaxHeightOffset", "0.000000"},
                {"HeightOffset",    "-205.000000"},
                {"RegionRatio",     "0.200000"},
                {"VaryYaw",         "0.000000"},
                {"SmoothRadius",    "10.000000"},
                {"SeedOffset",      "2"},
                {"RandomPrimitive", "0.000000"},
                {"TileBlendMeters", "4.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Small", "SuperFormula1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Form_n2", "2.000000"},
                {"Form_n3", "2.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Small", "SuperFormula2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Form_m", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Subtract",        "true"},
                {"NoiseGridType",   "Sphere"},
                {"MaxHeightOffset", "0.000000"},
                {"HeightOffset",    "20.000000"},
                {"RegionRatio",     "0.200000"},
                {"VaryYaw",         "0.000000"},
                {"SmoothRadius",    "0.000000"},
                {"RandomPrimitive", "0.000000"},
                {"TileBlendMeters", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Large", "SuperFormula1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Form_n2", "4.500000"},
                {"Form_n3", "4.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Subtract",                "false"},
                {"Trench",                  "false"},
                {"NoiseVoxelType",          "Mountain"},
                {"FeatureType",             "Blob"},
                {"Width",                   "70.000000"},
                {"Octaves",                 "1"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"HeightOffset",            "-30.000000"},
                {"OffsetType",              "All"},
                {"SeedOffset",              "3"},
                {"TileBlendMeters",         "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "true"},
                {"Subtract",        "true"},
                {"NoiseVoxelType",  "Mountain"},
                {"FeatureType",     "Blob"},
                {"Width",           "50.000000"},
                {"Height",          "100.000000"},
                {"Octaves",         "1"},
                {"RegionSize",      "1200.000000"},
                {"HeightOffset",    "25.000000"},
                {"OffsetType",      "All"},
                {"SmoothRadius",    "5.000000"},
                {"TileBlendMeters", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Subtract",                "true"},
                {"Trench",                  "true"},
                {"NoiseVoxelType",          "Base"},
                {"Width",                   "50.000000"},
                {"Height",                  "25.000000"},
                {"Octaves",                 "1"},
                {"RegionSize",              "300.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"HeightOffset",            "0.000000"},
                {"OffsetType",              "Base"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "0"},
                {"TileBlendMeters",         "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",       "false"},
                {"Subtract",     "true"},
                {"Width",        "50.000000"},
                {"Height",       "25.000000"},
                {"RegionSize",   "150.000000"},
                {"HeightOffset", "0.000000"},
                {"OffsetType",   "All"},
                {"SmoothRadius", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
                {"SeaLevel", "120.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"Remap From Min",       "0.600000"},
                {"MaximumLOD",           "3"},
                {"Height",               "108.000000"},
                {"Width",                "512.000000"},
                {"OffsetType",           "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"Remap From Min",       "0.800000"},
                {"NoiseVoxelType",       "Rock"},
                {"Height",               "64.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "8"},
                {"SlopeGain",       "0.605000"},
                {"PerturbFeatures", "0.000000"},
                {"SlopeErosion",    "0.000000"},
                {"Remap From Min",  "0.750000"},
                {"Active",          "true"},
                {"Width",           "2048.000000"},
                {"RegionRatio",     "1.000000"},
                {"RegionScale",     "4.000000"},
                {"RegionGain",      "5.000000"},
                {"TileBlendMeters", "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"Remap From Min",       "0.500000"},
                {"Active",               "true"},
                {"MaximumLOD",           "1"},
                {"NoiseVoxelType",       "Base"},
                {"Width",                "128.000000"},
                {"RegionRatio",          "1.000000"},
                {"TileBlendMeters",      "4.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"Remap From Min",       "0.400000"},
                {"Height",               "400.000000"},
                {"Width",                "8192.000000"},
                {"PlateauSharpness",     "10"},
                {"PlateauRegionSize",    "500.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NoiseGridType",   "Sphere"},
                {"MaxHeightOffset", "0.000000"},
                {"HeightOffset",    "-205.000000"},
                {"RegionRatio",     "0.200000"},
                {"VaryYaw",         "0.000000"},
                {"SmoothRadius",    "10.000000"},
                {"SeedOffset",      "2"},
                {"RandomPrimitive", "0.000000"},
                {"TileBlendMeters", "4.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Small", "SuperFormula1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Form_n2", "2.000000"},
                {"Form_n3", "2.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Small", "SuperFormula2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Form_m", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Subtract",        "true"},
                {"NoiseGridType",   "Sphere"},
                {"MaxHeightOffset", "0.000000"},
                {"HeightOffset",    "20.000000"},
                {"RegionRatio",     "0.200000"},
                {"VaryYaw",         "0.000000"},
                {"SmoothRadius",    "0.000000"},
                {"RandomPrimitive", "0.000000"},
                {"TileBlendMeters", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Large", "SuperFormula1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Form_n2", "4.500000"},
                {"Form_n3", "4.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Subtract",                "false"},
                {"Trench",                  "false"},
                {"NoiseVoxelType",          "Mountain"},
                {"FeatureType",             "Blob"},
                {"Width",                   "70.000000"},
                {"Octaves",                 "1"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"HeightOffset",            "-30.000000"},
                {"OffsetType",              "All"},
                {"SeedOffset",              "3"},
                {"TileBlendMeters",         "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "true"},
                {"Subtract",        "true"},
                {"NoiseVoxelType",  "Mountain"},
                {"FeatureType",     "Blob"},
                {"Width",           "50.000000"},
                {"Height",          "100.000000"},
                {"Octaves",         "1"},
                {"RegionSize",      "1200.000000"},
                {"HeightOffset",    "25.000000"},
                {"OffsetType",      "All"},
                {"SmoothRadius",    "5.000000"},
                {"TileBlendMeters", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Subtract",                "true"},
                {"Trench",                  "true"},
                {"NoiseVoxelType",          "Base"},
                {"Width",                   "50.000000"},
                {"Height",                  "25.000000"},
                {"Octaves",                 "1"},
                {"RegionSize",              "300.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"HeightOffset",            "0.000000"},
                {"OffsetType",              "Base"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "0"},
                {"TileBlendMeters",         "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",       "false"},
                {"Subtract",     "true"},
                {"Width",        "50.000000"},
                {"Height",       "25.000000"},
                {"RegionSize",   "150.000000"},
                {"HeightOffset", "0.000000"},
                {"OffsetType",   "All"},
                {"SmoothRadius", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
                {"SeaLevel", "30.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Width",                "256.000000"},
                {"OffsetType",           "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.600000"},
                {"NoiseVoxelType",       "Rock"},
                {"Height",               "32.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.495000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Remap From Min",       "0.500000"},
                {"Remap From Max",       "1.000000"},
                {"Active",               "true"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionScale",          "4.000000"},
                {"RegionGain",           "5.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"NoiseVoxelType",       "Base"},
                {"Height",               "4.000000"},
                {"Width",                "64.000000"},
                {"RegionRatio",          "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height", "20.000000"},
                {"Width",  "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Remap From Min",       "0.000000"},
                {"Remap To Min",         "0.040000"},
                {"Height",               "400.000000"},
                {"Width",                "8192.000000"},
                {"PlateauSharpness",     "10"},
                {"PlateauRegionSize",    "500.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"MaximumLOD",      "1"},
                {"NoiseVoxelType",  "Rock"},
                {"MinWidth",        "15.000000"},
                {"MaxWidth",        "15.000000"},
                {"MinHeight",       "8.000000"},
                {"MaxHeight",       "8.000000"},
                {"MinHeightOffset", "-6.000000"},
                {"MaxHeightOffset", "-4.000000"},
                {"HeightOffset",    "0.000000"},
                {"OffsetType",      "Base"},
                {"RegionRatio",     "0.010000"},
                {"SmoothRadius",    "1.000000"},
                {"SeedOffset",      "0"},
                {"TileBlendMeters", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "2"},
                {"Active",          "true"},
                {"Height",          "1.000000"},
                {"Width",           "5.000000"},
                {"TileBlendMeters", "2.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Small", "SuperFormula1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Form_m",  "7.000000"},
                {"Form_n1", "20.450000"},
                {"Form_n2", "-0.330000"},
                {"Form_n3", "-3.540000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Small", "SuperFormula2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Form_m",  "7.000000"},
                {"Form_n1", "20.450000"},
                {"Form_n2", "-0.330000"},
                {"Form_n3", "-3.540000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"Subtract",        "false"},
                {"NoiseVoxelType",  "Base"},
                {"MinWidth",        "100.000000"},
                {"MaxWidth",        "100.000000"},
                {"MinHeight",       "10.000000"},
                {"MaxHeight",       "10.000000"},
                {"MinHeightOffset", "10.000000"},
                {"MaxHeightOffset", "10.000000"},
                {"HeightOffset",    "0.000000"},
                {"OffsetType",      "Base"},
                {"RegionRatio",     "1.000000"},
                {"RegionScale",     "5.000000"},
                {"TileBlendMeters", "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Large", "SuperFormula1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Form_m",  "7.000000"},
                {"Form_n1", "20.450000"},
                {"Form_n2", "-0.330000"},
                {"Form_n3", "-3.540000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Large", "SuperFormula2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Form_m",  "7.000000"},
                {"Form_n1", "20.450000"},
                {"Form_n2", "-0.330000"},
                {"Form_n3", "-3.540000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Subtract",                "true"},
                {"FeatureType",             "Tube"},
                {"Width",                   "100.000000"},
                {"Height",                  "96.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "600.000000"},
                {"HeightOffset",            "64.000000"},
                {"OffsetType",              "Zero"},
                {"SmoothRadius",            "20.000000"},
                {"TileBlendMeters",         "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"Subtract",        "false"},
                {"NoiseVoxelType",  "Base"},
                {"FeatureType",     "Tube"},
                {"Width",           "10.000000"},
                {"Height",          "2.500000"},
                {"Octaves",         "3"},
                {"RegionSize",      "100.000000"},
                {"HeightOffset",    "0.000000"},
                {"OffsetType",      "Base"},
                {"SmoothRadius",    "0.000000"},
                {"TileBlendMeters", "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Subtract",     "false"},
                {"Trench",       "false"},
                {"FeatureType",  "Tube"},
                {"Width",        "10.000000"},
                {"Height",       "2.500000"},
                {"Octaves",      "3"},
                {"RegionSize",   "100.000000"},
                {"SmoothRadius", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Subtract",    "false"},
                {"FeatureType", "Tube"},
                {"Width",       "10.000000"},
                {"Height",      "2.500000"},
                {"RegionSize",  "100.000000"},
                {"OffsetType",  "Base"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
                {"SeaLevel", "120.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "6"},
                {"SlopeGain",       "0.605000"},
                {"SlopeBias",       "0.600000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.250000"},
                {"Height",          "108.000000"},
                {"Width",           "512.000000"},
                {"OffsetType",      "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "9"},
                {"SlopeGain",       "0.605000"},
                {"SlopeBias",       "0.600000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.800000"},
                {"NoiseVoxelType",  "Rock"},
                {"Width",           "1024.000000"},
                {"RegionRatio",     "1.000000"},
                {"OffsetType",      "All"},
                {"TileBlendMeters", "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.605000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Remap From Min",       "0.750000"},
                {"Remap From Max",       "1.000000"},
                {"Active",               "true"},
                {"Width",                "2048.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionScale",          "4.000000"},
                {"RegionGain",           "5.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "4"},
                {"SlopeGain",       "0.605000"},
                {"SlopeBias",       "0.700000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.500000"},
                {"NoiseVoxelType",  "Base"},
                {"Width",           "128.000000"},
                {"RegionRatio",     "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
                {"Height",    "20.000000"},
                {"Width",     "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Remap From Min",       "0.000000"},
                {"Remap To Min",         "0.040000"},
                {"Height",               "400.000000"},
                {"Width",                "8192.000000"},
                {"PlateauSharpness",     "10"},
                {"PlateauRegionSize",    "1000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaximumLOD",      "1"},
                {"NoiseVoxelType",  "Rock"},
                {"MinWidth",        "15.000000"},
                {"MaxWidth",        "15.000000"},
                {"MinHeight",       "8.000000"},
                {"MaxHeight",       "8.000000"},
                {"MinHeightOffset", "-6.000000"},
                {"MaxHeightOffset", "-4.000000"},
                {"HeightOffset",    "0.000000"},
                {"OffsetType",      "Base"},
                {"RegionRatio",     "0.010000"},
                {"SmoothRadius",    "1.000000"},
                {"SeedOffset",      "0"},
                {"TileBlendMeters", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "2"},
                {"Active",          "true"},
                {"Height",          "1.000000"},
                {"Width",           "5.000000"},
                {"TileBlendMeters", "2.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Small", "SuperFormula1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Form_m",  "7.000000"},
                {"Form_n1", "20.450000"},
                {"Form_n2", "-0.330000"},
                {"Form_n3", "-3.540000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Small", "SuperFormula2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Form_m",  "7.000000"},
                {"Form_n1", "20.450000"},
                {"Form_n2", "-0.330000"},
                {"Form_n3", "-3.540000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"Subtract",        "false"},
                {"NoiseVoxelType",  "Base"},
                {"MinWidth",        "100.000000"},
                {"MaxWidth",        "100.000000"},
                {"MinHeight",       "10.000000"},
                {"MaxHeight",       "10.000000"},
                {"MinHeightOffset", "10.000000"},
                {"MaxHeightOffset", "10.000000"},
                {"HeightOffset",    "0.000000"},
                {"OffsetType",      "Base"},
                {"RegionRatio",     "1.000000"},
                {"RegionScale",     "5.000000"},
                {"TileBlendMeters", "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Large", "SuperFormula1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Form_m",  "7.000000"},
                {"Form_n1", "20.450000"},
                {"Form_n2", "-0.330000"},
                {"Form_n3", "-3.540000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Large", "SuperFormula2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Form_m",  "7.000000"},
                {"Form_n1", "20.450000"},
                {"Form_n2", "-0.330000"},
                {"Form_n3", "-3.540000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Subtract",                "true"},
                {"Trench",                  "true"},
                {"FeatureType",             "Tube"},
                {"Width",                   "200.000000"},
                {"Height",                  "128.000000"},
                {"Octaves",                 "6"},
                {"RegionSize",              "1500.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "600.000000"},
                {"HeightOffset",            "100.000000"},
                {"OffsetType",              "Zero"},
                {"SmoothRadius",            "20.000000"},
                {"TileBlendMeters",         "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"Subtract",        "false"},
                {"NoiseVoxelType",  "Base"},
                {"FeatureType",     "Tube"},
                {"Width",           "10.000000"},
                {"Height",          "2.500000"},
                {"Octaves",         "3"},
                {"RegionSize",      "100.000000"},
                {"HeightOffset",    "0.000000"},
                {"OffsetType",      "Base"},
                {"SmoothRadius",    "0.000000"},
                {"TileBlendMeters", "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Subtract",     "false"},
                {"Trench",       "false"},
                {"FeatureType",  "Tube"},
                {"Width",        "10.000000"},
                {"Height",       "2.500000"},
                {"Octaves",      "3"},
                {"RegionSize",   "100.000000"},
                {"SmoothRadius", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Subtract",    "false"},
                {"FeatureType", "Tube"},
                {"Width",       "10.000000"},
                {"Height",      "2.500000"},
                {"RegionSize",  "100.000000"},
                {"OffsetType",  "Base"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
                {"SeaLevel", "30.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"MaximumLOD",           "3"},
                {"Height",               "16.000000"},
                {"Width",                "256.000000"},
                {"OffsetType",           "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.600000"},
                {"NoiseVoxelType",       "Rock"},
                {"Height",               "32.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.495000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Remap From Min",       "0.500000"},
                {"Remap From Max",       "1.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionScale",          "4.000000"},
                {"RegionGain",           "5.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"NoiseVoxelType",       "Base"},
                {"Height",               "4.000000"},
                {"Width",                "64.000000"},
                {"RegionRatio",          "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height", "20.000000"},
                {"Width",  "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"Remap From Min",       "0.000000"},
                {"Remap From Max",       "1.000000"},
                {"Remap To Min",         "0.040000"},
                {"Height",               "400.000000"},
                {"Width",                "8192.000000"},
                {"PlateauSharpness",     "10"},
                {"PlateauRegionSize",    "500.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"MaximumLOD",      "2"},
                {"MinWidth",        "128.000000"},
                {"MaxWidth",        "128.000000"},
                {"MinHeight",       "32.000000"},
                {"MaxHeight",       "32.000000"},
                {"MinHeightOffset", "0.000000"},
                {"MaxHeightOffset", "0.000000"},
                {"HeightOffset",    "-16.000000"},
                {"OffsetType",      "Zero"},
                {"RegionRatio",     "0.100000"},
                {"SmoothRadius",    "8.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height", "16.000000"},
                {"Width",  "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Trench",                  "true"},
                {"NoiseVoxelType",          "Base"},
                {"Height",                  "50.000000"},
                {"Octaves",                 "8"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"HeightOffset",            "25.000000"},
                {"OffsetType",              "Base"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
                {"SeaLevel", "120.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"Remap From Min",       "0.250000"},
                {"MaximumLOD",           "3"},
                {"Height",               "108.000000"},
                {"Width",                "512.000000"},
                {"OffsetType",           "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "9"},
                {"SlopeGain",       "0.605000"},
                {"SlopeBias",       "0.600000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.800000"},
                {"NoiseVoxelType",  "Rock"},
                {"Width",           "1024.000000"},
                {"RegionRatio",     "1.000000"},
                {"OffsetType",      "All"},
                {"TileBlendMeters", "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.605000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Remap From Min",       "0.750000"},
                {"Remap From Max",       "1.000000"},
                {"Width",                "2048.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionScale",          "4.000000"},
                {"RegionGain",           "5.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "4"},
                {"SlopeGain",       "0.605000"},
                {"SlopeBias",       "0.700000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.500000"},
                {"NoiseVoxelType",  "Base"},
                {"Width",           "128.000000"},
                {"RegionRatio",     "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
                {"Height",    "20.000000"},
                {"Width",     "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "12"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"Remap From Min",       "0.250000"},
                {"Remap From Max",       "1.000000"},
                {"Remap To Min",         "0.040000"},
                {"Height",               "400.000000"},
                {"Width",                "16384.000000"},
                {"PlateauSharpness",     "10"},
                {"PlateauRegionSize",    "1000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"MaximumLOD",      "2"},
                {"MinWidth",        "128.000000"},
                {"MaxWidth",        "128.000000"},
                {"MinHeight",       "32.000000"},
                {"MaxHeight",       "32.000000"},
                {"MinHeightOffset", "0.000000"},
                {"MaxHeightOffset", "0.000000"},
                {"HeightOffset",    "-16.000000"},
                {"OffsetType",      "Zero"},
                {"RegionRatio",     "0.100000"},
                {"SmoothRadius",    "8.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height", "16.000000"},
                {"Width",  "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Trench",                  "true"},
                {"NoiseVoxelType",          "Base"},
                {"Height",                  "50.000000"},
                {"Octaves",                 "8"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"HeightOffset",            "25.000000"},
                {"OffsetType",              "Base"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
                {"SeaLevel", "30.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "3"},
                {"SlopeGain",       "0.495000"},
                {"SlopeBias",       "0.300000"},
                {"PerturbFeatures", "0.000000"},
                {"Remap From Min",  "0.000000"},
                {"MaximumLOD",      "3"},
                {"Height",          "16.000000"},
                {"Width",           "256.000000"},
                {"OffsetType",      "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.600000"},
                {"NoiseVoxelType",       "Rock"},
                {"Height",               "32.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "8"},
                {"SlopeGain",       "0.495000"},
                {"PerturbFeatures", "0.000000"},
                {"AltitudeErosion", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Max",  "1.000000"},
                {"Width",           "1024.000000"},
                {"RegionRatio",     "1.000000"},
                {"OffsetType",      "All"},
                {"TileBlendMeters", "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"Active",               "true"},
                {"MaximumLOD",           "1"},
                {"Height",               "4.000000"},
                {"Width",                "64.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "4.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height", "20.000000"},
                {"Width",  "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",         "0.200000"},
                {"SlopeBias",         "0.200000"},
                {"AltitudeErosion",   "0.000000"},
                {"RidgeErosion",      "0.000000"},
                {"Remap From Min",    "0.000000"},
                {"Remap From Max",    "1.000000"},
                {"Remap To Min",      "0.040000"},
                {"Height",            "400.000000"},
                {"Width",             "8192.000000"},
                {"RegionScale",       "1.000000"},
                {"PlateauSharpness",  "10"},
                {"PlateauRegionSize", "500.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "true"},
                {"MaximumLOD",      "2"},
                {"Hemisphere",      "false"},
                {"NoiseVoxelType",  "Mountain"},
                {"NoiseGridType",   "Cube"},
                {"MinWidth",        "128.000000"},
                {"MaxWidth",        "128.000000"},
                {"MinHeight",       "128.000000"},
                {"MaxHeight",       "128.000000"},
                {"MinHeightOffset", "0.000000"},
                {"MaxHeightOffset", "0.000000"},
                {"HeightOffset",    "-64.000000"},
                {"OffsetType",      "Zero"},
                {"RegionRatio",     "0.010000"},
                {"RegionScale",     "5.000000"},
                {"SmoothRadius",    "20.000000"},
                {"SeedOffset",      "2"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height", "5.000000"},
                {"Width",  "10.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Small", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",              "0.000000"},
                {"Height",             "0.000000"},
                {"BottomRadiusOffset", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "true"},
                {"MaximumLOD",      "2"},
                {"Hemisphere",      "false"},
                {"NoiseVoxelType",  "Mountain"},
                {"NoiseGridType",   "Cube"},
                {"MinWidth",        "128.000000"},
                {"MaxWidth",        "128.000000"},
                {"MinHeight",       "96.000000"},
                {"MaxHeight",       "96.000000"},
                {"MaxHeightOffset", "0.000000"},
                {"HeightOffset",    "32.000000"},
                {"RegionRatio",     "0.010000"},
                {"SmoothRadius",    "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",    "5"},
                {"Height",     "10.000000"},
                {"OffsetType", "Base"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Large", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",              "0.000000"},
                {"Height",             "0.000000"},
                {"BottomRadiusOffset", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "100.000000"},
                {"Height",                  "50.000000"},
                {"Octaves",                 "8"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"HeightOffset",            "25.000000"},
                {"OffsetType",              "Base"},
                {"SmoothRadius",            "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
                {"SeaLevel", "120.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"Remap From Min",       "0.600000"},
                {"MaximumLOD",           "3"},
                {"Height",               "108.000000"},
                {"Width",                "512.000000"},
                {"OffsetType",           "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",         "9"},
                {"SlopeGain",       "0.605000"},
                {"SlopeBias",       "0.600000"},
                {"AmplifyFeatures", "0.000000"},
                {"PerturbFeatures", "0.000000"},
                {"RidgeErosion",    "0.000000"},
                {"Remap From Min",  "0.800000"},
                {"NoiseVoxelType",  "Rock"},
                {"Width",           "1024.000000"},
                {"RegionRatio",     "1.000000"},
                {"OffsetType",      "All"},
                {"TileBlendMeters", "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.605000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.750000"},
                {"Remap From Max",       "1.000000"},
                {"Width",                "2048.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"Remap From Min",       "0.500000"},
                {"Active",               "true"},
                {"MaximumLOD",           "1"},
                {"Width",                "128.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "4.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
                {"Height",    "20.000000"},
                {"Width",     "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "12"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.800000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Remap From Min",       "0.750000"},
                {"Remap From Max",       "1.000000"},
                {"Remap To Min",         "0.040000"},
                {"Height",               "400.000000"},
                {"Width",                "16384.000000"},
                {"RegionScale",          "1.000000"},
                {"PlateauSharpness",     "10"},
                {"PlateauRegionSize",    "1000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "true"},
                {"MaximumLOD",      "2"},
                {"Hemisphere",      "false"},
                {"NoiseVoxelType",  "Mountain"},
                {"NoiseGridType",   "Puck"},
                {"MinWidth",        "128.000000"},
                {"MaxWidth",        "128.000000"},
                {"MinHeight",       "128.000000"},
                {"MaxHeight",       "128.000000"},
                {"MinHeightOffset", "0.000000"},
                {"MaxHeightOffset", "0.000000"},
                {"HeightOffset",    "-64.000000"},
                {"OffsetType",      "Zero"},
                {"RegionRatio",     "0.010000"},
                {"RegionScale",     "5.000000"},
                {"SmoothRadius",    "20.000000"},
                {"SeedOffset",      "2"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height", "5.000000"},
                {"Width",  "10.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Small", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",              "0.000000"},
                {"Height",             "0.000000"},
                {"BottomRadiusOffset", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "true"},
                {"MaximumLOD",      "2"},
                {"Hemisphere",      "false"},
                {"NoiseVoxelType",  "Mountain"},
                {"NoiseGridType",   "Puck"},
                {"MinWidth",        "128.000000"},
                {"MaxWidth",        "128.000000"},
                {"MinHeight",       "96.000000"},
                {"MaxHeight",       "96.000000"},
                {"MaxHeightOffset", "0.000000"},
                {"HeightOffset",    "32.000000"},
                {"RegionRatio",     "0.010000"},
                {"SmoothRadius",    "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",    "5"},
                {"Height",     "10.000000"},
                {"OffsetType", "Base"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Large", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",              "0.000000"},
                {"Height",             "0.000000"},
                {"BottomRadiusOffset", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "100.000000"},
                {"Height",                  "50.000000"},
                {"Octaves",                 "8"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"HeightOffset",            "25.000000"},
                {"OffsetType",              "Base"},
                {"SmoothRadius",            "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
                {"SeaLevel", "30.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"Remap From Min",       "0.250000"},
                {"MaximumLOD",           "3"},
                {"Height",               "64.000000"},
                {"Width",                "1024.000000"},
                {"OffsetType",           "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"Remap From Min",       "0.600000"},
                {"NoiseVoxelType",       "Rock"},
                {"Height",               "32.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",       "0.495000"},
                {"Remap From Min",  "0.500000"},
                {"Height",          "108.000000"},
                {"Width",           "1024.000000"},
                {"RegionRatio",     "1.000000"},
                {"RegionScale",     "4.000000"},
                {"RegionGain",      "5.000000"},
                {"TileBlendMeters", "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.495000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"MaximumLOD",           "1"},
                {"NoiseVoxelType",       "Base"},
                {"Height",               "4.000000"},
                {"Width",                "64.000000"},
                {"RegionRatio",          "1.000000"},
                {"TileBlendMeters",      "4.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height", "20.000000"},
                {"Width",  "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",           "8"},
                {"SlopeGain",         "0.200000"},
                {"SlopeBias",         "0.200000"},
                {"Remap From Min",    "0.500000"},
                {"Remap To Min",      "0.040000"},
                {"Height",            "400.000000"},
                {"Width",             "8192.000000"},
                {"RegionRatio",       "1.000000"},
                {"PlateauSharpness",  "5"},
                {"PlateauRegionSize", "500.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"NoiseVoxelType",  "Rock"},
                {"NoiseGridType",   "Sphere"},
                {"MinHeight",       "32.000000"},
                {"MaxHeight",       "32.000000"},
                {"HeightOffset",    "-16.000000"},
                {"RegionRatio",     "0.100000"},
                {"RegionScale",     "1.000000"},
                {"SmoothRadius",    "8.000000"},
                {"SeedOffset",      "0"},
                {"TileBlendMeters", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "true"},
                {"Height",          "16.000000"},
                {"Width",           "32.000000"},
                {"TileBlendMeters", "2.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Small", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",              "1.000000"},
                {"Height",             "1.000000"},
                {"BottomRadiusOffset", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"MaximumLOD",      "3"},
                {"NoiseVoxelType",  "Base"},
                {"NoiseGridType",   "Sphere"},
                {"MinWidth",        "100.000000"},
                {"MaxWidth",        "100.000000"},
                {"MinHeight",       "10.000000"},
                {"MaxHeight",       "10.000000"},
                {"MinHeightOffset", "10.000000"},
                {"MaxHeightOffset", "10.000000"},
                {"HeightOffset",    "0.000000"},
                {"OffsetType",      "Base"},
                {"RegionRatio",     "1.000000"},
                {"SmoothRadius",    "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Large", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",              "1.000000"},
                {"Height",             "1.000000"},
                {"BottomRadiusOffset", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
                {"SeaLevel", "120.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"Remap From Min",       "0.600000"},
                {"MaximumLOD",           "3"},
                {"Height",               "108.000000"},
                {"Width",                "1024.000000"},
                {"OffsetType",           "Zero"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"Remap From Min",       "0.800000"},
                {"NoiseVoxelType",       "Rock"},
                {"Height",               "64.000000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.605000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"Remap From Min",       "0.750000"},
                {"Height",               "108.000000"},
                {"Width",                "2048.000000"},
                {"RegionRatio",          "1.000000"},
                {"RegionScale",          "4.000000"},
                {"RegionGain",           "5.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.605000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"Remap From Min",       "0.500000"},
                {"MaximumLOD",           "1"},
                {"Width",                "128.000000"},
                {"RegionRatio",          "1.000000"},
                {"OffsetType",           "All"},
                {"TileBlendMeters",      "4.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
                {"Height",    "20.000000"},
                {"Width",     "50.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "12"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.800000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"Remap From Min",       "0.750000"},
                {"Remap To Min",         "0.040000"},
                {"Height",               "400.000000"},
                {"Width",                "16384.000000"},
                {"RegionRatio",          "1.000000"},
                {"PlateauStratas",       "3.000000"},
                {"PlateauSharpness",     "5"},
                {"PlateauRegionSize",    "500.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.605000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"NoiseVoxelType",  "Rock"},
                {"NoiseGridType",   "Sphere"},
                {"MinHeight",       "32.000000"},
                {"MaxHeight",       "32.000000"},
                {"HeightOffset",    "-16.000000"},
                {"RegionRatio",     "0.100000"},
                {"RegionScale",     "1.000000"},
                {"SmoothRadius",    "8.000000"},
                {"SeedOffset",      "0"},
                {"TileBlendMeters", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "true"},
                {"Height",          "16.000000"},
                {"Width",           "32.000000"},
                {"TileBlendMeters", "2.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Small", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",              "1.000000"},
                {"Height",             "1.000000"},
                {"BottomRadiusOffset", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",          "false"},
                {"MaximumLOD",      "3"},
                {"NoiseVoxelType",  "Base"},
                {"NoiseGridType",   "Sphere"},
                {"MinWidth",        "100.000000"},
                {"MaxWidth",        "100.000000"},
                {"MinHeight",       "10.000000"},
                {"MaxHeight",       "10.000000"},
                {"MinHeightOffset", "10.000000"},
                {"MaxHeightOffset", "10.000000"},
                {"HeightOffset",    "0.000000"},
                {"OffsetType",      "Base"},
                {"RegionRatio",     "1.000000"},
                {"SmoothRadius",    "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Large", "SuperPrimitive"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",              "1.000000"},
                {"Height",             "1.000000"},
                {"BottomRadiusOffset", "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Caves", "Underground", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",      "50.000000"},
                {"Height",     "25.000000"},
                {"RegionSize", "250.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.495000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves", "5"},
                {"Height",  "400.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"BaseSeed", "NONE"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",   "5"},
                {"SlopeGain", "0.400000"},
                {"Height",    "400.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain", "0.505000"},
              }
            },
          }
        },
      }
    },
  }
}