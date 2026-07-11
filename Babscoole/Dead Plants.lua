NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Dead Plants",
["MOD_AUTHOR"]      = "camus",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Removes oxygen plants from dead, weird and gas giant planets. Also removes hazardous plants from dead planets and wild plants from gas giant planets.",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WILDPLANT_ALL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NotOnGasGiant", "true"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "HAZARD_PLANTS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NotOnDeadPlanets", "true"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\GASGIANTS\GASGIANTSTANDARDBIOME.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "PLANT"},
              ["PRECEDING_KEY_WORDS"] = {"Options"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Options", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\DEADPLANETS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename", "MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/SMALL/CRYSTAL_FRAGMENT.SCENE.MBIN"},
              },
            },
          }
        },
      }
    },
  }
}