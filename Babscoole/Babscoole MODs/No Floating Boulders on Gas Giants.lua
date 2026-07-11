NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Floating Boulders on Gas Giants",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.40",
["MOD_DESCRIPTION"] = "No Floating Rocks on Gas Giants",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\GASGIANTS\GASGIANTSTANDARDOBJECTS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Filename", "MODELS/PLANETS/BIOMES/GAS/SMALLROCKFLOATING.SCENE.MBIN"},
                {"Filename", "MODELS/PLANETS/BIOMES/GAS/FLOATING_PUSHROCK.SCENE.MBIN"},
                {"Filename", "MODELS/PLANETS/BIOMES/GAS/SKYROCK.SCENE.MBIN"},
              },
              ["SECTION_UP_SPECIAL"] = 1,
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage", "0.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\GAS\LIGHTNINGCLOUD.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
               {
                 {"Name", "DebrisMeshRock01"},
                 {"Name", "Debris1"},
                 {"Name", "Debris2"},
                 {"Name", "Debris3"},
               },
              ["REMOVE"] = "SECTION"
            },
          }
        },
      }
    },
  }
}