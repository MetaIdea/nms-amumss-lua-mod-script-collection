MULTIPLIER = 2

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Freighter Crew Adjustment X2",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "Doubles the number of freighter crew",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"]  = "GCFREIGHTERBASEGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MaxTotalNPCCount",            "@*"..MULTIPLIER},
                {"NPCStartSpawnDelayTime",      "0.5"},
                {"MinTotalRoomsRequiredPerNPC", "1"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MaxTotalCapacityOfNPCTypes"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FrigateCaptain", "@*"..MULTIPLIER},
                {"WorkerBio",      "@*"..MULTIPLIER},
                {"WorkerTech",     "@*"..MULTIPLIER},
                {"WorkerIndustry", "@*"..MULTIPLIER},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"NPCNavNodeConnectivity","GcNPCNavSubgraphNodeTypeConnectivity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"InternalConnection", "2"},
                {"ExternalConnection", "3.25"},
                {"ConnectionToPOI",    "2"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RoomID", "FRE_ROOM_BIO"},
              ["PRECEDING_KEY_WORDS"] = {"SpawnCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SquadronPilot",  "@*"..MULTIPLIER},
                {"FrigateCaptain", "@*"..MULTIPLIER},
                {"WorkerBio",      "@*"..MULTIPLIER},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"RoomID", "FRE_ROOM_PLANT0"},
                {"RoomID", "FRE_ROOM_PLANT1"},
                {"RoomID", "FRE_ROOM_NPCFAR"},
                {"RoomID", "FRE_ROOM_COOK"},
              },
              ["PRECEDING_KEY_WORDS"] = {"SpawnCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"WorkerBio", "@*"..MULTIPLIER},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"RoomID", "FRE_ROOM_SCAN"},
                {"RoomID", "FRE_ROOM_TELEPO"},
                {"RoomID", "FRE_ROOM_NPCSCI"},
                {"RoomID", "FRE_ROOM_NPCBUI"},
                {"RoomID", "FRE_ROOM_DRESS"},
              },
              ["PRECEDING_KEY_WORDS"] = {"SpawnCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"WorkerTech", "@*"..MULTIPLIER},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"RoomID", "FRE_ROOM_TECH"},
                {"RoomID", "FRE_ROOM_SHOP"},
              },
              ["PRECEDING_KEY_WORDS"] = {"SpawnCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SquadronPilot",  "@*"..MULTIPLIER},
                {"FrigateCaptain", "@*"..MULTIPLIER},
                {"WorkerTech",     "@*"..MULTIPLIER},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RoomID", "FRE_ROOM_FLEET"},
              ["PRECEDING_KEY_WORDS"] = {"SpawnCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SquadronPilot",  "@*"..MULTIPLIER},
                {"FrigateCaptain", "@*"..MULTIPLIER},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"RoomID", "FRE_ROOM_IND"},
              ["PRECEDING_KEY_WORDS"] = {"SpawnCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SquadronPilot",  "@*"..MULTIPLIER},
                {"FrigateCaptain", "@*"..MULTIPLIER},
                {"WorkerIndustry", "@*"..MULTIPLIER},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"RoomID", "FRE_ROOM_REFINE"},
                {"RoomID", "FRE_ROOM_EXTR"},
                {"RoomID", "FRE_ROOM_NPCWEA"},
                {"RoomID", "FRE_ROOM_NPCVEH"},
                {"RoomID", "FRE_ROOM_VEHICL"},
                {"RoomID", "FRE_ROOM_STORE0"},
                {"RoomID", "FRE_ROOM_STORE1"},
                {"RoomID", "FRE_ROOM_STORE2"},
                {"RoomID", "FRE_ROOM_STORE3"},
                {"RoomID", "FRE_ROOM_STORE4"},
                {"RoomID", "FRE_ROOM_STORE5"},
                {"RoomID", "FRE_ROOM_STORE6"},
              },
              ["PRECEDING_KEY_WORDS"] = {"SpawnCapacity"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"WorkerIndustry", "@*"..MULTIPLIER},
              }
            },
          }
        },
      }
    }
  }
}