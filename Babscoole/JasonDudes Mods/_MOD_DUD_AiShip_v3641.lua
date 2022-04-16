NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_MOD_DUD_AiShip_v3641.pak",
["MOD_AUTHOR"]				= "jasondude7116",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.75",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{			
				{
					["MBIN_FILE_SOURCE"] 	= "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]   =
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"MinimumCircleTimeBeforeLanding",      "20"},
								{"FillUpOutposts",        				"True"},
								{"TradingPostTraderRequestTime",        "60"},
								{"TradingPostTraderRange",        		"1500"},
								{"SpaceStationTraderRequestTime",       "30"},
								{"DockingLandingTime",        			"2"},
								{"DockingLandingTimeDirectional",       "2"},
								{"DockingRotateSpeed",        			"0.7"},
								{"DockWaitMinTime",        				"60"},
								{"DockWaitMaxTime",        				"120"},
								{"LandingManuevreTime",        			"2"},
								{"LandingManeuvreAlignTime",        	"2"},
								{"CircleApproachDistance",        		"300"},
								{"GroundCircleHeight",        			"90"},
								{"AtmosphereEffectMin",        			"0"},
								{"AtmosphereEffectMax",        			"0"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Colour.xml",},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"A",	"0"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"OutpostLanding",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"PlanetMinSpeed",	"40"},
							},
						},						
					}
				},	
				{
					["MBIN_FILE_SOURCE"]	= "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{	
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FREIGHT"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"PlanetEngine",	"STANDARD"},
								{"Health",			"10800"}
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","AI_EASY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"PlanetEngine",	"STANDARD"},
								{"Health",			"18600"}
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","AI_MEDIUM",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Engine",			"PIRATE"},
								{"PlanetEngine",	"PIRATE"},
								{"Health",			"24000"}
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","AI_HARD",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Engine",			"SOLO"},
								{"PlanetEngine",	"SOLO"},
								{"Health",			"42000"}
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","AI_SOLO",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"PlanetEngine",	"SOLO"},
								{"Health",			"90000"}
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","PIRATE",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"Behaviour",		"PIRATE"},
								{"Engine",			"PIRATE"},
								{"PlanetEngine",	"PIRATE"},
								{"Health",			"18600"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","POLICE",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Engine",			"POLICE"},
								{"PlanetEngine",	"POLICE"},
								{"Health",			"42000"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADE_EASY"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"PlanetEngine",	"STANDARD"},
								{"Health",			"18000"}
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADE_MED"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Engine",			"PIRATE"},
								{"PlanetEngine",	"PIRATE"},
								{"Health",			"24000"}
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADE_HARD"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Engine",			"SOLO"},
								{"PlanetEngine",	"SOLO"},
								{"Health",			"42000"}
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Engine",			"BOUNTY"},
								{"PlanetEngine",	"BOUNTY"},
								{"Health",			"60000"}
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","PIRATE",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"AttackWeaponRange",		"2000"},
							    {"AttackShootWaitTime",		"0.1"},
							    {"AttackShootTimeMax",		"6"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackApproachOffset",	"200"},
							    {"AttackApproachMinRange",	"100"},
							    {"AttackApproachMaxRange",	"150"},
							    {"AttackTooCloseRange",		"100"},
							    {"NumHitsBeforeBail",		"1600"},
							    {"NumHitsBeforeReposition",	"2000"},
							    {"FleeBoost",				"32"},
							    {"FleeRepositionTime",		"5"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","EASY",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"AttackWeaponRange",		"2000"},
							    {"AttackShootWaitTime",		"0.1"},
							    {"AttackShootTimeMax",		"6"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackApproachOffset",	"200"},
							    {"AttackApproachMinRange",	"100"},
							    {"AttackApproachMaxRange",	"150"},
							    {"AttackTooCloseRange",		"100"},
							    {"NumHitsBeforeBail",		"1600"},
							    {"NumHitsBeforeReposition",	"2000"},
							    {"FleeBoost",				"32"},
							    {"FleeRepositionTime",		"5"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","MEDIUM",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"AttackWeaponRange",		"2000"},
							    {"AttackShootWaitTime",		"0.1"},
							    {"AttackShootTimeMax",		"6"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackApproachOffset",	"200"},
							    {"AttackApproachMinRange",	"100"},
							    {"AttackApproachMaxRange",	"150"},
							    {"AttackTooCloseRange",		"100"},
							    {"NumHitsBeforeBail",		"2000"},
							    {"NumHitsBeforeReposition",	"2000"},
							    {"FleeBoost",				"40"},
							    {"FleeRepositionTime",		"5"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","HARD",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"AttackWeaponRange",		"2000"},
							    {"AttackShootWaitTime",		"0.1"},
							    {"AttackShootTimeMin",		"1"},								
							    {"AttackShootTimeMax",		"8"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackApproachOffset",	"100"},
							    {"AttackApproachMinRange",	"100"},
							    {"AttackApproachMaxRange",	"150"},
							    {"AttackTooCloseRange",		"100"},
							    {"NumHitsBeforeBail",		"2000"},
							    {"NumHitsBeforeReposition",	"2000"},
							    {"FleeBoost",				"48"},
							    {"FleeRepositionTime",		"5"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","SOLO",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"AttackWeaponRange",		"2000"},
							    {"AttackShootTimeMin",		"1"},								
							    {"AttackShootTimeMax",		"12"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackMaxTime",			"12"},
							    {"AttackApproachOffset",	"100"},
							    {"AttackApproachMinRange",	"100"},
							    {"AttackApproachMaxRange",	"150"},
							    {"AttackTooCloseRange",		"100"},
								{"AttackBoostRange",		"2000"},
							    {"AttackBoostAngle",		"10"},
								{"NumHitsBeforeBail",		"4000"},								
							    {"NumHitsBeforeReposition",	"4000"},
							    {"FleeBoost",				"48"},
							    {"FleeUrgentBrakeTime",		"3"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","POLICE",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"AttackWeaponRange",		"2000"},
							    {"AttackShootWaitTime",		"0.1"},								
							    {"AttackShootTimeMax",		"6"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackApproachOffset",	"100"},
							    {"AttackApproachMinRange",	"100"},
							    {"AttackApproachMaxRange",	"150"},
							    {"AttackTooCloseRange",		"100"},
							    {"NumHitsBeforeBail",		"1600"},
							    {"NumHitsBeforeReposition",	"2000"},
							    {"FleeBoost",				"32"},
							    {"FleeRepositionTime",		"5"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"AttackWeaponRange",		"2000"},
							    {"AttackShootWaitTime",		"0.1"},							
							    {"AttackShootTimeMax",		"6"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackApproachOffset",	"100"},
							    {"AttackApproachMinRange",	"100"},
							    {"AttackApproachMaxRange",	"150"},
							    {"AttackTooCloseRange",		"100"},
							    {"AttackTurnMaxMinTime",	"0.5"},
								{"NumHitsBeforeBail",		"1600"},
							    {"NumHitsBeforeReposition",	"2000"},
							    {"FleeBoost",				"48"},
								{"FleeBrakeTime",			"10"},
							    {"FleeRepositionTime",		"5"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"AttackWeaponRange",		"2000"},
							    {"AttackShootWaitTime",		"0.1"},								
							    {"AttackShootTimeMax",		"6"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackApproachOffset",	"100"},
							    {"AttackApproachMinRange",	"100"},
							    {"AttackApproachMaxRange",	"150"},
							    {"AttackTooCloseRange",		"100"},
							    {"NumHitsBeforeBail",		"1600"},
							    {"NumHitsBeforeReposition",	"2000"},
							    {"FleeBoost",				"32"},
							    {"FleeRepositionTime",		"5"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","PLANET",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"GunDispersionAngle",		"2"},
							    {"AttackWeaponRange",		"2000"},
							    {"AttackShootTimeMin",		"1"},
							    {"AttackShootTimeMax",		"10"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackMaxTime",			"10"},
							    {"AttackApproachMinRange",	"100"},
							    {"AttackApproachMaxRange",	"150"},
							    {"AttackBoostRange",		"2000"},
							    {"AttackBoostAngle",		"30"},
							    {"AttackMaxPlanetHeight",	"100"},
							    {"AttackTurnMultiplierMax",	"0.75"},
							    {"AttackTurnMaxMinTime",	"1"},
							    {"AttackTurnMaxTimeRange",	"5"},
							    {"FleeBrake",				"1"},
							    {"FleeBoost",				"16"},
							    {"FleeBrakeTime",			"5"},
							    {"FleeRepositionTime",		"5"},
							    {"FleeMinTime",				"0.5"},
							    {"FleeMaxTime",				"10"},
							    {"FleeUrgentRange",			"100"},
							    {"AttackTargetMaxRange",	"800"},
							    {"AttackTargetOffsetMin",	"100"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_FREIGHT",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"AttackWeaponRange",		"2000"},
								{"AttackAngle",				"50"},
							    {"AttackShootWaitTime",		"0.1"},								
							    {"AttackShootTimeMax",		"6"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackApproachOffset",	"100"},
							    {"AttackApproachMinRange",	"100"},
							    {"AttackApproachMaxRange",	"150"},
							    {"AttackTooCloseRange",		"100"},
							    {"NumHitsBeforeBail",		"1600"},
							    {"NumHitsBeforeReposition",	"2000"},
							    {"FleeBoost",				"32"},
							    {"FleeRepositionTime",		"5"},
							},
						},						
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"EngineTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","STANDARD",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"MinSpeed",				"100"},
								{"MaxSpeed",				"150"},
							    {"BoostSpeed",				"1200"},								
							    {"DirectionBrake",			"12"},
							    {"PlanetMinSpeed",			"50"},
							    {"PlanetMaxSpeed",			"120"},
							    {"PlanetDirectionBrake",	"5.2"},
							    {"Roll",					"2"},
							    {"MinHeight",				"15"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"EngineTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","SOLO",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"MinSpeed",				"100"},
								{"MaxSpeed",				"180"},
							    {"BoostSpeed",				"3000"},
								{"TurnMin",					"0.6"},								
							    {"DirectionBrake",			"12"},
							    {"PlanetMinSpeed",			"50"},
							    {"PlanetMaxSpeed",			"120"},
							    {"PlanetDirectionBrake",	"5.2"},
							    {"Roll",					"2"},
							    {"MinHeight",				"15"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"EngineTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","PIRATE",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"MinSpeed",				"100"},
								{"MaxSpeed",				"180"},
							    {"BoostSpeed",				"2400"},
								{"TurnMax",					"0.9"},								
							    {"DirectionBrake",			"12"},
							    {"PlanetMinSpeed",			"50"},
							    {"PlanetMaxSpeed",			"140"},
							    {"PlanetDirectionBrake",	"5.2"},
							    {"Roll",					"3"},
							    {"MinHeight",				"50"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"EngineTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","POLICE",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"MinSpeed",				"100"},
								{"MaxSpeed",				"180"},
							    {"BoostSpeed",				"3000"},
								{"TurnMin",					"0.6"},								
							    {"DirectionBrake",			"12"},
							    {"PlanetMinSpeed",			"50"},
							    {"PlanetMaxSpeed",			"160"},
							    {"PlanetDirectionBrake",	"5.2"},
							    {"Roll",					"4"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"EngineTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"MinSpeed",				"100"},
								{"MaxSpeed",				"150"},
							    {"BoostSpeed",				"3000"},
								{"TurnMin",					"0.6"},								
							    {"DirectionBrake",			"12"},
							    {"PlanetMinSpeed",			"50"},
							    {"PlanetMaxSpeed",			"150"},
							    {"PlanetDirectionBrake",	"10.2"},
							    {"MinHeight",				"15"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"EngineTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","BOUNTY",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"MinSpeed",				"100"},
								{"MaxSpeed",				"300"},
							    {"BoostSpeed",				"2400"},
								{"TurnMin",					"0.6"},								
							    {"DirectionBrake",			"12"},
							    {"PlanetMinSpeed",			"50"},
							    {"PlanetMaxSpeed",			"160"},
							    {"PlanetDirectionBrake",	"5.2"},
							    {"Roll",					"2"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"EngineTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","PLANET",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"PlanetMinSpeed",	"40"},
							},
						},						
					}
				},
			}
		}
	}
}
