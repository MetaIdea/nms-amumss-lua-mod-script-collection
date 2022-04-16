
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
    ["MOD_FILENAME"]    = "I_Even_Ships.pak",
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
                                "Dropship", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
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
                                "Dropship", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 12}, -- 12
                                {"Max", 20}, -- 20
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Dropship", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min",  7}, -- 0
                                {"Max", 15}, -- 5
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Fighter", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
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
                                "Fighter", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 12}, -- 0
                                {"Max", 20}, -- 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Fighter", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min",  7}, -- 0
                                {"Max", 15}, -- 0
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Scientific", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
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
                                "Scientific", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 12}, -- 0
                                {"Max", 20}, -- 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Scientific", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min",  7}, -- 7
                                {"Max", 15}, -- 15
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Shuttle", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
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
                                "Shuttle", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 12}, -- 0
                                {"Max", 20}, -- 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Shuttle", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min",  7}, -- 0
                                {"Max", 15}, -- 0
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Royal", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min",  5}, -- 35
                                {"Max", 10}, -- 50
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Royal", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 12}, -- 55
                                {"Max", 20}, -- 60
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Royal", "GcInventoryGenerationBaseStatData.xml",
                                "C", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min",  7}, -- 50
                                {"Max", 15}, -- 65
                            }
                        },
                        
                        ----------------------------------------------------------------
                        -------- B Class -----------------------------------------------
                        ----------------------------------------------------------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Dropship", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 15}, -- 0
                                {"Max", 30}, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Dropship", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
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
                                "Dropship", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20}, -- 5
                                {"Max", 30}, -- 10
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Fighter", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 15}, -- 15
                                {"Max", 30}, -- 30
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Fighter", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 25}, -- 5
                                {"Max", 35}, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Fighter", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20}, -- 0
                                {"Max", 30}, -- 0
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Scientific", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 15}, -- 0
                                {"Max", 30}, -- 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Scientific", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 25}, -- 0
                                {"Max", 35}, -- 8
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Scientific", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20}, -- 20
                                {"Max", 30}, -- 30
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Shuttle", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 15}, -- 0
                                {"Max", 30}, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Shuttle", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 25}, -- 0
                                {"Max", 35}, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Shuttle", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20}, -- 0
                                {"Max", 30}, -- 5
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Royal", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 15}, -- 35
                                {"Max", 30}, -- 50
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Royal", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 25}, -- 55
                                {"Max", 35}, -- 60
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Royal", "GcInventoryGenerationBaseStatData.xml",
                                "B", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 20}, -- 50
                                {"Max", 30}, -- 65
                            }
                        },
                        
                        ----------------------------------------------------------------
                        -------- A Class -----------------------------------------------
                        ----------------------------------------------------------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Dropship", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 35}, -- 5
                                {"Max", 50}, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Dropship", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 40}, -- 40
                                {"Max", 50}, -- 50
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Dropship", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 35}, -- 15
                                {"Max", 45}, -- 25
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Fighter", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 35}, -- 35
                                {"Max", 50}, -- 50
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Fighter", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 40}, -- 15
                                {"Max", 50}, -- 20
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Fighter", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 35}, -- 0
                                {"Max", 45}, -- 0
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Scientific", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 35}, -- 0
                                {"Max", 50}, -- 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Scientific", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 40}, -- 10
                                {"Max", 50}, -- 15
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Scientific", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 35}, -- 35
                                {"Max", 45}, -- 45
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Shuttle", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 35}, -- 5
                                {"Max", 50}, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Shuttle", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 40}, -- 5
                                {"Max", 50}, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Shuttle", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 35}, -- 5
                                {"Max", 45}, -- 10
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Royal", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 35}, -- 35
                                {"Max", 50}, -- 50
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Royal", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 40}, -- 55
                                {"Max", 50}, -- 60
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Royal", "GcInventoryGenerationBaseStatData.xml",
                                "A", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 35}, -- 50
                                {"Max", 45}, -- 65
                            }
                        },
                        
                        ----------------------------------------------------------------
                        -------- S Class -----------------------------------------------
                        ----------------------------------------------------------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Dropship", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 55}, -- 10
                                {"Max", 60}, -- 20
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Dropship", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 65}, -- 65
                                {"Max", 85}, -- 85
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Dropship", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 60}, -- 30
                                {"Max", 80}, -- 35
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Fighter", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 55}, -- 55
                                {"Max", 60}, -- 60
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Fighter", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 65}, -- 15
                                {"Max", 85}, -- 25
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Fighter", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 60}, -- 0
                                {"Max", 80}, -- 0
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Scientific", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 55}, -- 0
                                {"Max", 60}, -- 0
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Scientific", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 65}, -- 20
                                {"Max", 85}, -- 25
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Scientific", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 60}, -- 60
                                {"Max", 80}, -- 80
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Shuttle", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 55}, -- 15
                                {"Max", 60}, -- 20
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Shuttle", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 65}, -- 15
                                {"Max", 85}, -- 20
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Shuttle", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 60}, -- 15
                                {"Max", 80}, -- 20
                            }
                        },
                        ----------------
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Royal", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_DAMAGE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 55}, -- 35
                                {"Max", 60}, -- 50
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Royal", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_SHIELD"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 65}, -- 55
                                {"Max", 85}, -- 60
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                "Royal", "GcInventoryGenerationBaseStatData.xml",
                                "S", "GcInventoryGenerationBaseStatClassData.xml",
                                "BaseStatID", "SHIP_HYPERDRIVE"
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Min", 60}, -- 50
                                {"Max", 80}, -- 65
                            }
                        },
                    }
                }
            }
        }
    }
}