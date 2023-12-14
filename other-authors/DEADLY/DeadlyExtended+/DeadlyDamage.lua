-- Ground test information on Permadeath.
-- AISHIPGUN_DAMAGE: 500. Oneshot.
-- AISHIPGUN_DAMAGE: 300. Maxed shield: destroyed. Maxed HP: -5 (or -4 ?) points.
-- AISHIPGUN_DAMAGE: 250. Maxed shield: destroyed. Maxed HP: -2 points.
AISHIPGUN_DAMAGE = 300
TRADERGUN_DAMAGE = 250
AISHIP_DAMAGE = 250
SQUADGUN_DAMAGE = 1000


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyDamage.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/REALITY/TABLES/DAMAGETABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/DAMAGETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- terrain damage
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "IMPACTDAMAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Damage", 100 }, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "IMPACTGROUND" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Damage", 100 }, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "IMPACTSHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Damage", 100 }, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "IMPACTINSTANCE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Damage", 100 }, -- 30
                            }
                        },
                        -- asteroid damage
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "SMALLASTEROID" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Damage", 75 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "MEDIUMASTEROID" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Damage", 100 }, -- 15
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "LARGEASTEROID" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "Damage", 125 }, -- 40
                            }
                        },
                    }
                },
                --
                -- METADATA/PROJECTILES/PROJECTILETABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/PROJECTILES/PROJECTILETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "AISHIPGUN" },
                                { "Id", "POLICEGUN" },
                                { "Id", "PIRATERAIDGUN" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "DefaultDamage", AISHIPGUN_DAMAGE }, -- 15
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "TRADERGUN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "DefaultDamage", TRADERGUN_DAMAGE }, -- 40
                            },
                        },
                        { -- laser
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "AI_SHIP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "DefaultDamage", AISHIP_DAMAGE }, -- 9
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "SQUADGUN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "DefaultDamage", SQUADGUN_DAMAGE }, -- 40
                            },
                        },
                    },
                },
            }
        }
    }
}
