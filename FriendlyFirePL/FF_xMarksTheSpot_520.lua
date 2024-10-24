----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "xMarksTheSpot"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "520"
METADATA_MOD_DESC       = "This mod adds treasure map items that can lead players to buried treasure chests. Modifies NMS_LOC9_ENGLISH.MBIN and various files in METADATA and MODELS directories."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_LANGUAGE_LOC9 =                "LANGUAGE\\NMS_LOC9_ENGLISH.MBIN"
FILE_METADATA_PRODUCT_TABLE =       "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN"
FILE_METADATA_FISHING_TABLE =       "METADATA\\REALITY\\TABLES\\FISHDATATABLE.MBIN"
FILE_METADATA_CONSUMABLE_TABLE =    "METADATA\\REALITY\\TABLES\\CONSUMABLEITEMTABLE.MBIN"
FILE_METADATA_REWARD_TABLE =        "METADATA\\REALITY\\TABLES\\REWARDTABLE.MBIN"
FILE_METADATA_MISSIONS_WATER =      "METADATA\\SIMULATION\\MISSIONS\\TABLES\\WATERMISSIONTABLE.MBIN"
FILE_MODELS_BURIEDCACHE_ENTITY =    "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\CRATE\\UNDERGROUNDCRATE\\ENTITIES\\UNDERGROUNDCRATE.ENTITY.MBIN"

--------------------------------------------------
-- files used for templates (not modified)
--------------------------------------------------

FILE_METADATA_MISSIONS_SEASONAL =   "METADATA\\SIMULATION\\MISSIONS\\TABLES\\SEASONALBESPOKEMISSIONTABLE.MBIN"
FILE_MODELS_CORRUPTLOOT_ENTITY =    "MODELS\\COMMON\\ROBOTS\\LOOTDROP\\CORRUPTLOOT\\ENTITIES\\CORRUPTLOOT.ENTITY.MBIN"



--------------------------------------------------
-- new language entries
--------------------------------------------------

-- treasure map item entries
TEXT_TREASUREMAP_N = "AQUATIC TREASURE MAP"
TEXT_TREASUREMAP_L = "Aquatic Treasure Map"
TEXT_TREASUREMAP_S = "Recovered Location Data"
TEXT_TREASUREMAP_D = 
[[
A &lt;STELLAR&gt;lost treasure map&lt;&gt;, recovered from the depths of the sea. While decrepit for the most part, the markings on this chart seem to indicate the location of a &lt;SPECIAL&gt;buried treasure&lt;&gt;.&#xA;&#xA;
Analyse the map in exosuit inventory (&lt;IMG&gt;INVENTORY&lt;&gt;) to attempt reconstructing the data.
]]

-- treasure map interatction labels
TEXT_TREASUREMAP_B = "ANALYSE"
TEXT_TREASUREMAP_U = "Transmit treasure location to exosuit"
TEXT_TREASUREMAP_F = "Reconstruction not available &lt;IMG&gt;SLASH&lt;&gt; Another map already in use"

-- general quest text entries
TEXT_MISSION_TITLE = "Aquatic Treasure Map"
TEXT_MISSION_SUBTITLE = "Uncover Buried Treasure"
TEXT_MISSION_DESCR = "I recovered a lost treasure map from the depths of the sea. While decrepit for the most part, the markings on this chart seem to indicate the location of a buried treasure. Custom mission created by &lt;SPECIAL&gt;FriendlyFirePL&lt;&gt;."

-- stage quest text entries
TEXT_MISSION_STAGE1_OBJ = "Locate the buried treasure"
TEXT_MISSION_STAGE1_DESC =
[[
The recovered map contained coordinates to a buried treasure.&#xA;
Reach the marked coordinates and locate the loot cache.
]]

-- scan event text entries
TEXT_MISSION_SCAN1_OSD = "Aproximate location data recovered"
TEXT_MISSION_SCAN1_MARKER = "Buried Treasure Location?"
TEXT_MISSION_SCAN1_TARGET = "Treasure landmark located!"
TEXT_MISSION_SCAN1_SYSTEM = "Location data mismatch &lt;IMG&gt;SLASH&lt;&gt; Target in another system"

-- scan event tooltips
TEXT_MISSION_STAGE1_TIP1A =
[[
Aproximate location data recovered: &lt;SPECIAL&gt;%GPS%&lt;&gt;&#xA;
Reach the extracted coordinates
]]
TEXT_MISSION_STAGE1_TIP1B =
[[
The map marks a location in another star system&#xA;
Use the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;) to chart a path
]]
TEXT_MISSION_STAGE1_TIP1C =
[[
The map marks a location in another star system&#xA;
Return to space to access the Galaxy Map (&lt;IMG&gt;QUICK_MENU&lt;&gt;)
]]

-- target sweep tooltips
TEXT_MISSION_STAGE1_TIP1E =
[[
Data from the map corelates to a &lt;STELLAR&gt;nearby area&lt;&gt;&#xA;
The location can be pinpointed using Target Sweep&#xA;
Activate the &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; (&lt;IMG&gt;AIM&lt;&gt;) to start
]]
TEXT_MISSION_STAGE1_TIP1F =
[[
Data from the map corelates to a &lt;STELLAR&gt;nearby area&lt;&gt;&#xA;
Change the operating mode to Target Sweep (&lt;IMG&gt;SURVEYFILTERL&lt;&gt; / &lt;IMG&gt;SURVEYFILTERR&lt;&gt;)
]]
TEXT_MISSION_STAGE1_TIP1G =
[[
Data from the map corelates to a &lt;STELLAR&gt;nearby area&lt;&gt;&#xA;
Follow the directional indicators displayed in visor to pinpoint the location 
]]
TEXT_MISSION_STAGE1_TIP1H =
[[
Data from the map corelates to a &lt;STELLAR&gt;nearby area&lt;&gt;&#xA;
Leave the vehicle to start a Target Sweep
]]

-- tooltip for digging up the chest
TEXT_MISSION_STAGE1_TIP2 =
[[
Find the buried treasure&#xA;
Scan the area with &lt;TECHNOLOGY&gt;Analysis Visor&lt;&gt; to reveal &lt;SPECIAL&gt;potential loot caches&lt;&gt;&#xA;
Excavate Buried Caches using &lt;TECHNOLOGY&gt;Terrain Manipulator&lt;&gt;
]]



--------------------------------------------------
-- functions for adding text entries
--------------------------------------------------

