NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "No Creature Kill Missions",
["MOD_DESCRIPTION"] = "Eliminates all Creature and Predator Kill missions from space station agents.",
["MOD_AUTHOR"]      = "Bookworm and Babscoole",
["NMS_VERSION"]     = "5.72",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\NPCMISSIONTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"MissionID", "KILL_CREATURES"},
                {"MissionID", "KILL_PREDATORS"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weighting", "0"},
              },
            },
          },
        },
      },
    },
  },
}
