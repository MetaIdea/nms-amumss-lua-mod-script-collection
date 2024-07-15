NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Bodie420.FastExocraft.12.0.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.72",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VehicleSolarRegenFactor",        "100"},
                                {"MechJetpackMaxSpeed",            "200"},
                                {"MechJetpackDrainRate",           "0"},
                                {"MechJetpackFillRate",            "100"},
                                {"AttractMaxSpeed",                "200"},
                                {"MiningLaserMiningDamage",        "999999"},
                                {"MiningLaserDamage",              "999999"},
                                {"GunBaseDamage",                  "999999"},
                                {"StunGunBaseDamage",              "999999"},
                                {"GunBaseMiningDamage",            "999999"},
                                {"VehicleBoostFuelRate",           "0"},
                                {"VehicleBoostFuelRateSurvival",   "0"},
                                {"VehicleFuelRate",                "0"},
                                {"VehicleFuelRateTruckMultiplier", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "BIKE"},
                                {"Name", "MED_BUGGY"},
                                {"Name", "TRUCK"},
                                {"Name", "WHEELEDBIKE"},
                                {"Name", "HOVERCRAFT"},
                                {"Name", "SUBMARINE"},
                                {"Name", "MECH"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UnderwaterEngineMaxSpeed", "200"},
                                {"VehicleBoostMaxSpeed",     "200"},
                            }
                        },
                    }
                },
            }
        }
    }
}