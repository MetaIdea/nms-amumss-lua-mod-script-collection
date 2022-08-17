Author			= "Gumsk"
ModName			= "gLonely"
ModNameSub		= "Uncharted Galaxy"
BaseDescription	= "Generates a lonely galaxy"
GameVersion		= "399"
ModVersion		= "a"

FileSource1	= "GCGRAPHICSGLOBALS.GLOBAL.MBIN"
FileSource2 = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"
FileSource3 = "GCFREIGHTERBASEGLOBALS.GLOBAL.MBIN"
FileSource4 = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMELISTPERSTARTYPE.MBIN"
FileSource5 = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"
FileSource6 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"
FileSource7 = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN"
FileSource8 = "METADATA\SIMULATION\NPCS\NPCSPAWNTABLE.MBIN"
FileSource9 = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]			= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]			= BaseDescription,
	["MOD_AUTHOR"]				= Author,
	["NMS_VERSION"]				= GameVersion,
	["GLOBAL_INTEGER_TO_FLOAT"]	= "FORCE",
	["MODIFICATIONS"]			= {
		{
			["MBIN_CHANGE_TABLE"] = {
			--=============================================================================
			--Increased system size and planet distance visibility by Fabricator
			--=============================================================================
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"FarClipDistance",10000000}, --5000000
							},
						},
					}
				},

				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"SolarSystemMaximumRadiusMassive",4000000}, --1000000
							},
						},
			--=============================================================================
			--Fewer Freighter and Pirate Encounters by Gumsk
			--=============================================================================				
						{
							["VALUE_CHANGE_TABLE"] = {
								{"LocatorScatterChanceOfCapitalShips",0},		--5
								{"LocatorScatterChanceOfPirates",0},			--20
							}
						},
			--=============================================================================
			--More Abandoned and Uncharted systems by Gumsk
			--=============================================================================
						{
							["PRECEDING_KEY_WORDS"] = {"AbandonedSystemProbability"},
							["VALUE_CHANGE_TABLE"] = {
								{"Yellow",0},
								{"Green",0},
								{"Blue",0},
								{"Red",0},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"EmptySystemProbability"},
							["VALUE_CHANGE_TABLE"] = {
								{"Yellow",1},
								{"Green",1},
								{"Blue",1},
								{"Red",1},
							},
						},
			--=============================================================================
			--Fewer NPC Ships by Gumsk
			--=============================================================================
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
							-- ["LINE_OFFSET"] = "+1",
							-- ["VALUE_CHANGE_TABLE"] = {
								-- {"IGNORE",0},
							-- },
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
							-- ["LINE_OFFSET"] = "+2",
							-- ["VALUE_CHANGE_TABLE"] = {
								-- {"IGNORE",0},
							-- },
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
							-- ["LINE_OFFSET"] = "+3",
							-- ["VALUE_CHANGE_TABLE"] = {
								-- {"IGNORE",0},
							-- },
						-- },			
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
							-- ["LINE_OFFSET"] = "+4",
							-- ["VALUE_CHANGE_TABLE"] = {
								-- {"IGNORE",0},
							-- },
						-- },	
					}
				},
			--=============================================================================
			--Fewer Freighter NPCs
			--=============================================================================
				{
					["MBIN_FILE_SOURCE"] = FileSource3,
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"MaxTotalNPCCount",0}, 				--24
								{"MinTotalRoomsRequiredPerNPC",1000},	--2
							},
						},		
					}
				},
			--=============================================================================
			--More Dead and Weird Biomes by Gumsk
			--=============================================================================
				{
					["MBIN_FILE_SOURCE"] = FileSource4,
					["EXML_CHANGE_TABLE"] = {
						{
							["MATH_OPERATION"] = "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Dead",3}, 	--3x normal
							},
						},
						{
							["MATH_OPERATION"] = "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Weird",2},	--2x normal
							},
						},
					}
				},
			--=============================================================================
			--Fewer Civilized Pulse Encounters by Gumsk
			--=============================================================================
				{
					["MBIN_FILE_SOURCE"] = FileSource5,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SPACE_EGG"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",7},							 	--7
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BLACK_HOLE"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",1},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ATLAS_BEACON1"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",1},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ATLAS_BEACON2"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",1},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEIRD_METAL"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",1},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","NEURON"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",1},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","RELIC_GATE"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","GAS_BRAIN"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",1},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SPINNER"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",1},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","HORROR"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",1},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","JELLYFISH"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",1},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","CRYSTAL"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",1},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LINE_GEO"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",1},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BONES"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",1},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","EYE"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","TRADER_HAIL"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--12
							},
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Id","REPAIR_HAIL"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--4
							},
						},
			--=============================================================================
			--Disable Random AI Ship Flyovers by Gumsk
			--=============================================================================
						{
							["PRECEDING_KEY_WORDS"] = {"FlybySpawns","Count"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",0}, 	--1
								{"y",0}, 	--3
							},
						},	

					}
				},
			--=============================================================================
			--Fewer Overall Pulse Encounters by Gumsk
			--=============================================================================
				{
					["MBIN_FILE_SOURCE"] = FileSource6,
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"PulseEncounterCheckTimer",20}, 			--1
								-- {"PulseEncounterChance",0.000001}, 			--0.00066
								-- {"PulseEncounterChanceStandard",0.000001}, 	--0.0066
								-- {"PulseEncounterChanceRed",0.000001}, 		--0.001
								-- {"PulseEncounterChanceGreen",0.000001}, 	--0.002
								-- {"PulseEncounterChanceBlue",0.000001}, 		--0.003
							},
						},
			--=============================================================================
			--Fewer Freighter Rescue Missions by Gumsk
			--=============================================================================
						{
							["VALUE_CHANGE_TABLE"] = {
								{"WarpsBetweenBattles",1000}, 				--5
								{"HoursBetweenBattles",1000}, 				--3
							},
						},
			--=============================================================================
			--Fewer Freighters on Warp-In by Gumsk
			--=============================================================================
						{
							["VALUE_CHANGE_TABLE"] = {
								{"FreighterStartPecent",0}, 				--60
							},
						},
			--=============================================================================
			--Disable Freighter Warp-Ins by Gumsk
			--=============================================================================
						{
							["SPECIAL_KEY_WORDS"] = {"FreighterTimers","GcExperienceTimers.xml","High","Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",999999},								--600
								{"y",999999}, 								--900
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FreighterTimers","GcExperienceTimers.xml","Normal","Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",999999},								--600
								{"y",999999}, 								--900
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"FreighterTimers","GcExperienceTimers.xml","Low","Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",999999},								--600
								{"y",999999}, 								--900
							},
						},
			--=============================================================================
			--Disable Pirate Planetary Raids by Gumsk
			--=============================================================================
						{
							["SPECIAL_KEY_WORDS"] = {"PlanetPirateTimers","GcExperienceTimers.xml","High","Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",0}, 									--600
								{"y",0}, 									--900
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PlanetPirateTimers","GcExperienceTimers.xml","Normal","Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",0}, 									--800
								{"y",0}, 									--1000
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"HardPlanetPirateTimers","GcExperienceTimers.xml","High","Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",0}, 									--600
								{"y",0}, 									--900
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"HardPlanetPirateTimers","GcExperienceTimers.xml","Normal","Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",0}, 									--800
								{"y",0}, 									--1000
							},
						},
			--=============================================================================
			--Disable Frigate Flybys by Gumsk
			--=============================================================================
						{
							["SPECIAL_KEY_WORDS"] = {"FrigateFlybyTimer","Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",99999}, 								--600
								{"y",99999}, 								--1200
							},
						},
					},
				},
			--=============================================================================
			--Disable Trade Routes by Gumsk
			--=============================================================================
				{
					["MBIN_FILE_SOURCE"] = FileSource7,
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"DisableTradeRoutes","True"}, 				--False
							},
						},
					},
				},
			--=============================================================================
			--Reduce NPCs by Gumsk
			--=============================================================================
				{
					["MBIN_FILE_SOURCE"] = FileSource8,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"PlacementRuleId","FILLER","PlacementNodeName","NPCHIREABLE_"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"FractionOfNodesActive",0},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PlacementNodeName","NPCBLACKMARKET_"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"MustPlace","False"},
								{"SpawnChance",0.3},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PlacementNodeName","NPCSUIT_"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"MustPlace","False"},
								{"SpawnChance",0.35},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PlacementNodeName","NPCSHIP_"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"MustPlace","False"},
								{"SpawnChance",0.35},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PlacementNodeName","NPCWEAP_"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"MustPlace","False"},
								{"SpawnChance",0.35},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PlacementNodeName","NPCVEH_"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"MustPlace","False"},
								{"SpawnChance",0.35},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PlacementNodeName","NPCMISSIONSHOP_"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"MustPlace","False"},
								{"SpawnChance",0.5},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PlacementNodeName","NPCGUILDSHOP_"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"MustPlace","False"},
								{"SpawnChance",0.2},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PlacementNodeName","NPCSCRAPSHOP_"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"MustPlace","False"},
								{"SpawnChance",0.35},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"PlacementNodeName","NPCMAPSHOP_"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"MustPlace","False"},
								{"SpawnChance",0.3},
							},
						},
					},
				},
			--=============================================================================
			--Fewer Buildings by Gumsk
			--=============================================================================
				{
					["MBIN_FILE_SOURCE"] = FileSource9,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Shelter","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--9
								{"Mid","0"}, 									--9
								{"Full","0"}, 									--9
								{"Weird","0"}, 									--0
								{"HalfWeird","0"}, 								--4
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Abandoned","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"},	 								--1
								{"Low","0"}, 									--3
								{"Mid","0"}, 									--3
								{"Full","0"}, 									--3
								{"Weird","0"}, 									--2
								{"HalfWeird","0"}, 								--3
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Terminal","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--5
								{"Mid","0"}, 									--5
								{"Full","0"},	 								--5
								{"Weird","0"}, 									--0
								{"HalfWeird","0"},	 							--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Shop","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--3
								{"Mid","0"}, 									--3
								{"Full","0"}, 									--3
								{"Weird","0"}, 									--0
								{"HalfWeird","0"},	 							--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Outpost","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--1
								{"Mid","0"}, 									--1
								{"Full","0"},	 								--1
								{"Weird","0"}, 									--0
								{"HalfWeird","0"}, 								--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Waypoint","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--5
								{"Mid","0"}, 									--5
								{"Full","0"}, 									--5
								{"Weird","0"},	 								--1
								{"HalfWeird","0"},	 							--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Beacon","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--7
								{"Mid","0"}, 									--7
								{"Full","0"}, 									--7
								{"Weird","0"},	 								--0
								{"HalfWeird","0"},	 							--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"RadioTower","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--1
								{"Low","0"}, 									--3
								{"Mid","0"}, 									--3
								{"Full","0"}, 									--3
								{"Weird","0"},	 								--1
								{"HalfWeird","0"},	 							--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Observatory","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--1
								{"Low","0"}, 									--3
								{"Mid","0"}, 									--3
								{"Full","0"},	 								--3
								{"Weird","0"},	 								--1
								{"HalfWeird","0"}, 								--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Depot","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--4
								{"Mid","0"}, 									--4
								{"Full","0"},	 								--4
								{"Weird","0"}, 									--0
								{"HalfWeird","0"},	 							--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Factory","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--3
								{"Mid","0"}, 									--3
								{"Full","0"},	 								--3
								{"Weird","0"}, 									--0
								{"HalfWeird","0"},	 							--0
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Harvester","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--1
								{"Mid","0"}, 									--1
								{"Full","0"},	 								--1
								{"Weird","0"}, 									--0
								{"HalfWeird","0"}, 							--0
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Ruin","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"},	 								--1
								{"Low","0"}, 									--1
								{"Mid","0"}, 									--1
								{"Full","0"},	 								--1
								{"Weird","0"}, 									--0
								{"HalfWeird","0"},	 							--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Debris","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--3
								{"Mid","0"}, 									--3
								{"Full","0"}, 									--3
								{"Weird","0"},	 								--1
								{"HalfWeird","0"}, 								--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"DamagedMachine","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--4
								{"Mid","0"}, 									--4
								{"Full","0"}, 									--4
								{"Weird","0"},	 								--1
								{"HalfWeird","0"},	 							--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"DistressSignal","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--1
								{"Low","0"}, 									--1
								{"Mid","0"}, 									--1
								{"Full","0"}, 									--1
								{"Weird","0"}, 									--1
								{"HalfWeird","0"},	 							--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Base","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--2
								{"Mid","0"}, 									--2
								{"Full","0"}, 									--2
								{"Weird","0"}, 									--0
								{"HalfWeird","0"},	 							--0
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"MissionTower","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--3
								{"Mid","0"}, 									--3
								{"Full","0"}, 									--3
								{"Weird","0"}, 									--1
								{"HalfWeird","0"}, 								--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"CrashedFreighter","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--1
								{"Low","0"}, 									--1
								{"Mid","0"}, 									--1
								{"Full","0"}, 									--1
								{"Weird","0"}, 									--1
								{"HalfWeird","0"}, 								--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TreasureRuins","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"},	 								--1
								{"Low","0"}, 									--1
								{"Mid","0"}, 									--1
								{"Full","0"},	 								--1
								{"Weird","0"}, 									--1
								{"HalfWeird","0"}, 								--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"WaterCrashedFreighter","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--1
								{"Mid","0"}, 									--1
								{"Full","0"}, 									--1
								{"Weird","0"}, 									--0
								{"HalfWeird","0"},	 							--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"WaterTreasureRuins","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--1
								{"Mid","0"}, 									--1
								{"Full","0"}, 									--1
								{"Weird","0"}, 									--0
								{"HalfWeird","0"},	 							--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"WaterAbandoned","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--3
								{"Mid","0"}, 									--3
								{"Full","0"}, 									--3
								{"Weird","0"}, 									--0
								{"HalfWeird","0"},	 							--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"WaterDistressSignal","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--1
								{"Mid","0"}, 									--1
								{"Full","0"}, 									--1
								{"Weird","0"}, 									--0
								{"HalfWeird","0"}, 								--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"NPCDistressSignal","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--1
								{"Mid","0"}, 									--1
								{"Full","0"}, 									--1
								{"Weird","0"}, 									--0
								{"HalfWeird","0"}, 								--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"NPCDebris","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--1
								{"Mid","0"}, 									--1
								{"Full","0"}, 									--1
								{"Weird","0"}, 									--0
								{"HalfWeird","0"},	 							--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"LargeBuilding","GcBuildingDefinitionData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead","0"}, 									--0
								{"Low","0"}, 									--1
								{"Mid","0"}, 									--1
								{"Full","0"},	 								--1
								{"Weird","0"}, 									--0
								{"HalfWeird","0"}, 								--0
							},
						},
					},
				},
			}
		}
	}
}