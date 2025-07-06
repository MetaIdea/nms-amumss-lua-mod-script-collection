ModName = "_Extra Savage Sentinels by ExosolarX"
GameVersion = "5_61"
Description = "Increases the difficulty of Sentinels by changing aggression, firerate, range, sight distance, etc."

--Multiplier to apply to the base health of all planetary Sentinels
SentHealth =				3*1.1							--was 4 in PTSd 3.99
--Multiplier to apply to the base health increase per level of all planetary Sentinels
	--Seems like the game may only apply one "level" worth of bonus health? In a quick test, an end game character with lots of S Class gear faced sentinels that only had one instance of the "health on level" applied
SentLevelHealth =			2*1.1							--was 1 in PTSd 3.99

function AddWaveSequence (Set, Index)
    return
[[<Property name="Waves" value="GcSentinelSpawnSequenceStep" _index="]]..Set..[[">
          <Property name="WavePool">
			<Property name="WavePool" value="]]..Set..[[" />
          </Property>
        </Property>]]
end

function AddSpawnToWave (Spawn)
    return
[[          <Property name="WavePool" value="]]..Spawn..[[" />]]
end

--Adds a new set of just a Sentinel Quad with nothing else
AddQuadSoloSet =
[[<Property name="SentinelSpawns" value="GcSentinelSpawnWave" _id="QUAD_SOLO">
      <Property name="Id" value="QUAD_SOLO" />
      <Property name="Spawns">
        <Property name="Spawns" value="GcSentinelSpawnData" _index="0">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="Quad" />
          </Property>
          <Property name="MinAmount" value="1" />
          <Property name="MaxAmount" value="1" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="0" />
    </Property>]]

function AddSentinels (SentinelType, MinAmount, MaxAmount, Index)
    return
[[<Property name="Spawns" value="GcSentinelSpawnData" _index="]]..Index..[[">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="]]..SentinelType..[[" />
          </Property>
          <Property name="MinAmount" value="]]..MinAmount..[[" />
          <Property name="MaxAmount" value="]]..MaxAmount..[[" />
        </Property>]]
end
--Possible SentinelTypes are: PatrolDrone	CombatDrone		MedicDrone	SummonerDrone	Quad	Mech	Walker	CorruptedDrone	SpiderQuad	SpiderQuadMini

OneDroneThreeFourMinis = 
[[<Property name="SentinelSpawns" value="GcSentinelSpawnWave" _id="1D_34MS">
      <Property name="Id" value="1D_34MS" />
      <Property name="Spawns">
        <Property name="Spawns" value="GcSentinelSpawnData" _index="0">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="1" />
          <Property name="MaxAmount" value="1" />
        </Property>
        <Property name="Spawns" value="GcSentinelSpawnData" _index="1">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="3" />
          <Property name="MaxAmount" value="4" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="1" />
    </Property>]]

TwoThreeDronesThreeFourMinis = 
[[<Property name="SentinelSpawns" value="GcSentinelSpawnWave" _id="23D_34MS">
      <Property name="Id" value="23D_34MS" />
      <Property name="Spawns">
        <Property name="Spawns" value="GcSentinelSpawnData" _index="0">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="2" />
          <Property name="MaxAmount" value="3" />
        </Property>
        <Property name="Spawns" value="GcSentinelSpawnData" _index="1">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="3" />
          <Property name="MaxAmount" value="4" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="1" />
    </Property>]]

OneDroneOneSpiderThreeFourMinis = 
[[<Property name="SentinelSpawns" value="GcSentinelSpawnWave" _id="1D_1S_34MS">
      <Property name="Id" value="1D_1S_34MS" />
      <Property name="Spawns">
        <Property name="Spawns" value="GcSentinelSpawnData" _index="0">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="1" />
          <Property name="MaxAmount" value="1" />
        </Property>
		<Property name="Spawns" value="GcSentinelSpawnData" _index="1">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="SpiderQuad" />
          </Property>
          <Property name="MinAmount" value="1" />
          <Property name="MaxAmount" value="1" />
        </Property>
        <Property name="Spawns" value="GcSentinelSpawnData" _index="2">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="3" />
          <Property name="MaxAmount" value="4" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="1" />
    </Property>]]
	
TwoDronesOneSpiderFourFiveMinis = 
[[<Property name="SentinelSpawns" value="GcSentinelSpawnWave" _id="2D_1S_45MS">
      <Property name="Id" value="2D_1S_45MS" />
      <Property name="Spawns">
        <Property name="Spawns" value="GcSentinelSpawnData" _index="0">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="2" />
          <Property name="MaxAmount" value="2" />
        </Property>
		<Property name="Spawns" value="GcSentinelSpawnData" _index="1">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="SpiderQuad" />
          </Property>
          <Property name="MinAmount" value="1" />
          <Property name="MaxAmount" value="1" />
        </Property>
        <Property name="Spawns" value="GcSentinelSpawnData" _index="2">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="4" />
          <Property name="MaxAmount" value="5" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="1" />
    </Property>]]

TwoThreeDronesTwoSpidersFourFiveMinis = 
[[<Property name="SentinelSpawns" value="GcSentinelSpawnWave" _id="23D_2S_45MS">
      <Property name="Id" value="23D_2S_45MS" />
      <Property name="Spawns">
        <Property name="Spawns" value="GcSentinelSpawnData" _index="0">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="2" />
          <Property name="MaxAmount" value="3" />
        </Property>
		<Property name="Spawns" value="GcSentinelSpawnData" _index="1">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="SpiderQuad" />
          </Property>
          <Property name="MinAmount" value="2" />
          <Property name="MaxAmount" value="2" />
        </Property>
        <Property name="Spawns" value="GcSentinelSpawnData" _index="2">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="4" />
          <Property name="MaxAmount" value="5" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="2" />
    </Property>]]