LIST_TEXT_TREASURE =
{
    TEXT_TREASUREMAP_N =            TEXT_TREASUREMAP_N,
    TEXT_TREASUREMAP_L =            TEXT_TREASUREMAP_L,
    TEXT_TREASUREMAP_S =            TEXT_TREASUREMAP_S,
    TEXT_TREASUREMAP_D =            TEXT_TREASUREMAP_D,

    TEXT_TREASUREMAP_B =            TEXT_TREASUREMAP_B,
    TEXT_TREASUREMAP_U =            TEXT_TREASUREMAP_U,
    TEXT_TREASUREMAP_F =            TEXT_TREASUREMAP_F,

    TEXT_MISSION_TITLE =            TEXT_MISSION_TITLE,
    TEXT_MISSION_SUBTITLE =         TEXT_MISSION_SUBTITLE,
    TEXT_MISSION_DESCR =            TEXT_MISSION_DESCR,

    TEXT_MISSION_SCAN1_SYSTEM =     TEXT_MISSION_SCAN1_SYSTEM,
    TEXT_MISSION_SCAN1_MARKER =     TEXT_MISSION_SCAN1_MARKER,
    TEXT_MISSION_SCAN1_TARGET =     TEXT_MISSION_SCAN1_TARGET,
    TEXT_MISSION_SCAN1_OSD =        TEXT_MISSION_SCAN1_OSD,

    TEXT_MISSION_STAGE1_OBJ =       TEXT_MISSION_STAGE1_OBJ,
    TEXT_MISSION_STAGE1_DESC =      TEXT_MISSION_STAGE1_DESC,

    TEXT_MISSION_STAGE1_TIP1A =     TEXT_MISSION_STAGE1_TIP1A,
    TEXT_MISSION_STAGE1_TIP1B =     TEXT_MISSION_STAGE1_TIP1B,
    TEXT_MISSION_STAGE1_TIP1C =     TEXT_MISSION_STAGE1_TIP1C,
    TEXT_MISSION_STAGE1_TIP1E =     TEXT_MISSION_STAGE1_TIP1E,
    TEXT_MISSION_STAGE1_TIP1F =     TEXT_MISSION_STAGE1_TIP1F,
    TEXT_MISSION_STAGE1_TIP1G =     TEXT_MISSION_STAGE1_TIP1G,
    TEXT_MISSION_STAGE1_TIP1H =     TEXT_MISSION_STAGE1_TIP1H,

    TEXT_MISSION_STAGE1_TIP2 =      TEXT_MISSION_STAGE1_TIP2,
}

function Language_BuildEntry(id,value) return
[[
<Property value="TkLocalisationEntry.xml">
    <Property name="Id" value="]]..id..[[" />
    <Property name="English" value="]]..value..[[" />
</Property>
]]
end

function Langauge_BuildList(list)
    local FileTable = {}
    for id,value in pairs(list) do
        FileTable[#FileTable+1] = Language_BuildEntry(id,value)
    end
    return table.concat(FileTable)
end



--------------------------------------------------
-- misc. functions for mission structure
--------------------------------------------------

function Mission_ResetMainMissionData(pkw) return
{   ["SEC_EDIT"] = "SEC_MISSION_MAIN",      ["PKW"] = pkw,      ["CREATE_HOES"] = "TRUE",   }
end
    
function Mission_SetText(skw,text) return
{   ["SEC_EDIT"] = "SEC_MISSION_MAIN",      ["SKW"] = {skw,"GcNumberedTextList.xml",},      ["VCT"] = {{"Format",text},},   }
end

function Mission_SetIcon(skw,texture) return
{   ["SEC_EDIT"] = "SEC_MISSION_MAIN",      ["SKW"] = {skw,"TkTextureResource.xml",},      ["VCT"] = {{"Filename",texture},},   }
end

function Mission_OpenNodeInSection(section,node) return
{   ["SEC_EDIT"] = section,     ["PKW"] = node,     ["CREATE_HOS"] = "TRUE",    }
end 

function Mission_AddStageToParent(parent,child) return
{   ["SEC_EDIT"] = parent,      ["PKW"] = "Stages",     ["ADD_OPTION"] = "ADDendSECTION",       ["SEC_ADD_NAMED"] = child,   }
end

function Mission_AddReward(parent,child) return
{   ["SEC_EDIT"] = parent,      ["PKW"] = "Rewards",     ["ADD_OPTION"] = "ADDendSECTION",       ["SEC_ADD_NAMED"] = child,   }
end

function Reward_AddItemToList(parent,child) return
{   ["SEC_EDIT"] = parent,      ["SKW"] = {"RewardChoice","IGNORE",},   ["PKW"] = "List",     ["ADD_OPTION"] = "ADDendSECTION",       ["SEC_ADD_NAMED"] = child,   }
end



--------------------------------------------------
-- functions for missions sequence groups
--------------------------------------------------

function Mission_GetStage_SequenceGroup_Full(
FUNCTION_SECTION,
Silent,Filename,MissionPageHint,PageDataLocID,BuildMenuHint,InventoryHint,TerrainTarget,
ObjectiveID,ObjectiveTipID,MissionCategory,PrefixTitle,PrefixTitleText,
BlockPinning,AutoPinRepairs,BlockSpaceBattles,ConditionTest,
HideFromLogIfConditionsMet,DoConsequencesIfNeverActivated,RepeatLogic,IconStyle,GalMapPathOverride,
SETTINGS_FORMAT,SETTINGS_SEASON,SETTINGS_SURVEY,SETTINGS_TIMERS,
DebugText
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_WATER,
["EXML_CHANGE_TABLE"] =
{
    {   ["SKW"] = {"Stage","GcMissionSequenceGroup.xml",},      ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = FUNCTION_SECTION,     },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {
        {"Silent",Silent,},
        {"Filename",Filename,},
        {"MissionPageHint",MissionPageHint,},
        {"PageDataLocID",PageDataLocID,},
        {"BuildMenuHint",BuildMenuHint,},
        {"InventoryHint",InventoryHint,},
        {"TerrainTarget",TerrainTarget,},
        {"DebugText",DebugText,},
        {"ObjectiveID",ObjectiveID,},
        {"ObjectiveTipID",ObjectiveTipID,},
        {"MissionCategory",MissionCategory,},
        {"PrefixTitle",PrefixTitle,},
        {"PrefixTitleText",PrefixTitleText,},
        {"BlockPinning",BlockPinning,},
        {"AutoPinRepairs",AutoPinRepairs,},
        {"BlockSpaceBattles",BlockSpaceBattles,},
        {"HideFromLogIfConditionsMet",HideFromLogIfConditionsMet,},
        {"DoConsequencesIfNeverActivated",DoConsequencesIfNeverActivated,},
        {"RepeatLogic",RepeatLogic,},
        {"IconStyle",IconStyle,},
        {"GalMapPathOverride",GalMapPathOverride,},
    },},
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"ConditionTest","GcMissionConditionTest.xml",},    ["REPLACE_TYPE"] = "onceINSIDE",    ["VCT"] = {{"ConditionTest",ConditionTest},},   },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = SETTINGS_FORMAT,    },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = SETTINGS_SEASON,    },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = SETTINGS_SURVEY,    },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = SETTINGS_TIMERS,    },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "Stages",     ["CREATE_HOES"] = "TRUE",       },
},
}
end

SETTINGS_FORMAT_NONE =
{
    {"ObjectivesCanBeFormattedBySequences","False",},
    {"FormattableObjective","",},
    {"FormattableObjectiveTip","",},
}

SETTINGS_SEASON_NONE =
{
    {"OverrideObjective","",},
    {"OverrideObjectiveTip","",},
}

