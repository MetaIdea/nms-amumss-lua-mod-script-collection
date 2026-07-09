NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Main Game Swarm Missions",
["MOD_AUTHOR"]      = "OwenBoogie",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.40",
["MOD_DESCRIPTION"] = "Allows you to access swarm missions outside of the expidition",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\SWARMMISSIONTABLE.MBIN",
          ["MBIN_FS_DISCARD"] = "TRUE",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Missions"},
              ["SEC_SAVE_TO"] = "ADD_SWARM_MISSIONS",
            },
            {
              ["SEC_EDIT"] = "ADD_SWARM_MISSIONS",
              ["PRECEDING_KEY_WORDS"] = {"Missions"},
              ["REMOVE"] = "HBOS",
            },
            {
              ["SEC_EDIT"] = "ADD_SWARM_MISSIONS",
              ["SPECIAL_KEY_WORDS"] = {"MissionBoardOptions", "GcMissionBoardOptions"},
              ["PRECEDING_KEY_WORDS"] = {"Faction"},
              ["REPLACE_TYPE"] = "ALL",
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
          <Property name="Faction" value="GcMissionFaction" _index="0">
            <Property name="MissionFaction" value="Nexus" />
          </Property>
]]
            },
            {
              ["SEC_EDIT"] = "ADD_SWARM_MISSIONS",
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SE_SWARM_KILL_GR"},
                {"Name", "SE_SWARM_SPACE_KILL_CONTROL"},
                {"Name", "SE_SWARM_SPACE_KILL_MARKER"},
                {"Name", "SE_SWARM_HACK"},
                {"Name", "SE_SWARM_DIG"},
                {"Name", "SE_SWARM_DIG_CONTROL"},
                {"Name", "SE_SWARM_REPAIR"},
                {"Name", "SE_SWARM_SUPPLY_NEXUS_S"},
                {"Name", "SE_SWARM_SUPPLY_AST1"},
                {"Name", "SE_SWARM_SUPPLY_AST2"},
                {"Name", "SE_SWARM_SUPPLY_WAT1"},
                {"Name", "SE_SWARM_SUPPLY_WAT2"},
                {"Name", "SE_SWARM_SUPPLY_CAVE1"},
                {"Name", "SE_SWARM_SUPPLY_CAVE2"},
                {"Name", "SE_SWARM_SUPPLY_FUEL2"},
                {"Name", "SE_SWARM_SUPPLY_CAT2"},
                {"Name", "SE_SWARM_SUPPLY_LUSH"},
                {"Name", "SE_SWARM_SUPPLY_DUSTY"},
                {"Name", "SE_SWARM_SUPPLY_HOT"},
                {"Name", "SE_SWARM_SUPPLY_COLD"},
                {"Name", "SE_SWARM_SUPPLY_TOXIC"},
                {"Name", "SE_SWARM_SUPPLY_RADIO"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SolarSystemLocation",            "LocalOrNear"},
                {"SpecificPartyIndexToSearchFrom", "-1"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\MULTIPLAYERMISSIONTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Missions"},
              ["ADD_OPTION"]  = "ADDendSECTION",
              ["SEC_ADD_NAMED"] = "ADD_SWARM_MISSIONS",
            },
          }
        },
      }
    },
  }
}