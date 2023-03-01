Author = "Gumsk"
ModName = "gTech"
ModNameSub = "Installs+Jetpack"
BaseDescription = "Infinite jetpack and enable restricted technology for alien ships and exocraft"
GameVersion = "411"
ModVersion = "a"
FileSource = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

--Jetpack
	JetpackTank = 9999											--2.75 ; Jetpack tank size
	JetpackDrain = 1											--1 ; Life support drain during jetpack use.
	JetpackRegen = 9999											--1 ; 7x tank size = instant refill.

--Jetpack main upgrade (UT_JET)
	UT_JetpackTank = 0.2										--0.2 ; Jetpack tank size
	UT_JetpackRegen = 1.1										--1.1 ; 7x tank size = instant refill.
	UT_JetpackStamina = 0.1										--0.1 ; Stamina bonus from this upgrade
	UT_JetpackStaminaRegen = 1.2								--1.2 ; STamina regen bonus from this upgrade

--Mech Adjustments
	--Mech Jetpack
	MechVehicle_BoostTanks = 9999							--1 - Infinite

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource,
					["EXML_CHANGE_TABLE"]	= {

					--Jetpack
						{ --JetpackTank
							["SPECIAL_KEY_WORDS"] = {"ID", "JET1","StatsType","Suit_Jetpack_Tank"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] = {
								{"Bonus", JetpackTank},
							},
						},
						{ --JetpackDrain
							["SPECIAL_KEY_WORDS"] = {"ID", "JET1","StatsType","Suit_Jetpack_Drain"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] = {
								{"Bonus", JetpackDrain},
							},
						},
						{ --JetpackRegen
							["SPECIAL_KEY_WORDS"] = {"ID", "JET1","StatsType","Suit_Jetpack_Refill"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] = {
								{"Bonus", JetpackRegen},
							},
						},
						{ --JetpackTank
							["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET","StatsType","Suit_Jetpack_Tank"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] = {
								{"Bonus", UT_JetpackTank},
							},
						},
						{ --JetpackRegen
							["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET","StatsType","Suit_Jetpack_Refill"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] = {
								{"Bonus", UT_JetpackRegen},
							},
						},
						{ --Stamina bonus
							["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET","StatsType","Suit_Stamina_Strength"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] = {
								{"Bonus", UT_JetpackStamina},
							},
						},
						{ --Stamina regen bonus
							["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET","StatsType","Suit_Stamina_Recovery"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] = {
								{"Bonus", UT_JetpackStaminaRegen},
							},
						},

					--Minotaur
						{ --Mech Boost Tanks
							["SPECIAL_KEY_WORDS"] = {"ID", "MECH_BOOST","StatsType","Vehicle_BoostTanks"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] = {
								{"Bonus", MechVehicle_BoostTanks},
							},
						},
						{ --Exocraft combined hazard protection
							["SPECIAL_KEY_WORDS"] = {"ID","MECH_PROT","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllVehicles"},
							},
						},

					--Alien Installs
						{ --Emergency Warp
							["SPECIAL_KEY_WORDS"] = {"ID","UT_QUICKWARP","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllShips"}
							}
						},
						{ --Teleport Receiver
							["SPECIAL_KEY_WORDS"] = {"ID","SHIP_TELEPORT","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllShips"}
							}
						},
						{ --Rocket Launcher
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPROCKETS","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllShips"}
							}
						},
						{ --Rockets Upgrade
							["SPECIAL_KEY_WORDS"] = {"ID","UT_ROCKETS","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllShips"}
							}
						},
						{ --Photonix Core
							["SPECIAL_KEY_WORDS"] = {"ID","PHOTONIX_CORE","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllShips"}
							}
						},
						{ --Ship Shotgun
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPSHOTGUN","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllShips"}
							}
						},
						{ --Ship Shotgun Upgrade
							["SPECIAL_KEY_WORDS"] = {"ID","T_SHIPSHOT","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllShips"}
							}
						},
						{ --Ship Shotgun Upgrade
							["SPECIAL_KEY_WORDS"] = {"ID","UT_SHIPSHOT","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllShips"}
							}
						},
						{ --Ship Minigun
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPMINIGUN","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllShips"}
							}
						},
						{ --Ship Minigun Upgrade
							["SPECIAL_KEY_WORDS"] = {"ID","T_SHIPMINI","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllShips"}
							}
						},
						{ --Ship Minigun Upgrade
							["SPECIAL_KEY_WORDS"] = {"ID","UT_SHIPMINI","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllShips"}
							}
						},
						{ --Ship Infra-Knife
							["SPECIAL_KEY_WORDS"] = {"ID","SHIPPLASMA","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllShips"}
							}
						},
						{ --Ship Infra-Knife Upgrade
							["SPECIAL_KEY_WORDS"] = {"ID","T_SHIPBLOB","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllShips"}
							}
						},
						{ --Ship Infra-Knife Upgrade
							["SPECIAL_KEY_WORDS"] = {"ID","UT_SHIPBLOB","Category","GcTechnologyCategory.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"TechnologyCategory","AllShips"}
							}
						},

					--Core Tech
						{ --Multitool Mining Laser Deletable
							["SPECIAL_KEY_WORDS"] = {"ID", "LASER"},
							["VALUE_CHANGE_TABLE"] = {
								{"Core", "False"},
							},
						},
					}
				}
			}
		}
	}
}
