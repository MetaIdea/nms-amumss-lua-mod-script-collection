Types =
{
    PRODUCT = "Product",
    SUBSTANCE = "Substance"
}

Requirements =
{
    {REQUIREMENTID = "MAGNET", REQUIREDAMOUNT = "3", REQUIREDTYPE = Types.PRODUCT},
    {REQUIREMENTID = "MICROCHIP", REQUIREDAMOUNT = "1", REQUIREDTYPE = Types.PRODUCT},
    {REQUIREMENTID = "NANOTUBES", REQUIREDAMOUNT = "2", REQUIREDTYPE = Types.PRODUCT}
}

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] 	    = "ScrapyardScanner",
    ["MOD_AUTHOR"]		    = "Aristotale",
    ["LUA_AUTHOR"]		    = "Aristotale",
    ["NMS_VERSION"]		    = "6.x",
    ["MOD_DESCRIPTION"]     = "Scan the local planet and nearby systems for a scrapyard",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/CONSUMABLEITEMTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SCANNING/SCANEVENTTABLEPLANET.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/STARTEDONUSEMISSIONTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/UNLOCKABLEITEMTREES.MBIN",
                    ["MXML_CHANGE_TABLE"] = {}
                }
            }
        }
    }
}

local ProductTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]
local ConsumableTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]
local RewardTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["MXML_CHANGE_TABLE"]
local PlanetScanEventTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["MXML_CHANGE_TABLE"]
local MissionTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["MXML_CHANGE_TABLE"]
local UnlockableResearchTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][6]["MXML_CHANGE_TABLE"]

