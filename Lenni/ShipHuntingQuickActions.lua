-- Actions will appear in reverse order in game
QUICK_ACTION_MENU = {
    {
        ["ID"] = "CRASHEDSHIP",
        ["EMOTE_ID"] = "CRASHEDSHIP",
        ["TITLE"] = "Locate Crashed Ship",
        ["ICON"] = "TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.DISTRESSSIGNAL.DDS",
        ["SCANEVENT"] = "DISTRESS"
    },
    {
        ["ID"] = "MTSHOP",
        ["EMOTE_ID"] = "MTSHOP",
        ["TITLE"] = "Locate Minor Settlement",
        ["ICON"] = "TEXTURES/UI/HUD/MENUS/RENDER.GUN.DDS",
        ["SCANEVENT"] = "SHOP"
    },
    {
        ["ID"] = "REVEAL_PORTAL",
        ["EMOTE_ID"] = "REVEAL_PORTAL",
        ["TITLE"] = "Locate Portal",
        ["ICON"] = "TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.PORTAL.DDS"
    },
    {
        ["ID"] = "R_BIOSHIPL",
        ["EMOTE_ID"] = "BIOSHIPL",
        ["TITLE"] = "Locate Living Ship",
        ["ICON"] = "TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FIEND.ON.DDS"
    },
    {
        ["ID"] = "R_CHART_BUILDER",
        ["EMOTE_ID"] = "CHART_BUILDER",
        ["TITLE"] = "Locate Autophage Camp",
        ["ICON"] = "TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.ROBOTHEAD.DDS"
    },
    {
        ["ID"] = "R_MONOLITH",
        ["EMOTE_ID"] = "MONOLITH",
        ["TITLE"] = "Locate Monolith",
        ["ICON"] = "TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.RUNE.DDS"
    },
    {
        ["ID"] = "R_CHART_ROBOT",
        ["EMOTE_ID"] = "CHART_ROBOT",
        ["TITLE"] = "Locate Sentinel Multi-Tool",
        ["ICON"] = "TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.ROBOTHEAD.OFF.DDS"
    },
    {
        ["ID"] = "R_SCANSENTCRASH",
        ["EMOTE_ID"] = "SCANSENTCRASH",
        ["TITLE"] = "Locate Sentinel Ship",
        ["ICON"] = "TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.SENTINELCRASH.DDS"
    },
    {
        ["ID"] = "SEC_SCN_OUTPOST",
        ["EMOTE_ID"] = "SCN_OUTPOST",
        ["TITLE"] = "Locate Trading Post",
        ["ICON"] = "TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/BUILDINGS.OUTPOST.DDS"
    },
    {
        ["ID"] = "R_SHOW_HIVEONLY",
        ["EMOTE_ID"] = "SHOW_HIVEONLY",
        ["TITLE"] = "Locate Sentinel Pillar",
        ["ICON"] = "TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.DRONEHIVE.DDS"
    }
}

ANIMS = {}
REWARDACTIONS = {}
REWARDTABLE = {}
TRIGGERS = {}
EMOTEMENU = {}

