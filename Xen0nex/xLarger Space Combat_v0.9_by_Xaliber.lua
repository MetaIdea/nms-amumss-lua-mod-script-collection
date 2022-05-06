Author = "Xaliber"
AuthorLua = "Xen0nex"
ModName = "Larger Space Combat"
ModNameType = "Tweak"
BaseDescription = "Larger Space Combat - separate from Reworked Space Combat for modularity"
GameVersion = "3.82"
ModVersion = "0.9"

--Currently missing 4 sets of changes to Spread and Count (Seems to just be for Freighters though), as I haven't found a way to target the sections they are in
--Similarly, this mod doesn't change the Scale on line 975 from 1.2 > 1.4

LargerBattleChanges = {
    {
        {
            "FlybySpawns"
        },
        {
            {
                {
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 30, 80},
                    {"Count", 1, 4} --1,		3
                }
            }
        }
    },
    {
        {
            "SpaceFlybySpawns"
        },
        {
            {
                {
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 300, 300},
                    {"Count", 2, 6} --2,		3
                }
            }
        }
    },
    {
        {
            "PirateSpawns" --These do NOT attack Freighters.	For the following, RewardMessage is NOTIFY_PIRATE_WIN
        },
        {
            {
                {
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 80, 80},
                    {"Count", 1, 4} --1,		1		(1,			6)
                }
            },
            {
                --1st "ChildSpawns" entry
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 80, 80},
                    {"Count", 2, 6} --1,		1		(2,			6)
                }
            }
        }
    },
    {
        {
            "PirateBattleSpawns" --These DO attack Freighters.	RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
        },
        {
            {
                {
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 100, 120},
                    {"Count", 5, 18} --2,		2		(10,			24)
                }
            }
        }
    },
    {
        {
            "PoliceSpawns"
        },
        {
            {
                {
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 100, 120},
                    {"Count", 1, 2} --1,		1
                }
            },
            {
                --1st "ChildSpawns" entry
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 60, 100},
                    {"Count", 2, 3} --2,		2
                }
            },
            {
                --2nd "ChildSpawns" entry, etc.
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 60, 120},
                    {"Count", 3, 4} --2,		2
                }
            },
            {
                --3rd "ChildSpawns" entry
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 60, 120},
                    {"Count", 3, 6} --2,		2
                }
            },
            {
                --4th "ChildSpawns" entry
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 200, 600},
                    {"Count", 1, 2} --1,		1
                }
            }
        }
    },
    {
        {
            "TraderSpawns" --Added by Xen0nex
        },
        {
            {
                {
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 100, 100},
                    {"Count", 1, 3} --1,		1
                }
            }
        }
    },
    {
        {
            "AmbientSpawns"
        },
        {
            {
                {
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 3000, 4500},
                    {"Count", 2, 6} --2,		5
                }
            },
            {
                --1st "ChildSpawns" entry
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 1500, 3000},
                    {"Count", 0, 4} --0,		3
                }
            },
            {
                --2nd "ChildSpawns" entry, etc.
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 1500, 3500},
                    {"Count", 0, 7} --0,		5
                }
            },
            {
                --3rd "ChildSpawns" entry
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 400, 1000},
                    {"Count", 1, 3} --1,		3
                }
            } --Missing change on line 646, no name so can't target
        }
    },
    {
        {
            "BattleSpawns" --These are Freighters during Freighter-Pirate battles
        },
        {
            {
                --Freighter
                {
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 0, 0},
                    {"Count", 1, 1} --1,		1
                }
            },
            {
                --1st "ChildSpawns" entry			--Freighter
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 2000, 4000},
                    {"Count", 2, 5} --2,		3
                }
            },
            {
                --2nd "ChildSpawns" entry			--SmallFreighter
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 750, 1800},
                    {"Count", 2, 4} --1,		2
                }
            },
            {
                --3rd "ChildSpawns" entry			--TinyFreighter
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 400, 500},
                    {"Count", 2, 3} --2,		2
                }
            }
            --[[{--4th "ChildSpawns" entry		--CapitalFreighter		(trying to change lines 944, 945 & 948, 949, but this entry targets lines 1051, 1052 & 1055, 1056 instead? the target section has no name, can't target it???) This entry is added manually at the bottom of the MBIN_CHANGE_TABLE.
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			1}		--1,		1
				}
			},
			{--5th "ChildSpawns" entry		--Freighter				(trying to change lines 981, 982 & 985, 986 but same issue as above, this entry targets lines 1241, 1242 & 1245, 1246 instead?)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	2400,		4200},
					{"Count",	6,			12}		--4,		6
				}
			},
			{--6th "ChildSpawns" entry		--SmallFreighter		(trying to change lines 1016, 1017 & 1020, 1021 but same issue as above?)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	800,		1800},
					{"Count",	1,			5}		--1,		3
				}
			},
			{--7th "ChildSpawns" entry		--TinyFreighter			(trying to change lines 1051, 1052 & 1056, 1057 but same issue as above?)
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	400,		800},
					{"Count",	2,			3}		--2,		2
				}
			}]]
        }
    },
    --[[{
		--4 sets of changes from lines 1130 - 1246 omitted because I can't find a way to target them.
		--These also seem to mostly target Freighters.  E.G. CapitalFreighter, Freighter, Standard, SmallFreighter, TinyFreighter
			--The last of these 4 sets of changes (lines 1241 ~ 1246) is added manually at the bottom of the MBIN_CHANGE_TABLE
	},]]
    {
        {
            "BattleInitialStandardSpawns" --These are presumably friendly ships that fight the pirates during freighter-pirates battles
        },
        {
            {
                {
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 100, 150},
                    {"Count", 4, 14} --2,		2		(6,			18)
                }
            },
            {
                --1st "ChildSpawns" entry
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 100, 150},
                    {"Count", 3, 12} --2,		2		(5,			15)
                }
            },
            {
                --2nd "ChildSpawns" entry, etc.
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 100, 150},
                    {"Count", 4, 8} --2,		2		(6,			12)
                }
            }
        }
    },
    {
        {
            "BattleInitialPirateSpawns" --These DO attack Freighters.	For the following, RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
        }, --How these numbers are used by the game is confusing... At the start of the Freighter-Pirate battle, it seems to take 3x the 1st Childspawns value, then adds 1x the 1st Childspawns value under BattleSecondaryPirateSpawns to get the total pirate count at the start of the battle, ignoring the other values?
        {
            {
                {
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 140, 200},
                    {"Count", 3, 6} --2,		2		(2,			8)
                }
            },
            {
                --1st "ChildSpawns" entry
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 240, 460},
                    {"Count", 3, 15} --2,		2		(4,			16)
                }
            },
            {
                --2nd "ChildSpawns" entry, etc.
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 180, 360},
                    {"Count", 4, 8} --1,		1		(6,			12)
                }
            }
        }
    },
    {
        {
            "BattleSecondaryPirateSpawns" --These DO attack Freighters.	For the following, RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
        },
        {
            {
                {
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 180, 360},
                    {"Count", 4, 10} --2,		2		(6,			12)
                }
            },
            {
                --1st "ChildSpawns" entry
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 140, 280},
                    {"Count", 3, 14} --2,		2		(4,			16)
                }
            },
            {
                --2nd "ChildSpawns" entry, etc.
                {
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml",
                    "GcAIShipSpawnData.xml"
                },
                {
                    {"Spread", 140, 240},
                    {"Count", 3, 6} --1,		1		(2,			6)
                }
            }
        }
    },
    {
        {
            "PirateBountySpawns" --These do NOT attack Freighters.
        },
        {
            {
                --BOUNTY1					RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
                {
                    "GcBountySpawnInfo.xml" --Remember to switch to "GcBountySpawnInfo.xml" for the Bounty section
                },
                {
                    {"Spread", 100, 100},
                    {"Count", 1, 5} --1,		1		(1,			6)
                }
            },
            {
                --BOUNTY2					RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
                {
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml"
                },
                {
                    {"Spread", 100, 100},
                    {"Count", 2, 10} --1,		1		(3,			12)
                }
            },
            {
                --BOUNTY3					RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
                {
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml"
                },
                {
                    {"Spread", 100, 100},
                    {"Count", 3, 8} --1,		1		(3,			9)
                }
            },
            --[[{----BOUNTY3 1st "ChildSpawns" entry.		This entry doesn't find it here, and instead targets lines 1869, 1870 & 1873, 1874
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			3}		--1,		1		(2,			8)
				}
			},]]
            {
                --EASYBOUNTY1			(This doesn't appear to control the "Hunt Easy Pirates" mission, despite how the .MBIN makes it seem. Also, in that mission the ships use a mix of the AI_MEDIUM & AI_HARD attack type, none use AI_EASY despite how the .MBIN makes it seem. The other bounty missions are similarly odd)
                {
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml"
                },
                {
                    {"Spread", 100, 100},
                    {"Count", 1, 5} --1,		1		(1,			6)
                }
            },
            {
                --EASYBOUNTY2
                {
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml"
                },
                {
                    {"Spread", 100, 100},
                    {"Count", 2, 7} --1,		1		(2,			8)		[2,	4]
                }
            },
            {
                --MEDBOUNTY1
                {
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml"
                },
                {
                    {"Spread", 100, 100},
                    {"Count", 2, 10} --1,		1		(3,			12)
                }
            },
            {
                --MEDBOUNTY2
                {
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml"
                },
                {
                    {"Spread", 100, 100},
                    {"Count", 4, 10} --1,		1		(4,			12)	(in the original mod, it seems these entries accidentally changed the "Scale" for MEDBOUNTY2 instead of changing the "Spread")
                }
            },
            {
                --HARDBOUNTY1
                {
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml"
                },
                {
                    {"Spread", 100, 100},
                    {"Count", 4, 8} --1,		1		(3,			9)
                }
            },
            {
                --HARDBOUNTY2
                {
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml"
                },
                {
                    {"Spread", 100, 100},
                    {"Count", 4, 6} --1,		1		(6,			6)
                }
            },
            {
                --WEAPGUY_BOUNTY
                {
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml"
                },
                {
                    {"Spread", 100, 100},
                    {"Count", 4, 8} --2,		2		(4,			8)
                }
            },
            {
                --PIRATE_SQUAD
                {
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml"
                },
                {
                    {"Spread", 800, 800},
                    {"Count", 8, 14} --6,		6		(9,			18)
                }
            },
            {
                --PP_BOUNTY
                {
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml",
                    "GcBountySpawnInfo.xml"
                },
                {
                    {"Spread", 100, 100},
                    {"Count", 2, 4} --1,		1		(3,			6)
                }
            }
        }
    }
}

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "_" .. ModNameType .. "_" .. ModName .. "_v" .. ModVersion .. "_by_" .. Author .. ".pak",
    ["MOD_DESCRIPTION"] = BaseDescription,
    ["MOD_AUTHOR"] = Author,
    ["LUA_AUTHOR"] = AuthorLua,
    ["NMS_VERSION"] = GameVersion,
    ["MOD_VERSION"] = ModVersion,
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
                    ["EXML_CHANGE_TABLE"] = {
						--This entry intentionally left blank, to be filled in by the LargerBattleChanges at the bottom of this script
					}
                },
                {
                    --Was attempting to target lines 945, 946 but this entry targets lines 1051, 1052 instead? The target section has no name, can't target it???
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["MATH_OPERATION"] = "",
                            ["REPLACE_TYPE"] = "",
                            ["PRECEDING_FIRST"] = "True",
                            ["PRECEDING_KEY_WORDS"] = {
                                "BattleSpawns",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml"
                            },
                            ["SPECIAL_KEY_WORDS"] = {"Spread", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"x", 400},
                                {"y", 800}
                            }
                        }
                    }
                },
                {
                    --Was attempting to target lines 948, 949 but this entry targets lines 1055, 1056 instead? the target section has no name, can't target it???
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["MATH_OPERATION"] = "",
                            ["REPLACE_TYPE"] = "",
                            ["PRECEDING_FIRST"] = "True",
                            ["PRECEDING_KEY_WORDS"] = {
                                "BattleSpawns",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml"
                            },
                            ["SPECIAL_KEY_WORDS"] = {"Count", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"x", 2}, --2
                                {"y", 3} --2
                            }
                        }
                    }
                },
                {
                    --Testing out attempts, this entry targets lines 1241, 1242 instead?
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["MATH_OPERATION"] = "",
                            ["REPLACE_TYPE"] = "",
                            ["PRECEDING_FIRST"] = "True",
                            ["PRECEDING_KEY_WORDS"] = {
                                "BattleSpawns",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml"
                            },
                            ["SPECIAL_KEY_WORDS"] = {"Spread", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"x", 600},
                                {"y", 900}
                            }
                        }
                    }
                },
                {
                    --Testing out attempts, this entry targets lines 1245, 1246 instead?
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["MATH_OPERATION"] = "",
                            ["REPLACE_TYPE"] = "",
                            ["PRECEDING_FIRST"] = "True",
                            ["PRECEDING_KEY_WORDS"] = {
                                "BattleSpawns",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml",
                                "GcAIShipSpawnData.xml"
                            },
                            ["SPECIAL_KEY_WORDS"] = {"Count", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"x", 0}, --0
                                {"y", 4} --3
                            }
                        }
                    }
                },
                {
                    --Edits the ChildSpawns for BOUNTY3 which otherwise gets skipped
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["MATH_OPERATION"] = "",
                            ["REPLACE_TYPE"] = "",
                            ["PRECEDING_FIRST"] = "True",
                            ["PRECEDING_KEY_WORDS"] = {
                                "PirateBountySpawns",
                                "GcBountySpawnInfo.xml",
                                "GcBountySpawnInfo.xml",
                                "GcBountySpawnInfo.xml",
                                "ChildSpawns"
                            },
                            ["SPECIAL_KEY_WORDS"] = {"Count", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"x", 1}, --1		(2)
                                {"y", 3} --1		(8)
                            }
                        }
                    }
                }
			}
        }
    }
}

