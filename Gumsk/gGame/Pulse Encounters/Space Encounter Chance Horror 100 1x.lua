ChanceMultiplier	= "1"

Author				= "Gumsk"
ModName				= "Space Encounter Chance"
ModNameSub			= "HORROR Guaranteed "..ChanceMultiplier.."x"
BaseDescription		= "Makes space pulse encounters more likely"
GameVersion			= "407"
ModVersion			= "a"

--[[ Files Modified:
GCGAMEPLAYGLOBALS.GLOBAL.MBIN
METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN
--]]

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
			--Modified overall pulse encounter chance by Gumsk
			--=============================================================================
				{
					["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["MATH_OPERATION"]  = "*",
							["VALUE_CHANGE_TABLE"] = {
								-- {"PulseEncounterCheckTimer",1}, 						--1
								-- {"PulseEncounterChance", 1},	 						--0.00066
								{"PulseEncounterChanceStandard", ChanceMultiplier}, 	--0.0066
								{"PulseEncounterChanceRed", ChanceMultiplier}, 			--0.001
								{"PulseEncounterChanceGreen", ChanceMultiplier}, 		--0.002
								{"PulseEncounterChanceBlue", ChanceMultiplier},			--0.003
							},
						},
					},
				},

				{
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SPACE_EGG"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--7
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BLACK_HOLE"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DERELICT_1"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--2
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DERELICT_2"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","DERELICT_3"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ATLAS_BEACON1"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ATLAS_BEACON2"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","RADIO_PILLAR"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WEIRD_METAL"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","NEURON"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
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
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SPINNER"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","GYRO_BALL"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","GEK_HEAD"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","HORROR"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",100},						 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","JELLYFISH"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","RELAY_BEACON"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","CRYSTAL"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","CUBE_STATION"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ASTEROID_BEACON"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","LINE_GEO"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SPACE_CLOCK"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BONES"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","EYE"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","PRISON"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","SILOS"},
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
							["SPECIAL_KEY_WORDS"] = {"Id","RELIC_HAIL"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--2
							},
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Id","REPAIR_HAIL"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},							 	--4
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ALIEN_SHIP1"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",900},							--900
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ALIEN_SHIP2"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",900},							--900
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ALIEN_SHIP3"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",900},							--900
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ALIEN_SHIP4"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",900},							--900
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ALIEN_SHIP5"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",900},							--900
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BIOSHIP3_POI"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",1000},							--1000
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","MOTHERSHIP"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},								--0
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ALIEN_SHIP_LOOP"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",9000},							--9000
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","PIRATECLUE_HAIL"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",10000},							--10000
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_BETRAY"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},								--0
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","PIRATE_ATLAS"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},								--0
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FREIGHTER_PODS"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},								--0
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BIO_FRIG"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",1},								--1
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","BIO_FRIG_FIRST"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},								--0
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","ALIEN_PIRATES"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},								--0
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","S8_POD_POI"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},								--0
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","S9_PIRATE"},
							["VALUE_CHANGE_TABLE"] = {
								{"SpawnChance",0},								--0
							},
						},
					},
				},
			}
		}
	}
}