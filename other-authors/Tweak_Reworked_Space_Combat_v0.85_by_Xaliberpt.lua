NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Tweak_Reworked Space Combat_v0.85_by_Xaliber.pak",
["MOD_AUTHOR"]				= "Xaliber",
["LUA_AUTHOR"]				= "DeathWrench and Babscoole",
["NMS_VERSION"]				= "3.82",
["MOD_VERSION"]				= "0.85",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SPACE/AISPACESHIPATTACKDATATABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "PIRATE"},
							["SECTION_ACTIVE"] = {2,3,},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GunDispersionAngle",				"3"},
								{"GunFireRate",						"0.08"},
								{"LaserHealthPoint",				"50"},
								{"AttackWeaponRange",				"1500"},
								{"AttackShootWaitTime",				"0.1"},
								{"AttackShootTimeMin",				"0.1"},
								{"AttackShootTimeMax",				"10"},
								{"AttackMaxTime",					"60"},
								{"AttackApproachOffset",			"800"},
								{"AttackApproachMinRange",			"40"},
								{"AttackTooCloseRange",				"0"},
								{"MinSpeed",						"10"},
								{"MaxSpeed",						"250"},
								{"BoostSpeed",						"3000"},
								{"DirectionBrake",					"4"},
								{"PlanetMinSpeed",					"10"},
								{"PlanetMaxSpeed",					"140"},
								{"PlanetDirectionBrake",			"5.2"},
								{"Roll",							"3"},
								{"MinHeight",						"50"},
						    }
						},					
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "EASY"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GunDispersionAngle",				"4"},
								{"GunFireRate",						"0.1"},
								{"AttackWeaponRange",				"9999999"}, --
								{"AttackShootWaitTime",				"0.1"},
								{"AttackShootTimeMin",				"0.1"},
								{"AttackShootTimeMax",				"10"},
								{"AttackMaxTime",					"60"},
								{"AttackApproachOffset",			"800"},
								{"AttackApproachMinRange",			"40"},
								{"AttackTooCloseRange",				"0"},					
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "MEDIUM"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GunDispersionAngle",				"3"},
								{"GunFireRate",						"0.08"},
								{"AttackWeaponRange",				"9999999"},
								{"AttackShootWaitTime",				"0.1"},
								{"AttackShootTimeMin",				"0.1"},
								{"AttackShootTimeMax",				"10"},
								{"AttackMaxTime",					"60"},
								{"AttackApproachOffset",			"800"},
								{"AttackApproachMinRange",			"40"},
								{"AttackTooCloseRange",				"0"},
								{"NumHitsBeforeBail",				"600"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "HARD"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GunDispersionAngle",				"2"},
								{"GunFireRate",						"0.06"},
								{"LaserHealthPoint",				"50"},
								{"AttackWeaponRange",				"9999999"},
								{"AttackShootWaitTime",				"0.1"},
								{"AttackShootTimeMin",				"0.1"},
								{"AttackShootTimeMax",				"60"},
								{"AttackMaxTime",					"60"},
								{"AttackApproachOffset",			"400"},
								{"AttackApproachMinRange",			"4"},
								{"AttackTooCloseRange",				"0"},
								{"AttackBoostRange",				"9999999"},
								{"AttackBoostAngle",				"210"},
								{"NumHitsBeforeBail",				"600"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SOLO"},
							["SECTION_ACTIVE"] = {1,2,},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GunDispersionAngle",				"1"},
								{"GunFireRate",						"0.05"},
								{"LaserHealthPoint",				"75"},
								{"AttackWeaponRange",				"9999999"},
								{"AttackShootWaitTime",				"0.1"},
								{"AttackShootTimeMin",				"0.1"},
								{"AttackShootTimeMax",				"60"},
								{"AttackMaxTime",					"60"},
								{"AttackApproachOffset",			"400"},
								{"AttackApproachMinRange",			"4"},
								{"AttackTooCloseRange",				"0"},
								{"AttackFlybyOffset",				"50"},
								{"AttackBoostAngle",				"210"},
								{"MinSpeed",						"10"},
								{"MaxSpeed",						"250"},
								{"BoostSpeed",						"3000"},
								{"TurnMin",							"0.6"},
								{"DirectionBrake",					"2.5"},
								{"PlanetMinSpeed",					"10"},
								{"PlanetMaxSpeed",					"120"},
								{"PlanetDirectionBrake",			"5.2"},
								{"Roll",							"2"},
								{"MinHeight",						"15"},
								{"Hovering",						"True"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SOLO"},
							["SECTION_ACTIVE"] = {2,},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Hovering",						"False"},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "POLICE"},
							["SECTION_ACTIVE"] = {2,3,},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GunDispersionAngle",				"2"},
								{"GunFireRate",						"0.06"},
								{"LaserHealthPoint",				"50"},
								{"AttackWeaponRange",				"9999999"},
								{"AttackShootWaitTime",				"0.1"},
								{"AttackShootTimeMin",				"0.1"},
								{"AttackShootTimeMax",				"60"},
								{"AttackMaxTime",					"60"},
								{"AttackApproachOffset",			"400"},
								{"AttackApproachMinRange",			"4"},
								{"AttackTooCloseRange",				"0"},
								{"AttackBoostAngle",				"210"},
								{"MinSpeed",						"10"},
								{"MaxSpeed",						"250"},
								{"BoostSpeed",						"3000"},
								{"TurnMin",							"0.6"},
								{"DirectionBrake",					"4"},
								{"PlanetMinSpeed",					"10"},
								{"PlanetMaxSpeed",					"140"},
								{"PlanetDirectionBrake",			"5.2"},
								{"Roll",							"4"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "TRADER"},
							["SECTION_ACTIVE"] = {1,},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AttackWeaponRange",				"9999999"},
								{"AttackShootWaitTime",				"0.1"},
								{"AttackShootTimeMin",				"0.1"},
								{"AttackShootTimeMax",				"60"},
								{"AttackMaxTime",					"60"},
								{"AttackApproachOffset",			"400"},
								{"AttackApproachMinRange",			"4"},
								{"AttackTooCloseRange",				"0"},
								{"AttackFlybyOffset",				"-200"},
								{"NumHitsBeforeBail",				"460"},
								{"FleeBoost",						"12"},
								{"FleeBrakeTime",					"10"},
								{"FleeRepositionTime",				"5"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTY"},
							["SECTION_ACTIVE"] = {2,3,},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GunDispersionAngle",				"1"},
								{"GunFireRate",						"0.05"},
								{"LaserHealthPoint",				"75"},
								{"AttackWeaponRange",				"9999999"},
								{"AttackShootWaitTime",				"0.1"},
								{"AttackShootTimeMin",				"0.1"},
								{"AttackShootTimeMax",				"60"},
								{"AttackReadyTime",					"0.5"},
								{"AttackMaxTime",					"60"},
								{"AttackApproachOffset",			"400"},
								{"AttackApproachMinRange",			"4"},
								{"AttackTooCloseRange",				"0"},
								{"AttackBoostAngle",				"210"},
								{"MinSpeed",						"10"},
								{"MaxSpeed",						"250"},
								{"BoostSpeed",						"3000"},
								{"TurnMin",							"0.6"},
								{"DirectionBrake",					"4"},
								{"PlanetMinSpeed",					"10"},
								{"PlanetMaxSpeed",					"140"},
								{"PlanetDirectionBrake",			"5.2"},
								{"Roll",							"2"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTY"},
							["SECTION_ACTIVE"] = {3,},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed",						"400"},
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_FREIGHT"},
							["SECTION_ACTIVE"] = {2,},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GunDispersionAngle",				"2"},
								{"GunFireRate",						"0.06"},
								{"LaserHealthPoint",				"50"},
								{"AttackWeaponRange",				"9999999"},
								{"AttackAngle",						"50"},
								{"AttackShootWaitTime",				"0.1"},
								{"AttackShootTimeMin",				"0.1"},
								{"AttackShootTimeMax",				"60"},
								{"AttackMaxTime",					"60"},
								{"AttackApproachOffset",			"400"},
								{"AttackApproachMinRange",			"40"},
								{"AttackFlybyOffset",				"-200"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "STANDARD"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",						"10"},
								{"MaxSpeed",						"200"},
								{"BoostSpeed",						"1200"},
								{"DirectionBrake",					"4"},
								{"PlanetMinSpeed",					"10"},
								{"PlanetMaxSpeed",					"120"},
								{"PlanetDirectionBrake",			"5.2"},
								{"Roll",							"2"},
								{"MinHeight",						"15"},
								{"Hovering",						"True"},
							}
						},
}}}}}}