
--[[ Summery Description:
This makes Haulers, Shuttles, Exotic, Fighters and Explorer starships equal in stats across their classes.
Meaning that regardless of ship type (Hauler, Shuttle, Exotic, etc), all C classes are the same. All S Classes are the same, etc.

No longer do you need to hunt for stats when you pick a ship, but instead, it comes down to design/aesthetics.

Living ships and Freighters don't get any love for the following reasons:

Freighters
    I kept running into issues building rooms and the ones i managed to add got reset after
    loading the game or going to a different system and thus i have now a hatred for them...
    I refuse to support them until HG gets their fingers out of their rear end and fix this issue.
    
Living Ships
    A half-complete tacked on addon/feature included, not very well thought out.
    No way to upgrade living ships or add new weapons or the like.
    The only reason you'd want a living ship is for the weird look, not functionality!
    Until HG gets off their lazy rear ends and finish this "addon" or what ever; I refuse to give these any love.

]]--

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "I_Even_Ships_v2.pak",
    ["MOD_AUTHOR"]      = "Copper Boltwire",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            { 
                {
                    ["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        ----------------------------------------------------------------
                        ----------------Dropship
                        --------SHIP_DAMAGE
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 8},
                                {"Max", 15},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 24},
                                {"Max", 45},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 50},
                                {"Max", 70},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_DAMAGE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 70},
                                {"Max", 90},
                            }
                        },
                        --------SHIP_SHIELD
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 18},
                                {"Max", 30},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 40},
                                {"Max", 55},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 60},
                                {"Max", 75},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_SHIELD"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min",  95},
                                {"Max", 125},
                            }
                        },
                        --------SHIP_HYPERDRIVE
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 15},
                                {"Max", 25},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 30},
                                {"Max", 45},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 50},
                                {"Max", 85},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_HYPERDRIVE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min",  90},
                                {"Max", 120},
                            }
                        },
                        --------SHIP_AGILE
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min",  8},
                                {"Max", 15},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20},
                                {"Max", 30},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 30},
                                {"Max", 40},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Dropship",    "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Fighter",     "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Scientific",  "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Shuttle",     "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Sail",        "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "SHIP_AGILE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 40},
                                {"Max", 50},
                            }
                        },
                    }
                }
            }
        }
    }
}


--[[

Min / Max value Spaceship Fight, Who will win?
            SHIP_SHIELD         SHIP_AGILE
* SHIP_DAMAGE       SHIP_HYPERDRIVE
C    8/15.F 18/30.D    15/25.S   8/15.O
B   24/45.F 40/55.D    30/45.S  20/30.O
A   50/75.F 60/75.D    50/85.S  20/30.O
S   70/90.F 95/125.D   90/120.S 40/50.R

Dropship   D    Fighter F
Scientific S    Shuttle H
Sail       I    Robot   O
Royal      R    Alien   A

Took the liberty to smooth the SHIP_AGILE curve by making A rank 30/40 instead of another 20/30

]]--