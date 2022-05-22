Author = "Xaliber"					--Edited by Xen0nex
ModName = "gExos Challenge"
ModNameSub = "Space Combat+LargerX"
BaseDescription = "Adaptation of part(s) of Xaliber's Space Combat Reworked"
GameVersion = "387"
ModVersion = "a"

--Multipliers to apply to the hull & shields of all AI-controlled starships
ShipHull =				1
ShipShield =			1

--Currently missing 4 sets of changes to Spread and Count (Seems to just be for Freighters though), as I haven't found a way to target the sections they are in
	--Similarly, this mod doesn't change the Scale on line 975 from 1.2 > 1.4

LargerBattleChanges = 
{
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
					{"Spread",	30,			80},
					{"Count",	1,			4}		--1,		3
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
					{"Spread",	300,		300},	--300,		300
					{"Count",	2,			6}		--2,		3		[2,	6]
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	250,		250},	--250,		250
					{"Count",	2,			4}		--2,		2		[2,	4]
				}
			},
			{--2nd "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	250,		250},	--250,		250
					{"Count",	4,			6}		--3,				[4,	6]
				}
			},
		}
	},
	{
		{
			"PirateSpawns"					--These do NOT attack Freighters.	For the following, RewardMessage is NOTIFY_PIRATE_WIN
		},
		{
			{--This may control several things: it appears to act as a multiplier to the amount of pirates spawned during space station pirate hunting missions
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	80,			80},
					{"Count",	1,			1}		--1,		1		(1,			6)		[1,		3]
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	80,			80},
					{"Count",	1,			2}		--1,		1		(2,			6)		[1,		3]
				}
			},
		}
	},
	{
		{
			"PlanetaryPirateFlybySpawns"
		},
		{
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	2,			4}		--1,		3
				}
			}
		}
	},
	{
		{
			"PlanetaryPirateRaidSpawns"
		},
		{
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		100},	--100,		100
					{"Count",	1,			3}		--1,		1
				}
			}
		}
	},
	{
		{
			"PirateBattleSpawns"			--These DO attack Freighters.	RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
		},
		{
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		120},
					{"Count",	4,			8}		--2,		2		(10,			24)
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
					{"Spread",	100,		120},
					{"Count",	1,			1}		--1,		1
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	60,			100},
					{"Count",	2,			2}		--2,		2
				}
			},
			{--2nd "ChildSpawns" entry, etc.
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	60,			120},
					{"Count",	3,			5}		--2,		2		(3,		4)
				}
			},
			{--3rd "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	60,			120},
					{"Count",	6,			8}		--2,		2		(3,		6)
				}
			},
			{--4th "ChildSpawns" entry		This is the Sentinel Freighter
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	200,		600},
					{"Count",	1,			1}		--1,		1
				}
			},
		}
	},
	{
		{
			"TraderSpawns"		--Added by Xen0nex
		},
		{
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			3}		--1,		1
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
					{"Spread",	3000,		4500},
					{"Count",	2,			6}		--2,		5
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	1500,		3000},
					{"Count",	0,			4}		--0,		3
				}
			},
			{--2nd "ChildSpawns" entry, etc.
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	1500,		3500},
					{"Count",	0,			7}		--0,		5
				}
			},
			{--3rd "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	400,		1000},
					{"Count",	1,			3}		--1,		3
				}
			}	--Missing change on line 646, no name so can't target
		}
	},
	{
		{
			"BattleSpawns"				--These are Freighters during Freighter-Pirate battles
		},
		{
			{--Freighter
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	0,			0},
					{"Count",	1,			1}		--1,		1
				}
			},
			{--1st "ChildSpawns" entry			--Freighter
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	2000,		4000},
					{"Count",	2,			5}		--2,		3
				}
			},
			{--2nd "ChildSpawns" entry			--SmallFreighter
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	750,		1800},
					{"Count",	2,			4}		--1,		2
				}
			},
			{--3rd "ChildSpawns" entry			--TinyFreighter
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	400,		500},
					{"Count",	2,			3}		--2,		2
				}
			},
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
			"BattleInitialStandardSpawns"			--These are presumably friendly ships that fight the pirates during freighter-pirates battles
		},
		{
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		150},
					{"Count",	2,			5}		--2,		2		(6,			18)
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		150},
					{"Count",	2,			5}		--2,		2		(5,			15)
				}
			},
			{--2nd "ChildSpawns" entry, etc.
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	100,		150},
					{"Count",	2,			5}		--2,		2		(6,			12)
				}
			}
		}
	},
	{
		{
			"BattleInitialPirateSpawns"			--These DO attack Freighters.	For the following, RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
		},			--How these numbers are used by the game is confusing... At the start of the Freighter-Pirate battle, it seems to take 3x the 1st Childspawns value, then adds 1x the 1st Childspawns value under BattleSecondaryPirateSpawns to get the total pirate count at the start of the battle, ignoring the other values?
		{
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	140,		200},
					{"Count",	2,			4}		--2,		2		(2,			8)
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	240,		460},
					{"Count",	2,			4}		--2,		2		(4,			16)
				}
			},
			{--2nd "ChildSpawns" entry, etc.
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	180,		360},
					{"Count",	2,			3}		--1,		1		(6,			12)
				}
			}
		}
	},
	{
		{
			"BattleSecondaryPirateSpawns"			--These DO attack Freighters.	For the following, RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
		},
		{
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	180,		360},
					{"Count",	2,			4}		--2,		2		(6,			12)
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	140,		280},
					{"Count",	2,			4}		--2,		2		(4,			16)
				}
			},
			{--2nd "ChildSpawns" entry, etc.
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	140,		240},
					{"Count",	1,			3}		--1,		1		(2,			6)
				}
			}
		}
	},
	{
		{
			"PirateBountySpawns"				--These do NOT attack Freighters.	
		},
		{
			{--BOUNTY1					These are the "wandering" pirates				RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"GcBountySpawnInfo.xml"				--Remember to switch to "GcBountySpawnInfo.xml" for the Bounty section
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			2}		--1,		1		(1,			6)
				}
			},
			{--BOUNTY2					RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			3}		--1,		1		(3,			12)
				}
			},
			{--BOUNTY3					RewardMessage is NOTIFY_PIRATE_BATTLE_WIN
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	3,			4}		--1,		1		(3,			9)
				}
			},
			--[[{----	Deprecated as of NMS v3.84	BOUNTY3 1st "ChildSpawns" entry.		This entry doesn't find it here, and instead targets lines 1869, 1870 & 1873, 1874
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			3}		--1,		1		(2,			8)
				}
			},]]
			--Despite how it seems, the following don't appear to control the space station missions for hunting pirates. At least, the values don't match up with in-game, and changing these seems to have no effect.
			{--EASYBOUNTY1
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			1}		--1,		1		(1,			6)
				}
			},
			{--EASYBOUNTY2			
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			1}		--1,		1		(2,			8)		[2,	4]
				}
			},
			{--MEDBOUNTY1
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			1}		--1,		1		(3,			12)		[1,	3]
				}
			},
			{--MEDBOUNTY2
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	1,			1}		--1,		1		(4,			12)		[1,	3]	(in the original mod, it seems these entries accidentally changed the "Scale" for MEDBOUNTY2 instead of changing the "Spread")
				}
			},
			{--HARDBOUNTY1
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			2}		--1,		1		(3,			9)		[2,	3]
				}
			},
			{--HARDBOUNTY2
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			2}		--3,		3		(6,			6)		[2,	3]
				}
			},
			{--WEAPGUY_BOUNTY		Base Armourer mission
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			2}		--2,		2		(4,			8)
				}
			},
			{--PIRATE_SQUAD			Unknown function
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	800,		800},
					{"Count",	6,			6}		--6,		6		(9,			18)		[6,		10]
				}
			},
			{--PP_BOUNTY			Planet Procedural mission
				{
					"GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml"
				},
				{
					{"Spread",	100,		100},
					{"Count",	2,			4}		--1,		1		(3,			6)
				}
			}
		}
	},
	{
		{
			"FrigateFlybySpawns"		--Probably just decorative frigate spawns
		},
		{
			{
				{
					"GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	0,			0},		--0,		0
					{"Count",	1,			1}		--1,		1
				}
			},
			{--1st "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	400,		400},	--400,		400
					{"Count",	2,			5}		--2,		5
				}
			},
			{--2nd "ChildSpawns" entry
				{
					"GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"
				},
				{
					{"Spread",	800,		800},	--800,		800
					{"Count",	2,			5}		--2,		5
				}
			},
		}
	},
}

