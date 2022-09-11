ModAuthor       =   "NooBzPoWaH"
LuaAuthor       =   "Babscoole,Hypn0tick"
ModName         =   "_MOD_Mission_Timer_Redux"
BaseDescription =   "Reduce Mission Timer, Atlas, Base Computer, Living Ship and Fleet Missions."
GameVersion     =   "3.99+"

BASE_COMPUTER_REDUCTION_MULT    =   10      --  The number by which the script will divide base computer mission timers.
                                            --  By default, this will divide all mission timers by 10 (90m to 9m per stage).

ATLAS_PATH_REDUCTION_MULT       =   6       --  The number by which the script will divide Atlas Path mission timers.
                                            --  By default, this will divide all mission timers by 6 (120m to 20m per stage).

LIVING_SHIP_REDUCTION_MULT      =   24      --  The number by which the script will divide living ship mission timers.
                                            --  By default, this will divide all mission timers by 24 (22h to 55m per stage).

FLEET_REDUCTION_MULT            =   5       --  The number by which the script will divide fleet mission timers.
                                            --  By default, this will divide all mission timers by 5 (90m to 18m).

SETTLEMENT_REDUCTION_MULT       =   6       --  The number by which the script will divide settlement mission/building timers.
                                            --  By default, this will divide all mission timers by 6.

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]            = ModName..".pak",
    ["MOD_DESCRIPTION"]         = BaseDescription,
    ["MOD_AUTHOR"]              = ModAuthor,
    ["LUA_AUTHOR"]              = LuaAuthor,
    ["NMS_VERSION"]             = GameVersion,
    ["GLOBAL_INTEGER_TO_FLOAT"] = "PRESERVE",
    ["MODIFICATIONS"]           = 
    {
        {
            ["MBIN_CHANGE_TABLE"]   = 
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA/SIMULATION/MISSIONS/ATLASPATHTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Message","UI_POLO_LONGWAIT_MSG"},
                            ["MATH_OPERATION"]  = "/",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"Time",    ATLAS_PATH_REDUCTION_MULT}, --  Default: 7200
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA/SIMULATION/MISSIONS/BASECOMPUTERMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Message","UI_BASEFLAG_COOLDOWN_MSG"},
                            ["MATH_OPERATION"]  = "/",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"Time",    BASE_COMPUTER_REDUCTION_MULT},  --  Default: 5400
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA/SIMULATION/MISSIONS/SPACEPOIMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION1_MSG3"},
                            ["MATH_OPERATION"]  = "/",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"Time",    LIVING_SHIP_REDUCTION_MULT},    --  Original: 79200
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION2_MSG3"},
                            ["MATH_OPERATION"]  = "/",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"Time",    LIVING_SHIP_REDUCTION_MULT},    --  Original: 79200
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION3_MSG3"},
                            ["MATH_OPERATION"]  = "/",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"Time",    LIVING_SHIP_REDUCTION_MULT},    --  Original: 79200
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION4_MSG3"},
                            ["MATH_OPERATION"]  = "/",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"Time",    LIVING_SHIP_REDUCTION_MULT},    --  Original: 79200
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]    = "GCFLEETGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"]   = 
                    {
                        {
                            ["MATH_OPERATION"]  = "/",
                            ["VALUE_CHANGE_TABLE"]  = 
                            {
                                {"TimeTakenForExpeditionEvent_Easy",    FLEET_REDUCTION_MULT},  -- Original: 900
                                {"TimeTakenForExpeditionEvent",         FLEET_REDUCTION_MULT},  -- Original: 5400
                            }
                        },
                    }
                },
                {   -- This section is for the Settlement Timers
                    ["MBIN_FILE_SOURCE"]     = "GCSETTLEMENTGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"]     =
                    {
                        {
                            ["MATH_OPERATION"]  = "/",
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                              {"BuildingUpgradeTimeInSeconds",  SETTLEMENT_REDUCTION_MULT}, -- original value is "7200" whihc is 2 hrs
                              {"JudgementWaitTimeMin",          SETTLEMENT_REDUCTION_MULT}, -- original value is "900" which is 30 mins
                              {"JudgementWaitTimeMax",        SETTLEMENT_REDUCTION_MULT},        -- original value is "7200" which is 2 hrs
                              {"Settlement_LandingZone",        SETTLEMENT_REDUCTION_MULT},        -- original value is "14400" which is 4 hrs
                              {"Settlement_Bar",            SETTLEMENT_REDUCTION_MULT},        -- original value is "3600" which is 1 hr
                              {"Settlement_Tower",            SETTLEMENT_REDUCTION_MULT},        -- original value is "14400" which is 4 hrs
                              {"Settlement_Market",            SETTLEMENT_REDUCTION_MULT},        -- original value is "7200" which is 2 hrs
                              {"Settlement_Small",            SETTLEMENT_REDUCTION_MULT},        -- original value is "1200" which is 20 mins
                              {"Settlement_SmallIndustrial",    SETTLEMENT_REDUCTION_MULT},        -- original value is "1200" which is 20 mins
                              {"Settlement_Medium",            SETTLEMENT_REDUCTION_MULT},        -- original value is "2800" which is 46 mins and 39 secs
                              {"Settlement_Large",            SETTLEMENT_REDUCTION_MULT},        -- original value is "7200" which is 2 hrs
                              {"Settlement_SheriffsOffice",        SETTLEMENT_REDUCTION_MULT},        -- original value is "90"
                              {"Settlement_Double",            SETTLEMENT_REDUCTION_MULT},        -- original value is "3600" which is 1 hr
                              {"Settlement_Farm",            SETTLEMENT_REDUCTION_MULT},        -- original value is "5600" which is 1 hr 30 mins and 20 secs
                              {"Settlement_Factory",        SETTLEMENT_REDUCTION_MULT},        -- original value is "5600" which is 1 hr 30 mins and 20 secs
                             }
                        },
                    }
                },              
            }
        },
    }   
}