Scan_Changes =
{--  Scan               PulseRange  PulseTime  ChargeTime
    {"TOOL",            "300",      "1",       "1"},
    {"TOOL_HARD",       "225",      "1",       "5"},
    {"WAYPOINT",        "7500",     "0.5",     "0.5"},
    {"BEACON",          "7500",     "0.5",     "0.5"},
    {"RADIO_TOWER",     "150000",   "0.5",     "0.5"},
    {"OBSERVATORY",     "150000",   "0.5",     "0.5"},
    {"DISTRESS_SIGNAL", "150000",   "0.5",     "0.5"},
    {"DEBUG_PLANET",    "1500000",  "0.5",     "0.25"},
    {"DEBUG_SPACE",     "1500000",  "0.5",     "0.25"},
    {"SHIP",            "15000",    "0.5",     "0.25"},
    {"VISUAL",          "15000",    "0.5",     "0.25"},
}

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_Exo's Quick Scan with Range Boost.pak",
["MOD_AUTHOR"]              = "Exosolar",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.52",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SurveyMaxDistance",           "1000"},  -- Original "400"
                                {"TerrainResourceScanRange",    "2000"},  -- Original "1200"
                                {"TerrainResourceCompassRange", "200"},   -- Original "120"
                                {"BinocTimeBeforeScan",         "0.01"},  -- Original "0.5"
                                {"BinocMinScanTime",            "0.333"}, -- Original "3.9"
                                {"BinocScanTime",               "0.333"}, -- Original "3.9"
                                {"BinocCreatureScanTime",       "0.333"}, -- Original "3.2"
                                {"CreatureMinScanTime",         "0.01"},  -- Original "0.8"
                                {"NewDiscoveryDisplayTime",     "5"},     -- Original "2"
                                {"BuildingBeamDistance",        "1200"},  -- Original "800"
                                {"WaypointScanTime",            "2"},     -- Original "3"
                                {"PainTime",                    "1"},     -- Original "1.5"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "None"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScanDistance", "20"}, -- Original "10"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "Far"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FoV",             "75"}, -- Original "70"
                                {"MaxScanDistance", "50"}, -- Original "25"
                                {"WalkSpeed",       "1"},  -- Original "0.5"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "Mid"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FoV",             "30"},  -- Original "40"
                                {"MinScanDistance", "0"},   -- Original "5"
                                {"MaxScanDistance", "150"}, -- Original "70"
                                {"WalkSpeed",       "1"},   -- Original "0.4"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "Close"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FoV",             "15"},   -- Original "20"
                                {"MinScanDistance", "0"},    -- Original "20"
                                {"MaxScanDistance", "1000"}, -- Original "500"
                                {"WalkSpeed",       "1"},    -- Original "0.3"
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\SCANDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {

                    }
                },
            }
        }
    }
}

local SCANDATATABLE = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i=1,#Scan_Changes do
    local Scan       = Scan_Changes[i][1]
    local PulseRange = Scan_Changes[i][2]
    local PulseTime  = Scan_Changes[i][3]
    local ChargeTime = Scan_Changes[i][4]
    
    
    SCANDATATABLE[#SCANDATATABLE +1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"ID", Scan},
        ["VALUE_CHANGE_TABLE"] =
        {
            {"PulseRange", PulseRange},
            {"PulseTime",  PulseTime},
            {"ChargeTime", ChargeTime},
        }
    }
end