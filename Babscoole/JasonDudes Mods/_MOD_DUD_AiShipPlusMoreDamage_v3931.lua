NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_MOD_DUD_AiShipPlusMoreDamage_v3931.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.93",
["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{			
				{
					["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"MinimumCircleTimeBeforeLanding",      "20"},
								{"FillUpOutposts",        				"False"},
								{"TradingPostTraderRequestTime",        "60"},
								--{"TradingPostTraderRange",        		"1500"},
								{"SpaceStationTraderRequestTime",       "30"},
								{"DockingLandingTime",        			"2"},
								{"DockingLandingTimeDirectional",       "2"},
								--{"DockingRotateSpeed",        			"0.7"},
								{"DockWaitMinTime",        				"60"},
								{"DockWaitMaxTime",        				"120"},
								{"LandingManuevreTime",        			"2"},
								{"LandingManeuvreAlignTime",        	"2"},
								{"CircleApproachDistance",        		"300"},
								{"GroundCircleHeight",        			"90"},
								--{"AtmosphereEffectMin",        			"0"},
								--{"AtmosphereEffectMax",        			"0"},
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
					}
				},	
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{	
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_EASY"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Health",			"21000"},
								{"LevelledExtraHealth",	"42000"},								
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","PIRATE",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Health",			"21000"},
								{"LevelledExtraHealth",	"42000"},								
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_HARD"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Health",			"50000"},
								{"LevelledExtraHealth",	"100000"},								
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","POLICE",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Health",			"50000"},
								{"LevelledExtraHealth",	"100000"},	
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Health",			"24000"},
								{"LevelledExtraHealth",	"48000"},	
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_ESCORT"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Health",			"54000"},
								{"LevelledExtraHealth",	"108000"},	
							},
						},						
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Health",			"24000"},
								{"LevelledExtraHealth",	"48000"},	
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","RAID_DOGFIGHT"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Health",			"24000"},
								{"LevelledExtraHealth",	"48000"},	
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","PLANET_FLYBY"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Health",			"21000"},
								{"LevelledExtraHealth",	"42000"},	
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_C"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Health",			"7500"},
								{"LevelledExtraHealth",	"15000"},	
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_B"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Health",			"10000"},
								{"LevelledExtraHealth",	"20000"},	
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_A"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Health",			"12500"},
								{"LevelledExtraHealth",	"25000"},	
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Definitions",},
							["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_S"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Health",			"15000"},
								{"LevelledExtraHealth",	"30000"},	
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","PLANET",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"GunDispersionAngle",		"4"},
							    {"AttackWeaponRange",		"2000"},
								{"AttackShootWaitTime",		"1"},
							    {"AttackShootTimeMin",		"2"},
							    {"AttackShootTimeMax",		"3"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackMaxTime",			"4"},
							    --{"AttackApproachOffset",	"200"},								
							    {"AttackApproachMinRange",	"150"},
							    {"AttackApproachMaxRange",	"250"},
							    {"AttackTooCloseRange",	"50"},
							    {"AttackBoostTimeToRange",		"3"},								
							    --{"AttackBoostRange",		"3"},
							    --{"AttackBoostAngle",		"40"},
							    --{"AttackMaxPlanetHeight",	"1000"},
							    --{"AttackTurnMultiplierMax",	"0.75"},
							    --{"AttackTurnMaxMinTime",	"1"},
							    --{"AttackTurnMaxTimeRange",	"5"},
							    {"NumHitsBeforeBail",	"6000"},
							    {"NumHitsBeforeReposition",	"5000"},								
							    --{"FleeBrake",				"1"},
							    {"FleeBoost",				"80"},
							   -- {"FleeBrakeTime",			"5"},
							   -- {"FleeRepositionTime",		"5"},
							    {"FleeRepositionAngleMin",	"45"},
							    {"FleeRepositionAngleMax",	"180"},
							   -- {"FleeUrgentBrake",	"0.8"},
							    {"FleeUrgentBoost",	"1.5"},
							   -- {"FleeUrgentBrakeTime",	"0.4"},
							   -- {"FleeRepositionUrgentTime",	"2"},
							    {"FleeRepositionUrgentAngleMin",	"90"},
							    {"FleeRepositionUrgentAngleMax",	"180"},
							   -- {"FleeRange",	"400"},
							    {"FleeMinTime",				"2"},
							   -- {"FleeMaxTime",				"10"},
							    {"FleeUrgentRange",			"100"},
							   -- {"AttackTargetMaxRange",	"800"},
							   -- {"AttackTargetOffsetMin",	"100"},
							},
						},						
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","SPACE",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"GunDispersionAngle",		"4"},
							    {"AttackWeaponRange",		"2000"},
							    --{"AttackShootWaitTime",		"0.1"},								
							    {"AttackShootTimeMin",		"2"},
							    --{"AttackShootTimeMax",		"4"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackMaxTime",			"4"},
							    {"AttackApproachOffset",	"150"},								
							    {"AttackApproachMinRange",	"150"},
							    {"AttackApproachMaxRange",	"250"},
							    {"AttackTooCloseRange",	"50"},
							    {"AttackFlybyOffset",	"150"},
							    {"AttackBoostTimeToRange",		"3"},								
							    --{"AttackBoostRange",		"550"},
							    --{"AttackBoostAngle",		"40"},
							    --{"AttackMaxPlanetHeight",	"1000"},
							    --{"AttackTurnMultiplierMax",	"0.75"},
							    --{"AttackTurnMaxMinTime",	"1"},
							    --{"AttackTurnMaxTimeRange",	"5"},
							    {"NumHitsBeforeBail",	"6000"},
							    {"NumHitsBeforeReposition",	"5000"},								
							    --{"FleeBrake",				"1"},
							    {"FleeBoost",				"100"},
							   -- {"FleeBrakeTime",			"5"},
							   -- {"FleeRepositionTime",		"5"},
							    {"FleeRepositionAngleMin",	"45"},
							   -- {"FleeRepositionAngleMax",	"180"},
							   -- {"FleeUrgentBrake",	"0.8"},
							    {"FleeUrgentBoost",	"1.5"},
							   -- {"FleeUrgentBrakeTime",	"0.4"},
							   -- {"FleeRepositionUrgentTime",	"2"},
							    {"FleeRepositionUrgentAngleMin",	"90"},
							   -- {"FleeRepositionUrgentAngleMax",	"180"},
							   -- {"FleeRange",	"400"},
							    {"FleeMinTime",				"1.5"},
							   -- {"FleeMaxTime",				"10"},
							   -- {"FleeUrgentRange",			"100"},
							   -- {"AttackTargetMaxRange",	"800"},
							   -- {"AttackTargetOffsetMin",	"100"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"GunDispersionAngle",		"4"},
							    {"AttackWeaponRange",		"2000"},
							    {"AttackShootWaitTime",		"1"},	
							    {"AttackShootTimeMin",		"1"},
								{"AttackShootTimeMax",		"3"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackMaxTime",			"4"},
							    --{"AttackApproachOffset",	"200"},								
							    {"AttackApproachMinRange",	"150"},
							    {"AttackApproachMaxRange",	"250"},
							    {"AttackTooCloseRange",	"50"},
							    --{"AttackFlybyOffset",	"150"},
							    {"AttackBoostTimeToRange",		"3"},									
							    --{"AttackBoostRange",		"550"},
							    --{"AttackBoostAngle",		"40"},
							    --{"AttackMaxPlanetHeight",	"1000"},
							    --{"AttackTurnMultiplierMax",	"0.75"},
							    --{"AttackTurnMaxMinTime",	"1"},
							    --{"AttackTurnMaxTimeRange",	"5"},
							    {"NumHitsBeforeBail",	"6000"},
							    {"NumHitsBeforeReposition",	"5000"},								
							    --{"FleeBrake",				"1"},
							    {"FleeBoost",				"80"},
							   -- {"FleeBrakeTime",			"5"},
							   -- {"FleeRepositionTime",		"5"},
							    {"FleeRepositionAngleMin",	"45"},
							    {"FleeRepositionAngleMax",	"90"},
							   -- {"FleeUrgentBrake",	"0.8"},
							    {"FleeUrgentBoost",	"1.5"},
							   -- {"FleeUrgentBrakeTime",	"0.4"},
							   -- {"FleeRepositionUrgentTime",	"2"},
							    {"FleeRepositionUrgentAngleMin",	"90"},
							    {"FleeRepositionUrgentAngleMax",	"180"},
							   -- {"FleeRange",	"400"},
							    {"FleeMinTime",				"2"},
							   -- {"FleeMaxTime",				"2"},
							    {"FleeUrgentRange",			"100"},
							   -- {"AttackTargetMaxRange",	"800"},
							   -- {"AttackTargetOffsetMin",	"100"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_WEAK",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"GunDispersionAngle",		"4"},
								{"GunFireRate",		"0.2"},
							    {"AttackWeaponRange",		"2000"},
							    {"AttackShootWaitTime",		"1"},										
							    --{"AttackShootTimeMin",		"0.5"},
							    {"AttackShootTimeMax",		"3"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackMaxTime",			"4"},
							    --{"AttackApproachOffset",	"200"},								
							    {"AttackApproachMinRange",	"150"},
							    {"AttackApproachMaxRange",	"250"},
							    {"AttackTooCloseRange",	"50"},
							    --{"AttackFlybyOffset",	"150"},
							    {"AttackBoostTimeToRange",		"3"},									
							    --{"AttackBoostRange",		"550"},
							    --{"AttackBoostAngle",		"40"},
							    --{"AttackMaxPlanetHeight",	"1000"},
							    --{"AttackTurnMultiplierMax",	"0.75"},
							    --{"AttackTurnMaxMinTime",	"1"},
							    --{"AttackTurnMaxTimeRange",	"5"},
							    {"NumHitsBeforeBail",	"4000"},
							    {"NumHitsBeforeReposition",	"3000"},								
							    --{"FleeBrake",				"1"},
							    {"FleeBoost",				"40"},
							   -- {"FleeBrakeTime",			"5"},
							   -- {"FleeRepositionTime",		"5"},
							    {"FleeRepositionAngleMin",	"45"},
							    {"FleeRepositionAngleMax",	"90"},
							   -- {"FleeUrgentBrake",	"0.8"},
							    {"FleeUrgentBoost",	"1.5"},
							   -- {"FleeUrgentBrakeTime",	"0.4"},
							   -- {"FleeRepositionUrgentTime",	"2"},
							    {"FleeRepositionUrgentAngleMin",	"90"},
							   -- {"FleeRepositionUrgentAngleMax",	"180"},
							   -- {"FleeRange",	"400"},
							   -- {"FleeMinTime",				"0.5"},
							   -- {"FleeMaxTime",				"10"},
							   -- {"FleeUrgentRange",			"100"},
							   -- {"AttackTargetMaxRange",	"800"},
							   -- {"AttackTargetOffsetMin",	"100"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"BehaviourTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_STRONG",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    {"GunDispersionAngle",		"3"},
								{"GunFireRate",		"0.15"},
							    {"AttackWeaponRange",		"2000"},
							    {"AttackAngle",		"40"},	
							    {"AttackShootWaitTime",		"1"},								
							    --{"AttackShootTimeMin",		"2"},
							    --{"AttackShootTimeMax",		"3"},
							    {"AttackReadyTime",			"0.1"},
							    {"AttackMaxTime",			"4"},
							    --{"AttackApproachOffset",	"200"},								
							    {"AttackApproachMinRange",	"150"},
							    {"AttackApproachMaxRange",	"250"},
							    {"AttackTooCloseRange",	"50"},
							    --{"AttackFlybyOffset",	"150"},
							    {"AttackBoostTimeToRange",		"3"},									
							    {"AttackBoostRange",		"2000"},
							    --{"AttackBoostAngle",		"40"},
							    --{"AttackMaxPlanetHeight",	"1000"},
							    --{"AttackTurnMultiplierMax",	"0.75"},
							    --{"AttackTurnMaxMinTime",	"1"},
							    --{"AttackTurnMaxTimeRange",	"5"},
							    {"NumHitsBeforeBail",	"6000"},
							    {"NumHitsBeforeReposition",	"5000"},								
							    --{"FleeBrake",				"1"},
							    {"FleeBoost",				"80"},
							   -- {"FleeBrakeTime",			"5"},
							   -- {"FleeRepositionTime",		"5"},
							    {"FleeRepositionAngleMin",	"45"},
							    {"FleeRepositionAngleMax",	"90"},
							   -- {"FleeUrgentBrake",	"0.8"},
							    {"FleeUrgentBoost",	"1.5"},
							   -- {"FleeUrgentBrakeTime",	"0.4"},
							   -- {"FleeRepositionUrgentTime",	"2"},
							    {"FleeRepositionUrgentAngleMin",	"90"},
							   -- {"FleeRepositionUrgentAngleMax",	"180"},
							   -- {"FleeRange",	"400"},
							    {"FleeMinTime",				"1.5"},
							   -- {"FleeMaxTime",				"10"},
							   -- {"FleeUrgentRange",			"100"},
							   -- {"AttackTargetMaxRange",	"800"},
							   -- {"AttackTargetOffsetMin",	"100"},
							},
						},						
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"EngineTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","SPACE_EASY",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"MinSpeed",				"50"},
								{"MaxSpeed",				"160"},
								{"TurnMax",					"1.5"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"EngineTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","SPACE_HARD",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"MinSpeed",				"50"},
								{"MaxSpeed",				"180"},
								{"TurnMax",					"1.75"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"EngineTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","PLANET_EASY",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
							    --{"MinSpeed",				"100"},
								{"MaxSpeed",				"105"},
								{"TurnMax",					"1.5"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"EngineTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","PLANET_HARD",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"MinSpeed",				"50"},
								{"MaxSpeed",				"125"},
								{"TurnMax",					"1.75"},
							},
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"EngineTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","RAID_BUILDING",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"MinSpeed",				"40"},
								{"MaxSpeed",				"105"},
								--{"TurnMax",					"1.5"},
							}	
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"EngineTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_SLOW",},
							["VALUE_CHANGE_TABLE"] =
							{
							    --{"MinSpeed",				"40"},
								{"MaxSpeed",				"160"},
								--{"TurnMax",					"1.5"},
							}	
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"EngineTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","SQUADRON_FAST",},
							["VALUE_CHANGE_TABLE"] =
							{
							    --{"MinSpeed",				"40"},
								{"MaxSpeed",				"180"},
								{"TurnMax",					"1.5"},
							}	
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShieldTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","STANDARD",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"Health",				"10000"},
							    {"LevelledExtraHealth",	"20000"},
							    {"RechargeTime",		"8"},
							    {"RechargeDelayTime",	"3"},
							}	
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShieldTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","STRONG",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"Health",				"20000"},
							    {"LevelledExtraHealth",	"30000"},
							    {"RechargeTime",		"12"},
							    {"RechargeDelayTime",	"3"},
							}	
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShieldTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","FAST",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"Health",				"5000"},
							    --{"LevelledExtraHealth",	"10000"},
							    {"RechargeTime",		"3"},
							    {"RechargeDelayTime",	"2"},
							}	
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"ShieldTable",},
							["SPECIAL_KEY_WORDS"] = {"Id","FAST_STRONG",},
							["VALUE_CHANGE_TABLE"] =
							{
							    {"Health",				"20000"},
							    {"LevelledExtraHealth",	"30000"},
							    {"RechargeTime",		"8"},
							    {"RechargeDelayTime",	"3"},
							}	
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "SHIPGUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DefaultDamage",		"225"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "TRADERGUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DefaultDamage",		"250"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "POLICEGUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DefaultDamage",		"250"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "AISHIPGUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DefaultDamage",		"250"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "FREIGHTGUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DefaultSpeed",		"2500"},						
								{"DefaultDamage",		"500"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "COP_FREIGHTGUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DefaultSpeed",		"2500"},						
								{"DefaultDamage",		"500"}
							}
						},						
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "SQUADGUN"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DefaultDamage",		"275"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "COP_FREIGHTER"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HitWidth",		"50"},
								{"PulseAmplitude",		"0.2"},								
								{"DefaultDamage",		"300"}
							}
						},							
						{
							["SPECIAL_KEY_WORDS"]   = {"Id", "AI_FREIGHTER"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HitWidth",		"50"},
								{"PulseAmplitude",		"0.2"},								
								{"DefaultDamage",		"300"}
							}
						},						
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\TABLES\DAMAGETABLE.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ROBOTGUNDMG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"3" },
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ROBOTGUNDMG_MED",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"6" },
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ROBOTGRENADEDMG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "2" }
							}
						},							
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ROBOTBIGGUN",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"9" },							
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LASERDAMAGE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"4" },
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FIENDSPIT_DMG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"4" },							
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","PLANTDMG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"40" },
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","AISHIPGUN",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"15" },							
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SHIPLASER",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"10" },	
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN1",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN2",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"18" },							
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYGUN3",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"20" },							
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER1",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"15" },	
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER3",},
							["SECTION_ACTIVE"] = {1,},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"20" },	
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BOUNTYLASER3",},
							["SECTION_ACTIVE"] = {2,},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"30" },	
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WALKERLASER",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"10" },
								--{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","POLICEGUN",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","POLICELASER",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", 			"16" },							
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SMALLASTEROID",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "60" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MEDIUMASTEROID",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "70" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LARGEASTEROID",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "80" }
							}
						},						
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERGUN",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "30" },
								{ "HardModeMultiplier", "2" }								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTERLASER",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "30" },
								{ "HardModeMultiplier", "2" }								
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","GASPLANT",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "40" },
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","GRABPLANT_DMG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "40" },
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","VENUSFLY_DMG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "40" },
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BARRELEXPLODE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "HardModeMultiplier", "2" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SCUTTLERSPITDMG",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "15" },
								{ "HardModeMultiplier", "2" }
							}
						},
						-- {
							-- ["SPECIAL_KEY_WORDS"] = {"Id","BASETURRETPDMG",},
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { "HardModeMultiplier", "2" }
							-- }
						-- },
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LIGHTNING",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "150" },
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","METEOR",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "150" },
								{ "HardModeMultiplier", "1.5" }
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TORNADO",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "Damage", "70" }
							}
						},					
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\TURRET\TURRETA\ENTITIES\TURRET.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"TurretShootPauseTime",    "1"},
								{"TurretBurstCount",        "30"},
								{"TurretDispersionAngle",   "0"},
								{"Health",       "6000"},
							},
						},						
					}
				},				
			}
		}
	}
}
