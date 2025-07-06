SCRAP_GOODS_NIPNIPBUDS_MIN = 1
SCRAP_GOODS_NIPNIPBUDS_MAX = 10

SCRAP_GOODS_GEODE_ANY_MIN = 1
SCRAP_GOODS_GEODE_ANY_MAX = 50

SCRAP_GOODS_HYPERFUEL2_MIN = 1
SCRAP_GOODS_HYPERFUEL2_MAX = 10

PIRATE_BOUNTY1_MIN = 300000 -- 100000
PIRATE_BOUNTY1_MAX = 800000 -- 180000

PIRATE_BOUNTY2_MIN = 1000000 -- 200000
PIRATE_BOUNTY2_MAX = 2000000 -- 350000

PIRATE_BOUNTY3_MIN = 3000000 -- 300000
PIRATE_BOUNTY3_MAX = 5000000 -- 500000

DEFEND_RAID_UNITS_MIN = 200000  -- 200000
DEFEND_RAID_UNITS_MAX = 1200000 -- 300000

--[[
    ILLEGAL_PROD1: Blood Salt
    ILLEGAL_PROD2: Stolen DNA Samples
    ILLEGAL_PROD3: Moon Ether
    ILLEGAL_PROD4: Prismatic Feathers
    ILLEGAL_PROD5: GRAHGRAH
    ILLEGAL_PROD6: Counterfeit Circuits
    ILLEGAL_PROD7: Banned Weapons
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

local R_SCRAP_GOODS_BONUS_TABLE = {
    Create_GcRewardTableItem("ILLEGAL_PROD1", 50, 50, 5.0, 32),
    Create_GcRewardTableItem("ILLEGAL_PROD2", 50, 50, 5.0, 33),
    Create_GcRewardTableItem("ILLEGAL_PROD3", 50, 50, 5.0, 34),
    Create_GcRewardTableItem("ILLEGAL_PROD4", 50, 50, 5.0, 35),
    Create_GcRewardTableItem("ILLEGAL_PROD5", 50, 50, 5.0, 36),
    Create_GcRewardTableItem("ILLEGAL_PROD6", 50, 50, 5.0, 37),
    Create_GcRewardTableItem("ILLEGAL_PROD7", 50, 50, 5.0, 38),
}

local R_SCRAP_GOODS_BONUS = table.concat(R_SCRAP_GOODS_BONUS_TABLE, "\n")


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyRewardsPirateBonus.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.63",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- METADATA/REALITY/TABLES/REWARDTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "PIRATE_BOUNTY1", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", PIRATE_BOUNTY1_MIN }, -- 100000
                                { "AmountMax", PIRATE_BOUNTY1_MAX }, -- 180000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "PIRATE_BOUNTY2", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", PIRATE_BOUNTY2_MIN }, -- 200000
                                { "AmountMax", PIRATE_BOUNTY2_MAX }, -- 350000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "PIRATE_BOUNTY3", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", PIRATE_BOUNTY3_MIN }, -- 300000
                                { "AmountMax", PIRATE_BOUNTY3_MAX }, -- 500000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_DEFEND_RAID", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", DEFEND_RAID_UNITS_MIN }, -- 200000
                                { "AmountMax", DEFEND_RAID_UNITS_MAX }, -- 300000
                            }
                        },
                        --
                        -- R_SCRAP_GOODS
                        --
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_SCRAP_GOODS", "ID", "NIPNIPBUDS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", SCRAP_GOODS_NIPNIPBUDS_MIN }, -- 1
                                { "AmountMax", SCRAP_GOODS_NIPNIPBUDS_MAX }, -- 1
                            }
                        },
                        -- geodes
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                { "Id", "R_SCRAP_GOODS", "ID", "GEODE_RARE" },
                                { "Id", "R_SCRAP_GOODS", "ID", "GEODE_LAND" },
                                { "Id", "R_SCRAP_GOODS", "ID", "GEODE_CAVE" },
                                { "Id", "R_SCRAP_GOODS", "ID", "GEODE_CRYSTAL" },
                                { "Id", "R_SCRAP_GOODS", "ID", "GEODE_SPACE" },
                                { "Id", "R_SCRAP_GOODS", "ID", "GEODE_ASTEROID" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", SCRAP_GOODS_GEODE_ANY_MIN }, -- 1
                                { "AmountMax", SCRAP_GOODS_GEODE_ANY_MAX }, -- 1
                            }
                        },
                        --
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_SCRAP_GOODS", "ID", "HYPERFUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", SCRAP_GOODS_HYPERFUEL2_MIN }, -- 1
                                { "AmountMax", SCRAP_GOODS_HYPERFUEL2_MAX }, -- 1
                            }
                        },
                        -- pirate goods bonus
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "Id", "R_SCRAP_GOODS" },
                            ["PRECEDING_KEY_WORDS"] = { "List", "List" },
                            ["ADD_OPTION"]          = "ADDafterLINE",
                            ["ADD"]                 = R_SCRAP_GOODS_BONUS
                        },
                    }
                },
            }
        }
    }
}
