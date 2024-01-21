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
 
function GetPuzzleOption(NAME, ACTION, COSTCHOICE)
return
[[
        <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="]]..NAME..[[" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="]]..COSTCHOICE..[[" />
          <Property name="Rewards">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="]]..ACTION..[[" />
            </Property>
          </Property>
          <Property name="Mood" value="GcAlienMood.xml">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropType.xml">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="OverrideWithAlienWord" value="False" />
          <Property name="ReseedInteractionOnUse" value="False" />
          <Property name="KeepOpen" value="False" />
          <Property name="DisplayCost" value="True" />
          <Property name="TruncateCost" value="False" />
          <Property name="MarkInteractionComplete" value="True" />
          <Property name="NextInteraction" value="" />
          <Property name="SelectedOnBackOut" value="False" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="TitleOverride" value="" />
          <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
            <Property name="wordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
]]
end

function GetMorePuzzleOption(NEXTACTION)
return
[[
        <Property value="GcAlienPuzzleOption.xml">
          <Property name="Name" value="More Options" />
          <Property name="Text" value="" />
          <Property name="IsAlien" value="False" />
          <Property name="Cost" value="C_ALLOWSCAN" />
          <Property name="Rewards" />
          <Property name="Mood" value="GcAlienMood.xml">
            <Property name="Mood" value="Neutral" />
          </Property>
          <Property name="Prop" value="GcNPCPropType.xml">
            <Property name="NPCProp" value="DontCare" />
          </Property>
          <Property name="OverrideWithAlienWord" value="False" />
          <Property name="ReseedInteractionOnUse" value="False" />
          <Property name="KeepOpen" value="True" />
          <Property name="DisplayCost" value="True" />
          <Property name="TruncateCost" value="False" />
          <Property name="MarkInteractionComplete" value="False" />
          <Property name="NextInteraction" value="]]..NEXTACTION..[[" />
          <Property name="SelectedOnBackOut" value="False" />
          <Property name="AudioEvent" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="INVALID_EVENT" />
          </Property>
          <Property name="TitleOverride" value="" />
          <Property name="EnablingConditionTest" value="GcMissionConditionTest.xml">
            <Property name="ConditionTest" value="AnyFalse" />
          </Property>
          <Property name="EnablingConditions" />
          <Property name="EnablingConditionId" value="" />
          <Property name="WordCategory" value="GcWordCategoryTableEnum.xml">
            <Property name="wordcategorytableEnum" value="MISC" />
          </Property>
        </Property>
      </Property>
      <Property name="AdditionalText" />
      <Property name="AdditionalTextAlien" />
      <Property name="Mood" value="GcAlienMood.xml">
        <Property name="Mood" value="Neutral" />
      </Property>
      <Property name="Prop" value="GcNPCPropType.xml">
        <Property name="NPCProp" value="DontCare" />
      </Property>
      <Property name="AdvancedInteractionFlow" />
      <Property name="PersistancyBufferOverride" value="None" />
      <Property name="CustomFreighterTextIndex" value="-1" />
      <Property name="RadialInteraction" value="False" />
      <Property name="NextStageAudioEventOverride" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
    </Property>
    <Property value="GcAlienPuzzleEntry.xml">
      <Property name="ProgressionIndex" value="-1" />
      <Property name="MinProgressionForSelection" value="0" />
      <Property name="Id" value="]]..NEXTACTION..[[" />
      <Property name="Race" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="Type" value="GcInteractionType.xml">
        <Property name="InteractionType" value="SignalScanner" />
      </Property>
      <Property name="Category" value="GcAlienPuzzleCategory.xml">
        <Property name="AlienPuzzleCategory" value="Default" />
      </Property>
      <Property name="AdditionalOptions" value="None" />
      <Property name="Title" value="" />
      <Property name="Text" value="" />
      <Property name="TextAlien" value="" />
      <Property name="TranslateAlienText" value="False" />
      <Property name="TranslationBrackets" value="False" />
      <Property name="ProgressiveDialogue" value="False" />
      <Property name="RequiresScanEvent" value="" />
      <Property name="Options">
]]
 end

--Additions to SCANEVENTTABLEPLANET
EventAdds =
{--  NAME, BUILDINGLOCATION, BUILDINGTYPE, BUILDINGCLASS, FORCEWIDERANDOM, ALLOWOVERRIDDENBUILDINGS, SOLARSYSTEMLOCATION, OSDMESSAGE, MARKERLABEL, FILENAME, TOOLTIP
    {"SE_BASE", "Nearest", "BuildingClass", "Base", "False", "False", "Local", "UI_RECOVER_BASE_OSD", "UI_RECOVER_BASE_MARKER", "", "UI_RECOVER_BASE_MARKER"}, --Base_Scan_Event
    {"SE_GLITCH", "Nearest", "BuildingClass", "StoryGlitch", "False", "False", "Local", "NPC_COMM_WEEK_04_GLITCH_OSD", "BUILDING_GLITCHYSTORYBOX", "", "BUILDING_GLITCHYSTORYBOX"}, --Glitch_Scan_Event
}

