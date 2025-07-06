-- Warp Hypercore
HYPERFUEL2_CHANCE = 50.0
HYPERFUEL2_MIN = 1
HYPERFUEL2_MAX = 3
-- technologies
TRADERLOOT_TECH_CHANCE = 25.0
-- why??? in space??
RUSTED_METAL_CHANCE = 0.0
RUSTED_METAL_MIN = 99
RUSTED_METAL_MAX = 299

TRADE_PROD_T1_CHANCE = 75.0
TRADE_PROD_T1_MIN = 15
TRADE_PROD_T1_MAX = 25

TRADE_PROD_T2_CHANCE = 30.0
TRADE_PROD_T2_MIN = 15
TRADE_PROD_T2_MAX = 25

TRADE_PROD_T3_CHANCE = 10.0
TRADE_PROD_T3_MIN = 3
TRADE_PROD_T3_MAX = 5

TRADE_PROD_T4_CHANCE = 3.0
TRADE_PROD_T4_MIN = 1
TRADE_PROD_T4_MAX = 3

TRADE_PROD_T5_CHANCE = 1.0
TRADE_PROD_T5_MIN = 1
TRADE_PROD_T5_MAX = 1

--[[
    Default list:
    TRA_ALLOY1
    TRA_MINERALS1
    TRA_EXOTICS1
    TRA_COMMODITY2
--]]

local function Create_GcRewardTableItem(ID, MIN, MAX, CHANCE, INDEX)
    return [[
<Property name="List" value="GcRewardTableItem" _index="]] .. INDEX .. [[">
    <Property name="PercentageChance" value="]] .. CHANCE .. [[" />
    <Property name="LabelID" value="" />
    <Property name="Reward" value="GcRewardSpecificProduct">
        <Property name="GcRewardSpecificProduct">
            <Property name="Default" value="GcDefaultMissionProductEnum">
                <Property name="DefaultProductType" value="None" />
            </Property>
            <Property name="ID" value="]] .. ID .. [[" />
            <Property name="AmountMin" value="]] .. MIN .. [[" />
            <Property name="AmountMax" value="]] .. MAX .. [[" />
            <Property name="HideAmountInMessage" value="False" />
            <Property name="ForceSpecialMessage" value="False" />
            <Property name="HideInSeasonRewards" value="False" />
            <Property name="Silent" value="False" />
            <Property name="SeasonRewardListFormat" value="" />
            <Property name="RequiresTech" value="" />
        </Property>
    </Property>
</Property>
]]
end

local TRADERLOOT_NEW_PRODUCTS_TABLE = {
    Create_GcRewardTableItem("TRA_COMMODITY1", 15, 25, 100.0, 10),
    Create_GcRewardTableItem("TRA_COMPONENT1", 15, 25, 100.0, 11),
    Create_GcRewardTableItem("TRA_ENERGY1", 15, 25, 100.0, 12),
    Create_GcRewardTableItem("TRA_TECH1", 15, 25, 100.0, 13),
    Create_GcRewardTableItem("TRA_ALLOY2", 15, 25, 100.0, 14),
    Create_GcRewardTableItem("TRA_COMPONENT2", 15, 25, 100.0, 15),
    Create_GcRewardTableItem("TRA_ENERGY2", 15, 25, 100.0, 16),
    Create_GcRewardTableItem("TRA_EXOTICS2", 15, 25, 100.0, 17),
    Create_GcRewardTableItem("TRA_MINERALS2", 15, 25, 100.0, 18),
    Create_GcRewardTableItem("TRA_TECH2", 15, 25, 100.0, 19),
    Create_GcRewardTableItem("TRA_ALLOY3", 1, 5, 3.0, 20),
    Create_GcRewardTableItem("TRA_COMMODITY3", 1, 5, 3.0, 21),
    Create_GcRewardTableItem("TRA_COMPONENT3", 1, 5, 3.0, 22),
    Create_GcRewardTableItem("TRA_ENERGY3", 1, 5, 3.0, 22),
    Create_GcRewardTableItem("TRA_EXOTICS3", 1, 5, 3.0, 23),
    Create_GcRewardTableItem("TRA_MINERALS3", 1, 5, 3.0, 24),
    Create_GcRewardTableItem("TRA_TECH3", 1, 5, 3.0, 25),
    Create_GcRewardTableItem("TRA_ALLOY4", 1, 3, 2.0, 26),
    Create_GcRewardTableItem("TRA_COMMODITY4", 1, 3, 2.0, 27),
    Create_GcRewardTableItem("TRA_COMPONENT4", 1, 3, 2.0, 28),
    Create_GcRewardTableItem("TRA_ENERGY4", 1, 3, 2.0, 29),
    Create_GcRewardTableItem("TRA_EXOTICS4", 1, 3, 2.0, 30),
    Create_GcRewardTableItem("TRA_MINERALS4", 1, 3, 2.0, 31),
    Create_GcRewardTableItem("TRA_TECH4", 1, 3, 2.0, 32),
    Create_GcRewardTableItem("TRA_ALLOY5", 1, 1, 1.0, 33),
    Create_GcRewardTableItem("TRA_COMMODITY5", 1, 1, 1.0, 34),
    Create_GcRewardTableItem("TRA_COMPONENT5", 1, 1, 1.0, 35),
    Create_GcRewardTableItem("TRA_ENERGY5", 1, 1, 1.0, 36),
    Create_GcRewardTableItem("TRA_EXOTICS5", 1, 1, 1.0, 37),
    Create_GcRewardTableItem("TRA_MINERALS5", 1, 1, 1.0, 38),
    Create_GcRewardTableItem("TRA_TECH5", 1, 1, 1.0, 39),
}

