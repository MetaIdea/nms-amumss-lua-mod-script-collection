NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Space Storms",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.00-Cosmos",
["MOD_DESCRIPTION"] = "Removes space storm spawning",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "STORM_PURPLE"},
                {"Id", "STORM_FIELD"},
                {"Id", "STORM_FIELD_S13"},
                {"Id", "STORM_OPEN"},
                {"Id", "GAS_OB"},
                {"Id", "GAS_RG"},
                {"Id", "EMPTY_GAS_RG"},
                {"Id", "EMPTY_GAS_OB"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SpawnChance", "0.000000"},
              }
            },
          }
        },
      }
    },
  }
}