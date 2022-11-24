NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] = "shoemakers Exosuit Adjustments.pak",
    ["MOD_AUTHOR"] = "shoemakerjones",
    ["LUA_AUTHOR"] = "shoemakerjones",
    ["NMS_VERSION"] = "4.x",
    ["MOD_DESCRIPTION"] = "v1.1 - Makes significant changes to they way movement is handled.",
    ["MODIFICATIONS"] = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"GroundWalkSpeed", "1.6"}, -- "4.4"
                                {"GroundRunSpeed", "6"}, -- "8"
                                {"AnimWalkSpeed", "0.1"}, -- "1.5"

                                {"JetpackUnderwaterFillRate", "2"}, -- "1"
                                {"UnderwaterMaxJetpackEscapeSpeed", "16"}, -- "8"
                                {"UnderwaterJetpackEscapeForce", "40"}, -- "20"

                                {"MeleeBoostAirForce", "6"}, -- "3"
                                {"MeleeToAirBoostInitialImpulse", "10"}, -- "5"
                                {"MaxTimeInMeleeBoost", "2.8"}, -- "1.4"

                                {"JetpackDrainHorizontalFactor", "3.75"}, -- "2.5"
                                {"JetpackForce", "47"},  -- "31"
                                {"JetpackBrake", "3.3"}, -- "2.2"
                                {"JetpackMaxSpeed", "7.5"}, -- "5"
                                {"JetpackMaxUpSpeed", "45"}, -- "30"
                                {"JetpackUpForce", "45"}, -- "30"
                                {"JetpackIgnitionForce", "100"}, -- "60"
                                {"JetpackIgnitionTime", "0.1"}, -- "0.4"
                                {"JetpackFillRate", "1.0"}, -- "0.5"
                                {"JetpackFillRateMidair", "1.0"}, -- "0.25"

                                {"SpaceJetpackForce", "60"}, -- "40"
                                {"SpaceJetpackUpForce", "45"}, -- "30"
                                {"SpaceJetpackIgnitionForce", "23"}, -- "15"
                                {"SpaceJetpackMaxSpeed", "15"}, -- "10"
                                {"SpaceJetpackDrainRate", "0.12"}, -- "0.3"
                                
                                {"AbandonedFreighterRechargeMod", "1"}, -- "0.33"
                                {"AutoSaveMaxTime", "15"}, -- "60"
                            }
                        }
                    }
                }
            }
        }
    }
}
