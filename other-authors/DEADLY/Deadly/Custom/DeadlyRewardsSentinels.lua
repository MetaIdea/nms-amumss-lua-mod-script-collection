AMMO_CHANCE = 0.0
HEAL_CHANCE = 0.0
CURIO_CHANCE = 0.0 -- 12
CHART_CHANCE = 0.0 -- 3/5

NANITES_MIN_MULTI = 1
NANITES_MAX_MULTI = 3

SALVAGED_GLASS_CHANCE = 3.0

-- spacecraft sentinel drop
PUGNEUM_SENTINEL_CHANCE = 10.0 -- 100.0
PUGNEUM_SENTINEL_MIN = 20    -- 20
PUGNEUM_SENTINEL_MAX = 60    -- 69

ATLANTIDEUM_SENTINEL_CHANCE = 25.0 -- 66.0
ATLANTIDEUM_SENTINEL_MIN = 24    -- 24
ATLANTIDEUM_SENTINEL_MAX = 64    -- 64

NEW_PUGNEUM_LOOT = [[
<Property name="List" value="GcRewardTableItem" _index="10">
    <Property name="PercentageChance" value="25.0" />
    <Property name="LabelID" value="" />
    <Property name="Reward" value="GcRewardSpecificSubstance">
        <Property name="GcRewardSpecificSubstance">
            <Property name="Default" value="GcDefaultMissionSubstanceEnum">
                <Property name="DefaultSubstanceType" value="None" />
            </Property>
            <Property name="ID" value="ROBOT1" />
            <Property name="AmountMin" value="20" />
            <Property name="AmountMax" value="120" />
            <Property name="DisableMultiplier" value="False" />
            <Property name="RewardAsBlobs" value="False" />
            <Property name="UseFuelMultiplier" value="False" />
            <Property name="Silent" value="False" />
            <Property name="UseMissionBoardDifficultyScale" value="False" />
        </Property>
    </Property>
</Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyRewardsSentinels.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.63",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- METADATA/REALITY/TABLES/REWARDTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        { -- don't display hive position
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_SHOW_HIVE", "Event", "DRONE_HIVE_DISABLED" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", 0.0 }, -- 100.0
                            }
                        },
                        { -- Salvaged Glass chance
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "DRONE_LOOT", "ID", "SENTINEL_LOOT" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", SALVAGED_GLASS_CHANCE }, -- 66.0
                            }
                        },
                        { -- Pugneum (spacecraft)
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "SENTINEL", "Small", "GcRewardTableItemList" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardChoice", "SelectSilent" }, -- GiveAll
                            }
                        },
                        { -- Pugneum's drop chance
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "SENTINEL", "ID", "ROBOT1" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", PUGNEUM_SENTINEL_CHANCE }, -- 100.0
                            }
                        },
                        { -- Pugneum drop amount
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "SENTINEL", "ID", "ROBOT1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", PUGNEUM_SENTINEL_MIN }, -- 20
                                { "AmountMax", PUGNEUM_SENTINEL_MAX }, -- 60
                            }
                        },
                        { -- Atlantideum's drop chance
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CORRUPT_LOOT", "ID", "ROBOT2" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", ATLANTIDEUM_SENTINEL_CHANCE }, -- 66.0
                            }
                        },
                        { -- Atlantideum amount
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CORRUPT_LOOT", "ID", "ROBOT2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", ATLANTIDEUM_SENTINEL_MIN }, -- 24
                                { "AmountMax", ATLANTIDEUM_SENTINEL_MAX }, -- 64
                            }
                        },
                        { -- ammo drop chance
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "DRONE_LOOT",   "ID", "AMMO" },
                                { "Id", "QUAD_LOOT",    "ID", "AMMO" },
                                { "Id", "MECH_LOOT",    "ID", "AMMO" },
                                { "Id", "WALKER_LOOT",  "ID", "AMMO" },
                                { "Id", "SPIDER_LOOT",  "ID", "AMMO" },
                                { "Id", "CORRUPT_LOOT", "ID", "AMMO" },
                            },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", AMMO_CHANCE }, -- 100.0
                            }
                        },
                        { -- nanites drop amount
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "DRONE_LOOT",   "Currency", "Nanites" },
                                { "Id", "QUAD_LOOT",    "Currency", "Nanites" },
                                { "Id", "MECH_LOOT",    "Currency", "Nanites" },
                                { "Id", "WALKER_LOOT",  "Currency", "Nanites" },
                                { "Id", "SPIDER_LOOT",  "Currency", "Nanites" },
                                { "Id", "CORRUPT_LOOT", "Currency", "Nanites" },
                                { "Id", "POLICELOOT",   "Currency", "Nanites" },
                                { "Id", "DE_SENT_LOOT", "Currency", "Nanites" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", NANITES_MIN_MULTI },
                                { "AmountMax", NANITES_MAX_MULTI },
                            }
                        },
                        { -- healing
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "DRONE_LOOT",   "Reward", "GcRewardShield" },
                                { "Id", "DRONE_LOOT",   "Reward", "GcRewardRefreshHazProt" },
                                { "Id", "DRONE_LOOT",   "Reward", "GcRewardHealth" },
                                { "Id", "QUAD_LOOT",    "Reward", "GcRewardShield" },
                                { "Id", "QUAD_LOOT",    "Reward", "GcRewardRefreshHazProt" },
                                { "Id", "QUAD_LOOT",    "Reward", "GcRewardHealth" },
                                { "Id", "MECH_LOOT",    "Reward", "GcRewardShield" },
                                { "Id", "MECH_LOOT",    "Reward", "GcRewardRefreshHazProt" },
                                { "Id", "MECH_LOOT",    "Reward", "GcRewardHealth" },
                                { "Id", "WALKER_LOOT",  "Reward", "GcRewardShield" },
                                { "Id", "WALKER_LOOT",  "Reward", "GcRewardRefreshHazProt" },
                                { "Id", "WALKER_LOOT",  "Reward", "GcRewardHealth" },
                                { "Id", "SPIDER_LOOT",  "Reward", "GcRewardShield" },
                                { "Id", "SPIDER_LOOT",  "Reward", "GcRewardRefreshHazProt" },
                                { "Id", "SPIDER_LOOT",  "Reward", "GcRewardHealth" },
                                { "Id", "CORRUPT_LOOT", "Reward", "GcRewardShield" },
                                { "Id", "CORRUPT_LOOT", "Reward", "GcRewardRefreshHazProt" },
                                { "Id", "CORRUPT_LOOT", "Reward", "GcRewardHealth" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", HEAL_CHANCE },
                            }
                        },
                        { -- curio
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "DE_SENT_LOOT", "ID", "WAR_CURIO1" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", CURIO_CHANCE }, -- 12
                            }
                        },
                        { -- hive map
                            ["SPECIAL_KEY_WORDS"]   = {
                                { "Id", "QUAD_LOOT",    "ID", "CHART_HIVE" },
                                { "Id", "MECH_LOOT",    "ID", "CHART_HIVE" },
                                { "Id", "WALKER_LOOT",  "ID", "CHART_HIVE" },
                                { "Id", "DE_SENT_LOOT", "ID", "CHART_HIVE" },
                            },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", CHART_CHANCE }, -- 3/3/5/3
                            }
                        },
                        { -- to compensate NoSentinelsInstantLoot.pak
                            ["SPECIAL_KEY_WORDS"]   = {
                                { "Id", "DRONE_LOOT",   "List", "GcRewardTableItemList" },
                                { "Id", "QUAD_LOOT",    "List", "GcRewardTableItemList" },
                                { "Id", "MECH_LOOT",    "List", "GcRewardTableItemList" },
                                { "Id", "WALKER_LOOT",  "List", "GcRewardTableItemList" },
                                { "Id", "SPIDER_LOOT",  "List", "GcRewardTableItemList" },
                            },
                            ["PRECEDING_KEY_WORDS"] = { "List" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = NEW_PUGNEUM_LOOT
                        },
                    }
                },
            }
        }
    }
}
