COSTCHOICE = 0
FILENAME = ""

InputCOSTCHOICE = {COSTCHOICE,
[[
    Choose a cost option:
    0 - No cost
    1 - Cost of 1 NAVDATA
    2 - Cost of 3 NAVDATA
    3 - Cost of 5 NAVDATA
    4 - Cost of 10 NAVDATA
    Default = 0 | Current = >> ]] .. (COSTCHOICE) .. [[ <<
]]}

while COSTCHOICE do
  COSTCHOICE = GUIF(InputCOSTCHOICE,10)

  local minChoice = 0
  local maxChoice = 4

  if COSTCHOICE < minChoice or COSTCHOICE > maxChoice then
    print("         >>> ["..COSTCHOICE.."] is NOT a valid choice.  Must be a number between "..minChoice.."-"..maxChoice..".  Please retry! <<<")
  else
    break
  end
end

if COSTCHOICE == 0 then
  COSTCHOICE = "C_ALLOWSCAN"
  FILENAME = ""
elseif COSTCHOICE == 1 then
  COSTCHOICE = "C_NAVDATA"
  FILENAME = " NiF"
elseif COSTCHOICE == 2 then
  COSTCHOICE = "C_NAVDATA3"
  FILENAME = " NiF"
elseif COSTCHOICE == 3 then
  COSTCHOICE = "C_NAVDATA5"
  FILENAME = " NiF"
elseif COSTCHOICE == 4 then
  COSTCHOICE = "C_NAVDATA10"
  FILENAME = " NiF"
end
 print("COSTCHOICE = "..tostring(COSTCHOICE))

AERIAL_SCAN = GUIF({false, [[Do you want aerial scans (flyup when scan is initiated)?  Default = N.  Press ENTER for default value.]]},10)
print("AERIAL_SCAN = "..tostring(AERIAL_SCAN))

