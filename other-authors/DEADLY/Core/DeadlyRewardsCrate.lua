--[[
    PRODFUEL2:   Life Support Gel
    JELLY:       Di-hydrogen Jelly
    HYPERFUEL1:  Warp Cell
    AM_HOUSING:  Antimatter Housing
    LAUNCHSUB:   Di-hydrogen
    FUEL1:       Carbon
    FUEL2:       Condensed Carbon
    CATALYST1:   Sodium
    CATALYST2:   Nitrous Oxide
--]]

CURIO_CHANCE_100 = 3
CURIO_CHANCE_50 = 2
CURIO_CHANCE_15 = 1

POWERCELL_CHANCE_30 = 10
POWERCELL_CHANCE_50 = 15
POWERCELL_CHANCE_100 = 25
POWERCELL_MIN = 1
POWERCELL_MAX = 10

SUBSTANCE_CHANCE_30 = 6
SUBSTANCE_CHANCE_50 = 10
SUBSTANCE_CHANCE_100 = 20
SUBSTANCE_CHANCE_HIGH = 20
SUBSTANCE_CHANCE_LOW = 10

AMMO_DELIM = 2
AMMO_CHANCE_100 = 3
AMMO_CHANCE_75 = 1

PRODUCT_CHANCE_30 = 3
PRODUCT_CHANCE_40 = 4
PRODUCT_CHANCE_50 = 5
PRODUCT_CHANCE_100 = 10

LAUNCHFUEL_CHANCE_100 = 10

HYPERFUEL1_MIN = 1
HYPERFUEL1_MAX = 3

LIFEGEL_MIN = 1
LIFEGEL_MAX = 5

