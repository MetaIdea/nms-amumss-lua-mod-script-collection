PIRATELOOT_RELIC_CHANCE = 0

PIRATELOOT_SCRAP_CHANCE = 5
PIRATELOOT_SCRAP_MIN = 1
PIRATELOOT_SCRAP_MAX = 3

PIRATELOOT_SHIPCHARGE_CHANCE = 10
PIRATELOOT_SHIPCHARGE_MIN = 1
PIRATELOOT_SHIPCHARGE_MAX = 10


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyRewardsPirate.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/REALITY/TABLES/REWARDTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- allow no loot given by killing pirates
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "PIRATELOOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardChoice",     "SelectSilent" }, -- SelectAlways
                            }
                        },
                        -- disable race reputation for killing pirates
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "PIRATE_BOUNTY1", "AlienRace", "None" },
                                { "Id", "PIRATE_BOUNTY2", "AlienRace", "None" },
                                { "Id", "PIRATE_BOUNTY3", "AlienRace", "None" },
                                { "Id", "PIRATE_BATTLE",  "AlienRace", "None" },
                                { "Id", "PIRATE_FIGHT",   "AlienRace", "None" },
                                { "Id", "DE_SPACE_POI_1", "AlienRace", "None" }, -- ???
                                { "Id", "R_DEFEND_RAID",  "AlienRace", "None" },
                            },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", 0 },
                            }
                        },
                        -- no nanites for killing pirate ships
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "PIRATELOOT", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", 0 }, -- 100
                            }
                        },
                        -- chance of race's relics
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "PIRATELOOT", "ID", "TRA_CURIO1" },
                                { "Id", "PIRATELOOT", "ID", "WAR_CURIO1" },
                                { "Id", "PIRATELOOT", "ID", "EXP_CURIO1" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", PIRATELOOT_RELIC_CHANCE }, -- 40
                            }
                        },
                        -- amount of race's relics
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "PIRATELOOT", "ID", "TRA_CURIO1" },
                                { "Id", "PIRATELOOT", "ID", "WAR_CURIO1" },
                                { "Id", "PIRATELOOT", "ID", "EXP_CURIO1" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMax", 1 }, -- 3
                            }
                        },
                        -- ship charges drop chance
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "PIRATELOOT", "ID", "SHIPCHARGE" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", PIRATELOOT_SHIPCHARGE_CHANCE }, -- 100
                            }
                        },
                        -- ship charges amount
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "PIRATELOOT", "ID", "SHIPCHARGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", PIRATELOOT_SHIPCHARGE_MIN }, -- 3
                                { "AmountMax", PIRATELOOT_SHIPCHARGE_MAX }, -- 3
                            }
                        },
                        -- suspicious packets
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "PIRATELOOT", "ID", "SCRAP_GOODS" },
                                { "Id", "PIRATELOOT", "ID", "SCRAP_TECH" },
                                { "Id", "PIRATELOOT", "ID", "SCRAP_WEAP" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", PIRATELOOT_SCRAP_CHANCE }, -- 100
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "PIRATELOOT", "ID", "SCRAP_GOODS" },
                                { "Id", "PIRATELOOT", "ID", "SCRAP_TECH" },
                                { "Id", "PIRATELOOT", "ID", "SCRAP_WEAP" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", PIRATELOOT_SCRAP_MIN }, -- 1
                                { "AmountMax", PIRATELOOT_SCRAP_MAX }, -- 1
                            }
                        },
                    }
                },
                --
                -- METADATA/SIMULATION/SPACE/AISPACESHIPATTACKDATATABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SPACE/AISPACESHIPATTACKDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RAID_BUILDING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardCount", "1" }, -- 2
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "RAID_DOGFIGHT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardCount", "1" }, -- 2
                            }
                        },
                    }
                },
            }
        }
    }
}