for i = 1, #QUICK_ACTION_MENU, 1 do
    local ADD_REWARDACTION = {
        {
            ["SKW"] = {"Action", "GcRewardAction"},
            ["SEC_COPY"] = "ADD_REWARDACTION" .. i
        },
        {
            ["SEC_EDIT"] = "ADD_REWARDACTION" .. i,
            ["VCT"] = {
                {"Reward", QUICK_ACTION_MENU[i].ID}
            }
        }
    }

    local ADD_TRIGGER = {
        {
            ["SKW"] = {"Components", "GcTriggerActionComponentData"},
            ["SEC_KEEP"] = "TRUE",
            ["SEC_COPY"] = "ADD_TRIGGER" .. i
        },
        {
            ["SEC_EDIT"] = "ADD_TRIGGER" .. i,
            ["VCT"] = {
                {"StateID", "BOOT"},
                {"Anim", QUICK_ACTION_MENU[i].ID},
                {"FrameStart", "0"}
            }
        },
        {
            ["SEC_EDIT"] = "ADD_TRIGGER" .. i,
            ["PKW"] = "GcCameraShakeAction",
            ["SECTION_UP"] = 1,
            ["SEC_KEEP"] = "TRUE",
            ["REMOVE"] = "SECTION"
        },
        {
            ["SEC_EDIT"] = "ADD_TRIGGER" .. i,
            ["PKW"] = "Action",
            ["SEC_PASTE"] = "ADD_REWARDACTION" .. i
        }
    }

    local ADD_ANIM = {
        {
            ["SKW"] = {"Anim", "0H_TURN_L"},
            ["SEC_COPY"] = "ADD_ANIM" .. i
        },
        {
            ["SEC_EDIT"] = "ADD_ANIM" .. i,
            ["VCT"] = {
                {"Anim", QUICK_ACTION_MENU[i].ID},
                {"Filename", "MODELS/TESTS/EFFECTTEST.ANIM.MBIN"}
            }
        },
        {
            ["SKW"] = {"Components", "TkAnimationComponentData"},
            ["PKW"] = "Anims",
            ["SEC_PASTE"] = "ADD_ANIM" .. i
        },
        {
            ["PKW"] = "Components",
            ["SEC_PASTE"] = "ADD_TRIGGER" .. i
        }
    }

    local EMOTE_ITEM = {
        {
            ["SKW"] = {"Title", "EMOTE_WAVE"},
            ["SEC_COPY"] = "ADD_EMOTE" .. i
        },
        {
            ["SEC_EDIT"] = "ADD_EMOTE" .. i,
            ["VCT"] = {
                {"Title", QUICK_ACTION_MENU[i].TITLE},
                {"ChatText", ""},
                {"ChatUsesPrefix", "false"},
                {"AvailableUnderwater", "false"},
                {"EmoteID", QUICK_ACTION_MENU[i]["EMOTE_ID"] .. 0},
                {"AnimationName", QUICK_ACTION_MENU[i].ID},
                {"Filename", QUICK_ACTION_MENU[i].ICON},
                {"MoveToCancel", "true"},
                {"RidingAnimationName", QUICK_ACTION_MENU[i].ID}
            }
        },
        {
            ["PKW"] = "Emotes",
            ["SEC_PASTE"] = "ADD_EMOTE" .. i
        },
        {
            ["SEC_EDIT"] = "ADD_EMOTE" .. i,
            ["VCT"] = {
                {"AvailableUnderwater", "true"},
                {"EmoteID", QUICK_ACTION_MENU[i]["EMOTE_ID"] .. 1},
            }
        },
        {
            ["PKW"] = "Emotes",
            ["SEC_PASTE"] = "ADD_EMOTE" .. i
        }
    }

    local REWARDITEM = {
        {
            ["SKW"] = {"GenericTable", "GcGenericRewardTableEntry"},
            ["SEC_COPY"] = "GenericReward" .. i
        },
        {
            ["SEC_EDIT"] = "GenericReward" .. i,
            ["SKW"] = {"List", "GcRewardTableItem"},
            ["REPLACE_TYPE"] = "ALL",
            ["REMOVE"] = "SECTION"
        },
        {
            ["SKW"] = {"Reward", "GcRewardScanEvent"},
            ["SECTION_UP"] = 1,
            ["SEC_COPY"] = "ScanEvent" .. i
        },
        {
            ["SEC_EDIT"] = "GenericReward" .. i,
            ["VCT"] = {
                {"Id", QUICK_ACTION_MENU[i].ID},
                {"RewardChoice", "GiveAll"},
                {"OverrideZeroSeed", "false"},
                {"UseInventoryChoiceOverride", "false"},
                {"IncrementStat", ""}
            }
        },
        {
            ["SEC_EDIT"] = "ScanEvent" .. i,
            ["VCT"] = {
                {"PercentageChance", "100"},
                {"Event", QUICK_ACTION_MENU[i].SCANEVENT},
                {"ScanEventTable", "Planet"},
                {"DoAerialScan", "false"},
                {"UseMissionIDSeedForEvent", "false"},
                {"StartDelay", "0"},
                {"UseStartDelayWhenNoAerialScan", "false"},
                {"ForceSilentFailure", "false"},
                {"FailureOSD", ""}
            }
        },
        {
            ["SEC_EDIT"] = "GenericReward" .. i,
            ["PKW"] = {"List", "List"},
            ["SEC_PASTE"] = "ScanEvent" .. i
        },
        {
            ["PKW"] = "GenericTable",
            ["SEC_PASTE"] = "GenericReward" .. i
        }
    }

    for j = 1, #ADD_REWARDACTION, 1 do
        table.insert(REWARDACTIONS, ADD_REWARDACTION[j])
    end

    for j = 1, #ADD_TRIGGER, 1 do
        table.insert(TRIGGERS, ADD_TRIGGER[j])
    end

    for j = 1, #ADD_ANIM, 1 do
        table.insert(ANIMS, ADD_ANIM[j])
    end

    for j = 1, #EMOTE_ITEM, 1 do
        table.insert(EMOTEMENU, EMOTE_ITEM[j])
    end

    if QUICK_ACTION_MENU[i].SCANEVENT then
        for j = 1, #REWARDITEM, 1 do
            table.insert(REWARDTABLE, REWARDITEM[j])
        end
    end