function CreateRequirement(Requirement)
    local RequirementID = Requirement.REQUIREMENTID
    local RequirementAmount = Requirement.REQUIREDAMOUNT
    local RequirementInventoryType = Requirement.REQUIREDTYPE

    ProductTable[#ProductTable + 1] =
    {
        SPECIAL_KEY_WORDS = {"ID", "CASING", "Requirements", "GcTechnologyRequirement"},
        SEC_SAVE_TO = "SINGLE_REQUIREMENT"
    }
    ProductTable[#ProductTable + 1] =
    {
        SEC_EDIT = "SINGLE_REQUIREMENT",
        VALUE_CHANGE_TABLE =
        {
            {"ID", RequirementID},
            {"InventoryType", RequirementInventoryType},
            {"Amount", RequirementAmount}
        }
    }
    ProductTable[#ProductTable + 1] =
    {
        SEC_EDIT = "PRODUCT_REQUIREMENTS",
        ADD_OPTION = "ADDafterSECTION",
        SEC_ADD_NAMED = "SINGLE_REQUIREMENT"
    }
end

function CreateRequirementSections(Requirements)
    ProductTable[#ProductTable + 1] =
    {
        SEC_EMPTY = "PRODUCT_REQUIREMENTS"
    }

    for i = 1, #Requirements do
        CreateRequirement(Requirements[i])
    end
end

function CreateProduct()
    CreateRequirementSections(Requirements)

    ProductTable[#ProductTable + 1] =
    {
        SPECIAL_KEY_WORDS = {"ID", "SENTFREI_PROD"},
        SEC_SAVE_TO = "SCRAP_SCAN_SEC"
    }
    ProductTable[#ProductTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_SEC",
        VALUE_CHANGE_TABLE =
        {
            {"ID", "SCRAP_SCAN"},
            {"Name","UI_SCRAP_SCAN_NAME",},
            {"NameLower","UI_SCRAP_SCAN_NAME_L",},
            {"PinObjectiveTip", "UI_PIN_SCRAPYARD_OBJ_TIP"},
            {"Subtitle","UI_SCRAP_SCAN_SUB",},
            {"Description","UI_SCRAP_SCAN_DESC",},
            {"IsCraftable", "True"},
            {"RecipeCost", 1},
        }
    }
    ProductTable[#ProductTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_SEC",
        PKW = {"Requirements"},
        CREATE_HOS = "TRUE",
        SEC_ADD_NAMED = "PRODUCT_REQUIREMENTS"
    }
    ProductTable[#ProductTable + 1] =
    {
        PKW = {"Table"},
        ADD_OPTION = "ADDendSECTION",
        SEC_ADD_NAMED = "SCRAP_SCAN_SEC"
    }
end

function CreateProductResearchEntry()
    UnlockableResearchTable[#UnlockableResearchTable + 1] =
    {
        SPECIAL_KEY_WORDS = {'Unlockable', 'T_WALL_Q_H'},
        SEC_SAVE_TO = "ITEM_TREE_SEC"
    }
    UnlockableResearchTable[#UnlockableResearchTable + 1] =
    {
        SEC_EDIT = "ITEM_TREE_SEC",
        VALUE_CHANGE_TABLE =
        {
            {"Unlockable", "SCRAP_SCAN"}
        }
    }
    UnlockableResearchTable[#UnlockableResearchTable + 1] =
    {
        SPECIAL_KEY_WORDS = {"Unlockable", "PRODFUEL2"},
        PRECEDING_KEY_WORDS = {"Children"},
        SEC_ADD_NAMED = "ITEM_TREE_SEC"
    }

end
function CreateConsumable()
    ConsumableTable[#ConsumableTable + 1] =
    {
        SPECIAL_KEY_WORDS = {"ID","SENTFREI_PROD"},
        SEC_SAVE_TO = "SCRAP_SCAN_CONSUME_SEC"
    }
    ConsumableTable[#ConsumableTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_CONSUME_SEC",
        VALUE_CHANGE_TABLE =
        {
            {"ID", "SCRAP_SCAN"},
            {"RewardID","R_SCRAPSCAN",},
            {"ButtonLocID","UI_SCRAPSCAN_LABEL"},
            {"ButtonSubLocID","UI_SCRAPSCAN_LABEL_SUB"},
            {"DestroyItemWhenConsumed","false"}
        }
    }
    ConsumableTable[#ConsumableTable + 1] =
    {
        PKW = {"Table"},
        ADD_OPTION = "ADDendSECTION",
        SEC_ADD_NAMED = "SCRAP_SCAN_CONSUME_SEC"
    }
end

function CreateReward()
    RewardTable[#RewardTable + 1] =
    {
        SPECIAL_KEY_WORDS = {"Id","R_SCANSENTCRASH"},
        SEC_SAVE_TO = "SCRAP_SCAN_REWARD_SEC"
    }
    RewardTable[#RewardTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_REWARD_SEC",
        VALUE_CHANGE_TABLE =
        {
            {"ID", "R_SCRAPSCAN"},
        }
    }
    RewardTable[#RewardTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_REWARD_SEC",
        SKW = {"Event","SENT_CRASH_CORRUPT",},
        VALUE_CHANGE_TABLE =
        {
            {"Event", "FIND_SCRAP_YARD"},
            {"DoAerialScan", "false"},
        }
    }
    RewardTable[#RewardTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_REWARD_SEC",
        SKW = {"Mission","SENTSHIP_GALMAP",},
        VALUE_CHANGE_TABLE =
        {
            {"Mission","SCRAPYD_GALMAP"},
        }
    }
    RewardTable[#RewardTable + 1] =
    {
        PKW = {"SpecialRewardTable"},
        ADD_OPTION = "ADDendSECTION",
        SEC_ADD_NAMED = "SCRAP_SCAN_REWARD_SEC"
    }
end

function CreatePlanetScanEvent()
    PlanetScanEventTable[#PlanetScanEventTable + 1] =
    {
        SPECIAL_KEY_WORDS = {"Name","SENT_CRASH_CORRUPT"},
        SEC_SAVE_TO = "SCRAP_SCAN_EVENT_SEC"
    }
    PlanetScanEventTable[#PlanetScanEventTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_EVENT_SEC",
        VALUE_CHANGE_TABLE =
        {
            {"Name", "FIND_SCRAP_YARD"},
            {"BuildingClass","ScrapYard",},
            {"OSDMessage","UI_SCRAPYARD_REVEAL_OSD",},
            {"InterstellarOSDMessage","UI_SCRAPYARD_REVEAL_INTERSTELLAROSD",},
            {"MarkerLabel","UI_SCRAPYARD_REVEAL_MARKER",},
            {"TooltipMessage","UI_SCRAPYARD_REVEAL_MSG",},
        }
    }
    PlanetScanEventTable[#PlanetScanEventTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_EVENT_SEC",
        SKW = {"Filename","TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SENTINELCRASH.DDS"},
        VALUE_CHANGE_TABLE =
        {
            {"Filename","TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.SCRAPYARD.DDS"},
        }
    }
    PlanetScanEventTable[#PlanetScanEventTable + 1] =
    {
        PKW = {"Events"},
        ADD_OPTION = "ADDendSECTION",
        SEC_ADD_NAMED = "SCRAP_SCAN_EVENT_SEC"
    }
end

function CreateMission()
    MissionTable[#MissionTable + 1] =
    {
        SPECIAL_KEY_WORDS = {"MissionID","SENTSHIP_GALMAP",},
        SEC_SAVE_TO = "SCRAP_SCAN_MISSION_SEC"
    }
    MissionTable[#MissionTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_MISSION_SEC",
        SPECIAL_KEY_WORDS = {"MissionID","SENTSHIP_GALMAP",},
        VALUE_CHANGE_TABLE =
        {
            {"MissionID","SCRAPYD_GALMAP"},
            {"BuildingClass","ScrapYard",},
        }
    }
    MissionTable[#MissionTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_MISSION_SEC",
        SPECIAL_KEY_WORDS = {"Name","SE_SENT_GALMAP",},
        VALUE_CHANGE_TABLE =
        {
            {"Name","SE_SCPYD_GALMAP",},
        }
    }
    MissionTable[#MissionTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_MISSION_SEC",
        SKW = {"Format","UI_SENTINEL_GALMAP_TITLE",},
        VALUE_CHANGE_TABLE =
        {
            {"Format","UI_SCRAPYARD_GALMAP_TITLE",},
        }
    }
    MissionTable[#MissionTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_MISSION_SEC",
        SKW = {"Format","UI_SENTINEL_GALMAP_SUB",},
        VALUE_CHANGE_TABLE =
        {
            {"Format","UI_SCRAPYARD_GALMAP_SUB",},
        }
    }
    MissionTable[#MissionTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_MISSION_SEC",
        SKW = {"Format","UI_SENTINEL_GALMAP_DESC",},
        VALUE_CHANGE_TABLE =
        {
            {"Format","UI_SCRAPYARD_GALMAP_DESC",},
        }
    }
    MissionTable[#MissionTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_MISSION_SEC",
        SKW = {"ObjectiveTipID","UI_SENTINEL_GALMAP_OBJ_TIP",},
        VALUE_CHANGE_TABLE =
        {
            {"ObjectiveTipID","UI_SCRAPYARD_GALMAP_OBJ_TIP",},
            {"ObjectiveID","UI_SCRAPYARD_GALMAP_OBJ",},
        }
    }
    MissionTable[#MissionTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_MISSION_SEC",
        SKW = {"FormattableObjectiveTip","UI_SENTINEL_GALMAP_OBJ_TIP",},
        VALUE_CHANGE_TABLE =
        {
            {"FormattableObjectiveTip","UI_SCRAPYARD_GALMAP_OBJ_TIP",},
            {"FormattableObjective","UI_SCRAPYARD_GALMAP_OBJ",},
        }
    }
    MissionTable[#MissionTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_MISSION_SEC",
        SKW = {"InterstellarOSDMessage","UI_SENTINEL_DISTRESS_OSD_MAP",},
        VALUE_CHANGE_TABLE =
        {
            {"InterstellarOSDMessage","UI_SCRAPYARD_OSD_MAP",},
            {"OSDMessage","UI_SCRAPYARD_REVEAL_OSD",},
            {"SurveyDiscoveryOSDMessage","UI_SCRAPYARD_MARKER_DISC_OSD",},
            {"MarkerLabel","UI_MP_SCRAPYARD_PLANET_LABEL",},
        }
    }
    MissionTable[#MissionTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_MISSION_SEC",
        SKW = {"Stage","GcMissionSequenceGetToScanEvent",},
        VALUE_CHANGE_TABLE =
        {
            {"Message","UI_SCRAPYARD_GALMAP_MSG1",},
            {"GalaxyMapMessage","UI_SCRAPYARD_GALMAP_MSG2",},
            {"SurveyInactiveHint","UI_SCRAPYARD_GALMAP_SURVEY_OFF",},
            {"SurveySwapHint","UI_SCRAPYARD_GALMAP_SURVEY_SWP",},
            {"SurveyHint","UI_SCRAPYARD_GALMAP_SURVEY",},
            {"SurveyVehicleHint","UI_SCRAPYARD_GALMAP_SURVEY_CAR",},
            {"DebugText","reach the scrapyard site",},
        }
    }
    MissionTable[#MissionTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_MISSION_SEC",
        SKW = {"Filename","TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.SENTINELCRASH.DDS",},
        VALUE_CHANGE_TABLE =
        {
            {"Filename","TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.SCRAPYARD.DDS",},
        }
    }
    MissionTable[#MissionTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_MISSION_SEC",
        SPECIAL_KEY_WORDS = {"Filename","TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SENTINELCRASH.ON.DDS",},
        VALUE_CHANGE_TABLE =
        {
            {"Filename","TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SCRAPYARD.ON.DDS",},
        }
    }
    MissionTable[#MissionTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_MISSION_SEC",
        SPECIAL_KEY_WORDS = {"Filename","TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SENTINELCRASH.OFF.DDS",},
        VALUE_CHANGE_TABLE =
        {
            {"Filename","TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.SCRAPYARD.OFF.DDS",},
        }
    }
    MissionTable[#MissionTable + 1] =
    {
        SEC_EDIT = "SCRAP_SCAN_MISSION_SEC",
        SKW = {"Filename","TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.SENTINELCRASH.DDS",},
        VALUE_CHANGE_TABLE =
        {
            {"Filename","TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.SCRAPYARD.DDS",},
        }
    }

    MissionTable[#MissionTable + 1] =
    {
        PKW = {"Missions"},
        ADD_OPTION = "ADDendSECTION",
        SEC_ADD_NAMED = "SCRAP_SCAN_MISSION_SEC",
    }
end

CreateProduct()
CreateProductResearchEntry()
CreateConsumable()
CreateReward()
CreatePlanetScanEvent()
CreateMission()