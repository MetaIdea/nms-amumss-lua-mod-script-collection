NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "AltF4_CustomVehicle.pak",
    ["MOD_AUTHOR"] = "AltF4",
    ["LUA_AUTHOR"] = "AltF4",
    ["NMS_VERSION"] = "4.60",
    ["MOD_DESCRIPTION"] = "Custom Vehicle",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","BIKE"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TopSpeedForward", 35},            -- 18
                                {"TopSpeedReverse", 15},            -- 10
                                {"VehicleBoostForce", 1200},        -- 400
                                {"VehicleBoostMaxSpeed", 70},       -- 32
                                {"VehicleBoostTime", 9999},         -- 0.5
                                {"VehicleBoostRechargeTime", 0},    -- 2
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","MED_BUGGY"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TopSpeedForward", 30},            -- 16
                                {"TopSpeedReverse", 12},            -- 8
                                {"VehicleBoostForce", 1200},        -- 300
                                {"VehicleBoostMaxSpeed", 60},       -- 30
                                {"VehicleBoostTime", 9999},         -- 1.5
                                {"VehicleBoostRechargeTime", 0},    -- 3
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","TRUCK"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TopSpeedForward", 25},            -- 12
                                {"TopSpeedReverse", 10},            -- 8

                                {"VehicleBoostForce", 1200},        -- 220
                                {"VehicleBoostMaxSpeed", 50},       -- 30
                                {"VehicleBoostTime", 9999},         -- 1.25
                                {"VehicleBoostRechargeTime", 0},    -- 5.5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","WHEELEDBIKE"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TopSpeedForward", 45},            -- 19
                                {"TopSpeedReverse", 20},            -- 8
                                {"VehicleBoostForce", 1200},        -- 600
                                {"VehicleBoostMaxSpeed", 90},       -- 35
                                {"VehicleBoostTime", 9999},         -- 0.6
                                {"VehicleBoostRechargeTime", 0},    -- 1.5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name","SUBMARINE"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TopSpeedForward", 15},            -- 15
                                {"TopSpeedReverse", 15},            -- 15
                                {"VehicleBoostForce", 1200},        -- 900
                                {"VehicleBoostMaxSpeed", 60},       -- 25
                                {"VehicleBoostTime", 9999},         -- 2.5
                                {"VehicleBoostRechargeTime", 0},    -- 2.5
                            }
                        },
                    }
                },
            },
        },
    }
}