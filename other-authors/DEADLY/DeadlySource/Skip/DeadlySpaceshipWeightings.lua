--[[
    Vy'keen hate the Gek, hate the Sentinels.
    Sentinels hate our home, Gek hate Korvax.
    Nada should be friends with Vy'keen, yes?
    No. Nada does not think in this way.
--]]

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlySpaceshipWeightings.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Fix Spaceship Weightings according the lore.",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- Gek
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpaceshipWeightings", "CivilianClassWeightings" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "Dropship",   150 }, -- 100
                                { "Fighter",    50 },  -- 50
                                { "Scientific", 50 },  -- 50
                                { "Shuttle",    50 },  -- 100
                            }
                        },
                        -- Vy'keen
                        {
                            ["PRECEDING_KEY_WORDS"] = {
                                "SpaceshipWeightings",
                                "CivilianClassWeightings",
                                "CivilianClassWeightings"
                            },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "Dropship",   50 },  -- 50
                                { "Fighter",    150 }, -- 100
                                { "Scientific", 85 },  -- 50
                                { "Shuttle",    15 },  -- 100
                            }
                        },
                        -- Korvax
                        {
                            ["PRECEDING_KEY_WORDS"] = {
                                "SpaceshipWeightings",
                                "CivilianClassWeightings",
                                "CivilianClassWeightings",
                                "CivilianClassWeightings"
                            },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "Dropship",   50 },  -- 50
                                { "Fighter",    85 },  -- 50
                                { "Scientific", 150 }, -- 100
                                { "Shuttle",    15 },  -- 100
                            }
                        },
                    }
                }
            }
        }
    }
}