SETTINGS_SURVEY_NONE =
{
    {"TargetMissionSurveyId","",},
    {"TargetMissionSurveyDefinitelyExists","False",},
    {"TargetMissionSurveyDefinitelyExistsWithResourceHint","",},
    {"SurveyInactiveHint","NOTIFY_MISSION_SURVEY_INACTIVE",},
    {"SurveySwapHint","NOTIFY_MISSION_SURVEY_SWAP",},
    {"SurveyHint","NOTIFY_MISSION_SURVEY",},
    {"SurveyVehicleHint","NOTIFY_MISSION_SURVEY_CAR",},
}

SETTINGS_TIMERS_NONE =
{
    {"HasCustomNotifyTimer","False",},
    {"NotifyDisplayTime",20,},
    {"NotifyPauseTime",30,},
}

function Mission_GetStage_SequenceGroup_Simple(
FUNCTION_SECTION,
Silent,Filename,ObjectiveID,ObjectiveTipID,
DebugText
)
return
Mission_GetStage_SequenceGroup_Full(
FUNCTION_SECTION,
Silent,Filename,"None","","","","",
ObjectiveID,ObjectiveTipID,"Mission","False","",
"False","False","False","AnyFalse",
"False","True","None","Default","None",
SETTINGS_FORMAT_NONE,SETTINGS_SEASON_NONE,SETTINGS_SURVEY_NONE,SETTINGS_TIMERS_NONE,
DebugText
)
end



--------------------------------------------------
-- functions for specific mission stages
--------------------------------------------------

function Mission_GetStage_WaitTime(
FUNCTION_SECTION,
Time,SuppressMessages,
DebugText
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_WATER,
["EXML_CHANGE_TABLE"] =
{
    {   ["SKW"] = {"Time","9",},    ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = FUNCTION_SECTION,     },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {{"Time",Time,},{"DebugText",DebugText,},{"SuppressMessages",SuppressMessages,},},    },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "Versions",   ["CREATE_HOES"] = "TRUE",   },
},
}
end

function Mission_GetStage_SetCurrentMission(
FUNCTION_SECTION,
MissionID,FirstIncompleteMilestone,Silent,
DebugText
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_WATER,
["EXML_CHANGE_TABLE"] =
{
    {   ["SKW"] = {"Stage","GcMissionSequenceSetCurrentMission.xml",},      ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = FUNCTION_SECTION,     },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {{"MissionID",MissionID,},{"FirstIncompleteMilestone",FirstIncompleteMilestone,},{"Silent",Silent,},{"DebugText",DebugText,},},   },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "Versions",       ["CREATE_HOES"] = "TRUE",       },
},
}
end

function Mission_GetStage_StartScanEvent(
FUNCTION_SECTION,
ScanTable,ParticipantType,Event,Time,DoAerialScan,IgnoreIfAlreadyActive,
DebugText
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_WATER,
["EXML_CHANGE_TABLE"] =
{
    {   ["SKW"] = {"Stage","GcMissionSequenceStartScanEvent.xml",},     ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = FUNCTION_SECTION,     },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {{"ScanTable",ScanTable,},{"ParticipantType",ParticipantType,},{"Event",Event,},{"Time",Time,},
        {"DoAerialScan",DoAerialScan,},{"AllowOtherPlayersBase","False",},{"IgnoreIfAlreadyActive",IgnoreIfAlreadyActive,},{"DebugText",DebugText,},},     },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "Versions",   ["CREATE_HOES"] = "TRUE",   },
},
}
end
    
function Mission_GetStage_GetToScanEvent(
FUNCTION_SECTION,
Message,GalaxyMapMessage,GalaxyMapMessageNotSpace,NexusMessage,
Event,Distance,EndEventWhenReached,Timeout,DistanceTimeout,TimeoutOSD,
ScanEventGPSHint,CanFormatObjectives,AlwaysAllowInShip,
SurveyInactiveHint,SurveySwapHint,SurveyHint,SurveyVehicleHint,
DebugText
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_WATER,
["EXML_CHANGE_TABLE"] =
{
    {   ["SKW"] = {"Stage","GcMissionSequenceGetToScanEvent.xml",},     ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = FUNCTION_SECTION,     },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {
        {"Message",Message,},{"GalaxyMapMessage",GalaxyMapMessage,},{"GalaxyMapMessageNotSpace",GalaxyMapMessageNotSpace,},{"NexusMessage",NexusMessage,},
        {"Event",Event,},{"Distance",Distance,},{"EndEventWhenReached",EndEventWhenReached,},{"Timeout",Timeout,},{"DistanceTimeout",DistanceTimeout,},
        {"TimeoutOSD",TimeoutOSD,},{"ScanEventGPSHint",ScanEventGPSHint,},{"CanFormatObjectives",CanFormatObjectives,},{"AlwaysAllowInShip",AlwaysAllowInShip,},
        {"SurveyInactiveHint",SurveyInactiveHint,},{"SurveySwapHint",SurveySwapHint,},{"SurveyHint",SurveyHint,},{"SurveyVehicleHint",SurveyVehicleHint,},{"DebugText",DebugText,},},   },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "Versions",   ["CREATE_HOES"] = "TRUE",   },
},
}
end

function Mission_GetStage_WaitForConditions_MissionMessage(
FUNCTION_SECTION,
MessageTooltip,ConditionTest,MessageMission,MessageToFormatSeasonalIDInto,
AllowedToFormatObjectives,ForceAllowMissionRestart,ForceAllowMissionRestartEvent,
DebugText
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_WATER,
["EXML_CHANGE_TABLE"] =
{
    {   ["SKW"] = {"Message","UI_WATERMISSION1_MSG4",},     ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = FUNCTION_SECTION,     },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {{"MessageToFormatSeasonalIDInto",MessageToFormatSeasonalIDInto,},{"AllowedToFormatObjectives",AllowedToFormatObjectives,},
        {"ForceAllowMissionRestart",ForceAllowMissionRestart,},{"ForceAllowMissionRestartEvent",ForceAllowMissionRestartEvent,},{"DebugText",DebugText,},},   },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"ConditionTest","GcMissionConditionTest.xml",},    ["REPLACE_TYPE"] = "onceINSIDE",    ["VCT"] = {{"ConditionTest",ConditionTest},},   },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"Stage","GcMissionSequenceWaitForConditions.xml",},    ["REPLACE_TYPE"] = "onceINSIDE",    ["VCT"] = {{"Message",MessageTooltip},},   },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "GcMissionConditionMissionMessage.xml",    ["REPLACE_TYPE"] = "onceINSIDE",    ["VCT"] = {{"Message",MessageMission},},   },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "Versions",   ["CREATE_HOES"] = "TRUE",   },
},
}
end

