NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "All Ships See Space Eggs",
["MOD_AUTHOR"]      = "Raevyxn",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Removes the living ship requirement for finding space eggs",
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
              ["SPECIAL_KEY_WORDS"] = {"Id", "SPACE_EGG", "SpawnConditions", "GcPulseEncounterSpawnConditions"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RequiresAlienShip", "false"},
              }
            },
          }
        },
      }
    },
  }
}