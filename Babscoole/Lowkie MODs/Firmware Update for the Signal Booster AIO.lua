COSTCHOICE = 0
FILENAME = ""

InputCOSTCHOICE = {COSTCHOICE,
[[
    Choose a cost option:
    0 - No cost
    1 - Cost of 1 NAVDATA
    2 - Cost of 5 NAVDATA
    3 - Cost of 10 NAVDATA
    Default = 0 | Current = >> ]] .. (COSTCHOICE) .. [[ <<
]]}

while COSTCHOICE do
  COSTCHOICE = GUIF(InputCOSTCHOICE,10)

  local minChoice = 0
  local maxChoice = 3

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
  COSTCHOICE = "C_NAVDATA5"
  FILENAME = " NiF"
elseif COSTCHOICE == 3 then
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
{--  NAME,         INTERACTIONTYPE, BUILDINGLOCATION, BUILDINGTYPE,        BUILDINGCLASS,            FORCEWIDERANDOM, ALLOWOVERRIDDENBUILDINGS, OSDMESSAGE,                    TOOLTIP,                         MARKERLABEL
    {"SE_GL_SHLT", "None",          "Nearest",        "AnyShelter",        "None",                   "False",         "False",                  "SIGNAL_SHELTER",              "TIP_SHELTER",                   ""                         },
    {"SE_GL_PORT", "Portal",        "Nearest",        "BuildingClass",     "Portal",                 "False",         "True" ,                  "SIGNAL_PORTAL",               "TIP_PORTAL",                    ""                         },
    {"SE_GL_DIST", "None",          "Nearest",        "BuildingClass",     "DistressSignal",         "False",         "False",                  "SIGNAL_DISTRESSSIGNAL",       "TIP_DISTRESSSIGNAL",            "BUILDING_DISTRESSSIGNAL_L"},
    {"SE_GL_SHOP", "None",          "Nearest",        "BuildingClass",     "Shop",                   "False",         "True" ,                  "SIGNAL_SHOP",                 "TIP_SHOP",                      ""                         },
    {"SE_GL_FACT", "None",          "Nearest",        "BuildingClass",     "Factory",                "False",         "False",                  "SIGNAL_FACTORY",              "TIP_FACTORY",                   ""                         },
    {"SE_GL_DPOD", "None",          "Nearest",        "BuildingClass",     "DamagedMachine",         "False",         "False",                  "SIGNAL_DAMAGEDMACHINE",       "TIP_DAMAGEDMACHINE",            ""                         },
    {"SE_GL_LBRY", "None",          "Nearest",        "BuildingClass",     "LargeBuilding",          "False",         "True" ,                  "SIGNAL_LIBRARY",              "TIP_LIBRARY",                   ""                         },
    {"SE_GL_CRFR", "None",          "Nearest",        "BuildingClass",     "CrashedFreighter",       "False",         "False",                  "UI_CORE_ACT2_STEP8_OSD1",     "UI_CORE_ACT2_STEP8_OBJ2",       "UI_CORE_ACT2_STEP8_MARKER"},
    {"SE_GL_OBSV", "None",          "Nearest",        "BuildingClass",     "Observatory",            "False",         "False",                  "SIGNAL_OBSERVATORY",          "TIP_OBSERVATORY",               ""                         },
    {"SE_GL_OUTP", "None",          "Nearest",        "BuildingClass",     "Outpost",                "False",         "True" ,                  "SIGNAL_OUTPOST",              "TIP_OUTPOST",                   ""                         },
    {"SE_GL_DRHV", "None",          "Nearest",        "BuildingClass",     "DroneHive",              "False",         "False",                  "UI_DRONEHIVE_LOCATED_OSD",    "UI_DRONEHIVE_LOCATED",          ""                         },
    {"SE_GL_GRV" , "None",          "Nearest",        "BuildingClass",     "GraveInCave",            "False",         "False",                  "UI_MP_PLANTKILL_GRAVE_OSD",   "UI_TITLE_OWNED_LORE1",          "SCAN_GRAVE"               },
    {"SE_GL_BASE", "None",          "Nearest",        "BuildingClass",     "Base",                   "False",         "False",                  "SIGNAL_BASE",                 "TIP_BASE",                      ""                         },
    {"SE_GL_GLCH", "None",          "Nearest",        "BuildingClass",     "StoryGlitch",            "False",         "False",                  "NPC_COMM_WEEK_04_GLITCH_OSD", "NPC_COMM_WEEK_04_GLITCH_RES_A", "BUILDING_GLITCHYSTORYBOX" },
    {"SE_GL_ABAN", "None",          "Nearest",        "BuildingClass",     "Abandoned",              "False",         "False",                  "SIGNAL_ABANDONED",            "TIP_ABANDONED",                 ""                         },
    {"SE_GL_RBCP", "None",          "Nearest",        "BuildingClass",     "AbandonedRobotCamp",     "False",         "False",                  "UI_CAMP_REVEAL_OSD",          "UI_CAMP_REVEAL_MSG",            "UI_CAMP_REVEAL_MARKER"    },
    {"SE_GL_DRCS", "None",          "Nearest",        "BuildingClass",     "SentinelDistressSignal", "False",         "False",                  "UI_CRASH_REVEAL_OSD",         "UI_CRASH_REVEAL_MSG",           "UI_CRASH_REVEAL_MARKER"   },
    {"SE_GL_SETL", "None",          "Random" ,        "UnownedSettlement", "None",                   "True" ,         "True" ,                  "UI_SETTLEMENT_LOCATED_OSD",   "UI_SETTLEMENT_LOCATED",         ""                         },
}