function Mission_GetStage_Reward(
FUNCTION_SECTION,
Message,Reward,DoMissionBoardOverride,Silent,RewardInventoryOverride,
DebugText
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_WATER,
["EXML_CHANGE_TABLE"] =
{
    {   ["SKW"] = {"Stage","GcMissionSequenceReward.xml",},     ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = FUNCTION_SECTION,     },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {{"Message",Message,},{"Reward",Reward,},{"DoMissionBoardOverride",DoMissionBoardOverride,},
        {"Silent",Silent,},{"RewardInventoryOverride",RewardInventoryOverride,},{"DebugText",DebugText,},},     },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "Versions",   ["CREATE_HOES"] = "TRUE",   },
},
}
end

function Mission_GetStage_ShowMissionUpdate(
FUNCTION_SECTION,
MissionUpdateMessage,CustomMessageLocID,CustomObjectiveLocID,
SetMissionSelected,WaitForMessageOver,ShowChangeMissionNotify,SuppressNotificationsNotFromThisMission,PlayMusicSting,
DebugText
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_WATER,
["EXML_CHANGE_TABLE"] =
{
    {   ["SKW"] = {"Stage","GcMissionSequenceShowMissionUpdateMessage.xml",},     ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = FUNCTION_SECTION,     },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {{"MissionUpdateMessage",MissionUpdateMessage,},{"CustomMessageLocID",CustomMessageLocID,},
        {"CustomObjectiveLocID",CustomObjectiveLocID,},{"SetMissionSelected",SetMissionSelected,},{"WaitForMessageOver",WaitForMessageOver,},
        {"ShowChangeMissionNotify",ShowChangeMissionNotify,},{"SuppressNotificationsNotFromThisMission",SuppressNotificationsNotFromThisMission,},
        {"PlayMusicSting",PlayMusicSting,},{"DebugText",DebugText,},},     },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "Versions",   ["CREATE_HOES"] = "TRUE",   },
},
}
end

function Mission_GetStage_EndScanEvent(
FUNCTION_SECTION,
Event,
DebugText
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_SEASONAL,
["MBIN_FS_DISACRD"] = "TRUE",
["EXML_CHANGE_TABLE"] =
{
    {   ["SKW"] = {"Stage","GcMissionSequenceEndScanEvent.xml",},     ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = FUNCTION_SECTION,  },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {{"Event",Event,},{"DebugText",DebugText,},},   },
    --{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "Versions",   ["CREATE_HOES"] = "TRUE",   },
},
}
end 

function Mission_GetStage_ShowMessage(
FUNCTION_SECTION,
MissionCategory,Time,Message,AkEvent,
OSDTime,OSDMessage,OSDMessageSubtitle,
R,G,B,A,
OSDMessageStyle,OSDUseMissionIcon,DisableIcon,DisableTitlePrefix,
DebugText
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_SEASONAL,
["MBIN_FS_DISACRD"] = "TRUE",
["EXML_CHANGE_TABLE"] =
{
    {   ["SKW"] = {"Stage","GcMissionSequenceShowMessage.xml",},     ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = FUNCTION_SECTION,  },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {{"MissionCategory",MissionCategory,},{"Time",Time,},{"Message",Message,},{"AkEvent",AkEvent,},
        {"OSDTime",OSDTime,},{"OSDMessage",OSDMessage,},{"OSDMessageSubtitle",OSDMessageSubtitle,},{"R",R,},{"G",G,},{"B",B,},{"A",A,},{"DebugText",DebugText,},
        {"OSDMessageStyle",OSDMessageStyle,},{"OSDUseMissionIcon",OSDUseMissionIcon,},{"DisableIcon",DisableIcon,},{"DisableTitlePrefix",DisableTitlePrefix,},},    },
},
}
end



--------------------------------------------------
-- functions for specfic missions elements
--------------------------------------------------

function Mission_GetElement_ScanEvent_Full(
FUNCTION_SECTION,
Name,ForceInteraction,UseSeasonDataAsInteraction,InteractionType,NPCReactsToPlayer,AlienRace,
MustMatchStoryUtilityPuzzle,ForceBroken,ForceFixed,ReplacementMaintData,ForceOverridesAll,ForceOverrideEncounter,
IsCommunityPortalOverride,ClearForcedInteractionOnCompletion,BuildingPreventionRadius,UseMissionTradingDataOverride,AlwaysShow,NeverShow,ShowOnlyIfSequenceTarget,
PlanetLabelText,SurveyDistance,SurveyDiscoveryOSDMessage,SurveyHUDName,EventStartType,EventEndType,EventPriority,
CanEndFromOutsideMission,DisableMultiplayerSync,BlockStartedOnUseEvents,ReplaceEventIfAlreadyActive,
BuildingLocation,BuildingType,BuildingClass,
AllowFriendsBases,ForceWideRandom,MustFindSystem,AllowOverriddenBuildings,TargetMustMatchMissionSeed,SolarSystemLocation,
ForceRestartInteraction,HasReward,NextOption,
OSDMessage,InterstellarOSDMessage,MarkerLabel,Filename,StartTime,MessageTime,MessageDisplayTime,AkEvent,
IconTime,TooltipTime,TooltipRepeats,ShowEndTooltip,TooltipMessage,MissionMessageOnInteract,
SETTINGS_SYSTEM_DEFAULT,SETTINGS_SYSTEM_FALLBACK
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_WATER,
["EXML_CHANGE_TABLE"] =
{
    {   ["SKW"] = {"Name","SE_WATERMISSION2",},     ["SEC_SAVE_TO"] = FUNCTION_SECTION,     },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {
        {"Name",Name,},
        {"ForceInteraction",ForceInteraction,},
        {"UseSeasonDataAsInteraction",UseSeasonDataAsInteraction,},
        {"InteractionType",InteractionType,},
        {"NPCReactsToPlayer",NPCReactsToPlayer,},
        {"AlienRace",AlienRace,},
        {"MustMatchStoryUtilityPuzzle",MustMatchStoryUtilityPuzzle,},
        {"ForceBroken",ForceBroken,},
        {"ForceFixed",ForceFixed,},
        {"ReplacementMaintData",ReplacementMaintData,},
        {"ForceOverridesAll",ForceOverridesAll,},
        {"ForceOverrideEncounter",ForceOverrideEncounter,},
        {"IsCommunityPortalOverride",IsCommunityPortalOverride,},
        {"ClearForcedInteractionOnCompletion",ClearForcedInteractionOnCompletion,},
        {"BuildingPreventionRadius",BuildingPreventionRadius,},
        {"UseMissionTradingDataOverride",UseMissionTradingDataOverride,},
        {"AlwaysShow",AlwaysShow,},
        {"NeverShow",NeverShow,},
        {"ShowOnlyIfSequenceTarget",ShowOnlyIfSequenceTarget,},
        {"PlanetLabelText",PlanetLabelText,},
        {"SurveyDistance",SurveyDistance,},
        {"SurveyDiscoveryOSDMessage",SurveyDiscoveryOSDMessage,},
        {"SurveyHUDName",SurveyHUDName,},
        {"EventStartType",EventStartType,},
        {"EventEndType",EventEndType,},
        {"EventPriority",EventPriority,},
        {"CanEndFromOutsideMission",CanEndFromOutsideMission,},
        {"DisableMultiplayerSync",DisableMultiplayerSync,},
        {"BlockStartedOnUseEvents",BlockStartedOnUseEvents,},
        {"ReplaceEventIfAlreadyActive",ReplaceEventIfAlreadyActive,},
        {"BuildingLocation",BuildingLocation,},
        {"BuildingType",BuildingType,},
        {"AllowFriendsBases",AllowFriendsBases,},
        {"ForceWideRandom",ForceWideRandom,},
        {"MustFindSystem",MustFindSystem,},
        {"AllowOverriddenBuildings",AllowOverriddenBuildings,},
        {"TargetMustMatchMissionSeed",TargetMustMatchMissionSeed,},
        {"SolarSystemLocation",SolarSystemLocation,},
        {"ForceRestartInteraction",ForceRestartInteraction,},
        {"HasReward",HasReward,},
        {"NextOption",NextOption,},
        {"OSDMessage",OSDMessage,},
        {"InterstellarOSDMessage",InterstellarOSDMessage,},
        {"MarkerLabel",MarkerLabel,},
        {"Filename",Filename,},
        {"StartTime",StartTime,},
        {"MessageTime",MessageTime,},
        {"MessageDisplayTime",MessageDisplayTime,},
        {"AkEvent",AkEvent,},
        {"IconTime",IconTime,},
        {"TooltipTime",TooltipTime,},
        {"TooltipRepeats",TooltipRepeats,},
        {"ShowEndTooltip",ShowEndTooltip,},
        {"TooltipMessage",TooltipMessage,},
        {"MissionMessageOnInteract",MissionMessageOnInteract,},
    },},
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"BuildingClass","GcBuildingClassification.xml",},    ["REPLACE_TYPE"] = "onceINSIDE",    ["VCT"] = {{"BuildingClass",BuildingClass},},   },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"SolarSystemAttributes","GcScanEventSolarSystemLookup.xml",},    ["VCT"] = SETTINGS_SYSTEM_DEFAULT,   },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"SolarSystemAttributesFallback","GcScanEventSolarSystemLookup.xml",},    ["VCT"] = SETTINGS_SYSTEM_FALLBACK,   },
},
}
end

