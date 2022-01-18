
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
    ["MOD_FILENAME"]    = "I_Even_Multitools.pak",
    ["MOD_AUTHOR"]      = "Copper Boltwire",
    ["NMS_VERSION"]     = "3.75",
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
                        -------- C Class -----------------------------------------------
                        ----------------------------------------------------------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pistol", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 10}, -- 0
                                {"Max", 15}, -- 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pistol", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min",  5}, -- 5
                                {"Max", 10}, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pistol", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 40}, -- 10
                                {"Max", 50}, -- 20
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Rifle", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 10}, -- 0
                                {"Max", 15}, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Rifle", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min",  5}, -- 0
                                {"Max", 10}, -- 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Rifle", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 40}, -- 0
                                {"Max", 50}, -- 5
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pristine", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 10}, -- 0
                                {"Max", 15}, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pristine", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min",  5}, -- 5
                                {"Max", 10}, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pristine", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 40}, -- 40
                                {"Max", 50}, -- 50
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Alien", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 10}, -- 10
                                {"Max", 15}, -- 15
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Alien", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min",  5}, -- 0
                                {"Max", 10}, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Alien", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 40}, -- 20
                                {"Max", 50}, -- 25
                            }
                        },
                        
                        ----------------------------------------------------------------
                        -------- B Class -----------------------------------------------
                        ----------------------------------------------------------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pistol", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 15}, -- 0
                                {"Max", 20}, -- 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pistol", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 10}, -- 10
                                {"Max", 20}, -- 15
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pistol", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 60}, -- 25
                                {"Max", 70}, -- 30
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Rifle", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 15}, -- 5
                                {"Max", 20}, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Rifle", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 10}, -- 0
                                {"Max", 20}, -- 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Rifle", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 60}, -- 5
                                {"Max", 70}, -- 10
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pristine", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 15}, -- 5
                                {"Max", 20}, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pristine", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 10}, -- 10
                                {"Max", 20}, -- 20
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pristine", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 60}, -- 60
                                {"Max", 70}, -- 70
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Alien", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 15}, -- 15
                                {"Max", 20}, -- 20
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Alien", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 10}, -- 5
                                {"Max", 20}, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Alien", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 60}, -- 30
                                {"Max", 70}, -- 35
                            }
                        },
                        
                        ----------------------------------------------------------------
                        -------- A Class -----------------------------------------------
                        ----------------------------------------------------------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pistol", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20}, -- 0
                                {"Max", 25}, -- 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pistol", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20}, -- 15
                                {"Max", 25}, -- 20
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pistol", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 80}, -- 35
                                {"Max", 90}, -- 40
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Rifle", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20}, -- 10
                                {"Max", 25}, -- 15
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Rifle", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20}, -- 0
                                {"Max", 25}, -- 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Rifle", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 80}, -- 10
                                {"Max", 90}, -- 15
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pristine", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20}, -- 10
                                {"Max", 25}, -- 15
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pristine", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20}, -- 20
                                {"Max", 25}, -- 25
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pristine", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"Min", 80}, -- 80
                                {"Max", 90}, -- 90
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Alien", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20}, -- 20
                                {"Max", 25}, -- 25
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Alien", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20}, -- 10
                                {"Max", 25}, -- 15
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Alien", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 80}, -- 40
                                {"Max", 90}, -- 45
                            }
                        },
                        
                        ----------------------------------------------------------------
                        -------- S Class -----------------------------------------------
                        ----------------------------------------------------------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pistol", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 25}, -- 0
                                {"Max", 35}, -- 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pistol", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 25}, -- 20
                                {"Max", 30}, -- 35
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pistol", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 100}, -- 45
                                {"Max", 100}, -- 50
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Rifle", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 25}, -- 15
                                {"Max", 35}, -- 20
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Rifle", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 25}, -- 0
                                {"Max", 30}, -- 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Rifle", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 100}, -- 15
                                {"Max", 100}, -- 20
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pristine", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 25}, -- 15
                                {"Max", 35}, -- 25
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pristine", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 25}, -- 25
                                {"Max", 30}, -- 30
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Pristine", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 100}, -- 100
                                {"Max", 100}, -- 100
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Alien", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 25}, -- 25
                                {"Max", 35}, -- 35
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Alien", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_MINING"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 25}, -- 15
                                {"Max", 30}, -- 20
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Alien", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "WEAPON_SCAN"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 100}, -- 50
                                {"Max", 100}, -- 60
                            }
                        },
                    }
                }
            }
        }
    }
}