--THe following functions allow to add new custom ship Behaviours / Shields (Basically to allow for some Easy/Med/Hard variations of Behaviours as in pre-v3.85 NMS)
function AddPlanetBehaviour (BehaviourID)
    return
[[<Property value="GcShipAIAttackData.xml">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="5" />
      <Property name="GunFireRate" value="0.15" />
      <Property name="LaserHealthPoint" value="50" />
      <Property name="AttackWeaponRange" value="500" />
      <Property name="AttackAngle" value="30" />
      <Property name="AttackShootWaitTime" value="0.1" />
      <Property name="AttackShootTimeMin" value="2.5" />
      <Property name="AttackShootTimeMax" value="5" />
      <Property name="AttackReadyTime" value="0.3" />
      <Property name="AttackMaxTime" value="6" />
      <Property name="AttackApproachOffset" value="150" />
      <Property name="AttackApproachMinRange" value="300" />
      <Property name="AttackApproachMaxRange" value="650" />
      <Property name="AttackTooCloseRange" value="150" />
      <Property name="AttackFlybyOffset" value="150" />
      <Property name="AttackBoostTimeToRange" value="1.5" />
      <Property name="AttackBoostRange" value="550" />
      <Property name="AttackBoostAngle" value="40" />
      <Property name="AttackTurnMultiplier" value="1" />
      <Property name="AttackMaxPlanetHeight" value="1000" />
      <Property name="AttackTurnMultiplierMax" value="1" />
      <Property name="AttackTurnMaxMinTime" value="3" />
      <Property name="AttackTurnMaxTimeRange" value="6" />
      <Property name="NumHitsBeforeBail" value="3000" />
      <Property name="NumHitsBeforeReposition" value="1000" />
      <Property name="FleeBrake" value="0.8" />
      <Property name="FleeBoost" value="3" />
      <Property name="FleeBrakeTime" value="0.5" />
      <Property name="FleeRepositionTime" value="5" />
      <Property name="FleeRepositionAngleMin" value="35" />
      <Property name="FleeRepositionAngleMax" value="100" />
      <Property name="FleeUrgentBrake" value="0.8" />
      <Property name="FleeUrgentBoost" value="1.8" />
      <Property name="FleeUrgentBrakeTime" value="0.4" />
      <Property name="FleeRepositionUrgentTime" value="2" />
      <Property name="FleeRepositionUrgentAngleMin" value="50" />
      <Property name="FleeRepositionUrgentAngleMax" value="145" />
      <Property name="FleeRange" value="400" />
      <Property name="FleeMinTime" value="4" />
      <Property name="FleeMaxTime" value="8" />
      <Property name="FleeUrgentRange" value="75" />
      <Property name="PlanetFleeHeightExtra" value="240" />
      <Property name="AttackTargetMinRange" value="200" />
      <Property name="AttackTargetMaxRange" value="1000" />
      <Property name="AttackTargetOffsetMin" value="-200" />
      <Property name="AttackTargetOffsetMax" value="500" />
      <Property name="AttackTargetSwitchTargetTime" value="10" />
    </Property>]]
