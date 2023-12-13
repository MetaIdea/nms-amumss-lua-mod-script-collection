
--[[ Summery Description:
This makes Haulers, Shuttles, Exotic, Fighters and Explorer starships equal in stats across their classes.
Meaning that regardless of ship type, all C class are the same, same goes for S Class.

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
    ["MOD_FILENAME"]    = "I_Even_Multitools_v2.pak",
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
                        --------WEAPON_DAMAGE
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Pistol",      "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Rifle",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Pristine",    "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Atlas",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"AtlasYellow", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"AtlasBlue",   "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Staff",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 10},
                                {"Max", 20},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Pistol",      "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Rifle",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Pristine",    "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Atlas",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"AtlasYellow", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"AtlasBlue",   "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Staff",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20},
                                {"Max", 25},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Pistol",      "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Rifle",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Pristine",    "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Atlas",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"AtlasYellow", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"AtlasBlue",   "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Staff",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 25},
                                {"Max", 30},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Pistol",      "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Rifle",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Pristine",    "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Atlas",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"AtlasYellow", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"AtlasBlue",   "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                                {"Staff",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_DAMAGE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 30},
                                {"Max", 50},
                            }
                        },
                        
                        --------WEAPON_MINING
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Pistol",      "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Rifle",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Pristine",    "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Atlas",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"AtlasYellow", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"AtlasBlue",   "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Staff",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min",  5},
                                {"Max", 10},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Pistol",      "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Rifle",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Pristine",    "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Atlas",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"AtlasYellow", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"AtlasBlue",   "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Staff",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
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
                                {"Pistol",      "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Rifle",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Pristine",    "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Atlas",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"AtlasYellow", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"AtlasBlue",   "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Staff",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 25},
                                {"Max", 35},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Pistol",      "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Rifle",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Pristine",    "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Atlas",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"AtlasYellow", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"AtlasBlue",   "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                                {"Staff",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_MINING"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 35},
                                {"Max", 50},
                            }
                        },
                         
                        --------WEAPON_SCAN
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Pistol",      "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Rifle",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Pristine",    "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Atlas",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"AtlasYellow", "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"AtlasBlue",   "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Staff",       "GcInventoryGenerationBaseStatData.xml", "C", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 40},
                                {"Max", 50},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Pistol",      "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Rifle",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Pristine",    "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Atlas",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"AtlasYellow", "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"AtlasBlue",   "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Staff",       "GcInventoryGenerationBaseStatData.xml", "B", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 60},
                                {"Max", 70},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Pistol",      "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Rifle",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Pristine",    "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Atlas",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"AtlasYellow", "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"AtlasBlue",   "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Staff",       "GcInventoryGenerationBaseStatData.xml", "A", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 80},
                                {"Max", 90},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Pistol",      "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Rifle",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Pristine",    "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Alien",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Royal",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Robot",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Atlas",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"AtlasYellow", "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"AtlasBlue",   "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                                {"Staff",       "GcInventoryGenerationBaseStatData.xml", "S", "GcInventoryGenerationBaseStatClassData.xml", "BaseStatID", "WEAPON_SCAN"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 100},
                                {"Max", 100},
                            }
                        },
                        --
                    }
                }
            }
        }
    }
}