SETTINGS_SYSTEM_NONE =
{
    {"UseStarType","False",},
    {"UseWealth","False",},
    {"UseTrading","False",},
    {"AlienRace","None",},
    {"GalaxyStarAnomaly","None",},
    {"ConflictLevel","Default",},
    {"GalaxyStarType","Yellow",},
    {"AllowUnsafeMatches","False",},
    {"NeverAllowEmpty","False",},
    {"NeverAllowAbandoned","False",},
    {"RequireUndiscovered","False",},
    {"NeedsWaterPlanet","False",},
    {"NeedsPrimePlanet","False",},
    {"NeedsSentinels","False",},
    {"NeedsCorruptSentinelPlanet","False",},
    {"NeedsExtremeSentinelPlanet","False",},
    {"NeverAllowExtremeSentinelPlanet","False",},
    {"NeedsExtremeWeatherPlanet","False",},
    {"NeedsExtremeHazardPlanet","False",},
    {"AnyBiomeNotWeirdOrDead","False",},
    {"AnyRGBBiome","False",},
    {"AnyInfestedBiome","False",},
    {"NeedsBiome","False",},
    {"Biome","Lush",},
    {"BiomeSubType","None",},
    {"NeedsEmptySystem","False",},
    {"NeedsAbandonedSystem","False",},
    {"NeedsResourceHint","",},
    {"SuitableForCreatureDiscovery","False",},
    {"SuitableForWeirdCreatureDiscovery","False",},
    {"SuitableForRobotCreatureDiscovery","False",},
    {"SuitableForCreatureTaming","False",},
    {"SamePlanetAsEvent","",},
    {"SamePlanetAsSeasonParty",0,},
}

function Mission_GetElement_ScanEvent_Simple(
FUNCTION_SECTION,
Name,ForceInteraction,InteractionType,SurveyDistance,
SurveyDiscoveryOSDMessage,SurveyHUDName,
EventStartType,EventEndType,EventPriority,BuildingLocation,BuildingType,BuildingClass,SolarSystemLocation,
OSDMessage,InterstellarOSDMessage,MarkerLabel,
Filename,AkEvent,ShowEndTooltip,TooltipMessage,
SETTINGS_SYSTEM_CUSTOM
)
return
Mission_GetElement_ScanEvent_Full(
FUNCTION_SECTION,
Name,ForceInteraction,"False",InteractionType,"False","None",
"","False","False","","True","",
"False","False",0,"False","False","False","False",
"",SurveyDistance,SurveyDiscoveryOSDMessage,SurveyHUDName,EventStartType,EventEndType,EventPriority,
"False","False","False","False",
BuildingLocation,BuildingType,BuildingClass,
"False","False","False","False","False",SolarSystemLocation,
"True","","",
OSDMessage,InterstellarOSDMessage,MarkerLabel,Filename,0,0,4,AkEvent,
4,10,"False",ShowEndTooltip,TooltipMessage,"",
SETTINGS_SYSTEM_CUSTOM,SETTINGS_SYSTEM_NONE
)
end

SETTINGS_SYSTEM_WATER =
{
    {"UseStarType","False",},
    {"UseWealth","False",},
    {"UseTrading","False",},
    {"AlienRace","None",},
    {"GalaxyStarAnomaly","None",},
    {"ConflictLevel","Default",},
    {"GalaxyStarType","Yellow",},
    {"AllowUnsafeMatches","False",},
    {"NeverAllowEmpty","False",},
    {"NeverAllowAbandoned","False",},
    {"RequireUndiscovered","False",},
    {"NeedsWaterPlanet","True",},
    {"NeedsPrimePlanet","False",},
    {"NeedsSentinels","False",},
    {"NeedsCorruptSentinelPlanet","False",},
    {"NeedsExtremeSentinelPlanet","False",},
    {"NeverAllowExtremeSentinelPlanet","False",},
    {"NeedsExtremeWeatherPlanet","False",},
    {"NeedsExtremeHazardPlanet","False",},
    {"AnyBiomeNotWeirdOrDead","False",},
    {"AnyRGBBiome","False",},
    {"AnyInfestedBiome","False",},
    {"NeedsBiome","False",},
    {"Biome","Lush",},
    {"BiomeSubType","None",},
    {"NeedsEmptySystem","False",},
    {"NeedsAbandonedSystem","False",},
    {"NeedsResourceHint","",},
    {"SuitableForCreatureDiscovery","False",},
    {"SuitableForWeirdCreatureDiscovery","False",},
    {"SuitableForRobotCreatureDiscovery","False",},
    {"SuitableForCreatureTaming","False",},
    {"SamePlanetAsEvent","",},
    {"SamePlanetAsSeasonParty",0,},
}

