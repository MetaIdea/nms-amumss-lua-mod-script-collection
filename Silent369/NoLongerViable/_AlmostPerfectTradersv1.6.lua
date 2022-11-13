local modfilename = "AlmostPerfectTraders"
local lua_author  = "Silent"
local lua_version = "v1.6"
local mod_author  = "Silent369"
local nms_version = "3.99x"
local description = [[
Modifies AI Ships Outpost / Planetary Archive / Station Approach and Landing Settings.

Changes settings so that outposts / planetary archives and stations 'feel' much more
alive and bustling with activity. There should be a faster turnaround of ships arriving
and leaving these locations.

NB: As far as i have tested, although we try to always fill these locations landing
pads, it doesn't appear to interfere with the systems' ship spawns in any negative
way. If in doubt, you can toggle this setting on/off below before compiling the lua.

Also changes slightly the Explorer ship landing gear animation speed timing so that it
lands with its gear fully extended.

There are also optional settings to turn off Pirate Attacks at Trade Outposts / Archives
and to minimise the damage to Crashed Ships when discovered to save resources on repair.
]]

--Modifies:
--GCAISPACESHIPGLOBALS.GLOBAL.MBIN
--MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION.ENTITY.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\ENTITIES\STATION_DOCK.ENTITY.MBIN
--MODELS\COMMON\SPACECRAFT\SCIENTIFIC\ACCESSORIES\LANDINGGEAR\LANDINGGEAR_POD\ENTITIES\LANDINGGEAR.ENTITY.MBIN

--|=======================================================================================--

_NoPirateAttacks = true
_CrashShipDamage = true
_FillUp_Outposts = true

--|=======================================================================================--

--Station Entity
_sApproachRange  = 155
_sApproachSpeed  = 160
_sAutoLandRange  = 350

--Station Dock Entity
_dApproachRange  = 105
_dApproachSpeed  = 110
_dAutoLandRange  = 350

--Explorer LandingGear
_eXpAnimSpeedUp  = 1.5

--|=======================================================================================--

TableData = TableData or {}

--|=======================================================================================--

--| Crashed Ships Have Less Damaged Slots / Cost Less To Repair
--|=======================================================================================--
if _CrashShipDamage then
table.insert(TableData,
                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"CrashedShipBrokenSlotChance",             "0"},
                                {"CrashedShipBrokenTechChance",             "0"},
                                {"CrashedShipRepairSlotCostIncreaseFactor", "0"},
                                {"CrashedShipGeneralCostDiscount",          "1"},
                                {"CrashedShipTechSlotsCostDiscount",        "1"},
                            }
                        })
end

--| No Pirate Attacks On Specific Buildings (for Ship Hunters, Outposts/Planet Archives).
--|=======================================================================================--
if _NoPirateAttacks then
table.insert(TableData,
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PirateAttackableBuildingClasses"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Outpost",                             "False"}, --Original "True"
                                {"LargeBuilding",                       "False"}, --Original "True"
                            }
                        })
end

--| Toggle whether to Fill Up Outposts or not.
--|=======================================================================================--
if _FillUp_Outposts then
table.insert(TableData,
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"FillUpOutposts", "False"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FillUpOutposts",                       "True"}, --Original "False"
                            }
                        })
end