--Additions to REWARDTABLE
RewardAdds =
{--  ID                 EVENT
    {"R_ABANDONED",     "ABANDONED"},
    {"R_GLITCH",        "SE_GLITCH"},
    {"R_BASE",          "SE_BASE"},
    {"R_HIVE",          "DRONE_HIVE_DISABLED"},
    {"PLANET_ARCHIVES", "LIBRARY"},
    {"TOOL_LOCATION",   "SHOP"},
    {"CRASHED_SHIP",    "DISTRESS"},
}

--The first set of Options may only have 2 scan events, allothers may have 3
--First set of options
--               PuzzleOptions (NAME, ACTION)
Menu1_Option2 = GetPuzzleOption("UI_PORTAL_OPT", "REVEAL_PORTAL", COSTCHOICE)  -- Portal
Menu1_Option3 = GetPuzzleOption("BUILDING_DISTRESSSIGNAL_L", "CRASHED_SHIP", COSTCHOICE) -- Crashed Starship
--Generate a new Puzzle option that points to the next dialog set
--               MorePuzzleOptions (NEXTACTION)
More_Options1 = GetMorePuzzleOption("?POWER_SCANNER")
--Put the options together with a more options closer
Menu1_Options = Menu1_Option2..Menu1_Option3..More_Options1

--Second set of options
Menu2_Option1 = GetPuzzleOption("NPC_TECHSHOP_CATEGORY_WEAP", "TOOL_LOCATION", COSTCHOICE)  -- Multi-tool Location
Menu2_Option2 = GetPuzzleOption("BUILDING_FACTORY_L", "SEC_SCN_FACT", COSTCHOICE)  -- Manufacturing Facility
Menu2_Option3 = GetPuzzleOption("UI_NAV_DROPPOD_NAME_L", "SCAN_1", COSTCHOICE)  -- ExoSuit DropPod
More_Options2 = GetMorePuzzleOption("?ATOMIC_SCANNER")
Menu2_Options = Menu2_Option1..Menu2_Option2..Menu2_Option3..More_Options2

--Third set of options
Menu3_Option1 = GetPuzzleOption("UI_LIBRARY_ENTRANCE_DESC", "PLANET_ARCHIVES", COSTCHOICE)  -- Planetary Archives
Menu3_Option2 = GetPuzzleOption("UI_CORE_ACT2_STEP8_MARKER", "SHOW_CRASHSITE", COSTCHOICE) -- Crashed Freighter
Menu3_Option3 = GetPuzzleOption("UI_ABAND_EVENT_AREA20", "SEC_SCN_OBS", COSTCHOICE)  -- Observatory
More_Options3 = GetMorePuzzleOption("?NUCLEAR_SCANNER")
Menu3_Options = Menu3_Option1..Menu3_Option2..Menu3_Option3..More_Options3

--Fourth set of options
Menu4_Option1 = GetPuzzleOption("NAV_DATA_OPTC", "RANDOM_SCAN_C", COSTCHOICE)  -- Scan Habitable Outposts
Menu4_Option2 = GetPuzzleOption("UI_SENTINEL_HIVE_NAME", "R_HIVE", COSTCHOICE)  -- Sentinel Pillar
Menu4_Option3 = GetPuzzleOption("SCAN_GRAVE", "R_CAVEGRAVE", COSTCHOICE)  -- Traveler Grave
More_Options4 = GetMorePuzzleOption("?HYDRO_SCANNER")
Menu4_Options = Menu4_Option1..Menu4_Option2..Menu4_Option3..More_Options4

--Fifth set of options, also get a close option
Menu5_Option1 = GetPuzzleOption("UI_RECOVER_BASE_SUB", "R_BASE", COSTCHOICE)  -- "Wild" Base Computer
Menu5_Option2 = GetPuzzleOption("BUILDING_GLITCHYSTORYBOX", "R_GLITCH", COSTCHOICE)  -- BOUNDARY FAILURE
Menu5_Option3 = GetPuzzleOption("BUILDING_ABANDONED", "R_ABANDONED", COSTCHOICE)  -- Abandoned Building
More_Options5 = GetMorePuzzleOption("?AERO_SCANNER")
Menu5_Options = Menu5_Option1..Menu5_Option2..Menu5_Option3..More_Options5