end

function AddSpaceBehaviour (BehaviourID)
    return
[[<Property value="GcShipAIAttackData.xml">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="5.5" />
      <Property name="GunFireRate" value="0.15" />
      <Property name="LaserHealthPoint" value="50" />
      <Property name="AttackWeaponRange" value="700" />
      <Property name="AttackAngle" value="30" />
      <Property name="AttackShootWaitTime" value="1" />
      <Property name="AttackShootTimeMin" value="1" />
      <Property name="AttackShootTimeMax" value="3" />
      <Property name="AttackReadyTime" value="0.5" />
      <Property name="AttackMaxTime" value="10" />
      <Property name="AttackApproachOffset" value="180" />
      <Property name="AttackApproachMinRange" value="300" />
      <Property name="AttackApproachMaxRange" value="800" />
      <Property name="AttackTooCloseRange" value="90" />
      <Property name="AttackFlybyOffset" value="50" />
      <Property name="AttackBoostTimeToRange" value="1.5" />
      <Property name="AttackBoostRange" value="2000" />
      <Property name="AttackBoostAngle" value="15" />
      <Property name="AttackTurnMultiplier" value="1.15" />
      <Property name="AttackMaxPlanetHeight" value="100" />
      <Property name="AttackTurnMultiplierMax" value="1" />
      <Property name="AttackTurnMaxMinTime" value="1" />
      <Property name="AttackTurnMaxTimeRange" value="5" />
      <Property name="NumHitsBeforeBail" value="3000" />
      <Property name="NumHitsBeforeReposition" value="2000" />
      <Property name="FleeBrake" value="1" />
      <Property name="FleeBoost" value="8" />
      <Property name="FleeBrakeTime" value="3" />
      <Property name="FleeRepositionTime" value="3.5" />
      <Property name="FleeRepositionAngleMin" value="140" />
      <Property name="FleeRepositionAngleMax" value="180" />
      <Property name="FleeUrgentBrake" value="2" />
      <Property name="FleeUrgentBoost" value="2" />
      <Property name="FleeUrgentBrakeTime" value="3" />
      <Property name="FleeRepositionUrgentTime" value="1" />
      <Property name="FleeRepositionUrgentAngleMin" value="180" />
      <Property name="FleeRepositionUrgentAngleMax" value="180" />
      <Property name="FleeRange" value="650" />
      <Property name="FleeMinTime" value="0.5" />
      <Property name="FleeMaxTime" value="10" />
      <Property name="FleeUrgentRange" value="100" />
      <Property name="PlanetFleeHeightExtra" value="200" />
      <Property name="AttackTargetMinRange" value="250" />
      <Property name="AttackTargetMaxRange" value="600" />
      <Property name="AttackTargetOffsetMin" value="100" />
      <Property name="AttackTargetOffsetMax" value="500" />
      <Property name="AttackTargetSwitchTargetTime" value="10" />
    </Property>]]
end

function AddSquadronBehaviour (BehaviourID)
    return
[[<Property value="GcShipAIAttackData.xml">
      <Property name="Id" value="]]..BehaviourID..[[" />
      <Property name="GunDispersionAngle" value="4" />
      <Property name="GunFireRate" value="0.2" />
      <Property name="LaserHealthPoint" value="15" />
      <Property name="AttackWeaponRange" value="850" />
      <Property name="AttackAngle" value="40" />
      <Property name="AttackShootWaitTime" value="2" />
      <Property name="AttackShootTimeMin" value="1.5" />
      <Property name="AttackShootTimeMax" value="2.5" />
      <Property name="AttackReadyTime" value="1" />
      <Property name="AttackMaxTime" value="8" />
      <Property name="AttackApproachOffset" value="200" />
      <Property name="AttackApproachMinRange" value="350" />
      <Property name="AttackApproachMaxRange" value="600" />
      <Property name="AttackTooCloseRange" value="200" />
      <Property name="AttackFlybyOffset" value="-200" />
      <Property name="AttackBoostTimeToRange" value="1.5" />
      <Property name="AttackBoostRange" value="2250" />
      <Property name="AttackBoostAngle" value="10" />
      <Property name="AttackTurnMultiplier" value="1.25" />
      <Property name="AttackMaxPlanetHeight" value="100" />
      <Property name="AttackTurnMultiplierMax" value="1" />
      <Property name="AttackTurnMaxMinTime" value="1" />
      <Property name="AttackTurnMaxTimeRange" value="4" />
      <Property name="NumHitsBeforeBail" value="800" />
      <Property name="NumHitsBeforeReposition" value="1100" />
      <Property name="FleeBrake" value="1" />
      <Property name="FleeBoost" value="6" />
      <Property name="FleeBrakeTime" value="15" />
      <Property name="FleeRepositionTime" value="10" />
      <Property name="FleeRepositionAngleMin" value="90" />
      <Property name="FleeRepositionAngleMax" value="180" />
      <Property name="FleeUrgentBrake" value="1.5" />
      <Property name="FleeUrgentBoost" value="1.5" />
      <Property name="FleeUrgentBrakeTime" value="3" />
      <Property name="FleeRepositionUrgentTime" value="3" />
      <Property name="FleeRepositionUrgentAngleMin" value="180" />
      <Property name="FleeRepositionUrgentAngleMax" value="180" />
      <Property name="FleeRange" value="600" />
      <Property name="FleeMinTime" value="1.5" />
      <Property name="FleeMaxTime" value="8" />
      <Property name="FleeUrgentRange" value="100" />
      <Property name="PlanetFleeHeightExtra" value="200" />
      <Property name="AttackTargetMinRange" value="300" />
      <Property name="AttackTargetMaxRange" value="600" />
      <Property name="AttackTargetOffsetMin" value="100" />
      <Property name="AttackTargetOffsetMax" value="500" />
      <Property name="AttackTargetSwitchTargetTime" value="10" />
    </Property>]]
