Author = "Xen0nex"
ModName = "PTSd Procedural Upgrade Adjustment"
Description = "Adjusts Exocraft & Multi-tool Upgrade Module strength to account for using 5x upgrades instead of 3x. Differentiates the Sentinel & Autophage Exosuit upgrades"
GameVersion = "441"

OpticalDrillBonus =				1.33							--1.5		Bonus resource yields that the Optical Drill tech confers in a multi-tool	(Reduced since it stacks with both supercharged tech slots & PTSd's Multitool mining stat)

--Changes which stat bonuses are offered by the procedural Sentinel & Autophage exosuit upgrade modules, as well as how strong they are
DifferentiateExoUpgrades =		true							--false		Set to true so that instead of both offering the exact same possible bonuses, only Sentinel upgrades have Shield & Health bonuses, and only Autophage upgrades have Jetpack and Stamina bonuses
ExoUpgradeMaxEnergy =			1.1*0.75						--1.1 (additive)			Sets the maximum strength to the bonus to Life Support tank size on both kinds of upgrades (since you can get it on both)
ExoUpgradeMaxEnergyRegen =		1+(0.75*0.75)					--1.75 (multiplicative)		Sets the maximum strength to the bonus to Life Support regen rate on both kinds of upgrades (since you can get it on both)

--To account for using 5x upgrades rather than 3x (which also means more adjacency bonuses), cutting the strength of all upgrade modules by half should roughly balance it out

--Multi-Tool upgrades (Just Scanning & Mining Laser, since weapon upgrades covered in a separate weapon rebalance .lua)
MiningUpgradeMult =				0.3								--Multiplier to apply to the strength of most bonuses from all procedural Multi-Tool mining laser upgrades.
MiningUpgradeSpeedMult =		0.3								--Multiplier to apply to the strength of procedural Multi-Tool mining laser upgrade Minings Speed (Damage) bonus.
ScanningUpgradeMult =			0.65							--Multiplier to apply to the strength of most bonuses from all procedural Multi-Tool scanner upgrades.
ScanningUpgradeRadiusMult =		0.5								--Multiplier to apply to the strength of procedural Multi-Tool scanner upgrade Scan Radius bonus. 

--Exocraft upgrades
	--Additive bonuses
AllExoWeaponUpDmgMult =			0.5								--Multiplier to apply to the strength of all damage bonuses from all procedural Exocraft Cannon/Mining Laser upgrades.
AllExoBoostUpMult =				0.5								--Multiplier to apply to the strength of Boost Speed and Boost Tank Size bonuses from all procedural Exocraft Boost upgrades.

	--Multiplicative bonuses
AllExoCannonUpMult =			0.5								--Multiplier to apply to the strength of firerate and heat time from all procedural Exocraft Cannon upgrades.
AllExoLaserUpMult =				0.5								--Multiplier to apply to the strength of heat time from all procedural Exocraft Mining Laser upgrades.
AllExoEngineUpMult =			0.5								--Multiplier to apply to the strength of Top Speed and Fuel Usage bonuses from all procedural Exocraft Engine upgrades.

--Applying the above multipliers to the relevant stats on the various upgrade modules
AdditiveUpgradeChanges =
{
	{
		{"Weapon_Scan_Discovery_Creature",	ScanningUpgradeMult},	--Multi-Tool Scanning		
		{"UP_SCAN1", "UP_SCAN2", "UP_SCAN3", "UP_SCAN4", "UP_SCANX"}
	},
	{
		{"Weapon_Scan_Discovery_Flora",	ScanningUpgradeMult},		--Multi-Tool Scanning
		{"UP_SCAN1", "UP_SCAN2", "UP_SCAN3", "UP_SCAN4", "UP_SCANX"}
	},
	{
		{"Weapon_Scan_Discovery_Mineral",	ScanningUpgradeMult},	--Multi-Tool Scanning
		{"UP_SCAN1", "UP_SCAN2", "UP_SCAN3", "UP_SCAN4", "UP_SCANX"}
	},
	
	{
		{"Vehicle_GunDamage",	AllExoWeaponUpDmgMult},				--Exocraft Cannon		
		{"UP_EXGUN1", "UP_EXGUN2", "UP_EXGUN3", "UP_EXGUN4"}
	},
	{
		{"Vehicle_LaserDamage",	AllExoWeaponUpDmgMult},				--Exocraft Mining Laser		
		{"UP_EXLAS1", "UP_EXLAS2", "UP_EXLAS3", "UP_EXLAS4"}
	},
	{
		{"Vehicle_BoostSpeed",	AllExoBoostUpMult},					--Exocraft Boost		
		{"UP_BOOST1", "UP_BOOST2", "UP_BOOST3", "UP_BOOST4"}
	},
	{
		{"Vehicle_BoostTanks",	AllExoBoostUpMult},					--Exocraft Boost
		{"UP_BOOST1", "UP_BOOST2", "UP_BOOST3", "UP_BOOST4"}
	},
	{
		{"Vehicle_SubBoostSpeed",	AllExoBoostUpMult},				--Nautilon Engine
		{"UP_EXSUB1", "UP_EXSUB2", "UP_EXSUB3", "UP_EXSUB4"}
	},
	{
		{"Vehicle_GunDamage",	AllExoWeaponUpDmgMult},				--Nautilon Cannon		
		{"UP_SUGUN1", "UP_SUGUN2", "UP_SUGUN3", "UP_SUGUN4"}
	},
	{
		{"Vehicle_LaserDamage",	AllExoWeaponUpDmgMult},				--Minotaur Mining Laser		
		{"UP_MCLAS2", "UP_MCLAS3", "UP_MCLAS4"}
	},
	{
		{"Vehicle_GunDamage",	AllExoWeaponUpDmgMult},				--Minotaur Cannon		
		{"UP_MCGUN2", "UP_MCGUN3", "UP_MCGUN4"}
	},
	{
		{"Vehicle_BoostTanks",	AllExoBoostUpMult},					--Minotaur Engine
		{"UP_MCENG2", "UP_MCENG3", "UP_MCENG4"}
	},
}

MultiplicativeUpgradeChanges =
{
	{
		{"Weapon_Scan_Radius",	ScanningUpgradeRadiusMult},
		{
			{--	Upgrade			Min		Max
				"UP_SCAN1",		1.05,	1.1								--1.05,	1.1
			},
			{--	Upgrade			Min		Max
				"UP_SCAN2",		1.1,	1.2								--1.1,	1.2
			},
			{--	Upgrade			Min		Max
				"UP_SCAN3",		1.2,	1.3								--1.2,	1.3
			},
			{--	Upgrade			Min		Max
				"UP_SCAN4",		1.3,	1.4								--1.3,	1.4
			},
			{--	Upgrade			Min		Max
				"UP_SCANX",		1.05,	1.5								--1.05,	1.5
			},
		}
	},
	{
		{"Weapon_Laser_Mining_Speed",	MiningUpgradeSpeedMult},
		{
			{--	Upgrade			Min		Max
				"UP_LASER1",	0.9,	0.95							--0.9,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_LASER2",	0.85,	0.95							--0.85,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_LASER3",	0.8,	0.9								--0.8,	0.9	
			},
			{--	Upgrade			Min		Max
				"UP_LASER4",	0.8,	0.85							--0.8,	0.85	
			},
			{--	Upgrade			Min		Max
				"UP_LASERX",	0.8,	0.95							--0.8,	0.95
			},
		}
	},
	{
		{"Weapon_Laser_HeatTime",	MiningUpgradeMult},
		{
			{--	Upgrade			Min		Max
				"UP_LASER1",	1.05,	1.15							--1.05,	1.15
			},
			{--	Upgrade			Min		Max
				"UP_LASER2",	1.15,	1.2								--1.15,	1.2
			},
			{--	Upgrade			Min		Max
				"UP_LASER3",	1.2,	1.4								--1.2,	1.4
			},
			{--	Upgrade			Min		Max
				"UP_LASER4",	1.4,	1.5								--1.4,	1.5	
			},
			{--	Upgrade			Min		Max
				"UP_LASERX",	1.05,	1.55							--1.05,	1.55
			},
		}
	},
	{
		{"Weapon_Laser_Drain",	MiningUpgradeMult},
		{
			{--	Upgrade			Min		Max
				"UP_LASER1",	1.01,	1.1								--1.01,	1.1
			},
			{--	Upgrade			Min		Max
				"UP_LASER2",	1.1,	1.15							--1.1,	1.15
			},
			{--	Upgrade			Min		Max
				"UP_LASER3",	1.15,	1.2								--1.15,	1.2
			},
			{--	Upgrade			Min		Max
				"UP_LASER4",	1.2,	1.2								--1.2,	1.2
			},
			{--	Upgrade			Min		Max
				"UP_LASERX",	1.01,	1.25							--1.01,	1.25
			},
		}
	},
	{
		{"Weapon_Laser_ReloadTime",	MiningUpgradeMult},
		{
			{--	Upgrade			Min		Max
				"UP_LASER1",	0.9,	0.95							--0.9,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_LASER2",	0.85,	0.9								--0.85,	0.9
			},
			{--	Upgrade			Min		Max
				"UP_LASER3",	0.85,	0.9								--0.85,	0.9
			},
			{--	Upgrade			Min		Max
				"UP_LASER4",	0.8,	0.85							--0.8,	0.85	
			},
			{--	Upgrade			Min		Max
				"UP_LASERX",	0.75,	0.95							--0.75,	0.95
			},
		}
	},
	{
		{"Vehicle_GunHeatTime",	AllExoCannonUpMult},
		{
			{--	Upgrade			Min		Max
				"UP_EXGUN1",	0.95,	0.99							--0.95,	0.99
			},
			{--	Upgrade			Min		Max
				"UP_EXGUN2",	0.9,	0.95							--0.9,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_EXGUN3",	0.85,	0.9								--0.85,	0.9	
			},
			{--	Upgrade			Min		Max
				"UP_EXGUN4",	0.8,	0.85							--0.8,	0.85	
			},
		}
	},
	{
		{"Vehicle_GunRate",	AllExoCannonUpMult},
		{
			{--	Upgrade			Min		Max
				"UP_EXGUN1",	0.97,	0.99							--0.97,	0.99
			},
			{--	Upgrade			Min		Max
				"UP_EXGUN2",	0.95,	0.97							--0.95,	0.97
			},
			{--	Upgrade			Min		Max
				"UP_EXGUN3",	0.93,	0.95							--0.93,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_EXGUN4",	0.9,	0.93							--0.9,	0.93	
			},
		}
	},
	{
		{"Vehicle_LaserHeatTime",	AllExoLaserUpMult},
		{
			{--	Upgrade			Min		Max
				"UP_EXLAS1",	0.95,	0.99							--0.95,	0.99
			},
			{--	Upgrade			Min		Max
				"UP_EXLAS2",	0.9,	0.95							--0.9,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_EXLAS3",	0.85,	0.9								--0.85,	0.9	
			},
			{--	Upgrade			Min		Max
				"UP_EXLAS4",	0.8,	0.85							--0.8,	0.85	
			},
		}
	},
	{
		{"Vehicle_EngineFuelUse",	AllExoEngineUpMult},
		{
			{--	Upgrade			Min		Max
				"UP_EXENG1",	0.95,	0.99							--0.95,	0.99
			},
			{--	Upgrade			Min		Max
				"UP_EXENG2",	0.9,	0.95							--0.9,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_EXENG3",	0.85,	0.9								--0.85,	0.9	
			},
			{--	Upgrade			Min		Max
				"UP_EXENG4",	0.8,	0.85							--0.8,	0.85	
			},
		}
	},
	{
		{"Vehicle_EngineTopSpeed",	AllExoEngineUpMult},
		{
			{--	Upgrade			Min		Max
				"UP_EXENG1",	1.01,	1.03							--1.01,	1.03
			},
			{
				"UP_EXENG2",	1.03,	1.08							--1.03,	1.08
			},
			{
				"UP_EXENG3",	1.08,	1.15							--1.08,	1.15
			},
			{
				"UP_EXENG4",	1.1,	1.15							--1.1,	1.15
			},
		}
	},
	{
		{"Vehicle_EngineFuelUse",	AllExoEngineUpMult},
		{
			{--	Upgrade			Min		Max
				"UP_EXSUB1",	0.9,	0.99							--0.9,	0.99
			},
			{--	Upgrade			Min		Max
				"UP_EXSUB2",	0.85,	0.9								--0.85,	0.9	
			},
			{--	Upgrade			Min		Max
				"UP_EXSUB3",	0.75,	0.85							--0.75,	0.85	
			},
			{--	Upgrade			Min		Max
				"UP_EXSUB4",	0.7,	0.85							--0.7,	0.85	
			},
		}
	},
	{
		{"Vehicle_EngineTopSpeed",	AllExoEngineUpMult},
		{
			{--	Upgrade			Min		Max
				"UP_EXSUB1",	1.03,	1.05							--1.03,	1.05
			},
			{
				"UP_EXSUB2",	1.05,	1.08							--1.05,	1.08
			},
			{
				"UP_EXSUB3",	1.08,	1.1								--1.08,	1.1
			},
			{
				"UP_EXSUB4",	1.1,	1.1								--1.1,	1.1
			},
		}
	},
	{
		{"Vehicle_GunRate",	AllExoCannonUpMult},
		{
			{--	Upgrade			Min		Max
				"UP_SUGUN1",	0.97,	0.99							--0.97,	0.99
			},
			{--	Upgrade			Min		Max
				"UP_SUGUN2",	0.95,	0.97							--0.95,	0.97
			},
			{--	Upgrade			Min		Max
				"UP_SUGUN3",	0.93,	0.95							--0.93,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_SUGUN4",	0.9,	0.93							--0.9,	0.93	
			},
		}
	},
	{
		{"Vehicle_LaserHeatTime",	AllExoLaserUpMult},
		{
			{--	Upgrade			Min		Max
				"UP_MCLAS2",	0.9,	0.95							--0.9,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_MCLAS3",	0.85,	0.9								--0.85,	0.9	
			},
			{--	Upgrade			Min		Max
				"UP_MCLAS4",	0.8,	0.85							--0.8,	0.85	
			},
		}
	},
	{
		{"Vehicle_GunHeatTime",	AllExoCannonUpMult},
		{
			{--	Upgrade			Min		Max
				"UP_MCGUN2",	0.9,	0.95							--0.9,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_MCGUN3",	0.85,	0.9								--0.85,	0.9	
			},
			{--	Upgrade			Min		Max
				"UP_MCGUN4",	0.8,	0.85							--0.8,	0.85	
			},
		}
	},
	{
		{"Vehicle_GunRate",	AllExoCannonUpMult},
		{
			{--	Upgrade			Min		Max
				"UP_MCGUN2",	0.95,	0.97							--0.95,	0.97
			},
			{--	Upgrade			Min		Max
				"UP_MCGUN3",	0.93,	0.95							--0.93,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_MCGUN4",	0.9,	0.93							--0.9,	0.93	
			},
		}
	},
	{
		{"Vehicle_EngineFuelUse",	AllExoEngineUpMult},
		{
			{--	Upgrade			Min		Max
				"UP_MCENG2",	0.9,	0.95							--0.9,	0.95
			},
			{--	Upgrade			Min		Max
				"UP_MCENG3",	0.85,	0.9								--0.85,	0.9	
			},
			{--	Upgrade			Min		Max
				"UP_MCENG4",	0.8,	0.85							--0.8,	0.85	
			},
		}
	},
}

--For multiplying the bonuses on existing tech / upgrades of values such as 1.1, etc.
function BonusMult (base, mult)
    return
    (base-1)*mult+1
end

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersion..".pak",
["MOD_DESCRIPTION"]	= Description,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["PRECEDING_KEY_WORDS"] = "",
				["MATH_OPERATION"] 		= "", 
				["REPLACE_TYPE"] 		= "",	 
				["SPECIAL_KEY_WORDS"] = {"ID", "UP_SNSUIT",		"StatsType", "Suit_Energy"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"ValueMax",	ExoUpgradeMaxEnergy},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "",
				["MATH_OPERATION"] 		= "", 
				["REPLACE_TYPE"] 		= "",	 
				["SPECIAL_KEY_WORDS"] = {"ID", "UP_SNSUIT",		"StatsType", "Suit_Energy_Regen"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"ValueMax",	ExoUpgradeMaxEnergyRegen},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "",
				["MATH_OPERATION"] 		= "", 
				["REPLACE_TYPE"] 		= "",	 
				["SPECIAL_KEY_WORDS"] = {"ID", "UP_RBSUIT",		"StatsType", "Suit_Energy"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"ValueMax",	ExoUpgradeMaxEnergy},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = "",
				["MATH_OPERATION"] 		= "", 
				["REPLACE_TYPE"] 		= "",	 
				["SPECIAL_KEY_WORDS"] = {"ID", "UP_RBSUIT",		"StatsType", "Suit_Energy_Regen"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"ValueMax",	ExoUpgradeMaxEnergyRegen},
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", "UT_MINER",		"StatsType", "Weapon_Laser_MiningBonus"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Bonus", OpticalDrillBonus}
				}
			},
		}
	},
}}}}