--Sixth set of options, also get a close option
Menu6_Option1 = GetPuzzleOption("UI_ABAND_ROBOT_CAMP_NAME", "R_CHART_ROBOT", COSTCHOICE)  -- Sentinel Camp
Menu6_Option2 = GetPuzzleOption("UI_POLICE_SHIP_NAME", "R_SCANSENTCRASH", COSTCHOICE)  -- Crashed Sentinel Ship
--Menu6_Options = Menu6_Option1..Menu6_Option2..Menu6_Option3..All_Request_Leave
Menu6_Options = Menu6_Option1..Menu6_Option2 

--Put all the options together.
ALL_PUZZLE_UPDATES = Menu1_Options..Menu2_Options..Menu3_Options..Menu4_Options..Menu5_Options..Menu6_Options

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "Firmware Update for the Signal Booster"..FILENAME..".pak",
  ["MOD_DESCRIPTION"] = "Allows the Signal booster to find crashed ships, factories, multi tools, and portals with no inputs",
  ["MOD_AUTHOR"]      = "Lowkie",
  ["MOD_MAINTENANCE"] = "Babscoole",
  ["NMS_VERSION"]     = "4.50",
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
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SIGNALSCANNER", "Name", "UI_SIGNAL_NEAREST_OPT"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = ALL_PUZZLE_UPDATES,
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
                            ["SPECIAL_KEY_WORDS"] = {"Id", "R_SHOW_HIVEONLY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DoAerialScan", "False"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\SCANEVENTTABLEPLANET.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                         {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "DRONE_HIVE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ReplaceEventIfAlreadyActive", "True"},
                                {"InterstellarOSDMessage",      "SCANEVENT_ANOTHER_SYSTEM"},
                            }
                        },
                         {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "FACTORY_R"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ReplaceEventIfAlreadyActive", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SENT_CRASH_CORRUPT"},
                            ["SEC_SAVE_TO"] = "GetCustomScanEvent",
                        },
                    },
                },
            }
        }
    }
}

--local AlienPuzzleTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local RewardTable      = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local ScanTable        = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]


  
for i=1, #EventAdds, 1 do
  local NAME                     = EventAdds[i][1]
  local BUILDINGLOCATION         = EventAdds[i][2]
  local BUILDINGTYPE             = EventAdds[i][3]
  local BUILDINGCLASS            = EventAdds[i][4]
  local FORCEWIDERANDOM          = EventAdds[i][5]
  local ALLOWOVERRIDDENBUILDINGS = EventAdds[i][6]
  local SOLARSYSTEMLOCATION      = EventAdds[i][7]
  local OSDMESSAGE               = EventAdds[i][8]
  local MARKERLABEL              = EventAdds[i][9]
  local FILENAME                 = EventAdds[i][10]
  local TOOLTIP                  = EventAdds[i][11]

  ScanTable[#ScanTable+1] =
    {
        ["SEC_EDIT"] = "GetCustomScanEvent",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Name",                     NAME},
            {"BuildingLocation",         BUILDINGLOCATION},
            {"BuildingType",             BUILDINGTYPE},
            {"ForceWideRandom",          FORCEWIDERANDOM},
            {"AllowOverriddenBuildings", ALLOWOVERRIDDENBUILDINGS},
            {"SolarSystemLocation",      SOLARSYSTEMLOCATION},
            {"OSDMessage",               OSDMESSAGE},
            {"InterstellarOSDMessage",   "SCANEVENT_ANOTHER_SYSTEM"},
            {"MarkerLabel",              MARKERLABEL},
            {"Filename",                 FILENAME},
            {"TooltipMessage",           TOOLTIP},
        }
    }
  ScanTable[#ScanTable+1] =
    {
        ["SEC_EDIT"] = "GetCustomScanEvent",
        ["SPECIAL_KEY_WORDS"] = {"BuildingClass", "GcBuildingClassification.xml"},
        ["LINE_OFFSET"] = "+1",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"BuildingClass", BUILDINGCLASS},
        }
    }
  ScanTable[#ScanTable+1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Events"},
        ["ADD_OPTION"]  = "ADDafterLINE",
        ["SEC_ADD_NAMED"] = "GetCustomScanEvent",
    }
end

for i=1, #RewardAdds, 1 do
  local ID    = RewardAdds[i][1]
  local EVENT = RewardAdds[i][2]

  RewardTable[#RewardTable+1] =
    {
        ["SEC_EDIT"] = "GetReward",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Id",           ID},
            {"RewardChoice", "SelectAlways"},
            {"LabelID",      ""},
            {"Event",        EVENT},
        }
    }
  RewardTable[#RewardTable+1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Id", "SEC_CRASHEDSHIP"},
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "GetReward",
    }
end