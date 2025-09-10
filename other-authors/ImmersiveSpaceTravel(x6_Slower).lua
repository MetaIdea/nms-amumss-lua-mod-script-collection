NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME    = "ImmersiveSpaceTravel(x6_Slower)",
    MOD_AUTHOR      = "Carbonster",
    MODIFICATIONS   = {
        {
            MBIN_CHANGE_TABLE = {
                {
                    -- Change mini-warp speed
                    MBIN_FILE_SOURCE  = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    MXML_CHANGE_TABLE = {
                        {
                            VALUE_CHANGE_TABLE = {
                                {"MiniWarpSpeed", "5000"},  -- default 30000
                            }
                        },
                    }
                },
                {
                    -- Change fuel consumption
                    MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    MXML_CHANGE_TABLE = {
                        {
                            SPECIAL_KEY_WORDS  = {"StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
                            SECTION_UP         = 1,
                            REPLACE_TYPE       = "ONCE",
                            VALUE_CHANGE_TABLE = {
                                {"Bonus", "0.1666"}  -- default 1.000000
                            }
                        },
                    }
                },
                {
                    -- Increase the interval for checking space encounter triggers
                    MBIN_FILE_SOURCE  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    MXML_CHANGE_TABLE = {
                        {
                            VALUE_CHANGE_TABLE = {
                                {"PulseEncounterCheckTimer", "6.0"},  -- default 1.000000
                            }
                        },
                    }
                },
            }
        }
    }
}