function Mission_GetElement_RewardTableEntry(
FUNCTION_SECTION,
Id,RewardChoice,OverrideZeroSeed,UseInventoryChoiceOverride,IncrementStat
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_WATER,
["EXML_CHANGE_TABLE"] =
{
    {   ["PKW"] = "GcGenericRewardTableEntry.xml",     ["SEC_SAVE_TO"] = FUNCTION_SECTION,     },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {{"Id",Id,},{"RewardChoice",RewardChoice,},{"OverrideZeroSeed",OverrideZeroSeed,},
        {"UseInventoryChoiceOverride",UseInventoryChoiceOverride,},{"IncrementStat",IncrementStat,},},     },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"RewardChoice","IGNORE",},   ["PKW"] = "List",    ["CREATE_HOES"] = "TRUE",   },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"RewardChoice","IGNORE",},   ["PKW"] = "List",    ["CREATE_HOS"] = "TRUE",   },
},
}
end    

function Mission_GetElement_RewardTableItem_MessageID(
FUNCTION_SECTION,
PercentageChance,LabelID,MessageID,BroadcastInMultiplayer
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_WATER,
["EXML_CHANGE_TABLE"] =
{
    {   ["SKW"] = {"MessageID","WATERM_STARTED",},     ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = FUNCTION_SECTION,  },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {{"PercentageChance",PercentageChance,},{"LabelID",LabelID,},{"MessageID",MessageID,},{"BroadcastInMultiplayer",BroadcastInMultiplayer,},},   },
    
},
}
end 

function Mission_GetElement_RewardTableItem_ProceduralProduct(
FUNCTION_SECTION,
PercentageChance,LabelID,ProceduralProductCategory,
OSDMessage,SubIfPlayerAlreadyHasOne,OverrideRarity,Rarity
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_SEASONAL,
["MBIN_FS_DISACRD"] = "TRUE",
["EXML_CHANGE_TABLE"] =
{
    {   ["SKW"] = {"ProceduralProductCategory","FreighterPassword",},     ["SECTION_UP_SPECIAL"] = 2,     ["SEC_SAVE_TO"] = FUNCTION_SECTION,  },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {{"PercentageChance",PercentageChance,},{"LabelID",LabelID,},{"ProceduralProductCategory",ProceduralProductCategory,},
        {"OSDMessage",OSDMessage,},{"SubIfPlayerAlreadyHasOne",SubIfPlayerAlreadyHasOne,},{"OverrideRarity",OverrideRarity,},},   },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"Rarity","GcRarity.xml",},    ["REPLACE_TYPE"] = "onceINSIDE",    ["VCT"] = {{"Rarity",Rarity},},   },
},
}
end 