--In order to add new scans, will need to add all the applicable entries to the bottom of the ScanDataTable, MissionDataTable and DialogDataTable tables.  Settings for the ScanDataTable table can be gotten from the vanilla scan listing in the applicable
--SCANEVENTTABLE file.  For DialogDataTable, each "page" can have three entries only (P1 has another special scan added later in the script, which is not in the table).  After three, will need to make a new page table section(Eg "D_FUSBS_SCAN_P7).
--For entries in MissionDataTable and Rewards in DialogDataTable, just follow the naming convention used by the existing entries.
ScanDataTable = --Additions to SCANEVENTTABLEPLANET
{--  NAME,         INTERACTIONTYPE, BUILDINGLOCATION, SEARCHTYPE,                   BUILDINGCLASS,            FORCEWIDERANDOM, ALLOWOVERRIDDENBUILDINGS, OSDMESSAGE,                      TOOLTIP,                         MARKERLABEL
    {"SE_GL_SHLT", "None",          "Nearest",        "AnyShelter",                 "None",                   "false",         "false",                  "SIGNAL_SHELTER",                "TIP_SHELTER",                   ""                         },
    {"SE_GL_PORT", "Portal",        "Nearest",        "FindBuildingClass",          "Portal",                 "false",         "true" ,                  "SIGNAL_PORTAL",                 "TIP_PORTAL",                    ""                         },
    {"SE_GL_DIST", "None",          "Nearest",        "FindBuildingClass",          "DistressSignal",         "false",         "false",                  "SIGNAL_DISTRESSSIGNAL",         "TIP_DISTRESSSIGNAL",            "BUILDING_DISTRESSSIGNAL_L"},
    {"SE_GL_SHOP", "None",          "Nearest",        "FindBuildingClass",          "Shop",                   "false",         "true" ,                  "SIGNAL_SHOP",                   "TIP_SHOP",                      ""                         },
    {"SE_GL_FACT", "None",          "Nearest",        "FindBuildingClass",          "Factory",                "false",         "false",                  "SIGNAL_FACTORY",                "TIP_FACTORY",                   ""                         },
    {"SE_GL_DPOD", "None",          "Nearest",        "FindBuildingClass",          "DamagedMachine",         "false",         "false",                  "SIGNAL_DAMAGEDMACHINE",         "TIP_DAMAGEDMACHINE",            ""                         },
    {"SE_GL_LBRY", "None",          "Nearest",        "FindBuildingClass",          "LargeBuilding",          "false",         "true" ,                  "SIGNAL_LIBRARY",                "TIP_LIBRARY",                   ""                         },
    {"SE_GL_CRFR", "None",          "Nearest",        "FindBuildingClass",          "CrashedFreighter",       "false",         "false",                  "UI_CORE_ACT2_STEP8_OSD1",       "UI_CORE_ACT2_STEP8_OBJ2",       "UI_CORE_ACT2_STEP8_MARKER"},
    {"SE_GL_OBSV", "None",          "Nearest",        "FindBuildingClass",          "Observatory",            "false",         "false",                  "SIGNAL_OBSERVATORY",            "TIP_OBSERVATORY",               ""                         },
    {"SE_GL_OUTP", "None",          "Nearest",        "FindBuildingClass",          "Outpost",                "false",         "true" ,                  "SIGNAL_OUTPOST",                "TIP_OUTPOST",                   ""                         },
    {"SE_GL_DRHV", "None",          "Nearest",        "FindBuildingClass",          "DroneHive",              "false",         "false",                  "UI_DRONEHIVE_LOCATED_OSD",      "UI_DRONEHIVE_LOCATED",          ""                         },
    {"SE_GL_GRV" , "None",          "Nearest",        "FindBuildingClass",          "GraveInCave",            "false",         "false",                  "UI_MP_PLANTKILL_GRAVE_OSD",     "UI_TITLE_OWNED_LORE1",          "SCAN_GRAVE"               },
    {"SE_GL_BASE", "None",          "Nearest",        "FindBuildingClass",          "Base",                   "false",         "false",                  "SIGNAL_BASE",                   "TIP_BASE",                      ""                         },
    {"SE_GL_GLCH", "None",          "Nearest",        "FindBuildingClass",          "StoryGlitch",            "false",         "false",                  "NPC_COMM_WEEK_04_GLITCH_OSD",   "NPC_COMM_WEEK_04_GLITCH_RES_A", "BUILDING_GLITCHYSTORYBOX" },
    {"SE_GL_MONO", "None",          "Nearest",        "FindBuildingClass",          "Monolith",               "false",         "false",                  "SIGNAL_MONOLITH",               "TIP_MONOLITH",                  "BUILDING_MONOLITH" },
    {"SE_GL_ABAN", "None",          "Nearest",        "FindBuildingClass",          "Abandoned",              "false",         "false",                  "SIGNAL_ABANDONED",              "TIP_ABANDONED",                 ""                         },
    {"SE_GL_RBCP", "None",          "Nearest",        "FindBuildingClass",          "AbandonedRobotCamp",     "false",         "false",                  "UI_CAMP_REVEAL_OSD",            "UI_CAMP_REVEAL_MSG",            "UI_CAMP_REVEAL_MARKER"    },
    {"SE_GL_DRCS", "None",          "Nearest",        "FindBuildingClass",          "SentinelDistressSignal", "false",         "false",                  "UI_CRASH_REVEAL_OSD",           "UI_CRASH_REVEAL_MSG",           "UI_CRASH_REVEAL_MARKER"   },
    {"SE_GL_SETL", "None",          "Random" ,        "UnownedSettlement",          "None",                   "true" ,         "true" ,                  "UI_SETTLEMENT_LOCATED_OSD",     "UI_SETTLEMENT_LOCATED",         ""                         },
    {"SE_GL_SETB", "None",          "Random" ,        "UnownedSettlement_Builders", "None",                   "true" ,         "true" ,                  "UI_SETTLEMENT_BUI_LOCATED_OSD", "UI_SETTLEMENT_BUI_LOCATED",     ""                         },
}

MissionDataTable = --Additions to DISABLINGCONDITIONSTABLE and REWARDTABLE
 --  MISSION            MISSION AMOUNT  REWARDTABLE ID   REWARDTABLE EVENT
{--  SCANREWARDS ID     PROXY LEVEL     PROXY REWARD
    {"R_GLS_SCAN_0",  "0" ,           "R_GL_SHLT", "SE_GL_SHLT"},
    {"R_GLS_SCAN_1",  "1" ,           "R_GL_PORT", "SE_GL_PORT"},
    {"R_GLS_SCAN_2",  "2" ,           "R_GL_DIST", "SE_GL_DIST"},
    {"R_GLS_SCAN_3",  "3" ,           "R_GL_SHOP", "SE_GL_SHOP"},
    {"R_GLS_SCAN_4",  "4" ,           "R_GL_FACT", "SE_GL_FACT"},
    {"R_GLS_SCAN_5",  "5" ,           "R_GL_DPOD", "SE_GL_DPOD"},
    {"R_GLS_SCAN_6",  "6" ,           "R_GL_LBRY", "SE_GL_LBRY"},
    {"R_GLS_SCAN_7",  "7" ,           "R_GL_CRFR", "SE_GL_CRFR"},
    {"R_GLS_SCAN_8",  "8" ,           "R_GL_OBSV", "SE_GL_OBSV"},
    {"R_GLS_SCAN_9",  "9" ,           "R_GL_OUTP", "SE_GL_OUTP"},
    {"R_GLS_SCAN_10", "10",           "R_GL_DRHV", "SE_GL_DRHV"},
    {"R_GLS_SCAN_11", "11",           "R_GL_GRV" , "SE_GL_GRV" },
    {"R_GLS_SCAN_12", "12",           "R_GL_BASE", "SE_GL_BASE"},
    {"R_GLS_SCAN_13", "13",           "R_GL_GLCH", "SE_GL_GLCH"},
    {"R_GLS_SCAN_14", "14",           "R_GL_MONO", "SE_GL_MONO"},
    {"R_GLS_SCAN_15", "15",           "R_GL_ABAN", "SE_GL_ABAN"},
    {"R_GLS_SCAN_16", "16",           "R_GL_RBCP", "SE_GL_RBCP"},
    {"R_GLS_SCAN_17", "17",           "R_GL_DRCS", "SE_GL_DRCS"},
    {"R_GLS_SCAN_18", "18",           "R_GL_SETL", "SE_GL_SETL"},
    {"R_GLS_SCAN_19", "19",           "R_GL_SETB", "SE_GL_SETB"},
}

DialogDataTable = --Dialog (menu) additions to DISABLINGCONDITIONSTABLE.
{
    {--GcAlienPuzzleEntry Id
        {"D_GLS_SCAN_P1"},
        { --GcAlienPuzzleOption  Name,    Reward
            {"BUILDING_PORTAL_L",         "R_GLS_SCAN_1"},
            {"BUILDING_DISTRESSSIGNAL_L", "R_GLS_SCAN_2"},
        },
    },
    {
        {"D_GLS_SCAN_P2"},
        {
            {"BUILDING_SHOP_L",           "R_GLS_SCAN_3"},
            {"BUILDING_FACTORY_L",        "R_GLS_SCAN_4"},
            {"BUILDING_DAMAGEDMACHINE_L", "R_GLS_SCAN_5"},
        }
    },
    {
        {"D_GLS_SCAN_P3"},
        {
            {"UI_LIBRARY_ENTRANCE_DESC", "R_GLS_SCAN_6"},
            {"BUILDING_FREIGHTER_ALT",   "R_GLS_SCAN_7"},
            {"BUILDING_OBSERVATORY_L",   "R_GLS_SCAN_8"},
        }
    },
    {
        {"D_GLS_SCAN_P4"},
        {
            {"BUILDING_OUTPOST_L",    "R_GLS_SCAN_9" },
            {"UI_SENTINEL_HIVE_NAME", "R_GLS_SCAN_10"},
            {"SCAN_GRAVE",            "R_GLS_SCAN_11"},
        }
    },
    {
        {"D_GLS_SCAN_P5"},
        {
            {"INTRCT_CLAIM_BASE",        "R_GLS_SCAN_12"},
            {"BUILDING_GLITCHYSTORYBOX", "R_GLS_SCAN_13"},
            {"BUILDING_MONOLITH",        "R_GLS_SCAN_14"},
        }
    },
    {
        {"D_GLS_SCAN_P6"},
        {
            {"BUILDING_ABANDONED_L",     "R_GLS_SCAN_15"},
            {"UI_ABAND_ROBOT_CAMP_NAME", "R_GLS_SCAN_16"},
            {"UI_SENTINEL_CRASH_MARKER", "R_GLS_SCAN_17"},
        }
    },
    {
        {"D_GLS_SCAN_P7"},
        {
            {"UI_SETTLEMENT_LABEL",     "R_GLS_SCAN_18"},
            {"UI_SETTLEMENT_BUI_LABEL", "R_GLS_SCAN_19"},
        }
    },
}

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "Firmware Update for the Signal Booster"..FILENAME,
  ["MOD_DESCRIPTION"] = "Allows the Signal booster to find crashed ships, factories, multi tools, and portals with no inputs",
  ["MOD_AUTHOR"]      = "Lowkie & Babscoole",
  ["NMS_VERSION"]     = "6.10",
  ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SIGNALSCANNER", "Rewards", "R_MSG_NEAR_SCAN"},
                            ["SECTION_UP"] = 1,
                            ["SEC_SAVE_TO"] = "GetNearScan",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "%?FREIGHTER", "Name", "ALL_REQUEST_DECLINE"},
                            ["SEC_SAVE_TO"] = "GetOption",
                        },
                        {
                            ["SEC_EDIT"] = "GetOption",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NextInteraction",   ""},
                                {"SelectedOnBackOut", "false"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "NPC_HIRE_SCIENTIST_1", "Name", "ALL_REQUEST_LEAVE"},
                            ["SEC_SAVE_TO"] = "GetMore",
                        },
                        {
                            ["SEC_EDIT"] = "GetMore",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Name",     "More Options"},
                                {"Cost",     "C_ALLOWSCAN"},
                                {"KeepOpen", "true"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SIGNALSCANNER"},
                            ["SEC_SAVE_TO"] = "GetPuzzleEntry",
                        },
                        {
                            ["SEC_EDIT"] = "GetPuzzleEntry",
                            ["SPECIAL_KEY_WORDS"] = {"Options", "GcAlienPuzzleOption"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SEC_EDIT"] = "GetPuzzleEntry",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TextAlien",               ""},
                                {"UseTitleOverrideInLabel", "false"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "SIGNALSCANNER"},
                                {"Id", "%?SIGNALSCANNER_S13"},
                            },
                            ["REMOVE"] = "SECTION",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MONOLITH"},
                            ["SEC_SAVE_TO"] = "GetReward",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHT_DECLINE", "List" ,"GcRewardTableItem"},
                            ["SEC_SAVE_TO"] = "GetMissionMessageReward",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionMessageReward",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MessageID", "M_GL_FIX_END"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "GetReward",
                            ["SPECIAL_KEY_WORDS"] = {"List" ,"GcRewardTableItem"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "GetMissionMessageReward",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATES_DELAY", "List" ,"GcRewardTableItem"},
                            ["SEC_SAVE_TO"] = "GetRewardMissionSeeded",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\SCANEVENTTABLEPLANET.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SENT_CRASH_CORRUPT"},
                            ["SEC_SAVE_TO"] = "GetCustomScanEvent",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\STATS\STATDEFINITIONSTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIR_FREI_SEEN"},
                            ["SEC_SAVE_TO"] = "GetStatDef",
                        },
                        {
                            ["SEC_EDIT"] = "GetStatDef",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Id",                     "GL_SCAN_FIX"},
                                {"MissionMessageDecimals", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StatDefinitionTable"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["SEC_ADD_NAMED"] = "GetStatDef",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\STATS\STATGROUPSTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TrackedStats"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[				<Property name="TrackedStats" value="GL_SCAN_FIX"/>]]
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\ATLASPATHTABLE.MBIN",
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Stage", "GcMissionSequenceGroup"},
                            ["SECTION_UP"] = 1,
                            ["SEC_SAVE_TO"] = "GetMissionSequenceGroup",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceGroup",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Silent",            "true"},
                                {"DebugText",         ""},
                                {"ObjectiveID",       ""},
                                {"ObjectiveTipID",    ""},
                                {"SurveyInactiveHint", ""},
                                {"SurveySwapHint",     ""},
                                {"SurveyHint",         ""},
                                {"SurveyVehicleHint",  ""},
                                {"NotifyDisplayTime",  "0"},
                                {"NotifyPauseTime",    "0"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceGroup",
                            ["SPECIAL_KEY_WORDS"] = {"ConditionTest", "GcMissionConditionTest"},
                            ["LINE_OFFSET"] = "1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ConditionTest", "AnyTrue"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceGroup",
                            ["PRECEDING_KEY_WORDS"] = {"Stages", "Stages"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceGroup",
                            ["PRECEDING_KEY_WORDS"] = {"Stages", "Stages"},
                            ["CREATE_HOS"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Conditions", "GcMissionConditionMissionMessage"},
                            ["SEC_SAVE_TO"] = "GetMissionCondition",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionCondition",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Message", "M_GLP_END"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceGroup",
                            ["PRECEDING_KEY_WORDS"] = {"Conditions"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceGroup",
                            ["PRECEDING_KEY_WORDS"] = {"Conditions"},
                            ["CREATE_HOS"] = "TRUE",
                            ["SEC_ADD_NAMED"] = "GetMissionCondition",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Stage", "GcMissionSequenceWait"},
                            ["SECTION_UP"] = 1,
                            ["SEC_SAVE_TO"] = "GetMissionSequenceWait",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceWait",
                            ["PRECEDING_KEY_WORDS"] = {"Versions"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceWait",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Time",      "0.25"},
                                {"DebugText", ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "TRACK_BLACKHOLE", "Stages", "GcGenericMissionStage"},
                            ["SEC_SAVE_TO"] = "GetGenericMissionStage",
                        },
                        {
                            ["SEC_EDIT"] = "GetGenericMissionStage",
                            ["PRECEDING_KEY_WORDS"] = {"Stages", "Stages"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetGenericMissionStage",
                            ["PRECEDING_KEY_WORDS"] = {"Stages", "Stages"},
                            ["CREATE_HOS"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetGenericMissionStage",
                            ["PRECEDING_KEY_WORDS"] = {"Conditions"},
                            ["CREATE_HOS"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetGenericMissionStage",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Silent",            "true"},
                                {"DebugText",         ""},
                                {"ObjectiveID",       ""},
                                {"ObjectiveTipID",    ""},
                                {"SurveyInactiveHint", ""},
                                {"SurveySwapHint",     ""},
                                {"SurveyHint",         ""},
                                {"SurveyVehicleHint",  ""},
                                {"NotifyDisplayTime",  "0"},
                                {"NotifyPauseTime",    "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Stage", "GcMissionSequenceReward"},
                            ["SECTION_UP"] = 1,
                            ["SEC_SAVE_TO"] = "GetMissionSequenceReward",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceReward",
                            ["PRECEDING_KEY_WORDS"] = {"Versions"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceReward",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Message",  "UI_REWARD_FAILED_MSG"},
                                {"Silent",   "true"},
                                {"DebugText", ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Stage", "GcMissionSequenceBroadcastMessage"},
                            ["SECTION_UP"] = 1,
                            ["SEC_SAVE_TO"] = "GetMissionSequenceBroadcastMessage",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceBroadcastMessage",
                            ["PRECEDING_KEY_WORDS"] = {"Versions"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceBroadcastMessage",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DebugText", ""},
                                {"MessageID", "M_GLP_END"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Conditions", "GcMissionConditionStatLevel"},
                            ["SEC_SAVE_TO"] = "MissionConditionStatLevel",
                        },
                        {
                            ["SEC_EDIT"] = "MissionConditionStatLevel",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Stat",         "GL_SCAN_FIX"},
                                {"Level",        "0"},
                                {"EqualityEnum", "Equal"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\DISABLINGCONDITIONSTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "%?MIND_ARC"},
                            ["SEC_SAVE_TO"] = "GetMission",
                        },
                        {
                            ["SEC_EDIT"] = "GetMission",
                            ["SPECIAL_KEY_WORDS"] = {"Table", "GcAlienPuzzleEntry"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SEC_EDIT"] = "GetMission",
                            ["PRECEDING_KEY_WORDS"] = {"Rewards"},
                            ["CREATE_HOS"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetMission",
                            ["PRECEDING_KEY_WORDS"] = {"FinalStageVersions"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetMission",
                            ["SPECIAL_KEY_WORDS"] = {"Stages", "GcGenericMissionStage"},
                            ["PRECEDING_KEY_WORDS"] = {"Versions"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetMission",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MissionID",       "GPSL_SCAN"},
                                {"MissionPriority", "0"},
                                {"PrefixTitle",     "false"},
                                {"Weighting",       "0"},
                                {"DebugText",       ""},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Missions"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["SEC_ADD_NAMED"] = "GetMission",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_CRUISE_LOG1"},
                            ["SEC_SAVE_TO"] = "GetRewardModifyStat",
                        },
                        {
                            ["SEC_EDIT"] = "GetRewardModifyStat",
                            ["SPECIAL_KEY_WORDS"] = {"List" ,"GcRewardTableItem"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "GetRewardMissionSeeded",
                        },
                        {
                            ["SEC_EDIT"] = "GetRewardModifyStat",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Stat",    "GL_SCAN_FIX"},
                                {"Mission", "GPSL_PROXY"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "%?MIND_ARC"},
                            ["SEC_SAVE_TO"] = "GetProxyMission",
                        },
                        {
                            ["SEC_EDIT"] = "GetProxyMission",
                            ["SPECIAL_KEY_WORDS"] = {"Dialog", "GcAlienPuzzleTable"},
                            ["PRECEDING_KEY_WORDS"] = {"Table"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetProxyMission",
                            ["PRECEDING_KEY_WORDS"] = {"FinalStageVersions"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetProxyMission",
                            ["SPECIAL_KEY_WORDS"] = {"Stages", "GcGenericMissionStage"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SEC_EDIT"] = "GetProxyMission",
                            ["PRECEDING_KEY_WORDS"] = {"Stages"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "GetMissionSequenceGroup",
                        },
                        {
                            ["SEC_EDIT"] = "GetProxyMission",
                            ["PRECEDING_KEY_WORDS"] = {"Stages"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "GetMissionSequenceWait",
                        },
                        {
                            ["SEC_EDIT"] = "GetProxyMission",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MissionID",       "GPSL_PROXY"},
                                {"MissionPriority", "0"},
                                {"PrefixTitle",     "false"},
                                {"Weighting",       "0"},
                                {"AutoStart",       "None"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Missions"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["SEC_ADD_NAMED"] = "GetProxyMission",
                        },
                        {
                            ["SEC_EDIT"] = "GetGenericMissionStage",
                            ["PRECEDING_KEY_WORDS"] = {"Conditions"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "MissionConditionStatLevel",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceWait",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Time", "1"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "GetGenericMissionStage",
                            ["PRECEDING_KEY_WORDS"] = {"Stages", "Stages"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "GetMissionSequenceWait",
                        },
                        {
                            ["SEC_EDIT"] = "GetGenericMissionStage",
                            ["PRECEDING_KEY_WORDS"] = {"Stages", "Stages"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "GetMissionSequenceBroadcastMessage",
                        },
                        {
                            ["SEC_EDIT"] = "GetGenericMissionStage",
                            ["PRECEDING_KEY_WORDS"] = {"Stages", "Stages"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "GetMissionSequenceReward",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\COSTTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "C_NAVDATA5"},
                            ["SEC_SAVE_TO"] = "GetCost",
                        },
                        {
                            ["SEC_EDIT"] = "GetCost",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Id",     "C_NAVDATA3"},
                                {"Amount", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "C_NAVDATA" },
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "GetCost",
                        },
                    },
                },
            }
        }
    }
}

local RewardTable             = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]
local ScanEventTablePlanet    = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["MXML_CHANGE_TABLE"]
local DisablingConditionsTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][7]["MXML_CHANGE_TABLE"]

--Add ScanEventTablePlanet entries
for i=1, #ScanDataTable, 1 do
  local NAME                     = ScanDataTable[i][1]
  local INTERACTIONTYPE          = ScanDataTable[i][2]
  local BUILDINGLOCATION         = ScanDataTable[i][3]
  local SEARCHTYPE               = ScanDataTable[i][4]
  local BUILDINGCLASS            = ScanDataTable[i][5]
  local FORCEWIDERANDOM          = ScanDataTable[i][6]
  local ALLOWOVERRIDDENBUILDINGS = ScanDataTable[i][7]
  local OSDMESSAGE               = ScanDataTable[i][8]
  local TOOLTIP                  = ScanDataTable[i][9]
  local MARKERLABEL              = ScanDataTable[i][10]

  ScanEventTablePlanet[#ScanEventTablePlanet+1] =
    {
        ["SEC_EDIT"] = "GetCustomScanEvent",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Name",                     NAME},
            {"InteractionType",          INTERACTIONTYPE},
            {"BuildingLocation",         BUILDINGLOCATION},
            {"SearchType",               SEARCHTYPE},
            {"ForceWideRandom",          FORCEWIDERANDOM},
            {"AllowOverriddenBuildings", ALLOWOVERRIDDENBUILDINGS},
            {"Range",                    "0"},
            {"OSDMessage",               OSDMESSAGE},
            {"InterstellarOSDMessage",   "SCANEVENT_ANOTHER_SYSTEM"},
            {"TooltipMessage",           TOOLTIP},
            {"MarkerLabel",              MARKERLABEL},
            {"Filename",                 ""},
        }
    }
  ScanEventTablePlanet[#ScanEventTablePlanet+1] =
    {
        ["SEC_EDIT"] = "GetCustomScanEvent",
        ["SPECIAL_KEY_WORDS"] = {"SpecificBuildingClass", "GcBuildingClassification"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"BuildingClass", BUILDINGCLASS},
        }
    }
  ScanEventTablePlanet[#ScanEventTablePlanet+1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Events"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetCustomScanEvent",
    }
end

--Add REWARDTABLE entries
for i=1, #MissionDataTable, 1 do
  local ID    = MissionDataTable[i][3]
  local EVENT = MissionDataTable[i][4]

  RewardTable[#RewardTable+1] =
    {
        ["SEC_EDIT"] = "GetReward",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Id",                 ID},
            {"RewardChoice",       "TryFirst_ThenSelectAlways"},
            {"PercentageChance",   "0"},
            {"LabelID",            ""},
            {"Event",              EVENT},
        }
    }

    if AERIAL_SCAN then
  RewardTable[#RewardTable+1] =
    {
        ["SEC_EDIT"] = "GetReward",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"DoAerialScan", "true"},
        }
    }
    end
  RewardTable[#RewardTable+1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"SpecialRewardTable"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetReward",
    }
end

--Add DISABLINGCONDITIONSTABLE entries
--Add ScanEvent Stat rewards
for i = 1, #MissionDataTable do
  local Id     = MissionDataTable[i][1]
  local AMOUNT = MissionDataTable[i][2]

    DisablingConditionsTable[#DisablingConditionsTable+1] =
    {
        ["SEC_EDIT"] = "GetRewardModifyStat",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Id",     Id},
            {"Amount", AMOUNT},
        }
    }
    DisablingConditionsTable[#DisablingConditionsTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"MissionID", "GPSL_SCAN"},
        ["PRECEDING_KEY_WORDS"] = {"Rewards"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetRewardModifyStat",
    }
end

--Add Puzzle Entries and Options
for i = 1, #DialogDataTable do
  local EntryId         = DialogDataTable[i][1][1]
  local InteractionType = ""
  local NextInteraction = ""
  local Change          = DialogDataTable[i][2]

    if DialogDataTable[i+1] then
        NextInteraction = DialogDataTable[i+1][1][1]
    else
        NextInteraction = DialogDataTable[1][1][1]
    end

    if DialogDataTable[i][1][1] == "D_GLS_SCAN_P1" then
        InteractionType = "SignalScanner"
    else
        InteractionType = "None"
    end

    DisablingConditionsTable[#DisablingConditionsTable+1] =
    {
        ["SEC_EDIT"] = "GetPuzzleEntry",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Id",              EntryId},
            {"InteractionType", InteractionType},
        }
    }
    DisablingConditionsTable[#DisablingConditionsTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"MissionID", "GPSL_SCAN"},
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetPuzzleEntry",
    }

  for j = 1, #Change do
    local Name   = Change[j][1]
    local Reward = Change[j][2]
    local Cost   = COSTCHOICE

    DisablingConditionsTable[#DisablingConditionsTable+1] =
    {
        ["SEC_EDIT"] = "GetOption",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Name",  Name},
            {"Cost",  Cost},
        }
    }
    DisablingConditionsTable[#DisablingConditionsTable+1] =
    {
        ["SEC_EDIT"] = "GetOption",
        ["PRECEDING_KEY_WORDS"] = {"Rewards"},
        ["LINE_OFFSET"] = "1",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Rewards", Reward},
        }
    }
    DisablingConditionsTable[#DisablingConditionsTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"MissionID", "GPSL_SCAN", "Id", EntryId},
        ["PRECEDING_KEY_WORDS"] = {"Options"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetOption",
    }
  end
    DisablingConditionsTable[#DisablingConditionsTable+1] =
    {
        ["SEC_EDIT"] = "GetMore",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"NextInteraction", NextInteraction},
        }
    }
    DisablingConditionsTable[#DisablingConditionsTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"MissionID", "GPSL_SCAN", "Id", EntryId},
        ["PRECEDING_KEY_WORDS"] = {"Options"},
        ["ADD_OPTION"] = "ADDendSECTION",
        ["SEC_ADD_NAMED"] = "GetMore",
    }
end
    DisablingConditionsTable[#DisablingConditionsTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"MissionID", "GPSL_SCAN", "Id", "D_GLS_SCAN_P1"},
        ["PRECEDING_KEY_WORDS"] = {"Options"},
        ["ADD_OPTION"] = "ADDafterLINE",
        ["SEC_ADD_NAMED"] = "GetNearScan",
    }
  local LastPage = DialogDataTable[#DialogDataTable][1][1]
    DisablingConditionsTable[#DisablingConditionsTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"MissionID", "GPSL_SCAN", "Id", LastPage, "Name", "More Options"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Name",     "ALL_REQUEST_LEAVE"},
            {"Cost",     ""},
            {"KeepOpen", "false"},
        }
    }

--Add proxy mission scan rewards
for i = #MissionDataTable, 1, -1 do
  local REWARD = MissionDataTable[i][3]
  local LEVEL  = MissionDataTable[i][2]

    DisablingConditionsTable[#DisablingConditionsTable+1] =
    {
        ["SEC_EDIT"] = "GetGenericMissionStage",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Level",  LEVEL},
            {"Reward", REWARD},
        }
    }
    DisablingConditionsTable[#DisablingConditionsTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"MissionID", "GPSL_PROXY", "Stage", "GcMissionSequenceGroup"},
        ["PRECEDING_KEY_WORDS"] = {"Stages"},
        ["ADD_OPTION"] = "ADDafterLINE",
        ["SEC_ADD_NAMED"] = "GetGenericMissionStage",
    }
end