local TRADERLOOT_NEW_PRODUCTS = table.concat(TRADERLOOT_NEW_PRODUCTS_TABLE, "\n")


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyRewardsTrader.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.63",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- allow no loot given by killing traders
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "TRADERLOOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardChoice", "SelectSilent" }, -- SelectAlways
                            }
                        },
                        -- no nanites
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "TRADERLOOT", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 3,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", 0.0 }, -- 100.0
                            }
                        },
                        -- Warp Hypercore
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "TRADERLOOT", "ID", "HYPERFUEL2" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", HYPERFUEL2_CHANCE }, -- 100.0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "TRADERLOOT", "ID", "HYPERFUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", HYPERFUEL2_MIN }, -- 1
                                { "AmountMax", HYPERFUEL2_MAX }, -- 1
                            }
                        },
                        -- technologies
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "TRADERLOOT", "Group", "SHIPJUMP_NAME_L" },
                                { "Id", "TRADERLOOT", "Group", "LAUNCHER_NAME_L" },
                                { "Id", "TRADERLOOT", "Group", "SHIPSHIELD_NAME_L" },
                            },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", TRADERLOOT_TECH_CHANCE }, -- 100.0
                            }
                        },
                        -- Rusted Metal
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "TRADERLOOT", "ID", "SPACEGUNK3" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", RUSTED_METAL_CHANCE }, -- 100.0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "TRADERLOOT", "ID", "SPACEGUNK3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", RUSTED_METAL_MIN }, -- 99
                                { "AmountMax", RUSTED_METAL_MAX }, -- 299
                            }
                        },
                        -- add our products first to change their chance/min/max dynamically later below
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "Id", "TRADERLOOT", "List", "GcRewardTableItemList" },
                            ["PRECEDING_KEY_WORDS"] = { "List" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = TRADERLOOT_NEW_PRODUCTS
                        },
                        -- trade products tier 1
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "TRADERLOOT", "ID", "TRA_ALLOY1" },
                                { "Id", "TRADERLOOT", "ID", "TRA_MINERALS1" },
                                { "Id", "TRADERLOOT", "ID", "TRA_EXOTICS1" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMMODITY1" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMPONENT1" },
                                { "Id", "TRADERLOOT", "ID", "TRA_ENERGY1" },
                                { "Id", "TRADERLOOT", "ID", "TRA_TECH1" },
                            },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", TRADE_PROD_T1_CHANCE }, -- 100
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "TRADERLOOT", "ID", "TRA_ALLOY1" },
                                { "Id", "TRADERLOOT", "ID", "TRA_MINERALS1" },
                                { "Id", "TRADERLOOT", "ID", "TRA_EXOTICS1" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMMODITY1" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMPONENT1" },
                                { "Id", "TRADERLOOT", "ID", "TRA_ENERGY1" },
                                { "Id", "TRADERLOOT", "ID", "TRA_TECH1" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", TRADE_PROD_T1_MIN }, -- 15
                                { "AmountMax", TRADE_PROD_T1_MAX }, -- 25
                            }
                        },
                        -- trade products tier 2
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "TRADERLOOT", "ID", "TRA_COMMODITY2" },
                                { "Id", "TRADERLOOT", "ID", "TRA_ALLOY2" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMPONENT2" },
                                { "Id", "TRADERLOOT", "ID", "TRA_ENERGY2" },
                                { "Id", "TRADERLOOT", "ID", "TRA_EXOTICS2" },
                                { "Id", "TRADERLOOT", "ID", "TRA_MINERALS2" },
                                { "Id", "TRADERLOOT", "ID", "TRA_TECH2" },
                            },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", TRADE_PROD_T2_CHANCE }, -- 100
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "TRADERLOOT", "ID", "TRA_COMMODITY2" },
                                { "Id", "TRADERLOOT", "ID", "TRA_ALLOY2" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMPONENT2" },
                                { "Id", "TRADERLOOT", "ID", "TRA_ENERGY2" },
                                { "Id", "TRADERLOOT", "ID", "TRA_EXOTICS2" },
                                { "Id", "TRADERLOOT", "ID", "TRA_MINERALS2" },
                                { "Id", "TRADERLOOT", "ID", "TRA_TECH2" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", TRADE_PROD_T2_MIN }, -- 15
                                { "AmountMax", TRADE_PROD_T2_MAX }, -- 25
                            }
                        },
                        -- trade products tier 3
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "TRADERLOOT", "ID", "TRA_ALLOY3" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMMODITY3" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMPONENT3" },
                                { "Id", "TRADERLOOT", "ID", "TRA_ENERGY3" },
                                { "Id", "TRADERLOOT", "ID", "TRA_EXOTICS3" },
                                { "Id", "TRADERLOOT", "ID", "TRA_MINERALS3" },
                                { "Id", "TRADERLOOT", "ID", "TRA_TECH3" },
                            },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", TRADE_PROD_T3_CHANCE }, -- 3
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "TRADERLOOT", "ID", "TRA_ALLOY3" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMMODITY3" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMPONENT3" },
                                { "Id", "TRADERLOOT", "ID", "TRA_ENERGY3" },
                                { "Id", "TRADERLOOT", "ID", "TRA_EXOTICS3" },
                                { "Id", "TRADERLOOT", "ID", "TRA_MINERALS3" },
                                { "Id", "TRADERLOOT", "ID", "TRA_TECH3" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", TRADE_PROD_T3_MIN }, -- 1
                                { "AmountMax", TRADE_PROD_T3_MAX }, -- 5
                            }
                        },
                        -- trade products tier 4
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "TRADERLOOT", "ID", "TRA_ALLOY4" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMMODITY4" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMPONENT4" },
                                { "Id", "TRADERLOOT", "ID", "TRA_ENERGY4" },
                                { "Id", "TRADERLOOT", "ID", "TRA_EXOTICS4" },
                                { "Id", "TRADERLOOT", "ID", "TRA_MINERALS4" },
                                { "Id", "TRADERLOOT", "ID", "TRA_TECH4" },
                            },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", TRADE_PROD_T4_CHANCE }, -- 2
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "TRADERLOOT", "ID", "TRA_ALLOY4" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMMODITY4" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMPONENT4" },
                                { "Id", "TRADERLOOT", "ID", "TRA_ENERGY4" },
                                { "Id", "TRADERLOOT", "ID", "TRA_EXOTICS4" },
                                { "Id", "TRADERLOOT", "ID", "TRA_MINERALS4" },
                                { "Id", "TRADERLOOT", "ID", "TRA_TECH4" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", TRADE_PROD_T4_MIN }, -- 1
                                { "AmountMax", TRADE_PROD_T4_MAX }, -- 3
                            }
                        },
                        -- trade products tier 5
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "TRADERLOOT", "ID", "TRA_ALLOY5" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMMODITY5" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMPONENT5" },
                                { "Id", "TRADERLOOT", "ID", "TRA_ENERGY5" },
                                { "Id", "TRADERLOOT", "ID", "TRA_EXOTICS5" },
                                { "Id", "TRADERLOOT", "ID", "TRA_MINERALS5" },
                                { "Id", "TRADERLOOT", "ID", "TRA_TECH5" },
                            },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", TRADE_PROD_T5_CHANCE }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "TRADERLOOT", "ID", "TRA_ALLOY5" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMMODITY5" },
                                { "Id", "TRADERLOOT", "ID", "TRA_COMPONENT5" },
                                { "Id", "TRADERLOOT", "ID", "TRA_ENERGY5" },
                                { "Id", "TRADERLOOT", "ID", "TRA_EXOTICS5" },
                                { "Id", "TRADERLOOT", "ID", "TRA_MINERALS5" },
                                { "Id", "TRADERLOOT", "ID", "TRA_TECH5" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", TRADE_PROD_T5_MIN }, -- 1
                                { "AmountMax", TRADE_PROD_T5_MAX }, -- 1
                            }
                        },
                    }
                },
            }
        }
    }
}
