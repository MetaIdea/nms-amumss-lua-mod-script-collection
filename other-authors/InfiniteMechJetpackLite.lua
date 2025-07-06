-- Updated for AMUMSS 5.64+ by ModForge GPT

local ModName        = "infinitemechjetpack.pak"
local Author         = "Striker0420"
local Version        = "5.64"

local VehicleGlobals = "GCVEHICLEGLOBALS.GLOBAL.EXML"
local MechForwardSpeed = 4 -- Original value was 2

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME     = ModName,
    MOD_AUTHOR       = Author,
    LUA_AUTHOR       = Author,
    NMS_VERSION      = Version,
    MODIFICATIONS    =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = VehicleGlobals,
                    MXML_CHANGE_TABLE =
                    {
                        {
                            INTEGER_TO_FLOAT = "PRESERVE",
                            VALUE_CHANGE_TABLE =
                            {
                                {"MechJetpackTurnSpeed",      "4"},
                                {"MechJetpackMaxSpeed",       "45"},
                                {"MechPlayerGroundTurnSpeed", "1"},
                                -- Optional commented values:
                                -- {"MechJetpackDrainRate",      "0.0"},
                                -- {"MechJetpackFillRate",       "10000"},
                                -- {"MechJetpackFallForce",      "0"},
                                -- {"MechJetpackAvoidGroundForce","1000"}
                            }
                        },
                        {
                            INTEGER_TO_FLOAT = "PRESERVE",
                            SPECIAL_KEY_WORDS = {"Name", "MECH"},
                            PRECEDING_KEY_WORDS = {"WheelSuspensionAnimMax"},
                            VALUE_CHANGE_TABLE =
                            {
                                {"TopSpeedForward", tostring(MechForwardSpeed)}
                            }
                        }
                    }
                }
            }
        }
    }
}

-- NOTE: Nothing should be added past this point.