ThreeFourDronesTwoSpidersFourFiveMinis = 
[[<Property name="SentinelSpawns" value="GcSentinelSpawnWave" _id="34D_2S_45MS">
      <Property name="Id" value="34D_2S_45MS" />
      <Property name="Spawns">
        <Property name="Spawns" value="GcSentinelSpawnData" _index="0">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="3" />
          <Property name="MaxAmount" value="4" />
        </Property>
		<Property name="Spawns" value="GcSentinelSpawnData" _index="1">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="SpiderQuad" />
          </Property>
          <Property name="MinAmount" value="2" />
          <Property name="MaxAmount" value="2" />
        </Property>
        <Property name="Spawns" value="GcSentinelSpawnData" _index="2">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="4" />
          <Property name="MaxAmount" value="5" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="2" />
    </Property>]]

FourFiveDronesFiveSixMinis = 
[[<Property name="SentinelSpawns" value="GcSentinelSpawnWave" _id="45D_56MS">
      <Property name="Id" value="45D_56MS" />
      <Property name="Spawns">
        <Property name="Spawns" value="GcSentinelSpawnData" _index="0">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="4" />
          <Property name="MaxAmount" value="5" />
        </Property>
        <Property name="Spawns" value="GcSentinelSpawnData" _index="1">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="5" />
          <Property name="MaxAmount" value="6" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="1" />
    </Property>]]