--|=======================================================================================--

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = "_"..modfilename..lua_version..".pak",
    ["LUA_AUTHOR"]              = lua_author,
    ["MOD_AUTHOR"]              = mod_author,
    ["NMS_VERSION"]             = nms_version,
    ["MOD_DESCRIPTION"]         = description,
    ["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = TableData,
                },
            }
        },
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\SPACE\SPACESTATION\SPACESTATION\ENTITIES\STATION.ENTITY.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcOutpostComponentData.xml"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ApproachRange",               _sApproachRange}, --Original "150"
                                {"ApproachSpeed",               _sApproachSpeed}, --Original "150"
                                {"PlayerAutoLandRange",         _sAutoLandRange}, --Original "300"
                                {"CircleRadius",                         "1950"}, --Original "2000"
                                {"LandingSpeed",                            "1"}, --Original "10"
                                {"TakeOffHeight",                           "2"}, --Original "3"
                                {"TakeOffFwdDist",                          "3"}, --Original "5"
                                {"TakeOffAlignTime",                      "0.7"}, --Original "1"
                                {"TakeOffExtraAIHeight",                    "4"}, --Original "7"
                                {"PostTakeOffExtraPlayerSpeed",           "120"}, --Original "60"
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\SPACE\SPACESTATION\MODULARPARTS\ENTITIES\STATION_DOCK.ENTITY.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcOutpostComponentData.xml"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ApproachRange",               _dApproachRange}, --Original "100"
                                {"ApproachSpeed",               _dApproachSpeed}, --Original "100"
                                {"PlayerAutoLandRange",         _dAutoLandRange}, --Original "300"
                                {"CircleRadius",                          "195"}, --Original "200"
                                {"LandingSpeed",                            "1"}, --Original "10"
                                {"TakeOffHeight",                           "2"}, --Original "10"
                                {"TakeOffFwdDist",                          "3"}, --Original "5"
                                {"TakeOffAlignTime",                      "0.7"}, --Original "1"
                                {"TakeOffExtraAIHeight",                    "4"}, --Original "7"
                                {"PostTakeOffExtraPlayerSpeed",           "120"}, --Original "60"
                            }
                        },
                    }
                },
                            ---------------------------------------------------------------------------------------
                            --Explorer Landing Gear Animation Speed
                            ---------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\COMMON\SPACECRAFT\SCIENTIFIC\ACCESSORIES\LANDINGGEAR\LANDINGGEAR_POD\ENTITIES\LANDINGGEAR.ENTITY.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "LANDING"},
                            ["SECTION_ACTIVE"]      = {1,},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _eXpAnimSpeedUp}, --Original "1"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "TAKEOFF"},
                            ["SECTION_ACTIVE"]      = {1,},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _eXpAnimSpeedUp}, --Original "1"
                            }
                        },
                    }
                },
                            ---------------------------------------------------------------------------------------
                            --Outpost / Planet Landing Adjustments (NPC)
                            ---------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"GCAISPACESHIPGLOBALS.GLOBAL.MBIN",},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"OutpostLanding", "GcSpaceshipTravelData.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinHeight",                            "13.7"}, --Original "15"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"PlanetLanding", "GcSpaceshipTravelData.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinHeight",                            "13.7"}, --Original "15"
                            }
                        },
                            ---------------------------------------------------------------------------------------
                            --Outpost Approach / Landing / Speed
                            ---------------------------------------------------------------------------------------
                        {
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinimumCircleTimeBeforeLanding",          "1"}, --Original "5"
                                {"MinimumTimeBetweenOutpostLandings",       "1"}, --Original "3"
                                {"SpaceStationTraderRequestTime",          "-1"}, --Original "20"
                                {"DockingWaitDistance",                     "8"}, --Original "10"
                                {"DockingRotateSpeed",                    "0.6"}, --Original "0.5"
                                {"DockingLandingBounceTime",              "0.6"}, --Original "0.8"
                                {"DockingLandingBounceHeight",            "0.4"}, --Original "0.5"
                                {"OutpostDockMinTipLength",                 "5"}, --Original "5"
                                {"OutpostDockMaxTipLength",                "12"}, --Original "10"
                                {"OutpostDockApproachUpAmount",          "0.02"}, --Original "0.1"
                                {"OutpostToLandingDistance",               "40"}, --Original "50"
                                {"LandingTipAngle",                        "15"}, --Original "25"
                                {"LandingLongTipAngle",                     "6"}, --Original "10"
                            }
                        },
                    }
                },
            }
        },
    }
}