NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Main Game Swarm Missions",
["MOD_AUTHOR"]      = "OwenBoogie",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.4",
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
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "SE_MP_DELIVERY"},
                {"Name", "SE_MP_DELIVERY_P"},
                {"Name", "SE_MP_DELIVERY_COM"},
                {"Name", "SE_MP_DISCOVER_SHOP"},
                {"Name", "SE_MP_DISCOVER_ABANDONED"},
                {"Name", "SE_MP_DISCOVER_OBSERVATORY"},
                {"Name", "SE_MP_DISCOVER_SHELTER"},
                {"Name", "SE_MP_DISCOVER_FACTORY"},
                {"Name", "SE_MP_DISCOVER_HARVESTER"},
                {"Name", "SE_MP_DISCOVER_RADIO"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SolarSystemLocation",            "LocalOrNear"},
                {"SpecificPartyIndexToSearchFrom", "-1"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "SE_MP_DISCOVER_SHOP"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Name", "SE_MP_DISCOVR_SHOP"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\CORVETTEMISSIONTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SEC_EDIT"] = "ADD_SWARM_MISSIONS",
              ["SPECIAL_KEY_WORDS"] =
              {
                {"MissionID", "SWARM_KILL_GR",  "MissionBoardOptions", "GcMissionBoardOptions"},
                {"MissionID", "SWARM_KILL",     "MissionBoardOptions", "GcMissionBoardOptions"},
                {"MissionID", "SWARM_HACK",     "MissionBoardOptions", "GcMissionBoardOptions"},
                {"MissionID", "SWARM_DIG",      "MissionBoardOptions", "GcMissionBoardOptions"},
                {"MissionID", "SWARM_REPAIR",   "MissionBoardOptions", "GcMissionBoardOptions"},
                {"MissionID", "SWARM_SUPPLY_S", "MissionBoardOptions", "GcMissionBoardOptions"},
              },
              ["PRECEDING_KEY_WORDS"] = {"Faction"},
              ["CREATE_HOES"] = "TRUE",
            },
            {
              ["SEC_EDIT"] = "ADD_SWARM_MISSIONS",
              ["SPECIAL_KEY_WORDS"] =
              {
                {"MissionID", "SWARM_KILL_GR",  "MissionBoardOptions", "GcMissionBoardOptions"},
                {"MissionID", "SWARM_KILL",     "MissionBoardOptions", "GcMissionBoardOptions"},
                {"MissionID", "SWARM_HACK",     "MissionBoardOptions", "GcMissionBoardOptions"},
                {"MissionID", "SWARM_DIG",      "MissionBoardOptions", "GcMissionBoardOptions"},
                {"MissionID", "SWARM_REPAIR",   "MissionBoardOptions", "GcMissionBoardOptions"},
                {"MissionID", "SWARM_SUPPLY_S", "MissionBoardOptions", "GcMissionBoardOptions"},
              },
              ["PRECEDING_KEY_WORDS"] = {"Faction"},
              ["CREATE_HOS"] = "TRUE",
              ["ADD"] =
[[
					<Property name="Faction" value="GcMissionFaction" _index="0">
						<Property name="MissionFaction" value="Vykeen" />
					</Property>
					<Property name="Faction" value="GcMissionFaction" _index="1">
						<Property name="MissionFaction" value="Korvax" />
					</Property>
					<Property name="Faction" value="GcMissionFaction" _index="2">
						<Property name="MissionFaction" value="Gek" />
					</Property>
]]
            },
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