end

function AddShield (ShieldID)
    return
[[<Property value="GcSpaceshipShieldData.xml">
      <Property name="Id" value="]]..ShieldID..[[" />
      <Property name="Health" value="5600" />
      <Property name="LevelledExtraHealth" value="19000" />
      <Property name="RechargeTime" value="5" />
      <Property name="RechargeDelayTime" value="6" />
    </Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
{
	["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
	["EXML_CHANGE_TABLE"] 	= 
	{
		--This entry intentionally left blank, to be filled in by the LargerBattleChanges at the bottom of this script
	}
},
{	
	["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"},
	["EXML_CHANGE_TABLE"] 	= 
	{
		{--Changes HARDBOUNTY2 to use PIRATE_HARD ships instead of PIRATE ships
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["SPECIAL_KEY_WORDS"] = {"Id","HARDBOUNTY2"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"AttackData", "PIRATE_HARD"}			--"PIRATE"
			}
		},
		{--Changes the Base Armourer mission to use PIRATE ships instead of PIRATE_EASY ships
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["SPECIAL_KEY_WORDS"] = {"Id","WEAPGUY_BOUNTY"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"AttackData", "PIRATE"}			--"PIRATE_EASY"
			}
		},
		{--Was attempting to target lines 945, 946 but this entry targets lines 1051, 1052 instead? The target section has no name, can't target it???
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["PRECEDING_FIRST"] = "True",
			["PRECEDING_KEY_WORDS"] = {"BattleSpawns","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"},
			["SPECIAL_KEY_WORDS"] = {"Spread","Vector2f.xml"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"x", 400},
				{"y", 800}
			}
		},
		{--Was attempting to target lines 948, 949 but this entry targets lines 1055, 1056 instead? the target section has no name, can't target it???
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["PRECEDING_FIRST"] = "True",
			["PRECEDING_KEY_WORDS"] = {"BattleSpawns","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"},
			["SPECIAL_KEY_WORDS"] = {"Count","Vector2f.xml"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"x", 2},		--2
				{"y", 3}		--2
			}
		},
		{--Testing out attempts, this entry targets lines 1241, 1242 instead?
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["PRECEDING_FIRST"] = "True",
			["PRECEDING_KEY_WORDS"] = {"BattleSpawns","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"},
			["SPECIAL_KEY_WORDS"] = {"Spread","Vector2f.xml"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"x", 600},
				{"y", 900}
			}
		},
		{--Testing out attempts, this entry targets lines 1245, 1246 instead?
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["PRECEDING_FIRST"] = "True",
			["PRECEDING_KEY_WORDS"] = {"BattleSpawns","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml","GcAIShipSpawnData.xml"},
			["SPECIAL_KEY_WORDS"] = {"Count","Vector2f.xml"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"x", 0},		--0
				{"y", 4}		--3
			}
		},
		--[[	Deprecated as of NMS v3.85
		{--Edits the ChildSpawns for BOUNTY3 which otherwise gets skipped
			["MATH_OPERATION"] 		= "",
			["REPLACE_TYPE"] 		= "",
			["PRECEDING_FIRST"] = "True",
			["PRECEDING_KEY_WORDS"] = {"PirateBountySpawns","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","GcBountySpawnInfo.xml","ChildSpawns"},
			["SPECIAL_KEY_WORDS"] = {"Count","Vector2f.xml"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"x", 1},		--1		(2)
				{"y", 3}		--1		(8)
			}
		}]]
	}
},
{["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
["EXML_CHANGE_TABLE"] = {
	--Adding new custom Behaviours and Shields
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPlanetBehaviour ("PLANET_EZ")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddPlanetBehaviour ("PLANET_HRD")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSpaceBehaviour ("SPACE_EZ")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSpaceBehaviour ("SPACE_HRD")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"BehaviourTable",	"GcShipAIAttackData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddSquadronBehaviour ("SQUADRON_MED")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"ShieldTable",	"GcSpaceshipShieldData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddShield ("SLOW_STRONG")
	},
	{
		["PRECEDING_KEY_WORDS"] = {"ShieldTable",	"GcSpaceshipShieldData.xml"},
		["REPLACE_TYPE"] = "ADDAFTERSECTION",
		["ADD"] = AddShield ("HUGE")
	},
	
	--Definitions
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_EASY"},				--Used in vanilla for BOUNTY1 (wandering easy), EASYBOUNTY1 & EASYBOUNTY2 (space station mission),	PIRATE_SQUAD (Possibly the additional enemy pirates in the space station missions?),	& Base Armourer unique mission
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_EZ"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET_EZ"},	--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATLTEASY"},			--default "PIRATELOOT"			Note, changing to a custom modded lootpool such as PIRATLTEASY requires it to be defined and added to REWARDTABLE.MBIN, or this won't work.
		{"Health", math.floor(ShipHull*12000)},			--default 5200
		{"LevelledExtraHealth", math.floor(ShipHull*32000)},		--default 14000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 1},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE"},					--Used in vanilla for BOUNTY2 (wandering medium), MEDBOUNTY1, MEDBOUNTY2, & HARDBOUNTY2 (space station mission), & PP_BOUNTY (planet procedural mission)
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*22000)},			--default 5200
		{"LevelledExtraHealth", math.floor(ShipHull*68000)},		--default 14000
		{"Shield", "STRONG"},				--default "STRONG"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_HARD"},				--Used in vanilla for BOUNTY3 (wandering hard), HARDBOUNTY1  (space station mission)
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_HRD"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET_HRD"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", "PIRATLTHARD"},			--default "PIRATELOOT"			(Custom Lootpool)
		{"Health", math.floor(ShipHull*45000)},			--default 6500
		{"LevelledExtraHealth", math.floor(ShipHull*135000)},	--default 14000
		{"Shield", "SLOW_STRONG"},			--default "FAST_STRONG"
		{"LaserDamageLevel", 3},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","POLICE"},					--Sentinel Interceptors, presumably?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		Probably maps to "POLICELOOT" somehow
		{"Health", math.floor(ShipHull*34000)},			--default 11500
		{"LevelledExtraHealth", math.floor(ShipHull*101000)},	--default 34000
		{"Shield", "FAST"},					--default "FAST"
		{"LaserDamageLevel", 2},			--default 1
		}},	
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADER"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_EZ"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", "TRADERLOOT"},			--default "TRADERLOOT"
		{"Health", math.floor(ShipHull*3800)},			--default 9000
		{"LevelledExtraHealth", math.floor(ShipHull*6000)},		--default 16000
		{"Shield", "HUGE"},					--default "STANDARD"
		{"LaserDamageLevel",2},				--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADER_ESCORT"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_HRD"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", "ESCORTLOOT"},			--default "TRADERLOOT"			(Custom Lootpool)
		{"Health", math.floor(ShipHull*42000)},			--default 14000
		{"LevelledExtraHealth", math.floor(ShipHull*83000)},	--default 36000
		{"Shield", "FAST"},					--default "FAST"
		{"LaserDamageLevel",2},				--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},				--Planetary Pirate raids on buildings, presumably?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "RAID_BUILDING"},	--default "RAID_BUILDING"
		{"RewardCount", 2},					--default 2
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*27000)},			--default 9000
		{"LevelledExtraHealth", math.floor(ShipHull*45000)},		--default 16000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_DOGFIGHT"},				--Unsure, some kind of pirate attack, maybe in space?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE"},				--default "SPACE"
		{"PlanetBehaviour", "PLANET_EZ"},	--default "PLANET"
		{"RewardCount", 2},					--default 2
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*27000)},			--default 9000
		{"LevelledExtraHealth", math.floor(ShipHull*45000)},		--default 16000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_FLYBY"},				--Unsure, some kind of pirate attack, maybe on planets?
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SPACE_EZ"},			--default "SPACE"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 2},					--default 2
		{"Reward", "PIRATELOOT"},			--default "PIRATELOOT"
		{"Health", math.floor(ShipHull*16000)},			--default 5200
		{"LevelledExtraHealth", math.floor(ShipHull*38000)},		--default 14000
		{"Shield", "STANDARD"},				--default "STANDARD"
		{"LaserDamageLevel", 2},			--default 1
		}},
			--(Wingmen use SQUADGUN in METADATA\PROJECTILES\PROJECTILETABLE.MBIN for damage purposes)
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_C"},				--Wingmen in the player's squadron, Class C
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_WEAK"},		--default "SQUADRON_WEAK"
		{"PlanetBehaviour", "PLANET_EZ"},	--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", math.floor(ShipHull*9000)},			--default 3000
		{"LevelledExtraHealth", math.floor(ShipHull*9000)},		--default 3000
		{"Shield", "NULL"},					--default "NULL"
		{"LaserDamageLevel", 1},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_B"},				--Wingmen in the player's squadron, Class B
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_MED"},		--default "SQUADRON_WEAK"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", math.floor(ShipHull*12000)},			--default 5000
		{"LevelledExtraHealth", math.floor(ShipHull*12000)},		--default 5000
		{"Shield", "STANDARD"},				--default "STRONG"
		{"LaserDamageLevel", 1},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_A"},				--Wingmen in the player's squadron, Class A
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_MED"},		--default "SQUADRON_STRONG"
		{"PlanetBehaviour", "PLANET"},		--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", math.floor(ShipHull*15000)},			--default 5000
		{"LevelledExtraHealth", math.floor(ShipHull*15000)},		--default 5000
		{"Shield", "STRONG"},				--default "STRONG"
		{"LaserDamageLevel", 2},			--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_S"},				--Wingmen in the player's squadron, Class S
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Behaviour", "SQUADRON_STRONG"},	--default "SQUADRON_STRONG"
		{"PlanetBehaviour", "PLANET_HRD"},	--default "PLANET"
		{"RewardCount", 1},					--default 1
		{"Reward", ""},						--default ""		I guess you wouldn't be destroying them anyways?
		{"Health", math.floor(ShipHull*18000)},			--default 6000
		{"LevelledExtraHealth", math.floor(ShipHull*18000)},		--default 6000
		{"Shield", "FAST_STRONG"},			--default "STRONG"
		{"LaserDamageLevel", 2},			--default 1
		}},
	--[[	Deprecated as of NMS v3.85
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_EASY"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 25000},			--default 6200
		{"LaserDamageLevel", 1},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_MEDIUM"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 32000},			--default 8000
		{"LaserDamageLevel",2},		--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_HARD"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 56000},			--default 14000
		{"LaserDamageLevel", 3},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","AI_SOLO"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 120000},			--default 30000
		{"LaserDamageLevel", 3},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FREIGHT"},			--Note, this does not seem to control the pirates in the Frieghter-pirate battles, at least not the ones with Capital Freighters
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 18000},			--default 3600
		{"LaserDamageLevel", 1},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADE_EASY"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 24000},			--default 6000
		{"LaserDamageLevel", 1},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADE_MED"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 32000},			--default 8000
		{"LaserDamageLevel",2},		--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","TRADE_HARD"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 56000},			--default 14000
		{"LaserDamageLevel", 3},	--default 1
		}},
	{["PRECEDING_KEY_WORDS"] = {"Definitions"},
	["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY"},
	["PRECEDING_FIRST"] = "True",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", 800000},			--default 20000
		{"LaserDamageLevel", 3},	--default 1
		}},]]
	
	--Behaviours
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_EZ"},				--Custom Behaviour
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 3},						
		{"GunFireRate", 0.08},							
		{"LaserHealthPoint", 35},
		{"AttackWeaponRange", 1200},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 40},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},						
		{"AttackTooCloseRange", 150},						
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 3000},						
		{"NumHitsBeforeReposition", 2000},					
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--5.5
		{"GunFireRate", 0.06},								--0.15
		{"LaserHealthPoint", 50},							--50
		{"AttackWeaponRange", 1600},						--700
		{"AttackShootWaitTime", 0.1},						--1
		{"AttackShootTimeMin", 5},							--1
		{"AttackShootTimeMax", 20},							--3
		{"AttackMaxTime", 50},								--10
		{"AttackApproachOffset", 300},						--180
		{"AttackApproachMinRange", 40},						--300
		{"AttackTooCloseRange", 120},						--800
		{"AttackFlybyOffset", 50},							--50
		{"AttackBoostAngle", 10},							--15
		{"NumHitsBeforeBail", 4500},						--3000
		{"NumHitsBeforeReposition", 3000},					--2000
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_HRD"},				--Custom Behaviour
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1},
		{"GunFireRate", 0.04},								
		{"LaserHealthPoint", 75},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 10},
		{"AttackShootTimeMax", 40},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						
		{"AttackTooCloseRange", 100},						
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 6000},						
		{"NumHitsBeforeReposition", 4000},					
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_EZ"},				--Custom Behaviour
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2.7},
		{"GunFireRate", 0.08},
		{"LaserHealthPoint", 35},
		{"AttackWeaponRange", 800},
		{"AttackShootWaitTime", 0},
		{"AttackShootTimeMin", 5},
		{"AttackShootTimeMax", 15},
		{"AttackMaxTime", 20},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},
		{"AttackTooCloseRange", 150},
		{"AttackFlybyOffset", -150},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 3000},
		{"NumHitsBeforeReposition", 1000},
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.35},						--5
		{"GunFireRate", 0.06},								--0.15
		{"LaserHealthPoint", 50},							--50
		{"AttackWeaponRange", 1100},						--500
		{"AttackShootWaitTime", 0},							--0.1
		{"AttackShootTimeMin", 10},							--2.5
		{"AttackShootTimeMax", 30},							--5
		{"AttackMaxTime", 30},								--6
		{"AttackApproachOffset", 250},						--150
		{"AttackApproachMinRange", 40},						--300
		{"AttackTooCloseRange", 120},						--650
		{"AttackFlybyOffset", 50},							--150
		{"AttackBoostAngle", 210},							--40
		{"NumHitsBeforeBail", 4500},						--3000
		{"NumHitsBeforeReposition", 1500},					--1000
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_HRD"},			--Custom Behaviour
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 0.9},
		{"GunFireRate", 0.04},
		{"LaserHealthPoint", 75},
		{"AttackWeaponRange", 1400},
		{"AttackShootWaitTime", 0},
		{"AttackShootTimeMin", 20},
		{"AttackShootTimeMax", 40},
		{"AttackMaxTime", 40},
		{"AttackApproachOffset", 300},
		{"AttackApproachMinRange", 40},
		{"AttackTooCloseRange", 100},
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 6000},
		{"NumHitsBeforeReposition", 2000},
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 0.9},						--3
		{"GunFireRate", 0.06},								--0.15
		{"LaserHealthPoint", 50},							--0
		{"AttackWeaponRange", 1100},						--500
		{"AttackShootWaitTime", 0},							--0.1
		{"AttackShootTimeMin", 10},							--2.5
		{"AttackShootTimeMax", 45},							--5
		{"AttackMaxTime", 60},								--6
		{"AttackApproachOffset", 250},						--150
		{"AttackApproachMinRange", 40},						--300
		{"AttackTooCloseRange", 120},						--650
		{"AttackFlybyOffset", 50},							--150
		{"AttackBoostAngle", 210},							--40
		{"NumHitsBeforeBail", 5000},						--3000
		{"NumHitsBeforeReposition", 1750},					--1000
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_WEAK"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 5},							--6
		{"GunFireRate", 0.3},								--0.3
		{"LaserHealthPoint", 10},							--0
		{"AttackWeaponRange", 700},							--700
		{"AttackShootWaitTime", 3},							--4
		{"AttackShootTimeMin", 1},							--1
		{"AttackShootTimeMax", 1.5},						--1.5
		{"AttackMaxTime", 7},								--10
		{"AttackApproachOffset", 200},						--200
		{"AttackApproachMinRange", 350},					--400
		{"AttackTooCloseRange", 225},						--250
		{"AttackFlybyOffset", -200},						--	-200
		{"AttackBoostAngle", 10},							--10
		{"NumHitsBeforeBail", 700	},						--600
		{"NumHitsBeforeReposition", 1100},					--1000
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_MED"},			--Custom Behaviour
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 3},							--4
		{"GunFireRate", 0.2},								--0.2
		{"LaserHealthPoint", 15},							--15
		{"AttackWeaponRange", 850},							--850
		{"AttackShootWaitTime", 2},							--2
		{"AttackShootTimeMin", 1.5},						--1.5
		{"AttackShootTimeMax", 2.5},						--2.5
		{"AttackMaxTime", 8.5},								--8
		{"AttackApproachOffset", 200},						--200
		{"AttackApproachMinRange", 300},					--350
		{"AttackTooCloseRange", 200},						--200
		{"AttackFlybyOffset", -200},						--	-200
		{"AttackBoostAngle", 10},							--10
		{"NumHitsBeforeBail", 800	},						--800
		{"NumHitsBeforeReposition", 1300},					--1100
		}},
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_STRONG"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--2
		{"GunFireRate", 0.1},								--0.1
		{"LaserHealthPoint", 20},							--0
		{"AttackWeaponRange", 1000},						--1000
		{"AttackShootWaitTime", 1},							--2
		{"AttackShootTimeMin", 2},							--2
		{"AttackShootTimeMax", 3},							--3
		{"AttackMaxTime", 10},								--10
		{"AttackApproachOffset", 200},						--200
		{"AttackApproachMinRange", 250},					--300
		{"AttackTooCloseRange", 175},						--200
		{"AttackFlybyOffset", -200},						--	-200
		{"AttackBoostAngle", 10},							--10
		{"NumHitsBeforeBail", 900	},						--600
		{"NumHitsBeforeReposition", 1500},					--1000
		}},
	--[[	Deprecated as of NMS v3.85
	{["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PIRATE"},
	["PRECEDING_FIRST"] = "True",
	--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml"}, --PIRATE
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2.8},						--X
		{"GunFireRate", 0.075},								--X 0.07
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 1500},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},						--(40)
		{"AttackTooCloseRange", 120},						--250	(0)
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 1200},						--600
		}},
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --EASY
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 3.5},						--X
		{"GunFireRate", 0.085},								--X	0.12
		{"LaserHealthPoint", 0},
		{"AttackWeaponRange", 1000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},						--(40)
		{"AttackTooCloseRange", 150},						--250	(0)
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 900},							--600
		}},
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --MEDIUM
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2.8},						--X
		{"GunFireRate", 0.07},							--X	0.1
		{"LaserHealthPoint", 25},
		{"AttackWeaponRange", 1500},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 10},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 800},
		{"AttackApproachMinRange", 40},						--(40)
		{"AttackTooCloseRange", 120},						--250	(0)
		{"AttackFlybyOffset", -200},
		{"AttackBoostAngle", 10},
		{"NumHitsBeforeBail", 2000},						--1000
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --HARD
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--X
		{"GunFireRate", 0.06},							--X	0.05
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 100},						--150	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 2500},						--1000
		}},			
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --SOLO
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1},
		{"GunFireRate", 0.04},	--0.05
		{"LaserHealthPoint", 75},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 100},						--50	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 3000},						--2000
		}},		
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --POLICE
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--X
		{"GunFireRate", 0.05},						--X	0.06
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 120},						--150	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 2000},							--600
		}},		
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --TRADER		(added by Xen0nex)
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1.5},						--X
		{"GunFireRate", 0.05},						--X	0.06
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 120},						--150	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 900},							--600
		}},		
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --BOUNTY
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 1},						--X
		{"GunFireRate", 0.04},						--X 0.05
		{"LaserHealthPoint", 75},
		{"AttackWeaponRange", 2000},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 120},						--150	(0)
		{"AttackFlybyOffset", 50},
		{"AttackBoostAngle", 210},
		{"NumHitsBeforeBail", 1500},							--600
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml","GcShipAIAttackData.xml"}, --PIRATE_FREIGHT
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GunDispersionAngle", 2},
		{"GunFireRate", 0.06},	--0.06
		{"LaserHealthPoint", 50},
		{"AttackWeaponRange", 2000},
		{"AttackAngle", 50},
		{"AttackShootWaitTime", 0.1},
		{"AttackShootTimeMin", 0.1},
		{"AttackShootTimeMax", 60},
		{"AttackMaxTime", 60},
		{"AttackApproachOffset", 400},
		{"AttackApproachMinRange", 40},						--(4)
		{"AttackTooCloseRange", 120},						--150	(150)
		{"AttackFlybyOffset", -200},
		{"NumHitsBeforeBail", 900},							--600
		}},]]
	
	--Engines
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_EASY"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--10
		{"MaxSpeed", 200},									--60
		{"BoostSpeed", 1200},								--900
		{"TurnMin", 0.6},									--0.6
		{"DirectionBrake", 4},								--5
		{"Roll", 2},										--1
		{"MinHeight", 15},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SPACE_HARD"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--20
		{"MaxSpeed", 250},									--90
		{"BoostSpeed", 3000},								--1200
		{"TurnMin", 0.7},									--0.7
		{"DirectionBrake", 2.5},							--3
		{"Roll", 1.2},										--0.6
		{"MinHeight", 15},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_EASY"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--50
		{"MaxSpeed", 120},									--80
		{"BoostSpeed", 1200},								--180
		{"TurnMin", 0.6},									--0.4
		{"DirectionBrake", 2.5},							--3
		{"Roll", 2},										--1
		{"MinHeight", 25},									--50
		{"Hovering", "True"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","PLANET_HARD"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 15},									--60
		{"MaxSpeed", 160},									--130
		{"BoostSpeed", 1200},								--180
		{"TurnMin", 1.2},									--0.8
		{"DirectionBrake", 1},								--1.2
		{"Roll", 2},										--1
		{"MinHeight", 12},									--25
		{"Hovering", "True"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},									--10
		{"MaxSpeed", 60},									--60
		{"BoostSpeed", 120},								--120
		{"TurnMin", 1},										--1
		{"DirectionBrake", 20},								--20
		{"Roll", 2},										--1
		{"MinHeight", 20},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_SLOW"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 0},									--0
		{"MaxSpeed", 200},									--200
		{"BoostSpeed", 1000},								--1000
		{"TurnMin", 0.6},									--0.6
		{"DirectionBrake", 8},								--8
		{"Roll", 1},										--1
		{"MinHeight", 30},									--30
		{"Hovering", "False"},								--"False"
		}},
	{["PRECEDING_KEY_WORDS"] = {"EngineTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_FAST"},
	["PRECEDING_FIRST"] = "True",
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 0},									--0
		{"MaxSpeed", 300},									--300
		{"BoostSpeed", 1500},								--1500
		{"TurnMin", 0.8},									--0.8
		{"DirectionBrake", 10},								--10
		{"Roll", 1.5},										--1.5
		{"MinHeight", 15},									--15
		{"Hovering", "False"},								--"False"
		}},
	--[[	Deprecated as of NMS v3.85
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml"}, --STANDARD
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 200},
		{"BoostSpeed", 1200},
		{"TurnMin", 0.6},
		{"DirectionBrake", 4},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 120},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 2},
		{"MinHeight", 15},
		{"Hovering", "True"},
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --SOLO
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 250},
		{"BoostSpeed", 3000},
		{"TurnMin", 0.6},
		{"DirectionBrake", 2.5},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 120},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 2},
		{"MinHeight", 15},
		{"Hovering", "False"},
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --PIRATE
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 250},
		{"BoostSpeed", 3000},
		{"TurnMin", 0.6},
		{"DirectionBrake", 4},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 140},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 3},
		{"MinHeight", 50},
		{"Hovering", "False"},
		}},
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --POLICE
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 250},
		{"BoostSpeed", 3000},
		{"TurnMin", 0.6},
		{"DirectionBrake", 4},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 140},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 4},
		{"MinHeight", 30},
		{"Hovering", "False"},
		}},	
	{--["PRECEDING_KEY_WORDS"] = {"GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml","GcSpaceshipTravelData.xml"}, --BOUNTY
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"MinSpeed", 10},
		{"MaxSpeed", 400},
		{"BoostSpeed", 3000},
		{"TurnMin", 0.6},
		{"DirectionBrake", 4},
		{"PlanetMinSpeed", 10},
		{"PlanetMaxSpeed", 140},
		{"PlanetDirectionBrake", 5.2},
		{"Roll", 2},
		{"MinHeight", 30},
		{"Hovering", "False"},
		}},]]
	
	--Shields
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","STANDARD"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*11000)},								--5600
		{"LevelledExtraHealth", math.floor(ShipShield*45000)},					--19000
		{"RechargeTime", 11},										--5
		{"RechargeDelayTime", 6},									--6
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","STRONG"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*23000)},								--10000
		{"LevelledExtraHealth", math.floor(ShipShield*68000)},					--35000
		{"RechargeTime", 18},										--8
		{"RechargeDelayTime", 10},									--10
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","FAST"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*6000)},								--2000
		{"LevelledExtraHealth", math.floor(ShipShield*18000)},					--10000
		{"RechargeTime", 3},										--1
		{"RechargeDelayTime", 3},									--3
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","FAST_STRONG"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*22000)},								--10000
		{"LevelledExtraHealth", math.floor(ShipShield*56000)},					--25000
		{"RechargeTime", 7},										--3
		{"RechargeDelayTime", 4},									--4
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","NULL"},
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*0)},									--0
		{"LevelledExtraHealth", math.floor(ShipShield*0)},						--0
		{"RechargeTime", 5},										--5
		{"RechargeDelayTime", 10},									--10
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","SLOW_STRONG"},					--Custom Shield
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*45000)},								--Custom	[60000]
		{"LevelledExtraHealth", math.floor(ShipShield*112000)},					--Custom	[150000]
		{"RechargeTime", 54},										--Custom	[48]
		{"RechargeDelayTime", 6},									--Custom	[4]
		}},
	{["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
	["SPECIAL_KEY_WORDS"] = {"Id","HUGE"},							--Custom Shield
	["PRECEDING_FIRST"] = "True",
	--["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"Health", math.floor(ShipShield*68000)},								--Custom	[90000]
		{"LevelledExtraHealth", math.floor(ShipShield*165000)},					--Custom	[220000]
		{"RechargeTime", 72},										--Custom	[96]
		{"RechargeDelayTime", 12},									--Custom	[12]
		}},
	}}
}}}}

local ChangesToLargerBattles = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

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
	
			ChangesToLargerBattles_temp =
			{
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "",
				["PRECEDING_FIRST"] = "True",
				["PRECEDING_KEY_WORDS"] = {SceneID,ChildLevel1,ChildLevel2,ChildLevel3,ChildLevel4,ChildLevel5,ChildLevel6,ChildLevel7,ChildLevel8,ChildLevel9,ChildLevel10,ChildLevel11,ChildLevel12,ChildLevel13},
				--["PRECEDING_KEY_WORDS"] = {ChildLevel},
				["SPECIAL_KEY_WORDS"] = {SpreadCount,"Vector2f.xml"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"x", ReplacerX},
					{"y", ReplacerY}
				}
			}
			ChangesToLargerBattles[#ChangesToLargerBattles+1] = ChangesToLargerBattles_temp
		end
	end
end