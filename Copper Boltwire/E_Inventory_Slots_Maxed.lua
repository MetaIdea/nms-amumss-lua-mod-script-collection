
--[[ Summery Description:
This changes the maximum size of inventories of ships, freighter and the ExoSuit to the 48(8x6) size.
Multi-tools are maxed to 48(8x6) slot size at S Class.
Always hated that I was locked to small sizes...

    Starships / Freighters
C class 24/24
B class 32/32
A class 40/40
S class 48/48

    Multi-Tools
C class 12
B class 20
A class 32
S class 48

]]--


NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "E_Inventory_Slots_Maxed.pak",
    ["MOD_AUTHOR"]      = "Copper Boltwire",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   =
    {
        {
            
            ["MBIN_CHANGE_TABLE"]   =
            { 
                {
                    ["MBIN_FILE_SOURCE"]    = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        --              Freighters
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Freighter","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+1",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 24}, --7
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Freighter","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+2",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 32}, --7
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Freighter","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+3",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 40}, --14
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Freighter","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+4",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 100}, --21
                            }
                        },
                        --              Haulers ships
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Dropship","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+1",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 24}, --0    Why the heck is this 0???? you know what? not any more.... i wander what will happen as a result...
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Dropship","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+2",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 32}, --7
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Dropship","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+3",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 40}, --14
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Dropship","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+4",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 100}, --21
                            }
                        },
                        --              Fighter ships
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Fighter","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+1",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 24}, --0    this to is 0... i wonder what significance that is... Maybe they have no Tech slots at all in C class (never checked...)
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Fighter","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+2",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 32}, --7
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Fighter","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+3",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 40}, --14
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Fighter","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+4",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 100}, --21
                            } 
                        },
                        --              Explorererereerrrrrreeeerree ships
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Scientific","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+1",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 24}, --0    ...
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Scientific","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+2",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 32}, --7
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Scientific","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+3",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 40}, --14
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Scientific","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+4",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 100}, --21
                            } 
                        },
                        --              Shuttle ships
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Shuttle","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+1",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 24}, --0    ...
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Shuttle","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+2",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 32}, --7
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Shuttle","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+3",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 40}, --14
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Shuttle","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+4",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 100}, --21
                            } 
                        },
                        --              Sail
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Sail","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+1",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 24}, --0    ...
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Sail","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+2",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 32}, --7
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Sail","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+3",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 40}, --14
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Sail","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+4",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 100}, --21
                            } 
                        },
                        --              Robot
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Robot","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+1",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 24}, --0    ...
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Robot","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+2",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 32}, --7
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Robot","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+3",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 40}, --14
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Robot","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+4",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 100}, --21
                            } 
                        },
                        --              Exotic ships
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Royal","MaxTechInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+4",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 100}, --21
                            } 
                        },
                        --              Living ships -- they apparently only come in S class tier ships...
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize","Alien","MaxInventoryCapacity"},
                            ["LINE_OFFSET"]         = "+4",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"IGNORE", 100}, --35
                            }
                        },
                        
                        
                        
                        
                        --      Multi Tools
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize","MaxInventoryCapacity"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"C", 12}, -- 12
                                {"B", 20}, -- 16
                                {"A", 32}, -- 20
                                {"S", 48}, -- 24
                            }
                        },
                    }
                },
                
                -- Players Inventory:
                
                {
                    ["MBIN_FILE_SOURCE"]    = {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN", "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"PlayerPersonalInventoryTechWidth", "10"}, -- 8x6 = 48, in case you didn't want to do that kind of math :D
                                {"PlayerPersonalInventoryTechHeight", "10"},
                                {"PlayerPersonalInventoryCargoWidth", "10"},
                                {"PlayerPersonalInventoryCargoHeight", "10"}
                            }
                        }
                    }
                },
            }
        }
    }
}