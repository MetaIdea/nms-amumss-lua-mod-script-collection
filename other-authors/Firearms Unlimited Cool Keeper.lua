ModName = "FireArmsUnlimitedCoolKeeper.pak"
Author = "Striker0420"
Version = "3.97"

TechnologyTablePath = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
SpaceShipGlobals =  "GCSPACESHIPGLOBALS.GLOBAL.MBIN"

ShipWeaponsOverheatTime = 999999
ShipWeaponsFireRate = 55
ShipWeaponsRange = 15000

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName,
["MOD_AUTHOR"]				= Author,
["LUA_AUTHOR"]				= Author,
["NMS_VERSION"]				= Version,
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= TechnologyTablePath, -- Location of the File
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPROCKETS"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsOverheatTime} -- makes it so weapons never over heat
								
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPROCKETS"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Rate"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsFireRate} -- Original value 1  
								
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPROCKETS"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsRange} -- Original value 5000  
								
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPGUN1"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsOverheatTime}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPGUN1"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsRange} -- Original value 1500
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPGUN1"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Rate"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsFireRate} -- Original value 1
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","UT_SHIPGUN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsOverheatTime} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPSHOTGUN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsOverheatTime} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPSHOTGUN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsRange} -- Original value 500 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPSHOTGUN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Rate"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsFireRate} -- Original value 14 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPMINIGUN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsOverheatTime} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPMINIGUN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "20000"} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPMINIGUN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Rate"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", ShipWeaponsFireRate} -- Original value 9
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPPLASMA"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsOverheatTime} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPPLASMA"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Rate"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus", ShipWeaponsFireRate} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPPLASMA"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsRange} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","UT_SHIPBLOB"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsOverheatTime} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","UT_SHIPBLOB"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsOverheatTime} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPLAS1"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Lasers_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsOverheatTime} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","UT_SHIPLAS"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Lasers_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsOverheatTime} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPLAS_ALIEN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Lasers_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsOverheatTime} 
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","UT_SHIPSHOT"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  "5"} -- Original value 1.25
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPGUN_ALIEN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsOverheatTime} -- Original value 1.25
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPGUN_ALIEN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Range"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsRange} -- Original value 1.25
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"ID","SHIPGUN_ALIEN"},
								["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Rate"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",  ShipWeaponsRange} -- Original value 1.25
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "",
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
              					{ "UsesAmmo", "False"},
							}
						} --2863 global replacements
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= SpaceShipGlobals,
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LockTargetRange",					ShipWeaponsRange}, -- Original 2000
								{"TargetLockRange",		ShipWeaponsRange}, -- Original 10000
								{"MissileLockTime",	"0"},		-- Original 3
								{"MissileLockSpeedUp",				"10"},	--ORIGINAL 2
								{"AimDistanceRange",	ShipWeaponsRange},		
								{"ShipEnterRange",	"20"},	-- Original 7		
								
							}
						}
					},
				},
			},
		}
	},
}