NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME    = "ImmersiveSpaceTravel(x4.0_Slower)",
    MOD_AUTHOR      = "Carbonster",
    MODIFICATIONS   = {
        {
            MBIN_CHANGE_TABLE = {
                {
                    -- Mini Warp speed (x4.0 slower, safe > 5000)
                    MBIN_FILE_SOURCE  = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    MXML_CHANGE_TABLE = {
                        {
                            VALUE_CHANGE_TABLE = {
                                {"MiniWarpSpeed", "7500"},  -- default 30000
                            }
                        },
                    }
                },
                {
                    -- Fuel consumption scaled to x4.0
                    MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    MXML_CHANGE_TABLE = {
                        {
                            SPECIAL_KEY_WORDS  = {"StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
                            SECTION_UP         = 1,
                            REPLACE_TYPE       = "ONCE",
                            VALUE_CHANGE_TABLE = {
                                {"Bonus", "0.25"}  -- default 1.0
                            }
                        },
                    }
                },
                {
                    -- Space encounter check interval
                    MBIN_FILE_SOURCE  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    MXML_CHANGE_TABLE = {
                        {
                            VALUE_CHANGE_TABLE = {
                                {"PulseEncounterCheckTimer", "3.0"},  -- default 1.0
                            }
                        },
                    }
                },
            }
        }
    }
}