DEBRIS_RARE_LARGE_BONUS = [[
<Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="10" />
    <Property name="LabelID" value="" />
    <Property name="Reward" value="GcRewardSpecificProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
            <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="ID" value="POWERCELL" />
        <Property name="AmountMin" value="10" />
        <Property name="AmountMax" value="10" />
        <Property name="HideAmountInMessage" value="False" />
        <Property name="ForceSpecialMessage" value="False" />
        <Property name="HideInSeasonRewards" value="False" />
        <Property name="Silent" value="False" />
        <Property name="SeasonRewardListFormat" value="" />
        <Property name="RequiresTech" value="" />
    </Property>
</Property>
<Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="10" />
    <Property name="LabelID" value="" />
    <Property name="Reward" value="GcRewardSpecificProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
            <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="ID" value="SHIPCHARGE" />
        <Property name="AmountMin" value="10" />
        <Property name="AmountMax" value="10" />
        <Property name="HideAmountInMessage" value="False" />
        <Property name="ForceSpecialMessage" value="False" />
        <Property name="HideInSeasonRewards" value="False" />
        <Property name="Silent" value="False" />
        <Property name="SeasonRewardListFormat" value="" />
        <Property name="RequiresTech" value="" />
    </Property>
</Property>
<Property value="GcRewardTableItem.xml">
    <Property name="PercentageChance" value="10" />
    <Property name="LabelID" value="" />
    <Property name="Reward" value="GcRewardSpecificProduct.xml">
        <Property name="Default" value="GcDefaultMissionProductEnum.xml">
            <Property name="DefaultProductType" value="None" />
        </Property>
        <Property name="ID" value="PRODFUEL2" />
        <Property name="AmountMin" value="5" />
        <Property name="AmountMax" value="5" />
        <Property name="HideAmountInMessage" value="False" />
        <Property name="ForceSpecialMessage" value="False" />
        <Property name="HideInSeasonRewards" value="False" />
        <Property name="Silent" value="False" />
        <Property name="SeasonRewardListFormat" value="" />
        <Property name="RequiresTech" value="" />
    </Property>
</Property>
]]


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyRewardsCrate.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.44",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA\REALITY\TABLES\REWARDTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE",  "Common", "GcRewardTableCategory.xml" },
                                { "Id", "CRATE",  "Rare",   "GcRewardTableCategory.xml", "Small",  "GcRewardTableItemList.xml" },
                                { "Id", "CRATE",  "Rare",   "GcRewardTableCategory.xml", "Large",  "GcRewardTableItemList.xml" },
                                { "Id", "BARREL", "Common", "GcRewardTableCategory.xml", "Medium", "GcRewardTableItemList.xml" },
                                { "Id", "BARREL", "Rare",   "GcRewardTableCategory.xml", "Medium", "GcRewardTableItemList.xml" },
                                { "Id", "DEBRIS", "Common", "GcRewardTableCategory.xml", "Large",  "GcRewardTableItemList.xml" },
                                { "Id", "DEBRIS", "Rare",   "GcRewardTableCategory.xml", "Medium", "GcRewardTableItemList.xml" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "False",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "OverrideZeroSeed", "True" }, -- False
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE",  "Common", "GcRewardTableCategory.xml" },
                                { "Id", "BARREL", "Common", "GcRewardTableCategory.xml", "Medium", "GcRewardTableItemList.xml" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "Select",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardChoice", "SelectSilent" }, -- Select
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE",  "Rare",   "GcRewardTableCategory.xml", "Small",  "GcRewardTableItemList.xml" },
                                { "Id", "CRATE",  "Rare",   "GcRewardTableCategory.xml", "Large",  "GcRewardTableItemList.xml" },
                                { "Id", "BARREL", "Rare",   "GcRewardTableCategory.xml", "Medium", "GcRewardTableItemList.xml" },
                                { "Id", "DEBRIS", "Common", "GcRewardTableCategory.xml", "Large",  "GcRewardTableItemList.xml" },
                                { "Id", "DEBRIS", "Rare",   "GcRewardTableCategory.xml", "Medium", "GcRewardTableItemList.xml" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "SelectAlways",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardChoice", "SelectSilent" }, -- SelectAlways
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE", "Common", "GcRewardTableCategory.xml" },
                                { "Id", "DEBRIS", "Rare",   "GcRewardTableCategory.xml", "Large",  "GcRewardTableItemList.xml" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "GiveAll",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardChoice", "SelectSilent" }, -- GiveAll
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "DEBRIS", "Common", "GcRewardTableCategory.xml", "Small",  "GcRewardTableItemList.xml" },
                                { "Id", "DEBRIS", "Common", "GcRewardTableCategory.xml", "Medium", "GcRewardTableItemList.xml" },
                                --{ "Id", "DEBRIS", "Rare",   "GcRewardTableCategory.xml", "Large",  "GcRewardTableItemList.xml" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "GiveAll",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardChoice", "GiveAllSilent" }, -- GiveAll
                            }
                        },
                        -- race artefacts
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE", "ID", "TRA_CURIO1" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["SECTION_UP"]         = 1,
                            ["VALUE_MATCH"]        = "100",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", CURIO_CHANCE_100 },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE", "ID", "EXP_CURIO1" },
                                { "Id", "CRATE", "ID", "WAR_CURIO1" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["SECTION_UP"]         = 1,
                            ["VALUE_MATCH"]        = "50",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", CURIO_CHANCE_50 },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE", "ID", "TRA_CURIO2" },
                                { "Id", "CRATE", "ID", "EXP_CURIO2" },
                                { "Id", "CRATE", "ID", "WAR_CURIO2" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["SECTION_UP"]         = 1,
                            ["VALUE_MATCH"]        = "15",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", CURIO_CHANCE_15 },
                            }
                        },
                        --
                        -- Substances
                        --
                        {
                            ["FOREACH_SKW_GROUP"]   = {
                                { "Id", "CRATE",  "ID",     "FUEL2" },
                                { "Id", "CRATE",  "ID",     "CATALYST1" },
                                { "Id", "CRATE",  "ID",     "CATALYST2" },
                                { "Id", "DEBRIS", "ID",     "FUEL2" },
                                { "Id", "DEBRIS", "Reward", "GcRewardSubstance.xml" },
                                { "Id", "DEBRIS", "ID",     "CATALYST1" },
                                { "Id", "DEBRIS", "ID",     "OXYGEN" },
                                { "Id", "DEBRIS", "ID",     "ASTEROID2" },
                            },
                            ["REPLACE_TYPE"]        = "ALL",
                            ["SECTION_UP"]          = 1,
                            ["VALUE_MATCH"]         = "50",
                            ["VALUE_MATCH_OPTIONS"] = ">",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "PercentageChance", SUBSTANCE_CHANCE_HIGH },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]   = {
                                { "Id", "CRATE", "ID", "FUEL2" },
                                { "Id", "CRATE", "ID", "CATALYST1" },
                                { "Id", "CRATE", "ID", "OXYGEN" },
                                { "Id", "CRATE", "ID", "CATALYST2" },
                            },
                            ["REPLACE_TYPE"]        = "ALL",
                            ["SECTION_UP"]          = 1,
                            ["VALUE_MATCH"]         = "50",
                            ["VALUE_MATCH_OPTIONS"] = "<=",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "PercentageChance", SUBSTANCE_CHANCE_LOW },
                            }
                        },
                        -- ???
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "TUT_GOODS", "ID", "CATALYST2" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["SECTION_UP"]         = 1,
                            ["VALUE_MATCH"]        = "30",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", SUBSTANCE_CHANCE_30 },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "TUT_GOODS", "ID", "CATALYST1" },
                                { "Id", "TUT_GOODS", "ID", "OXYGEN" },
                                { "Id", "TUT_GOODS", "ID", "FUEL1" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["SECTION_UP"]         = 1,
                            ["VALUE_MATCH"]        = "50",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", SUBSTANCE_CHANCE_50 },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "TUT_GOODS", "ID", "LAUNCHSUB" },
                                { "Id", "TUT_GOODS", "ID", "FUEL2" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["SECTION_UP"]         = 1,
                            ["VALUE_MATCH"]        = "100",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", SUBSTANCE_CHANCE_100 },
                            }
                        },
                        --
                        -- Ammo
                        --
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_LOCKER", "ID", "AMMO" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_MATCH"]        = "75",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", AMMO_CHANCE_75 }, -- 75
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                {
                                    "Id", "CRATE",
                                    "Common", "GcRewardTableCategory.xml",
                                    "Small", "GcRewardTableItemList.xml",
                                    "ID", "AMMO"
                                },
                                {
                                    "Id", "CRATE",
                                    "Rare", "GcRewardTableCategory.xml",
                                    "Small", "GcRewardTableItemList.xml",
                                    "ID", "AMMO"
                                },
                            },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", AMMO_CHANCE_100 }, -- 100
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE", "ID", "AMMO" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["MATH_OPERATION"]     = "/",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", AMMO_DELIM },
                                { "AmountMax", AMMO_DELIM },
                            }
                        },
                        --
                        -- Products
                        --
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE",     "ID", "PRODFUEL2" },
                                { "Id", "BARREL",    "ID", "POWERCELL" },
                                { "Id", "BARREL",    "ID", "PRODFUEL2" },
                                { "Id", "DEBRIS",    "ID", "ANTIMATTER" },
                                { "Id", "TUT_GOODS", "ID", "JELLY" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "30",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", PRODUCT_CHANCE_30 }, -- 30
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "DEBRIS", "ID", "AM_HOUSING" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "40",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", PRODUCT_CHANCE_40 }, -- 40
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE",  "ID", "PRODFUEL2" },
                                { "Id", "BARREL", "ID", "MICROCHIP" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "50",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", PRODUCT_CHANCE_50 }, -- 50
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE",  "ID", "MICROCHIP" },
                                { "Id", "CRATE",  "ID", "JELLY" },
                                { "Id", "CRATE",  "ID", "PRODFUEL2" },
                                { "Id", "BARREL", "ID", "PRODFUEL2" },
                                { "Id", "BARREL", "ID", "ANTIMATTER" },
                                { "Id", "BARREL", "ID", "MICROCHIP" },
                                { "Id", "BARREL", "ID", "JELLY" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "100",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", PRODUCT_CHANCE_100 }, -- 100
                            }
                        },
                        -- Starship Launch Fuel
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "BARREL", "ID", "LAUNCHFUEL" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "100",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", LAUNCHFUEL_CHANCE_100 }, -- 100
                            }
                        },
                        -- Ion Battery
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE",       "ID", "POWERCELL" },
                                { "Id", "BARREL",      "ID", "POWERCELL" },
                                { "Id", "USEFUL_PROD", "ID", "POWERCELL" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", POWERCELL_MIN }, -- 1
                                { "AmountMax", POWERCELL_MAX }, -- 1
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE", "ID", "POWERCELL" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "30",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", POWERCELL_CHANCE_30 }, -- 30
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE", "ID", "POWERCELL" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "50",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", POWERCELL_CHANCE_50 }, -- 50
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE",  "ID", "POWERCELL" },
                                { "Id", "BARREL", "ID", "POWERCELL" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "100",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", POWERCELL_CHANCE_100 }, -- 100
                            }
                        },
                        -- Warp Cell
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "DEBRIS", "ID", "HYPERFUEL1" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", HYPERFUEL1_MIN }, -- 1
                                { "AmountMax", HYPERFUEL1_MAX }, -- 1
                            }
                        },
                        -- Life Support Gel
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRATE",  "ID", "PRODFUEL2" },
                                { "Id", "BARREL", "ID", "PRODFUEL2" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", LIFEGEL_MIN }, -- 1
                                { "AmountMax", LIFEGEL_MAX }, -- 1
                            }
                        },
                        --
                        -- bonuses
                        --
                        {
                            ["SPECIAL_KEY_WORDS"]   = {
                                "Id", "DEBRIS",
                                "Rare", "GcRewardTableCategory.xml",
                                "Large", "GcRewardTableItemList.xml"
                            },
                            ["PRECEDING_KEY_WORDS"] = { "List" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = DEBRIS_RARE_LARGE_BONUS
                        },
                    }
                }
            }
        }
    }
}