end

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "ShipHuntingQuickActions",
    ["MOD_AUTHOR"] = "Lenni",
    ["LUA_AUTHOR"] = "Lenni, Babscoole",
    ["MOD_DESCRIPTION"] = "Quick Action to find various POIs for ship hunters",
    ["NMS_VERSION"] = "6.04",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/HEALTHSTATION/ENTITIES/HEALTHSTATION.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] = REWARDACTIONS
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/COMMON/ROBOTS/SPIDER_QUADRUPED/ENTITIES/SPIDERQUAD.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] = TRIGGERS
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] = ANIMS
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/UI/EMOTEMENU.MBIN",
                    ["MXML_CHANGE_TABLE"] = EMOTEMENU
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SKW"] = {
                                {"Id", "R_SHOW_HIVEONLY"},
                                {"Id", "R_SCANSENTCRASH"},
                                {"Id", "R_CHART_ROBOT"},
                                {"Id", "R_CHART_BUILDER"}
                            },
                            ["VCT"] = {
                                {"DoAerialScan", "False"}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = REWARDTABLE
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/SPACEPOIMISSIONTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SKW"] = {
                                "MissionID",
                                "BIOSHIP_REPEAT",
                                "Name",
                                "UI_BIO_SHIP_LOG_REPEAT_OPT3",
                                "Rewards",
                                "R_BIOLOOP_EGG"
                            },
                            ["REMOVE"] = "LINE"
                        },
                        {
                            ["SKW"] = {"MissionID", "BIOSHIP_REPEAT", "Options", "GcAlienPuzzleOption"},
                            ["SECTION_ACTIVE"] = 0, --removing 10k nanite payment
                            ["VCT"] = {
                                {"Cost", ""}
                            }
                        },
                        {
                            ["SKW"] = {"MissionID", "BIOSHIP_REPEAT"},
                            ["PKW"] = "StartingConditions",
                            ["REMOVE"] = "SECTION",
                            ["CREATE_HOES"] = "TRUE" --this needs to be here, otherwise the section isn't removed properly
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/TABLES/STARTEDONUSEMISSIONTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SKW"] = {"MissionID", "SENTSHIP_GALMAP", "Name", "SE_SENT_GALMAP"},
                            ["VCT"] = {
                                {"SurveyDistance", "0"}
                            }
                        }
                    }
                }
            }
        }
    },
    ["ADD_FILES"] = {
        {
            ["FILE_DESTINATION"] = "MODELS/TESTS/EFFECTTEST.ANIM.MXML",
            ["FILE_CONTENT"] = [[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAnimMetadata">
  <Property name="NodeData">
    <Property name="NodeData" value="TkAnimNodeData">
      <Property name="Node" value="AnimatedTrans" />
      <Property name="RotIndex" value="0" />
      <Property name="TransIndex" value="0" />
      <Property name="ScaleIndex" value="0" />
    </Property>
  </Property>
  <Property name="AnimFrameData">
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
  </Property>
  <Property name="StillFrameData" value="TkAnimNodeFrameData">
    <Property name="Rotations">
      <Property name="Rotations" value="Quaternion">
        <Property name="X" value="0" />
        <Property name="Y" value="0" />
        <Property name="Z" value="0" />
        <Property name="W" value="1" />
        <Property name="dropComponent" value="3" />
      </Property>
    </Property>
    <Property name="Translations">
      <Property name="Translations">
        <Property name="X" value="-0.73121876" />
        <Property name="Y" value="0.08333181" />
        <Property name="Z" value="-0.02858855" />
      </Property>
    </Property>
    <Property name="Scales">
      <Property name="Scales">
        <Property name="X" value="1.000000" />
        <Property name="Y" value="1.000000" />
        <Property name="Z" value="1.000000" />
      </Property>
    </Property>
  </Property>
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="Has30HzFrames" value="false" />
</Data>
]]
        }
    }
}