function Mission_GetElement_RewardTableItem_SpecificProduct(
FUNCTION_SECTION,
PercentageChance,LabelID,DefaultProductType,ID,AmountMin,AmountMax,
HideAmountInMessage,ForceSpecialMessage,HideInSeasonRewards,Silent,SeasonRewardListFormat,RequiresTech
)
return
{
["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_SEASONAL,
["MBIN_FS_DISACRD"] = "TRUE",
["EXML_CHANGE_TABLE"] =
{
    {   ["SKW"] = {"Reward","GcRewardSpecificProduct.xml",},    ["SECTION_UP_SPECIAL"] = 1,     ["SEC_SAVE_TO"] = FUNCTION_SECTION,  },
    {   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = {
        {"PercentageChance",PercentageChance,},{"LabelID",LabelID,},{"DefaultProductType",DefaultProductType,},{"ID",ID,},{"AmountMin",AmountMin,},{"AmountMax",AmountMax,},
        {"HideAmountInMessage",HideAmountInMessage,},{"ForceSpecialMessage",ForceSpecialMessage,},{"HideInSeasonRewards",HideInSeasonRewards,},{"Silent",Silent,},
        {"SeasonRewardListFormat",SeasonRewardListFormat,},{"RequiresTech",RequiresTech,},},   },
},
}
end 



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
["NMS_VERSION"]		    = METADATA_NMS_VERSION,
["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,

["MODIFICATIONS"]   =
{
{
    ["MBIN_CHANGE_TABLE"]   =
    {
    {
        --------------------------------------------------
        -- localization file MBIN
        --------------------------------------------------
        ["MBIN_FILE_SOURCE"] = FILE_LANGUAGE_LOC9,
        ["EXML_CHANGE_TABLE"] =
        {
            {
                -- add new text entries to the file
                ["PKW"] = "Table",
                ["ADD"] = Langauge_BuildList(LIST_TEXT_TREASURE),
            },
        }
    },

    {
        --------------------------------------------------
        -- product table MBIN
        --------------------------------------------------
        ["MBIN_FILE_SOURCE"] = FILE_METADATA_PRODUCT_TABLE,
        ["EXML_CHANGE_TABLE"] =
        {
            {
                -- get template from pirate map item from expedition
                ["SKW"] = {"ID","PIRATE_MAPWHOLE",},
                ["SEC_SAVE_TO"] = "SEC_PRODUCT",
            },

            {
                -- change text elements, background colour and some other settings
                ["SEC_EDIT"] = "SEC_PRODUCT",
                ["VCT"] = 
                {
                    {"ID","TREASUREMAP"},
                    {"Name","TEXT_TREASUREMAP_N",},
                    {"NameLower","TEXT_TREASUREMAP_L",},
                    {"Subtitle","TEXT_TREASUREMAP_S",},
                    {"Description","TEXT_TREASUREMAP_D",},
                    {"R",0.17254902,},
                    {"G",0.4862745,},
                    {"B",0.62352943,},
                    {"IsCraftable","False",},
                    {"PinObjective","UI_FIND_OBJ",},
                    {"CanSendToOtherPlayers","False",},
                },
            },

            {
                -- remove crafting section
                ["SEC_EDIT"] = "SEC_PRODUCT",
                ["PKW"] = "Requirements",
                ["CREATE_HOES"] = "TRUE",
            },

            {
                -- add new item to product list
                ["PKW"] = "Table",
                ["SEC_ADD_NAMED"] = "SEC_PRODUCT",
            },
        }
    },

    {
        --------------------------------------------------
        -- fishing table MBIN
        --------------------------------------------------
        ["MBIN_FILE_SOURCE"] = FILE_METADATA_FISHING_TABLE,
        ["EXML_CHANGE_TABLE"] =
        {
            {
                -- get template from expedition bottle
                ["SKW"] = {"ProductID","S15_BOT_1",},
                ["SEC_SAVE_TO"] = "SEC_FISHING",
            },

            {
                -- change settings to make it available from fishing outside of quest
                ["SEC_EDIT"] = "SEC_FISHING",
                ["VCT"] = 
                {
                    {"ProductID","TREASUREMAP"},
                    {"ItemQuality","Epic",},
                    {"RequiresMissionActive","",},
                    {"UseSeedValue","False",},
                    {"MissionMustAlsoBeSelected","False",},
                },
            },

            {
                -- add new fishing data to the list
                ["PKW"] = "Fish",
                ["SEC_ADD_NAMED"] = "SEC_FISHING",
            },
        }
    },

    {
        --------------------------------------------------
        -- consumable item table MBIN
        --------------------------------------------------
        ["MBIN_FILE_SOURCE"] = FILE_METADATA_CONSUMABLE_TABLE,
        ["EXML_CHANGE_TABLE"] =
        {
            {
                -- get template from expedition bottle
                ["SKW"] = {"ID","S15_BOT_1",},
                ["SEC_SAVE_TO"] = "SEC_INTERACTION",
            },

            {
                -- change product and reward IDs, change text elements and other settings
                ["SEC_EDIT"] = "SEC_INTERACTION",
                ["VCT"] = 
                {
                    {"ID","TREASUREMAP"},
                    {"RewardID","R_TREASURE",},
                    {"ButtonLocID","TEXT_TREASUREMAP_B",},
                    {"ButtonSubLocID","TEXT_TREASUREMAP_U",},
                    {"CloseInventoryWhenUsed","True",},
                    {"RewardFailedLocID","",},
                },
            },

            {
                -- add new interaction data to the list
                ["PKW"] = "Table",
                ["SEC_ADD_NAMED"] = "SEC_INTERACTION",
            },
        }
    },

    {
        --------------------------------------------------
        -- reward table MBIN
        --------------------------------------------------
        ["MBIN_FILE_SOURCE"] = FILE_METADATA_REWARD_TABLE,
        ["EXML_CHANGE_TABLE"] =
        {
            {
                -- get template from new atlantid fragment
                ["SKW"] = {"Id","DE_MEMORY_CALL",},
                ["SEC_SAVE_TO"] = "SEC_REWARD",
            },

            {
                -- change reward and mission IDs, change failed activation message
                ["SEC_EDIT"] = "SEC_REWARD",
                ["VCT"] = 
                {
                    {"Id","R_TREASURE"},
                    {"Mission","M_TREASURE",},
                    {"SetAsSelected","True",},
                    {"Restart","False",},
                    {"FailRewardIfMissionActive","True",},
                    {"AlreadyActiveFailureMessage","TEXT_TREASUREMAP_F",},
                },
            },

            {
                -- add new reward action to the list
                ["PKW"] = "InteractionTable",
                ["SEC_ADD_NAMED"] = "SEC_REWARD",
            },
        }
    },

    {
        --------------------------------------------------
        -- corrupted drone loot entity file
        --------------------------------------------------
        ["MBIN_FILE_SOURCE"] = FILE_MODELS_CORRUPTLOOT_ENTITY,
        ["MBIN_FS_DISCARD"] = "TRUE",
        ["EXML_CHANGE_TABLE"] =
        {
            {
                -- get template for reward override during mission
                ["PKW"] = "GcRewardMissionOverride.xml",
                ["SEC_SAVE_TO"] = "SEC_OVERRIDE",
            },

            {
                -- edit the template - point to new mission and reward object
                ["SEC_EDIT"] = "SEC_OVERRIDE",
                ["VCT"] = {{"Mission","M_TREASURE",},{"Reward","R_MESSAGE",},},
            },   
        },
    },

    {
        --------------------------------------------------
        -- buried cache entity MBIN
        --------------------------------------------------
        ["MBIN_FILE_SOURCE"] = FILE_MODELS_BURIEDCACHE_ENTITY,
        ["EXML_CHANGE_TABLE"] =
        {
            {
                -- open up section for reward overrides, add modified override
                ["PKW"] = "RewardOverrideTable",
                ["CREATE_HOS"] = "TRUE",
                ["SEC_ADD_NAMED"] = "SEC_OVERRIDE"
            },
        }
    },



    ----------------------------------------------------------------------------------------------------
    -- this is where the weird shit begins
    ----------------------------------------------------------------------------------------------------

    --------------------------------------------------
    -- generate sequence groups
    --------------------------------------------------

    Mission_GetStage_SequenceGroup_Simple(
    "STAGE_SEQ_GROUP_1",
    "False","","TEXT_MISSION_STAGE1_OBJ","TEXT_MISSION_STAGE1_DESC",
    "container for stage 1"
    ),

    Mission_GetStage_SequenceGroup_Simple(
    "STAGE_SEQ_GROUP_CHEST",
    "True","TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.CRATE.DDS","","",
    "container for digging up the chest with new icon"
    ),



    --------------------------------------------------
    -- generate specific mission stages
    --------------------------------------------------
    
    Mission_GetStage_WaitTime("STAGE_WAIT_TIME_1",1,"False","wait 1s"),
    Mission_GetStage_WaitTime("STAGE_WAIT_TIME_10",10,"False","wait 10s"),
    Mission_GetStage_WaitTime("STAGE_WAIT_TIME_DAY",86400,"False","for testing purposes"),

    Mission_GetStage_SetCurrentMission(
    "STAGE_SET_CURRENT_SELF",
    "","False","True",
    "set this mission as active with no notification"
    ),

    Mission_GetStage_ShowMessage(
    "STAGE_SHOW_MESSAGE_TARGET",
    "Mission",0,"","INVALID_EVENT",
    4,"TEXT_MISSION_SCAN1_TARGET","",
    0.086,0.68,1,1,
    "Standard","True","False","False",
    "show OSD message on arrival"
    ),

    Mission_GetStage_StartScanEvent(
    "STAGE_START_SE_CHEST",
    "Tutorial","None","SE_CHEST",0,"False","False",
    "start scan event for chest area"
    ),

    Mission_GetStage_GetToScanEvent(
    "STAGE_GETTO_SE_CHEST",
    "TEXT_MISSION_STAGE1_TIP1A","TEXT_MISSION_STAGE1_TIP1B","TEXT_MISSION_STAGE1_TIP1C","",
    "SE_CHEST",50,"False",0,"False","SIGNAL_TIME_FAIL","OffsetWide","True","False",
    "TEXT_MISSION_STAGE1_TIP1E","TEXT_MISSION_STAGE1_TIP1F","TEXT_MISSION_STAGE1_TIP1G","TEXT_MISSION_STAGE1_TIP1H",
    "get to scan event area"
    ),

    Mission_GetStage_WaitForConditions_MissionMessage(
    "STAGE_WAIT_COND_MESSAGE",
    "TEXT_MISSION_STAGE1_TIP2","AnyTrue","MSG_TREASURE","",
    "True","False","",
    "wait for player to dig up the right chest"
    ),

    Mission_GetStage_Reward(
    "STAGE_REWARD_TREASURE",
    "","R_PROCLOOT","False","False","None",
    "give player proc gen loot"
    ),

    Mission_GetStage_ShowMissionUpdate(
    "STAGE_SHOW_NOTIF_END",
    "End","","TEXT_MISSION_STAGE1_OBJ",
    "False","True","False","False","None",
    "show mission end notification"
    ),

    Mission_GetStage_EndScanEvent(
    "STAGE_END_SE_CHEST",
    "SE_CHEST",
    "end scan event to remove the marker"
    ),



    --------------------------------------------------
    -- generate specific mission elements
    --------------------------------------------------

    Mission_GetElement_ScanEvent_Simple(
    "ELEMENT_SE_CHEST",
    "SE_CHEST","","None",500,
    "TEXT_MISSION_SCAN1_TARGET","UI_MISSIONSURVEY_HUD_SUB",
    "ObjectScan","None","Regular","Nearest","AnyShelter","None","Local",
    "TEXT_MISSION_SCAN1_OSD","TEXT_MISSION_SCAN1_SYSTEM","TEXT_MISSION_SCAN1_MARKER",
    "TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.COLLECT.DDS","VO_TUT_COORDSRECEIVED","False","",
    SETTINGS_SYSTEM_WATER
    ),

    --------------------------------------------------

    Mission_GetElement_RewardTableEntry(
    "REWARD_TABLE_TREASURE",
    "R_PROCLOOT","SelectAlways","True","False",""
    ),

    Mission_GetElement_RewardTableItem_ProceduralProduct(
    "REWARD_ITEM_LOOT_LEGENDARY",
    10,"","SeaLoot","","False","True","Rare"
    ),

    Mission_GetElement_RewardTableItem_ProceduralProduct(
    "REWARD_ITEM_LOOT_UNCOMMON",
    90,"","SeaLoot","","False","True","Uncommon"
    ),
    
    --------------------------------------------------

    Mission_GetElement_RewardTableEntry(
    "REWARD_TABLE_MESSAGE",
    "R_MESSAGE","SelectAlways","False","False",""
    ),

    Mission_GetElement_RewardTableItem_MessageID(
    "REWARD_ITEM_MESSAGE",
    50,"","MSG_TREASURE","False"
    ),

    Mission_GetElement_RewardTableItem_SpecificProduct(
    "REWARD_ITEM_LOOT_TRASH",
    50,"","None","F_TRASH_8",1,1,
    "False","False","False","False","",""
    ),  



    {
        --------------------------------------------------
        -- water mission table MBIN
        --------------------------------------------------
        ["MBIN_FILE_SOURCE"] = FILE_METADATA_MISSIONS_WATER,
        ["EXML_CHANGE_TABLE"] =
        {
            {
                -- get template of mission body from the 1st mission
                ["SKW"] = {"MissionID","WATERSTORY1",},
                ["SEC_SAVE_TO"] = "SEC_MISSION_MAIN",
            },

            {
                -- change basic mission parameters
                ["SEC_EDIT"] = "SEC_MISSION_MAIN",
                ["VCT"] = 
                {
                    {"MissionID","M_TREASURE",},
                    {"MissionClass","Secondary",},
                    {"AutoStart","None",},
                    {"CanRenounce","True",},
                },
            },

            -- set mission title, subtitle and description
            Mission_SetText("MissionTitles","TEXT_MISSION_TITLE"),
            Mission_SetText("MissionSubtitles","TEXT_MISSION_SUBTITLE"),
            Mission_SetText("MissionDescriptions","TEXT_MISSION_DESCR"),

            -- set mission icons
            Mission_SetIcon("MissionIcon","TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.COLLECT.MSHOP.DDS"),
            Mission_SetIcon("MissionIconSelected","TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.COLLECT.ON.DDS"),
            Mission_SetIcon("MissionIconNotSelected","TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.COLLECT.OFF.DDS"),
            
            -- clear out lots of data (Table relates to dialogue)
            Mission_ResetMainMissionData("Table"),
            Mission_ResetMainMissionData("ScanEvents"),
            Mission_ResetMainMissionData("Rewards"),
            Mission_ResetMainMissionData("StartingConditions"),
            Mission_ResetMainMissionData("FinalStageVersions"),
            Mission_ResetMainMissionData("Stages"),

            --------------------------------------------------

            {
                -- open scan events node, add the scan event for buried chest
                ["SEC_EDIT"] = "SEC_MISSION_MAIN",
                ["PKW"] = "ScanEvents",
                ["CREATE_HOS"] = "TRUE",
                ["SEC_ADD_NAMED"] = "ELEMENT_SE_CHEST", 
            },

            -- fill reward tables with individual rewards
            Reward_AddItemToList("REWARD_TABLE_TREASURE","REWARD_ITEM_LOOT_LEGENDARY"),
            Reward_AddItemToList("REWARD_TABLE_TREASURE","REWARD_ITEM_LOOT_UNCOMMON"),
            
            Reward_AddItemToList("REWARD_TABLE_MESSAGE","REWARD_ITEM_MESSAGE"),
            Reward_AddItemToList("REWARD_TABLE_MESSAGE","REWARD_ITEM_LOOT_TRASH"),

            -- add rewards objects to main mission
            Mission_OpenNodeInSection("SEC_MISSION_MAIN","Rewards"),
            Mission_AddReward("SEC_MISSION_MAIN","REWARD_TABLE_TREASURE"),
            Mission_AddReward("SEC_MISSION_MAIN","REWARD_TABLE_MESSAGE"),

            --------------------------------------------------

            -- prepare sequence group for digging up the chest
            Mission_OpenNodeInSection("STAGE_SEQ_GROUP_CHEST","Stages"),
            Mission_AddStageToParent("STAGE_SEQ_GROUP_CHEST","STAGE_WAIT_COND_MESSAGE"),
            Mission_AddStageToParent("STAGE_SEQ_GROUP_CHEST","STAGE_REWARD_TREASURE"),

            -- prepare primary sequence group
            Mission_OpenNodeInSection("STAGE_SEQ_GROUP_1","Stages"),
            Mission_AddStageToParent("STAGE_SEQ_GROUP_1","STAGE_WAIT_TIME_1"),
            Mission_AddStageToParent("STAGE_SEQ_GROUP_1","STAGE_START_SE_CHEST"),
            Mission_AddStageToParent("STAGE_SEQ_GROUP_1","STAGE_WAIT_TIME_1"),
            Mission_AddStageToParent("STAGE_SEQ_GROUP_1","STAGE_GETTO_SE_CHEST"),
            Mission_AddStageToParent("STAGE_SEQ_GROUP_1","STAGE_SHOW_MESSAGE_TARGET"),
            Mission_AddStageToParent("STAGE_SEQ_GROUP_1","STAGE_WAIT_TIME_1"),
            Mission_AddStageToParent("STAGE_SEQ_GROUP_1","STAGE_SEQ_GROUP_CHEST"),

            -- build main mission structure
            Mission_OpenNodeInSection("SEC_MISSION_MAIN","Stages"),                     
            Mission_AddStageToParent("SEC_MISSION_MAIN","STAGE_SET_CURRENT_SELF"),
            Mission_AddStageToParent("SEC_MISSION_MAIN","STAGE_SEQ_GROUP_1"),
            Mission_AddStageToParent("SEC_MISSION_MAIN","STAGE_WAIT_TIME_1"),
            Mission_AddStageToParent("SEC_MISSION_MAIN","STAGE_END_SE_CHEST"),
            Mission_AddStageToParent("SEC_MISSION_MAIN","STAGE_SHOW_NOTIF_END"),

            {
                -- add mission to the list
                ["PKW"] = "Missions",
                ["SEC_ADD_NAMED"] = "SEC_MISSION_MAIN",
            },
        }
    },
    }
}
}
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------