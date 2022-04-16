SimpleInteractionTypeEnum = --NMS 2.09
{
"Interact", "Treasure", "Beacon", "Scan", "Save", "CallShip", "CallVehicle", "Word", "Tech", "GenericReward", 
"Feed", "Ladder", "ClaimBase", "TeleportStartPoint", "TeleportEndPoint", "Portal", "Chest", "ResourceHarvester", 
"BaseCapsule", "Hologram", "NPCTerminalMessage", "VehicleBoot", "BiomeHarvester", "FreighterGalacticMap", "FreighterChest",
"Collectable", "Chair", "BaseTreasureChest", "SpawnObject", "NoiseBox" 
}

InteractionTypeEnum = --NMS 2.09
{
"None", "Shop", "NPC", "NPC_Secondary", "NPC_Anomaly", "NPC_Anomaly_Secondary", "Ship", "Outpost", "SpaceStation", "RadioTower", "Monolith", "Factory",
"AbandonedShip", "Harvester", "Observatory", "TradingPost", "DistressBeacon", "Portal", "Plaque", "AtlasStation", "AbandonedBuildings", "WeaponTerminal", "SuitTerminal", "SignalScanner",
"Teleporter_Base", "Teleporter_Station", "ClaimBase", "NPC_Freighter_Captain", "NPC_HIRE_Weapons", "NPC_HIRE_Weapons_Wait", "NPC_HIRE_Farmer", "NPC_HIRE_Farmer_Wait", "NPC_HIRE_Builder",
"NPC_HIRE_Builder_Wait", "NPC_HIRE_Vehicles", "NPC_HIRE_Vehicles_Wait", "MessageBeacon", "NPC_HIRE_Scientist", "NPC_HIRE_Scientist_Wait", "NPC_Recruit", "NPC_Freighter_Captain_Secondary",
"NPC_Recruit_Secondary", "Vehicle", "MessageModule", "TechShop", "VehicleRaceStart", "BuildingShop", "MissionGiver", "HoloHub", "HoloExplorer", "HoloSceptic", "HoloNoone", "PortalRuneEntry",
"PortalActivate", "CrashedFreighter", "GraveInCave", "GlitchyStoryBox", "NetworkPlayer", "NetworkMonument", "AnomalyComputer", "AtlasPlinth", "Epilogue", "GuildEnvoy", "ManageFleet",
"ManageExpeditions", "Frigate", "CustomiseCharacter", "CustomiseShip", "CustomiseWeapon", "CustomiseVehicle", "ClaimBaseAnywhere", "FleetNavigator", "FleetCommandPost", "StoryUtility",
"MPMissionGiver", "SpecialsShop", "WaterRuin", "LocationScanner", "ByteBeat", "NPC_CrashSite", "NPC_Scavenger", "BaseGridPart", "NPC_Freighter_Crew", "NPC_Freighter_Crew_Owned",
"AbandonedShip_With_NPC", "ShipPilot", "NexusMilestones", "NexusDailyMission", "CreatureFeeder", "ExoticExtra1", "ExoticExtra2", "ExoticExtra3", "ExoticExtra4", "ExoticExtra5",
"ExoticExtra6", "MapShop", "NPC_Closure", "StorageContainer", "Teleporter_Nexus" 
}

--"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CHARCUSTOMISER/CHARCUSTOMISER/ENTITIES/SHIPCUSTOMISER.ENTITY.MBIN"
--"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CHARCUSTOMISER/CHARCUSTOMISER/ENTITIES/MULTITOOLCUSTOMISER.ENTITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ExchangeCharCustomizerAction.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.09",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CHARCUSTOMISER\CHARCUSTOMISER.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ATTACHMENT",}, 
							--["VALUE_MATCH"] = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CHARCUSTOMISER\CHARCUSTOMISER\ENTITIES\CHARCUSTOMISER.ENTITY.MBIN]],
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value",	[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CHARCUSTOMISER\CHARCUSTOMISER\ENTITIES\SHIPCUSTOMISER.ENTITY.MBIN]]} -- Original "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CHARCUSTOMISER\CHARCUSTOMISER\ENTITIES\CHARCUSTOMISER.ENTITY.MBIN"
								--{"InteractionType", "CustomiseShip"}
							}
						}
					}
				}
			}
		}
	}
}