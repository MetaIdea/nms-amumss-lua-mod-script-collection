NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "NoFreePillars",
["MOD_DESCRIPTION"] = "Blocks Sentinel Pillar terminal, 50000 HP container, 1,5m interact distance",
["MOD_AUTHOR"]      = "Carbonster",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SENTINELHIVE\SENTINELHIVE.SCENE.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "DestructibleREF3", "Type", "REFERENCE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransX", "8.000000"},
                {"TransZ", "7.500000"},
                {"RotY", "180.000000"},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SENTINELHIVE\SENTINELHIVE\ENTITIES\INTERACTION.ENTITY.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"InteractDistance", "1.500000"},
                {"InteractAngle", "45.000000"},
                {"InteractMaxHeightDiff", "0.500000"},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SENTINELHIVE\SENTINELHIVEDESTRUCTIBLE\ENTITIES\SENTINELHIVEDESTRUCTIBLE.ENTITY.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Health", "50000"}, --default 3500
              }
            },
          },
        },
      },
    },
  },
}