MissionDataTable = --Additions to ENABLINGCONDITIONSTABLE and REWARDTABLE
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
    {"R_GLS_SCAN_14", "14",           "R_GL_ABAN", "SE_GL_ABAN"},
    {"R_GLS_SCAN_15", "15",           "R_GL_RBCP", "SE_GL_RBCP"},
    {"R_GLS_SCAN_16", "16",           "R_GL_DRCS", "SE_GL_DRCS"},
    {"R_GLS_SCAN_17", "17",           "R_GL_SETL", "SE_GL_SETL"},
}

DialogDataTable = --Dialog (menu) additions to ENABLINGCONDITIONSTABLE.
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
            {"BUILDING_ABANDONED_L",     "R_GLS_SCAN_14"},
        }
    },
    {
        {"D_GLS_SCAN_P6"},
        {
            {"UI_ABAND_ROBOT_CAMP_NAME", "R_GLS_SCAN_15"},
            {"UI_SENTINEL_CRASH_MARKER", "R_GLS_SCAN_16"},
            {"UI_SETTLEMENT_LABEL",      "R_GLS_SCAN_17"},
        }
    },
}

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "Firmware Update for the Signal Booster"..FILENAME..".pak",
  ["MOD_DESCRIPTION"] = "Allows the Signal booster to find crashed ships, factories, multi tools, and portals with no inputs",
  ["MOD_AUTHOR"]      = "Lowkie",
  ["MOD_MAINTENANCE"] = "Babscoole",
  ["NMS_VERSION"]     = "4.52",
  ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SIGNALSCANNER", "Value", "R_MSG_NEAR_SCAN"},
                            ["SECTION_UP"] = 2,
                            ["SEC_SAVE_TO"] = "GetNearScan",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "?FREIGHTER", "Name", "ALL_REQUEST_DECLINE"},
                            ["SEC_SAVE_TO"] = "GetOption",
                        },
                        {
                            ["SEC_EDIT"] = "GetOption",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NextInteraction",   ""},
                                {"SelectedOnBackOut", "False"},
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
                                {"KeepOpen", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SIGNALSCANNER"},
                            ["SEC_SAVE_TO"] = "GetPuzzleEntry",
                        },
                        {
                            ["SEC_EDIT"] = "GetPuzzleEntry",
                            ["PRECEDING_KEY_WORDS"] = {"GcAlienPuzzleOption.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SEC_EDIT"] = "GetPuzzleEntry",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TextAlien",               ""},
                                {"UseTitleOverrideInLabel", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SIGNALSCANNER"},
                            ["REMOVE"] = "SECTION",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_MONOLITH"},
                            ["SEC_SAVE_TO"] = "GetReward",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHT_DECLINE"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "GetMissionMessageReward",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\SCANEVENTTABLEPLANET.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SENT_CRASH_CORRUPT"},
                            ["SEC_SAVE_TO"] = "GetCustomScanEvent",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\STATS\STATDEFINITIONSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
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
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["LINE_OFFSET"] = -1,
                            ["SEC_ADD_NAMED"] = "GetStatDef",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\STATS\STATGROUPSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "CIV_FREI_KILLS"},
                            ["SEC_SAVE_TO"] = "GetStatGp",
                        },
                        {
                            ["SEC_EDIT"] = "GetStatGp",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "GL_SCAN_FIX"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GroupName", "GLOBAL_STATS"},
                            ["TrackedStats"] = {"StatDefinitionTable"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["LINE_OFFSET"] = -2,
                            ["SEC_ADD_NAMED"] = "GetStatGp",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\RECURRINGMISSIONTABLE.MBIN",
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id" , "R_DM_EXOTUT"},
                            ["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml"},
                            ["SEC_SAVE_TO"] = "GetRewardMissionSeeded",
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\ATLASPATHTABLE.MBIN",
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Stage", "GcMissionSequenceGroup.xml"},
                            ["SECTION_UP"] = 1,
                            ["SEC_SAVE_TO"] = "GetMissionSequenceGroup",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceGroup",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Silent",            "True"},
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
                            ["SPECIAL_KEY_WORDS"] = {"ConditionTest", "GcMissionConditionTest.xml"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ConditionTest", "AnyTrue"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceGroup",
                            ["PRECEDING_KEY_WORDS"] = {"Versions"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceGroup",
                            ["PRECEDING_KEY_WORDS"] = {"Stages"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceGroup",
                            ["PRECEDING_KEY_WORDS"] = {"Stages"},
                            ["NOTICE_OFF"] = "TRUE",
                            ["CREATE_HOS"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetMissionSequenceGroup",
                            ["PRECEDING_KEY_WORDS"] = {"Conditions"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
              <Property value="GcMissionConditionMissionMessage.xml">
                <Property name="Message" value="M_GLP_END" />
              </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Stage", "GcMissionSequenceWait.xml"},
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
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Time",      "0.25"},
                                {"DebugText", ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "TRACK_BLACKHOLE"},
                            ["PRECEDING_KEY_WORDS"] = {"GcGenericMissionStage.xml"},
                            ["SEC_SAVE_TO"] = "GetGenericMissionStage",
                        },
                        {
                            ["SEC_EDIT"] = "GetGenericMissionStage",
                            ["PRECEDING_KEY_WORDS"] = {"Stages"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetGenericMissionStage",
                            ["PRECEDING_KEY_WORDS"] = {"Stages"},
                            ["NOTICE_OFF"] = "TRUE",
                            ["CREATE_HOS"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetGenericMissionStage",
                            ["PRECEDING_KEY_WORDS"] = {"Conditions"},
                            ["NOTICE_OFF"] = "TRUE",
                            ["CREATE_HOS"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetGenericMissionStage",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Silent",            "True"},
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
                            ["SPECIAL_KEY_WORDS"] = {"Stage", "GcMissionSequenceReward.xml"},
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
                                {"Silent",   "True"},
                                {"DebugText", ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Stage", "GcMissionSequenceBroadcastMessage.xml"},
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
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\ENABLINGCONDITIONSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "?MIND_ARC"},
                            ["SEC_SAVE_TO"] = "GetMission",
                        },
                        {
                            ["SEC_EDIT"] = "GetMission",
                            ["PRECEDING_KEY_WORDS"] = {"GcAlienPuzzleEntry.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SEC_EDIT"] = "GetMission",
                            ["PRECEDING_KEY_WORDS"] = {"Rewards"},
                            ["NOTICE_OFF"] = "TRUE",
                            ["CREATE_HOS"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetMission",
                            ["PRECEDING_KEY_WORDS"] = {"FinalStageVersions"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetMission",
                            ["PRECEDING_KEY_WORDS"] = {"Versions"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SEC_EDIT"] = "GetMission",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MissionID",       "GPSL_SCAN"},
                                {"MissionPriority", "0"},
                                {"PrefixTitle",     "False"},
                                {"Weighting",       "0"},
                                {"DebugText",       ""},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Missions"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["LINE_OFFSET"] = -1,
                            ["SEC_ADD_NAMED"] = "GetMission",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_CRUISE_LOG1"},
                            ["SEC_SAVE_TO"] = "GetRewardModifyStat",
                        },
                        {
                            ["SEC_EDIT"] = "GetRewardModifyStat",
                            ["SPECIAL_KEY_WORDS"] = {"ModifyType", "Set"},
                            ["LINE_OFFSET"] = "+3",
                            ["ADD_OPTION"] = "ADDafterLINE",
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
                            ["SPECIAL_KEY_WORDS"] = {"MissionID", "?MIND_ARC"},
                            ["SEC_SAVE_TO"] = "GetProxyMission",
                        },
                        {
                            ["SEC_EDIT"] = "GetProxyMission",
                            ["SPECIAL_KEY_WORDS"] = {"Dialog", "GcAlienPuzzleTable.xml"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GcGenericMissionStage.xml"},
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
                                {"PrefixTitle",     "False"},
                                {"Weighting",       "0"},
                                {"AutoStart",       "None"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Missions"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["LINE_OFFSET"] = -1,
                            ["SEC_ADD_NAMED"] = "GetProxyMission",
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcMissionConditionStatLevel.xml"},
                            ["SEC_SAVE_TO"] = "MissionConditionStatLevel",
                        },
                        {
                            ["SEC_EDIT"] = "MissionConditionStatLevel",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Stat",         "GL_SCAN_FIX"},
                                {"CompareStat",  ""},
                                {"EqualityEnum", "Equal"},
                            }
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
                            ["PRECEDING_KEY_WORDS"] = {"Stages"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "GetMissionSequenceWait",
                        },
                        {
                            ["SEC_EDIT"] = "GetGenericMissionStage",
                            ["PRECEDING_KEY_WORDS"] = {"Stages"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "GetMissionSequenceBroadcastMessage",
                        },
                        {
                            ["SEC_EDIT"] = "GetGenericMissionStage",
                            ["PRECEDING_KEY_WORDS"] = {"Stages"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "GetMissionSequenceReward",
                        },
                    },
                },
            }
        }
    }
}

local RewardTable             = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local ScanEventTablePlanet    = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]
local EnablingConditionsTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][8]["EXML_CHANGE_TABLE"]

--Add ScanEventTablePlanet entries
for i=1, #ScanDataTable, 1 do
  local NAME                     = ScanDataTable[i][1]
  local INTERACTIONTYPE          = ScanDataTable[i][2]
  local BUILDINGLOCATION         = ScanDataTable[i][3]
  local BUILDINGTYPE             = ScanDataTable[i][4]
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
            {"BuildingType",             BUILDINGTYPE},
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
        ["SPECIAL_KEY_WORDS"] = {"BuildingClass", "GcBuildingClassification.xml"},
        ["LINE_OFFSET"] = "+1",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"BuildingClass", BUILDINGCLASS},
        }
    }
  ScanEventTablePlanet[#ScanEventTablePlanet+1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Events"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["LINE_OFFSET"] = "-1",
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
            {"DoAerialScan", "True"},
        }
    }
    end
  RewardTable[#RewardTable+1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"SpecialRewardTable"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["LINE_OFFSET"] = "-1",
        ["SEC_ADD_NAMED"] = "GetReward",
    }
end

--Add ENABLINGCONDITIONSTABLE entries
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

    EnablingConditionsTable[#EnablingConditionsTable+1] =
    {
        ["SEC_EDIT"] = "GetPuzzleEntry",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Id",              EntryId},
            {"InteractionType", InteractionType},
        }
    }
    EnablingConditionsTable[#EnablingConditionsTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"MissionID", "GPSL_SCAN"},
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["LINE_OFFSET"] = "-1",
        ["SEC_ADD_NAMED"] = "GetPuzzleEntry",
    }

  for j = 1, #Change do
    local Name   = Change[j][1]
    local Reward = Change[j][2]
    local Cost   = COSTCHOICE

    EnablingConditionsTable[#EnablingConditionsTable+1] =
    {
        ["SEC_EDIT"] = "GetOption",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Name",  Name},
            {"Value", Reward},
            {"Cost",  Cost},
        }
    }
    EnablingConditionsTable[#EnablingConditionsTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"MissionID", "GPSL_SCAN", "Id", EntryId},
        ["PRECEDING_KEY_WORDS"] = {"Options"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["LINE_OFFSET"] = "-1",
        ["SEC_ADD_NAMED"] = "GetOption",
    }
  end
    EnablingConditionsTable[#EnablingConditionsTable+1] =
    {
        ["SEC_EDIT"] = "GetMore",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"NextInteraction", NextInteraction},
        }
    }
    EnablingConditionsTable[#EnablingConditionsTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"MissionID", "GPSL_SCAN", "Id", EntryId},
        ["PRECEDING_KEY_WORDS"] = {"Options"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["LINE_OFFSET"] = "-1",
        ["SEC_ADD_NAMED"] = "GetMore",
    }
end
    EnablingConditionsTable[#EnablingConditionsTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"MissionID", "GPSL_SCAN", "Id", "D_GLS_SCAN_P1"},
        ["PRECEDING_KEY_WORDS"] = {"Options"},
        ["ADD_OPTION"] = "ADDafterLINE",
        ["SEC_ADD_NAMED"] = "GetNearScan",
    }
  local LastPage = DialogDataTable[#DialogDataTable][1][1]
    EnablingConditionsTable[#EnablingConditionsTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"MissionID", "GPSL_SCAN", "Id", LastPage, "Name", "More Options"},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Name",     "ALL_REQUEST_LEAVE"},
            {"Cost",     ""},
            {"KeepOpen", "False"},
        }
    }

--Add ScanEvent Stat rewards
for i = #MissionDataTable, 1, -1 do
  local Id     = MissionDataTable[i][1]
  local AMOUNT = MissionDataTable[i][2]

    EnablingConditionsTable[#EnablingConditionsTable+1] =
    {
        ["SEC_EDIT"] = "GetRewardModifyStat",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Id",     Id},
            {"Amount", AMOUNT},
        }
    }
    EnablingConditionsTable[#EnablingConditionsTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"MissionID", "GPSL_SCAN"},
        ["PRECEDING_KEY_WORDS"] = {"ScanEvents"},
        ["LINE_OFFSET"] = "+1",
        ["ADD_OPTION"] = "ADDafterLINE",
        ["SEC_ADD_NAMED"] = "GetRewardModifyStat",
    }
end

--Add proxy mission scan rewards
for i = #MissionDataTable, 1, -1 do
  local REWARD = MissionDataTable[i][3]
  local LEVEL  = MissionDataTable[i][2]

    EnablingConditionsTable[#EnablingConditionsTable+1] =
    {
        ["SEC_EDIT"] = "GetGenericMissionStage",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Level",  LEVEL},
            {"Reward", REWARD},
        }
    }
    EnablingConditionsTable[#EnablingConditionsTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"MissionID", "GPSL_PROXY"},
        ["PRECEDING_KEY_WORDS"] = {"Stages", "Stages"},
        ["ADD_OPTION"] = "ADDafterLINE",
        ["SEC_ADD_NAMED"] = "GetGenericMissionStage",
    }
end