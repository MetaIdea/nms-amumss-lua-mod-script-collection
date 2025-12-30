NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "JEs Asteroid Mining Flyby Begone",
["MOD_DESCRIPTION"] = "Adjusts the frequency and distance of various flyby types within the game",
["MOD_AUTHOR"]      = "Jaggid Edje and Babscoole",
["NMS_VERSION"]     = "6.18",
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
              ["PRECEDING_KEY_WORDS"] = {"MiningFlybySpawns", "Count"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0"}, -- Original "1"
                {"Y", "0"}  -- Original "1"
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MiningFlybySpawns"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinRange",  "1000"}, --original : 500
              }
            }
          }
        }
      }
    }
  }
}