local ChangesToLargerBattles =
    NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #LargerBattleChanges do
    local SceneID = LargerBattleChanges[i][1][1]
    local ChildLevels = LargerBattleChanges[i][2]
    --local SpreadCounts = LargerBattleChanges[i][2]

    for j = 1, #ChildLevels do
        --local ChildLevel = ChildLevels[j][1]
        --local ChildLevel = table.concat(ChildLevels[j][1])

        local SpreadCounts = ChildLevels[j][2]
        --local Replacers = ChildLevels[j][2]

        for k = 1, #SpreadCounts do
            SpreadCount = SpreadCounts[k][1]
            ReplacerX = SpreadCounts[k][2]
            ReplacerY = SpreadCounts[k][3]

            local ChildLevel1 = ChildLevels[j][1][1]
            local ChildLevel2 = ChildLevels[j][1][2]
            local ChildLevel3 = ChildLevels[j][1][3]
            local ChildLevel4 = ChildLevels[j][1][4]
            local ChildLevel5 = ChildLevels[j][1][5]
            local ChildLevel6 = ChildLevels[j][1][6]
            local ChildLevel7 = ChildLevels[j][1][7]
            local ChildLevel8 = ChildLevels[j][1][8]
            local ChildLevel9 = ChildLevels[j][1][9]
            local ChildLevel10 = ChildLevels[j][1][10]
            local ChildLevel11 = ChildLevels[j][1][11]
            local ChildLevel12 = ChildLevels[j][1][12]
            local ChildLevel13 = ChildLevels[j][1][13]

            ChangesToLargerBattles_temp = {
                ["MATH_OPERATION"] = "",
                ["REPLACE_TYPE"] = "",
                ["PRECEDING_FIRST"] = "True",
                ["PRECEDING_KEY_WORDS"] = {
                    SceneID,
                    ChildLevel1,
                    ChildLevel2,
                    ChildLevel3,
                    ChildLevel4,
                    ChildLevel5,
                    ChildLevel6,
                    ChildLevel7,
                    ChildLevel8,
                    ChildLevel9,
                    ChildLevel10,
                    ChildLevel11,
                    ChildLevel12,
                    ChildLevel13
                },
                --["PRECEDING_KEY_WORDS"] = {ChildLevel},
                ["SPECIAL_KEY_WORDS"] = {SpreadCount, "Vector2f.xml"},
                ["VALUE_CHANGE_TABLE"] = {
                    {"x", ReplacerX},
                    {"y", ReplacerY}
                }
            }
            ChangesToLargerBattles[#ChangesToLargerBattles + 1] = ChangesToLargerBattles_temp
        end
    end
end