FourFiveDronesThreeSpidersFiveSixMinis = 
[[<Property name="SentinelSpawns" value="GcSentinelSpawnWave" _id="45D_3S_56MS">
      <Property name="Id" value="45D_3S_56MS" />
      <Property name="Spawns">
        <Property name="Spawns" value="GcSentinelSpawnData" _index="0">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="4" />
          <Property name="MaxAmount" value="5" />
        </Property>
		<Property name="Spawns" value="GcSentinelSpawnData" _index="1">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="SpiderQuad" />
          </Property>
          <Property name="MinAmount" value="3" />
          <Property name="MaxAmount" value="3" />
        </Property>
       <Property name="Spawns" value="GcSentinelSpawnData" _index="2">
          <Property name="Type" value="GcSentinelTypes">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="5" />
          <Property name="MaxAmount" value="6" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="2" />
    </Property>]]

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
["MOD_AUTHOR"]				= "Exosolar",
["LUA_AUTHOR"]				= "Babscoole",		--Edited by Xen0nex
["MOD_DESCRIPTION"]			= Description,
["NMS_VERSION"]				= "5.57",
["EXML_CREATE"] = "FALSE",
["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{	--This section added by Xen0nex
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CombatSpawnMinWantedTime", 10},				--10				Unknown Function
								{"WantedTimeoutAggressive", 5},					--5					Unknown Function
								{"ExperienceDroneSpawnOffset", 75}				--25				Sets how far from the player Patrol Drones spawn
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WantedTimeout"},		--Controls how long Sentinels will Search for the player if they run away after a Crime
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WantedTimeout", 		20},						--10	seconds at Wanted level 1
								{"WantedTimeout", 		20},						--15	seconds at Wanted level 2, plus whatever the lower Wanted level times are	(e.g. 15 + 10 = 25 seconds total in vanilla)
								{"WantedTimeout", 		15},						--10	seconds at Wanted level 3, plus whatever the lower Wanted level times are
								{"WantedTimeout", 		15},						--15	seconds at Wanted level 4, plus whatever the lower Wanted level times are
								{"WantedTimeout", 		10}							--10	seconds at Wanted level 5, plus whatever the lower Wanted level times are
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WantedEscalateTime"},	--Possibly how long Sentinels will search for the player if they run away after destroying a wave of sentinels, which increases the Wanted level???
							["VALUE_CHANGE_TABLE"] 	= 
							{	--Old		New
								{"WantedEscalateTime", 		-1},					---1
								{"WantedEscalateTime", 		30},					--30
								{"WantedEscalateTime", 		60},					--60
								{"WantedEscalateTime", 		90},					--90
								{"WantedEscalateTime", 		-1}						---1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WantedExtremeEscalateTime"},	--Seems to be how long Sentinels will search for the player if they run away after a Crime on an Extreme Sentinel Planet???
							["VALUE_CHANGE_TABLE"] 	= 
							{	--Old		New
								{"WantedExtremeEscalateTime", 		-1},			---1
								{"WantedExtremeEscalateTime", 		30},			--20
								{"WantedExtremeEscalateTime", 		45},			--40	seconds at Wanted level 3 total (doesn't seem to add lower level Wanted times)
								{"WantedExtremeEscalateTime", 		120},			--120
								{"WantedExtremeEscalateTime", 		-1}				---1
							}
						}
					}
				},
				{	--This section also added by Xen0nex, controls which kind and how many Sentinels spawn in various circumstances
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						--adds the various new spawn sets
						{
							["SPECIAL_KEY_WORDS"] = {"SentinelSpawns","GcSentinelSpawnWave"},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = AddQuadSoloSet
						},
						{
							["SPECIAL_KEY_WORDS"] = {"SentinelSpawns","GcSentinelSpawnWave"},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = OneDroneThreeFourMinis
						},
						{
							["SPECIAL_KEY_WORDS"] = {"SentinelSpawns","GcSentinelSpawnWave"},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = TwoThreeDronesThreeFourMinis
						},
						{
							["SPECIAL_KEY_WORDS"] = {"SentinelSpawns","GcSentinelSpawnWave"},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = OneDroneOneSpiderThreeFourMinis
						},
						{
							["SPECIAL_KEY_WORDS"] = {"SentinelSpawns","GcSentinelSpawnWave"},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = TwoDronesOneSpiderFourFiveMinis
						},
						{
							["SPECIAL_KEY_WORDS"] = {"SentinelSpawns","GcSentinelSpawnWave"},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = TwoThreeDronesTwoSpidersFourFiveMinis
						},
						{
							["SPECIAL_KEY_WORDS"] = {"SentinelSpawns","GcSentinelSpawnWave"},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = ThreeFourDronesTwoSpidersFourFiveMinis
						},
						{
							["SPECIAL_KEY_WORDS"] = {"SentinelSpawns","GcSentinelSpawnWave"},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = FourFiveDronesFiveSixMinis
						},
						{
							["SPECIAL_KEY_WORDS"] = {"SentinelSpawns","GcSentinelSpawnWave"},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = FourFiveDronesThreeSpidersFiveSixMinis
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_4",	"Waves", "GcSentinelSpawnSequenceStep"},		--Wanted Level 4 spawns
							["SECTION_ACTIVE"] = {1,},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = AddWaveSequence ("QUAD_SOLO", 2)			--Should add a single Sentinel Quad spawn between the initial drones and the Mech
						},
						--WANTED_4_EX already has Quads
						--{
							--["SPECIAL_KEY_WORDS"] = {"Id","WANTED_4_EX",	"Waves", "GcSentinelSpawnSequenceStep"},	--Wanted Level 4, "Extreme" version spawns?
							--["ADD_OPTION"]  = "ADDafterSECTION",
							--["ADD"] = AddWaveSequence ("QUAD_SOLO")			--Should add a single Sentinel Quad spawn between the initial drones and the Mech
						--},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_2_CR",	"WavePool", "CORRUPT_MED"},		--Wanted Level 2 Corrupt Planet spawns
							["VALUE_MATCH"] = "CORRUPT_MED",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WavePool", "1D_34MS"},						--"CORRUPT_MED"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_3_CR",	"WavePool", "SPIDER_WAVE"},		--Wanted Level 3 Corrupt Planet spawns
							["VALUE_MATCH"] = "SPIDER_WAVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WavePool", "23D_34MS"},						--"SPIDER_WAVE"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_3_CR",	"WavePool", "MINI_SPIDERS"},		--Wanted Level 3 Corrupt Planet spawns Wave 2
							["VALUE_MATCH"] = "MINI_SPIDERS",
							["REMOVE"]  = "LINE",		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_3_CR",	"WavePool", "CORRUPT_MED"},		--Wanted Level 3 Corrupt Planet spawns
							--["SECTION_ACTIVE"] = {-2,},							--Wave 2
							["VALUE_MATCH"] = "CORRUPT_MED",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WavePool", "1D_1S_34MS"},					--"CORRUPT_MED"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_4_CR",	"WavePool", "SPIDER_GANG"},		--Wanted Level 4 Corrupt Planet spawns
							["VALUE_MATCH"] = "SPIDER_GANG",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WavePool", "2D_1S_45MS"},						--"SPIDER_GANG"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_4_CR",	"WavePool", "SPIDERS"},		--Wanted Level 4 Corrupt Planet spawns Wave 2
							["VALUE_MATCH"] = "SPIDERS",
							["REMOVE"]  = "LINE",		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_4_CR",	"WavePool", "SPIDER_WAVE"},		--Wanted Level 4 Corrupt Planet spawns
							--["SECTION_ACTIVE"] = {-2,},							--Wave 2
							["VALUE_MATCH"] = "SPIDER_WAVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WavePool", "23D_2S_45MS"},						--"SPIDER_WAVE"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_5_CR",	"WavePool", "SPIDER_WAVE"},		--Wanted Level 5 Corrupt Planet spawns
							["VALUE_MATCH"] = "SPIDER_WAVE",
							["REMOVE"]  = "LINE",		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_5_CR",	"WavePool", "SPIDERS"},		--Wanted Level 5 Corrupt Planet spawns
							["VALUE_MATCH"] = "SPIDERS",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WavePool", "34D_2S_45MS"},						--"SPIDERS"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_5_CR",	"WavePool", "CORRUPT_MED"},		--Wanted Level 5 Corrupt Planet spawns
							--["SECTION_ACTIVE"] = {-2,},							--Wave 2
							["VALUE_MATCH"] = "CORRUPT_MED",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WavePool", "45D_56MS"},						--"CORRUPT_MED"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_5_CR",	"WavePool", "SPIDER_GANG"},		--Wanted Level 5 Corrupt Planet spawns
							--["SECTION_ACTIVE"] = {-3,},							--Wave 3
							["VALUE_MATCH"] = "SPIDER_GANG",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WavePool", "45D_3S_56MS"},						--"SPIDER_GANG"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","STONE_SET",	"SentinelType", "StoneFloater"},		--Floating Golem spawns for STONE_SET
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinAmount", 2},									--1
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FOSSIL_V_SMALL",	"WavePool", "STONE_FLOATER"},	--Very Small variant of Golem encounter
							["VALUE_MATCH"] = "STONE_FLOATER",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WavePool", "STONE_FLOATERS"},						--"STONE_FLOATER"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FOSSIL_SMALL",	"WavePool", "STONE_FLOATERS"},	--Small variant of Golem encounter
							["VALUE_MATCH"] = "STONE_FLOATERS",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WavePool", "STONE_MECH"},							--"STONE_FLOATERS"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FOSSIL_MED",	"WavePool", "STONE_MECH"},	--Medium variant of Golem encounter
							["VALUE_MATCH"] = "STONE_MECH",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WavePool", "STONE_SET"},							--"STONE_MECH"		(STONE_SET is a Golem Mech with 1-2 Floating Golems as backup)
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","FOSSIL_LARGE",	"WavePool", "STONE_MECH"},	--Large variant of Golem encounter
							["VALUE_MATCH"] = "STONE_MECH",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WavePool", "STONE_SET"},							--"STONE_MECH"		(STONE_SET is a Golem Mech with 1-2 Floating Golems as backup)
							}		
						},
						{--For some reason this one had trouble finding the section normally?
							["SPECIAL_KEY_WORDS"] = {"Id","FACTORY_A",	"Spawns", "GcSentinelSpawnData"},		--Manufacturing Facility guards
							--["PRECEDING_KEY_WORDS"] = {"Spawns"},
							["SECTION_ACTIVE"] = {"1"},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = AddSentinels ("Quad", 1, 1, 2)
						},
						{--in 3.99 Causes a bug if run through AMUMSS without adding "Spawns", to the front of the Preceding Key Words?
							--["PRECEDING_FIRST"] = "TRUE",
							--["PRECEDING_KEY_WORDS"] = {"Spawns", "GcSentinelSpawnData"},
							--["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData"},
							["SPECIAL_KEY_WORDS"] = {"Id","HARVESTER_A",	"Spawns", "GcSentinelSpawnData"},	--Planetary Harvester guards
							["SECTION_ACTIVE"] = {"2"},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = AddSentinels ("SummonerDrone", 1, 1, 3)
						},
						{--in 3.99 Causes a bug if run through AMUMSS without adding "Spawns", to the front of the Preceding Key Words?
							--["PRECEDING_FIRST"] = "TRUE",
							--["PRECEDING_KEY_WORDS"] = {"Spawns", "GcSentinelSpawnData"},
							--["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData"},
							["SPECIAL_KEY_WORDS"] = {"Id","HIVE_A",	"Spawns", "GcSentinelSpawnData"},		--Sentinel Pillar guards
							["SECTION_ACTIVE"] = {"2"},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = AddSentinels ("Quad", 1, 1, 3)
						},
						{--in 3.99 Causes a bug if run through AMUMSS without adding "Spawns", to the front of the Preceding Key Words?
							--["PRECEDING_FIRST"] = "TRUE",
							--["PRECEDING_KEY_WORDS"] = {"Spawns", "GcSentinelSpawnData"},
							--["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData"},
							["SPECIAL_KEY_WORDS"] = {"Id","HIVE_EX_A",	"Spawns", "GcSentinelSpawnData"},		--Sentinel Pillar guards, "Extreme" version?
							["SECTION_ACTIVE"] = {"2"},
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = AddSentinels ("Quad", 1, 1, 3)
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE",		"SentinelType", "CorruptedDrone"},		--Settlement defense Corrupted Drones
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinAmount", 3},							--6
								{"MaxAmount", 7},							--6
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE_EX",		"SentinelType", "CorruptedDrone"},		--Settlement defense Corrupted Drones, "Extreme" version?
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinAmount", 6},							--9
								{"MaxAmount", 10},							--9
							}
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE_EX",		"SentinelType", "CorruptedDrone"},		--Settlement defense Corrupted Drones, "Extreme" version?
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinAmount", 7},							--9
								{"MaxAmount", 11},							--9
							}
						},
						--[[{	--As of NMS v3.99, Adding non-Corrupted Drones to the Sentinel Defense assaults seems to make a regular Wanted Level event occur at the same time, so you will have escalting waves of regular sentinels in addition to the corrupted Drones
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE"},		--Settlement defense
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = AddSentinels ("Quad", 1, 1)
						},
						{
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE"},		--Settlement defense
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = AddSentinels ("SummonerDrone", 1, 1)
						},]]
						--[[{	--Adding non-Corrupted Drones to the Sentinel Defense assaults seems to make a regular Wanted Level event occur at the same time, so you will have escalting waves of regular sentinels in addition to the corrupted Drones
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE_EX"},		--Settlement defense, "Extreme" version?
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = AddSentinels ("Quad", 2, 2)
						},
						{
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE_EX"},		--Settlement defense, "Extreme" version?
							["ADD_OPTION"]  = "ADDafterSECTION",
							["ADD"] = AddSentinels ("MedicDrone", 2, 2)
						},]]
					}
				},
				{	--This section added by Xen0nex
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\CORRUPTDRONEPILLAR\ENTITIES\DATA.ENTITY.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Health", 4200*5},				--4200				Health of Dissonance Resonators on Corrupt Planets
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCROBOTGLOBALS.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GrenadeLaunchFlightTime", 2},
								{"MaxNumPatrolDrones", 6},							--(2)
								{"UnderwaterPerceptionMargin", 3},					--(2)
								{"CombatWaveSpawnTime", 12},						--(15)
								--{"DroneMiningValueActivate", 100},				--From gexo's savage sentinels
								--{"DroneCrimeWitnessLimit", 5},					--From gexo's savage sentinels
								--{"DroneCrimeProximityMultiplier", 5},				--From gexo's savage sentinels
								{"WalkerEnergyLength", 20},
								{"WalkerEnergyMinAlpha", 0.1},
								{"RobotHUDMarkerRange", 120},
								{"DroneSpawnHeight", 2},
								{"MaxNumInvestigatingDrones", 8},
								{"WalkerLaserOvershootStart", -2},
								{"WalkerLaserOvershootEnd", 2},
								{"WalkerGunShootTime", 7},
								{"WalkerGunChargeTime", 0.8},
								{"WalkerGunRate", 0.035},
								{"QuadLookAngleMax", 60},							--60, same as QuadLookAngleMin . pre-4.20 Min & Max were 40, 90
								--{"QuadAttackRange", 80},							--30	Deprecated in 4.20
								{"QuadAttackTurnAngleMax", 120},					--120			pre-4.20 was 160						
								{"QuadAttackTurnAngleMin", 30},						--30			pre-4.20 was 5									
								--{"QuadAttackAngle", 10},							--Deprecated in 4.20
								--{"QuadChargeTargetLockPercent", 0.8},				--Deprecated in 4.20
								{"QuadJumpBackRange", 16},							--10
								--{"QuadPounceMinRange", 7},						--Deprecated in 4.20
								--{"QuadPounceMinTimeBetweenPounces", 6},			--Deprecated in 4.20
								{"QuadPounceDamageRadius", 1.66},					--2
								{"QuadCannotSeeTargetRepositionTime", 0.3},			--0.3			pre-4.20 was 1
								--{"QuadChargeTime", 0.45},							--Deprecated in 4.20
								--{"QuadFireTime", 1.2},							--Deprecated in 4.20
								
								--Additions by Xen0nex	v
								{"QuadAttackRate", 5},								--5					Smaller value seems to attack more frequently
								{"QuadEvadeCooldown", 4},							--5
								
								{"DroneReAttackTime", 10},							--10				Unknown Function
								{"DronePatrolAttackSightTime", 2.5},				--2.5				Unknown Function
								{"DroneAttackGetInRangeBoost", 2},					--1.4
								{"DroneAggressiveInvestigateAttackTime", 1},		--1					Unknown Function
								{"FireRateLastHitBypassTime", 5.1},					--5.1				Unknown Function
								{"FireRateModifierMin", 1.65},						--1.1				Higher values means drones(other sentinels also?) will attack more frequently
								{"FireRateModifierMax", 0.8},						--0.45				Higher values means drones(other sentinels also?) will attack more frequently
								
								{"DronePerceptionRange", 20},						--15				The following seem to affect how easily sentinels can see/find the player
								{"DronePerceptionRangeHostile", 35},				--25				
								{"DronePerceptionSightRange", 50},					--30				
								{"DronePerceptionSightRangeHostile", 92},			--55				
								{"DronePerceptionSightAngle", 45},					--40				
								
								{"DroneInvestigateMinWitnessRangeCantSee", 2.5},	--2.5				Unknown Function
								{"DronePerceptionMinHearingSpeed", 4},				--4					Unknown Function
								{"DroneCriminalScanTime", 12},						--12				Unknown Function
								{"DroneInvestigateMinScanTime", 0.5},				--0.5				Unknown Function
								{"DroneInvestigateMinWitnessRange", 22},			--22				Unknown Function
								{"DroneInvestigateMinWitnessTime", 10},				--10				Unknown Function
								{"DroneCrimePostInvestigateWaitTime", 20},			--20				Unknown Function
								{"DronePatrolSearchTime", 3.5},						--3.5				Unknown Function, doesn't seem to control how long sentinels will search for you when running away, at least not on aggressive planets
								{"DroneCrimeCooldown", 0.3},						--0.3				Unknown Function
								{"DroneCrimeCooldownWaitTime", 10},					--10				Unknown Function
								{"DroneCrimeCooldownWaitTimeAtMax", 15},			--15				Unknown Function
								{"DroneDecisionTime", 2},							--2					Unknown Function
								{"DroneCrimeWitnessInvestigateDistance", 45},		--30				How close an idle, passive drone needs to be to notice a Crime and begin an Investigation
								
								{"DronePatrolDistanceMin", 15},						--10				These 3 vairables together control how close Patrol Drones will try to stay to their initial spawn point when passivley wandering on patrol
								{"DronePatrolDistanceMax", 50},						--30				
								{"DronePatrolTargetDistance", 25},					--10				
								
								{"DroneSearchTime", 10},							--10				Unknown Function, doesn't seem to control how long sentinels will search for you when running away
								{"DroneSearchPauseTime", 0.5},						--3					Unknown Function
								{"DroneSearchCriminalScanRadius", 8},				--8					Unknown Function
								{"DroneSearchCriminalScanRadiusWanted", 20},		--20				Seems to be how wide of a "net" they look within to try to find the player when searching for them after running away (smaller value means they should find you easier)
								
								{"MechMinMaintainFireTargetTime", 4},				--3
								{"MechAttackRate", 2},								--5					Smaller value seems to attack more frequently
								
								--New parameters in 4.20
								{"QuadAttackMoveRange", 30},						--30
								{"SpiderPounceAngle", 75},							--75
								{"SpiderPounceRange", 35},							--25
								{"SpiderPounceMinRange", 8},						--8
								{"HitsToCancelStealthSmall", 4},					--2
								{"HitsToCancelStealth", 8},							--5
								
								{"CorruptedDroneRepairInteruptCooldownTime", 3},	--5
							}
						},
						{	--Also added by Xen0nex														This allows drones to continue to shoot at the player while you are moving away from them
							["SPECIAL_KEY_WORDS"] = {"DroneWeapons","GcDroneWeaponData"},
							["REPLACE_TYPE"]         = "ALL",
							["MATH_OPERATION"] 		= "*",
                            ["VALUE_MATCH"]         = "120",
							["VALUE_MATCH_OPTIONS"]	= "~=",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Range", 2}								--30 (40 for ROBOTSMG)
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","MECHFLAME"},				--Mech Flamethrower
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProjectileSpread", 0.07},							--0.05
								{"ProjectileFireInterval", 0.03},					--0.04
								{"ProjectileNumShotsMin", 50},						--30
								{"ProjectileNumShotsMax", 70},						--40
								{"CooldownTimeMin", 2},								--3
								{"CooldownTimeMax", 4},								--5
								{"IdealRange", 8},									--8
								{"MinRange", 1},									--2
								{"MaxRange", 35}									--20	[40]
								
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","SENMECHGUN"},			--Mech SMG
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProjectileSpread", 0.07},							--0.01			(The Sentinel Mech appears to always aim for a point in space to the left side of the player, completely missing them normally?)
								{"ProjectileFireInterval", 0.03},					--0.05
								{"ProjectileNumShotsMin", 45},						--15
								{"ProjectileNumShotsMax", 75},						--25
								{"IdealRange", 20},									--20
								{"MinRange", 10},									--10
								{"MaxRange", 60}									--40	[70]
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Attack","GcDroneControlData"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed", 8},								--4
								{"Strength", 1.6},								--1.3
								{"DirectionBrake", 0.6}							--0.3
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Search","GcDroneControlData"},
							--["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed", 12},								--5
								{"Strength", 2},								--1.5
								{"DirectionBrake", 2.5}							--2
							}
						},
						--New things in 4.20
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","QUADLASER"},				--Probably weapon of the new arachnid quads?
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProjectileSpread", 0},							--0
								{"FireInterval", 1},								--1
								{"FireTimeMin", 4.5},								--4.5
								{"FireTimeMax", 7},									--7
								{"NumShotsMin", 1},									--1
								{"NumShotsMax", 4},									--4
								{"MinRange", 8},									--8
								{"MaxRange", 50}									--40
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","QUADCANNON"},				--Probably weapon of the new arachnid quads?
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProjectileSpread", 0},							--0
								{"FireInterval", 0.25},								--0.33
								{"FireTimeMin", 5.5},								--4.5
								{"FireTimeMax", 9},									--7
								{"NumShotsMin", 4},									--2
								{"NumShotsMax", 8},									--4
								{"MinRange", 8},									--8
								{"MaxRange", 60}									--40
								
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","QUADGRENADE"},				--Probably weapon of the new arachnid quads?
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumProjectiles", 2},								--1
								{"ProjectileSpread", 0},							--0
								{"FireInterval", 1},								--1
								{"FireTimeMin", 3},									--2
								{"FireTimeMax", 7},									--5
								{"NumShotsMin", 3},									--2
								{"NumShotsMax", 6},									--4
								{"MinRange", 17},									--17
								{"MaxRange", 60},									--40
								{"ExplosionRadius", 2.8}							--2.2
								
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","QUADFLAME"},				--Probably weapon of the new arachnid quads?
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProjectileSpread", 0.07},							--0.05
								{"FireInterval", 0.03},								--0.04
								{"FireTimeMin", 4},									--3
								{"FireTimeMax", 8},									--6
								{"NumShotsMin", 15},								--10
								{"NumShotsMax", 45},								--30
								{"MinRange", 0},									--0
								{"MaxRange", 24}									--18
								
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","CORRUPTSMG"},			--Probably weapon of the Corrupted Drones
							--["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProjectileSpread", 0},							--0
								{"FireRate", 0.04},									--0.05
								{"FireTimeMin", 2},									--1.5
								{"FireTimeMax", 4.5},								--3
								{"NumShotsMin", 12},								--8
								{"NumShotsMax", 30},								--20
								{"Range", 40}										--40	Multiplied by the change to GcDroneWeaponData above
								
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","CORRUPTGRENADE"},		--Probably weapon of the Corrupted Drones
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProjectileSpread", 0},							--0
								{"FireRate", 0.5},									--0.5
								{"FireTimeMin", 5},									--5
								{"FireTimeMax", 8},									--8
								{"NumShotsMin", 1},									--1
								{"NumShotsMax", 3},									--3
								{"Range", 120},										--120	NOT Multiplied by the change to GcDroneWeaponData above
								{"ExplosionRadius", 2.2}							--2.2
								
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","CORRUPTSHOTGUN"},			--Probably weapon of the Corrupted Drones
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumProjectiles", 12},								--10
								{"ProjectileSpread", 0.07},							--0.06
								{"FireRate", 0.18},									--0.2
								{"FireTimeMin", 5},									--4.5
								{"FireTimeMax", 8},									--7
								{"NumShotsMin", 3},									--2
								{"NumShotsMax", 6},									--4
								{"Range", 30}										--30	Multiplied by the change to GcDroneWeaponData above
								
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","CORRUPTFLAME"},			--Probably weapon of the Corrupted Drones
							--["INTEGER_TO_FLOAT"] = "FORCE",		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProjectileSpread", 0.07},							--0.05
								{"FireRate", 0.03},									--0.04
								{"FireTimeMin", 4.5},								--4.5
								{"FireTimeMax", 7},									--7
								{"NumShotsMin", 45},								--30
								{"NumShotsMax", 60},								--40
								{"Range", 20}										--20	Multiplied by the change to GcDroneWeaponData above
								
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","RUINMECH_GREN"},				--Probably weapon of the new Golem Mech?
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProjectilesPerShot", 3},							--3
								{"ProjectileSpread", 0.5},							--0.5
								{"ProjectileFireInterval", 0.2},					--0.2
								{"ProjectileNumShotsMin", 1},						--1
								{"ProjectileNumShotsMax", 3},						--2
								{"MinRange", 20},									--20
								{"MaxRange", 60},									--40
								{"ProjectileExplosionRadius", 0.5}					--0.3
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","RUINMECHLASER"},				--Probably weapon of the new Golem Mech?
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProjectileSpread", 0},							--0
								{"ProjectileFireInterval", 0.1},					--0.1
								{"LaserFireTimeMin", 4.5},							--4.5
								{"LaserFireTimeMax", 7},							--7
								{"CooldownTimeMin", 5},								--7
								{"CooldownTimeMax", 10},							--12
								{"ProjectileNumShotsMin", 4},						--4
								{"ProjectileNumShotsMax", 8},						--6
								{"MinRange", 5},									--5
								{"MaxRange", 50}									--40
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","STONEGRENADE"},				--Probably weapon of the new Golem Floater?
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NumProjectiles", 1},								--1
								{"ProjectileSpread", 0},							--0
								{"FireRate", 0.4},									--0.5
								{"NumShotsMin", 1},									--1
								{"NumShotsMax", 4},									--3
								{"Range", 120},										--120
								{"ExplosionRadius", 2.8}							--2.2
							}
						},
						--There's also a new "PounceData" section, which seems like it may act as a mini "flurry attack" period where the enemy gets increases fire rate for a short time???
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"StoneMech","GcSentinelPounceBalance"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinTimeBetweenPounces", 3},						--3
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"StoneFloater","GcSentinelPounceBalance"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinTimeBetweenPounces", 3},						--3
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"QuadLookTurnSpeeds"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"X", 1},										--1			Pre-4.20 was 2
								{"Y", 1.1}										--1.1		Pre-4.20 was 2.2
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"QuadAttackTurnSpeeds"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"X", 1},										--1			Pre-4.20 was 2
								{"Y", 1.2}										--1.1		Pre-4.20 was 2.4
							}
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"WalkerGunOffset1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"X", -0.005},		
								{"Y", 0.065}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WalkerGunOffset2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"X", -0.005},		
								{"Y", -0.007}
							}
						},
						{					
							["PRECEDING_KEY_WORDS"] = {"WalkerLaser"},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LaserMiningDamage", 130},
								{"LaserChargeTime", 1},
								{"LaserTime", 1.66},
								{"LaserLightChargeSize", 40},
								{"LaserLightAttackSize", 70},
								{"R", 0.863},		
								{"G", 0.688}
							}
						},
						{						
							["PRECEDING_KEY_WORDS"] = {"QuadLaser"},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LaserChargeTime", 0.5},
								{"LaserTime", 0.66},
								{"LaserLightChargeSize", 25},
								{"LaserLightAttackSize", 9},		
								{"G", 0.588}
							}
						},
						{						
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"DroneControlData"},
							["SPECIAL_KEY_WORDS"] = {"Id","DEFAULT",},		--For regular patrol drones
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DronePatrolHonkTime", 1.2},						--2		(1.2)
								{"DronePatrolHonkProbability", 7},					--4		(7)
								{"DroneAlertTime", 20},								--6		(3)		How long drones will closely watch the player while Investigating after a Crime
								--{"AttackFireRate", 0.025},						--From gexo's savage sentinels
								--{"AttackTimeout", 12},							--From gexo's savage sentinels
								--{"AttackNumShotsMin", 1},							--From gexo's savage sentinels
								--{"AttackNumShotsMax", 1},							--From gexo's savage sentinels
								--{"AttackFireTimeMin", 0.185},						--From gexo's savage sentinels
								--{"AttackFireTimeMax", 0.185},						--From gexo's savage sentinels
								{"AttackAngle", 30},								--15
								--{"AttackRange", 120},								--From gexo's savage sentinels
								{"AttackActivateTime", 0.01},						--2		(1)		Controls how long they wait before starting to attack you after finding you
								{"AttackBobAmount", 0.5},							--1
								{"AttackBobRotation", 0.05},						--0.02
								--{"AttackMoveDistanceMin", 0.1},						--From gexo's savage sentinels
								{"AttackMoveMinChoiceTime", 0.05},					--1.5
								{"AttackMoveAngle", 1},								--30
								{"AttackMaxDistanceFromAlert", 150},				--50		(120)
								{"DroneSearchCriminalScanRadiusInShip", 8},			--20		(8?)
								{"DroneScanPlayerTime", 15},						--8			(20?)
								{"LeanAmount", 0.5},
								{"LeanSpeedMin", 5},
								{"LeanSpeedRange", 2},	
								{"EyeFocusTime", 0.00001},		
								{"EyeNumRandomsMin", 5},
								{"EyeNumRandomsMax", 9999999},
								{"EyeTimeMin", 0.5},
								{"EyeTimeMax", 80},	
								{"EyeAngleMax", 1},
								{"EngineDirSpeedMin", 60},
								{"EngineDirAngleMax", 0}
							}
						},
						{	--Also added by Xen0nex
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"DroneControlData"},
							["SPECIAL_KEY_WORDS"] = {"Id","STONE FLOATER",},		--For floating stone golems
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"SpinAttackRange", 20},							--20		Increasing this may cause it to behave oddly
								{"SpinAttackCooldown", 4},							--5
								{"SpinAttackHomingStrength", 25},					--15
								{"SpinAttackDamageRadius", 4},						--3
								{"MeleeAttackWindUpTime", 0.7},						--0.9
								{"MeleeAttackDamageRadius", 2},						--2
								{"MeleeAttackHomingStrength", 15},					--10
								{"MeleeAttackMaxTime", 10},							--10
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/DRONE.SCENE.MBIN",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth",	math.floor(SentHealth*800),},					--800
								{"HealthIncreasePerLevel",	math.floor(SentLevelHealth*1400),},
								{"RepairTime","1",},											--3			Seems to be how long it takes to be repaired from 1 HP back to full health
								{"RepairThreshold","95",},										--95		Possibly how low the health needs to get before a repair drone will start repairing it?
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/DRONEARMOURED.SCENE.MBIN",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth",	math.floor(SentHealth*1450),},					--1450
								{"HealthIncreasePerLevel",	math.floor(SentLevelHealth*2100),},	--2100
								{"RepairTime","2",},											--3
								{"RepairThreshold","95",},										--95
							}
						},	
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/DRONEMEDIC.SCENE.MBIN",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth",	math.floor(SentHealth*1000),},					--1000
								{"HealthIncreasePerLevel",	math.floor(SentLevelHealth*1400*0.9),},				--reduced to 0.9x to ensure they can still be one-shot by Blaze Javelin
								{"RepairTime","1.5",},											--1.5
								{"RepairThreshold","50",},										--50
							}
						},	
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/DRONESUMMONER.SCENE.MBIN",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth",	math.floor(SentHealth*1250),},					--1250
								{"HealthIncreasePerLevel",	math.floor(SentLevelHealth*2100*0.8),},				--reduced to 0.8x to ensure they can still be one-shot by Blaze Javelin
								{"RepairTime","1.5",},											--1.5
								{"RepairThreshold","95",},										--95
							}
						},	
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/CORRUPTEDDRONE.SCENE.MBIN",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth",	math.floor(SentHealth*2800),},					--2800		pre-4.20 was 3200
								{"HealthIncreasePerLevel",	math.floor(SentLevelHealth*6800),},	--6800		pre-4.20 was 4500
								{"RepairTime","9",},											--9			pre-4.20 was 3
								{"RepairThreshold","40",},										--60		pre-4.20 was 95
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/QUADRUPED.SCENE.MBIN",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth",	math.floor(SentHealth*4200),},					--4200
								{"HealthIncreasePerLevel",	math.floor(SentLevelHealth*8500),},	--8500
								{"RepairTime","4",},											--5
								{"RepairThreshold","95",},										--95
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/SPIDER_QUADRUPED.SCENE.MBIN",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth",	math.floor(SentHealth*6000),},					--6000
								{"HealthIncreasePerLevel",	math.floor(SentLevelHealth*20000),},	--20000
								{"RepairTime","6",},											--7
								{"RepairThreshold","50",},										--50
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/SPIDER_SMALLQUAD.SCENE.MBIN",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth",	math.floor(SentHealth*1050),},					--1050
								{"HealthIncreasePerLevel",	math.floor(SentLevelHealth*3700),},	--3700
								{"RepairTime","2",},											--1.5
								{"RepairThreshold","45",},										--95
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/SENTINELMECH.SCENE.MBIN",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth",	math.floor(SentHealth*7500),},					--7500
								{"HealthIncreasePerLevel",	math.floor(SentLevelHealth*12000),},	--12000
								{"RepairTime","6",},											--7
								{"RepairThreshold","95",},										--95
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/WALKER.SCENE.MBIN",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth",	math.floor(SentHealth*16000),},					--16000
								{"HealthIncreasePerLevel",	math.floor(SentLevelHealth*25000),},	--25000
								{"RepairTime","6",},											--7
								{"RepairThreshold","95",},										--95
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/DRONESHIELD.SCENE.MBIN",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth",	math.floor(SentHealth*2000),},					--2000
								{"HealthIncreasePerLevel",	math.floor(SentLevelHealth*3000),},	--3000
								{"RepairTime","7",},											--10
								{"RepairThreshold","95",},										--95
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/RUINMECH.SCENE.MBIN",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth",	math.floor(SentHealth*9000*0.8),},					--9000
								{"HealthIncreasePerLevel",	math.floor(SentLevelHealth*15000*0.8),},--15000
								{"RepairTime","7",},											--7
								{"RepairThreshold","95",},										--95
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/PLANETS/ENEMIES/GOLEM/GOLEM.SCENE.MBIN",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth",	math.floor(SentHealth*4800*0.8),},					--4800
								{"HealthIncreasePerLevel",	math.floor(SentLevelHealth*8800*0.8),},--8800
								{"RepairTime","9",},											--9
								{"RepairThreshold","60",},										--60
							}
						},
						--Now covered by an earlier section above
						--[[{						
							["SPECIAL_KEY_WORDS"] = {"Id","SENMECHGUN",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRange","70",},
							}
						},]]
						{						
							["SPECIAL_KEY_WORDS"] = {"Id","SENMECHCANON",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRange","100",},		--70
							}
						},
						--Now covered by an earlier section above
						--[[{						
							["SPECIAL_KEY_WORDS"] = {"Id","MECHFLAME",},
							--["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRange","40",},
							}
						},]]
					}
				},
			}
		},
	}	
}