local ChangesToProcTech = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #AdditiveUpgradeChanges do
	local StatID = AdditiveUpgradeChanges[i][1][1]
	local UpgradeMult = AdditiveUpgradeChanges[i][1][2]
	local UpgradeIDs = AdditiveUpgradeChanges[i][2]

	for j = 1, #UpgradeIDs do
		local UpgradeID = UpgradeIDs[j]

			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", UpgradeID, "StatsType", StatID},
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", UpgradeMult},
					{"ValueMax", UpgradeMult}
				}
			}
	end
end
for i = 1, #MultiplicativeUpgradeChanges do
	local StatID = MultiplicativeUpgradeChanges[i][1][1]
	local Mult = MultiplicativeUpgradeChanges[i][1][2]
	local UpgradeIDs = MultiplicativeUpgradeChanges[i][2]

	for j = 1, #UpgradeIDs do
		local UpgradeID = UpgradeIDs[j][1]
		local OldMin = UpgradeIDs[j][2]
		local OldMax = UpgradeIDs[j][3]

			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", UpgradeID, "StatsType", StatID},
				["SECTION_UP"] = 1,
				["INTEGER_TO_FLOAT"] = "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", BonusMult (OldMin, Mult)},
					{"ValueMax", BonusMult (OldMax, Mult)}
				}
			}
	end
end
if DifferentiateExoUpgrades then
ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "UP_SNSUIT",		"StatsType", "Suit_Jetpack_Drain"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			}
			
ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "UP_SNSUIT",		"StatsType", "Suit_Stamina_Strength"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			}
ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "UP_RBSUIT",		"StatsType", "Suit_Armour_Shield_Strength"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			}
			
ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "UP_RBSUIT",		"StatsType", "Suit_Armour_Health"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			}
end