ModName = "_Extra Savage Sentinels by ExosolarX"
GameVersion = "4_41"
Description = "Increases the difficulty of Sentinels by changing aggression, firerate, range, sight distance, etc."

--Multiplier to apply to the base health of all planetary Sentinels
SentHealth =				3*1.1							--was 4 in PTSd 3.99
--Multiplier to apply to the base health increase per level of all planetary Sentinels
	--Seems like the game may only apply one "level" worth of bonus health? In a quick test, an end game character with lots of S Class gear faced sentinels that only had one instance of the "health on level" applied
SentLevelHealth =			2*1.1							--was 1 in PTSd 3.99

function AddWaveSequence (Set)
    return
[[<Property value="GcSentinelSpawnSequenceStep.xml">
          <Property name="WavePool">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="]]..Set..[[" />
            </Property>
          </Property>
        </Property>]]
end

function AddSpawnToWave (Spawn)
    return
[[<Property value="NMSString0x10.xml">
              <Property name="Value" value="]]..Spawn..[[" />
            </Property>]]
end

--Adds a new set of just a Sentinel Quad with nothing else
AddQuadSoloSet =
[[<Property value="GcSentinelSpawnWave.xml">
      <Property name="Id" value="QUAD_SOLO" />
      <Property name="Spawns">
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="Quad" />
          </Property>
          <Property name="MinAmount" value="1" />
          <Property name="MaxAmount" value="1" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="0" />
    </Property>]]

function AddSentinels (SentinelType, MinAmount, MaxAmount)
    return
[[<Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="]]..SentinelType..[[" />
          </Property>
          <Property name="MinAmount" value="]]..MinAmount..[[" />
          <Property name="MaxAmount" value="]]..MaxAmount..[[" />
        </Property>]]
end
--Possible SentinelTypes are: PatrolDrone	CombatDrone		MedicDrone	SummonerDrone	Quad	Mech	Walker	CorruptedDrone	SpiderQuad	SpiderQuadMini

OneDroneThreeFourMinis = 
[[<Property value="GcSentinelSpawnWave.xml">
      <Property name="Id" value="1D_34MS" />
      <Property name="Spawns">
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="1" />
          <Property name="MaxAmount" value="1" />
        </Property>
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="3" />
          <Property name="MaxAmount" value="4" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="1" />
    </Property>]]

TwoThreeDronesThreeFourMinis = 
[[<Property value="GcSentinelSpawnWave.xml">
      <Property name="Id" value="23D_34MS" />
      <Property name="Spawns">
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="2" />
          <Property name="MaxAmount" value="3" />
        </Property>
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="3" />
          <Property name="MaxAmount" value="4" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="1" />
    </Property>]]

OneDroneOneSpiderThreeFourMinis = 
[[<Property value="GcSentinelSpawnWave.xml">
      <Property name="Id" value="1D_1S_34MS" />
      <Property name="Spawns">
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="1" />
          <Property name="MaxAmount" value="1" />
        </Property>
		<Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="SpiderQuad" />
          </Property>
          <Property name="MinAmount" value="1" />
          <Property name="MaxAmount" value="1" />
        </Property>
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="3" />
          <Property name="MaxAmount" value="4" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="1" />
    </Property>]]
	
TwoDronesOneSpiderFourFiveMinis = 
[[<Property value="GcSentinelSpawnWave.xml">
      <Property name="Id" value="2D_1S_45MS" />
      <Property name="Spawns">
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="2" />
          <Property name="MaxAmount" value="2" />
        </Property>
		<Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="SpiderQuad" />
          </Property>
          <Property name="MinAmount" value="1" />
          <Property name="MaxAmount" value="1" />
        </Property>
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="4" />
          <Property name="MaxAmount" value="5" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="1" />
    </Property>]]

TwoThreeDronesTwoSpidersFourFiveMinis = 
[[<Property value="GcSentinelSpawnWave.xml">
      <Property name="Id" value="23D_2S_45MS" />
      <Property name="Spawns">
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="2" />
          <Property name="MaxAmount" value="3" />
        </Property>
		<Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="SpiderQuad" />
          </Property>
          <Property name="MinAmount" value="2" />
          <Property name="MaxAmount" value="2" />
        </Property>
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="4" />
          <Property name="MaxAmount" value="5" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="2" />
    </Property>]]

ThreeFourDronesTwoSpidersFourFiveMinis = 
[[<Property value="GcSentinelSpawnWave.xml">
      <Property name="Id" value="34D_2S_45MS" />
      <Property name="Spawns">
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="3" />
          <Property name="MaxAmount" value="4" />
        </Property>
		<Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="SpiderQuad" />
          </Property>
          <Property name="MinAmount" value="2" />
          <Property name="MaxAmount" value="2" />
        </Property>
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="4" />
          <Property name="MaxAmount" value="5" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="2" />
    </Property>]]

FourFiveDronesFiveSixMinis = 
[[<Property value="GcSentinelSpawnWave.xml">
      <Property name="Id" value="45D_56MS" />
      <Property name="Spawns">
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="4" />
          <Property name="MaxAmount" value="5" />
        </Property>
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="SpiderQuadMini" />
          </Property>
          <Property name="MinAmount" value="5" />
          <Property name="MaxAmount" value="6" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="1" />
    </Property>]]

FourFiveDronesThreeSpidersFiveSixMinis = 
[[<Property value="GcSentinelSpawnWave.xml">
      <Property name="Id" value="45D_3S_56MS" />
      <Property name="Spawns">
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="CorruptedDrone" />
          </Property>
          <Property name="MinAmount" value="4" />
          <Property name="MaxAmount" value="5" />
        </Property>
		<Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="SpiderQuad" />
          </Property>
          <Property name="MinAmount" value="3" />
          <Property name="MaxAmount" value="3" />
        </Property>
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
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
["NMS_VERSION"]				= "3.93",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{	--This section added by Xen0nex
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
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
							["REPLACE_TYPE"]         = "",
							["MATH_OPERATION"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{	--Old		New
								--{"10", 		20},								--10	seconds at Wanted level 1
								{"15", 		20},								--15	seconds at Wanted level 2, plus whatever the lower Wanted level times are	(e.g. 15 + 10 = 25 seconds total in vanilla)
								--{"10", 		15},								--10	seconds at Wanted level 3, plus whatever the lower Wanted level times are
								{"15", 		15},								--15	seconds at Wanted level 4, plus whatever the lower Wanted level times are
								--{"10", 		10}									--10	seconds at Wanted level 5, plus whatever the lower Wanted level times are
							}
						},
						--Had to split this section into two, to make sure the entries get changed in the right order
						{
							["PRECEDING_KEY_WORDS"] = {"WantedTimeout"},		--Controls how long Sentinels will Search for the player if they run away after a Crime
							["REPLACE_TYPE"]         = "",
							["MATH_OPERATION"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{	--Old		New
								{"10", 		20},								--10	seconds at Wanted level 1
								--{"15", 		20},								--15	seconds at Wanted level 2, plus whatever the lower Wanted level times are	(e.g. 15 + 10 = 25 seconds total in vanilla)
								{"10", 		15},								--10	seconds at Wanted level 3, plus whatever the lower Wanted level times are
								--{"15", 		15},								--15	seconds at Wanted level 4, plus whatever the lower Wanted level times are
								{"10", 		10}									--10	seconds at Wanted level 5, plus whatever the lower Wanted level times are
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WantedEscalateTime"},	--Possibly how long Sentinels will search for the player if they run away after destroying a wave of sentinels, which increases the Wanted level???
							["REPLACE_TYPE"]         = "",
							["MATH_OPERATION"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{	--Old		New
								{"-1", 		-1},								---1
								{"30", 		30},								--30
								{"60", 		60},								--60
								{"90", 		90},								--90
								--{"-1", 		-1}									---1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WantedExtremeEscalateTime"},	--Seems to be how long Sentinels will search for the player if they run away after a Crime on an Extreme Sentinel Planet???
							["REPLACE_TYPE"]         = "",
							["MATH_OPERATION"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{	--Old		New
								{"-1", 		-1},								---1
								{"20", 		30},								--20
								{"40", 		45},								--40	seconds at Wanted level 3 total (doesn't seem to add lower level Wanted times)
								{"120", 	120},								--120
								--{"-1", 		-1}									---1
							}
						}
					}
				},
				{	--This section also added by Xen0nex, controls which kind and how many Sentinels spawn in various circumstances
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						--adds the various new spawn sets
						{
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns",	"GcSentinelSpawnWave.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddQuadSoloSet
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns",	"GcSentinelSpawnWave.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = OneDroneThreeFourMinis
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns",	"GcSentinelSpawnWave.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = TwoThreeDronesThreeFourMinis
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns",	"GcSentinelSpawnWave.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = OneDroneOneSpiderThreeFourMinis
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns",	"GcSentinelSpawnWave.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = TwoDronesOneSpiderFourFiveMinis
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns",	"GcSentinelSpawnWave.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = TwoThreeDronesTwoSpidersFourFiveMinis
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns",	"GcSentinelSpawnWave.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = ThreeFourDronesTwoSpidersFourFiveMinis
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns",	"GcSentinelSpawnWave.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = FourFiveDronesFiveSixMinis
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns",	"GcSentinelSpawnWave.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = FourFiveDronesThreeSpidersFiveSixMinis
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_4"},		--Wanted Level 4 spawns
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnSequenceStep.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddWaveSequence ("QUAD_SOLO")			--Should add a single Sentinel Quad spawn between the initial drones and the Mech
						},
						--WANTED_4_EX already has Quads
						--[[{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_4_EX"},	--Wanted Level 4, "Extreme" version spawns?
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnSequenceStep.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddWaveSequence ("QUAD_SOLO")			--Should add a single Sentinel Quad spawn between the initial drones and the Mech
						},]]
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_2_CR"},		--Wanted Level 2 Corrupt Planet spawns
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnSequenceStep.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "1D_34MS"},						--"CORRUPT_MED"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_3_CR"},		--Wanted Level 3 Corrupt Planet spawns
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnSequenceStep.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "23D_34MS"},						--"SPIDER_WAVE"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_3_CR",	"Value", "MINI_SPIDERS"},		--Wanted Level 3 Corrupt Planet spawns Wave 2
							["REMOVE"]  = "SECTION",		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_3_CR"},		--Wanted Level 3 Corrupt Planet spawns
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnSequenceStep.xml"},
							["SECTION_ACTIVE"] = {-2,},							--Wave 2
							["VALUE_MATCH"] = "CORRUPT_MED",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "1D_1S_34MS"},					--"CORRUPT_MED"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_4_CR"},		--Wanted Level 4 Corrupt Planet spawns
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnSequenceStep.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "2D_1S_45MS"},						--"SPIDER_GANG"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_4_CR",	"Value", "SPIDER_WAVE"},		--Wanted Level 4 Corrupt Planet spawns Wave 2
							["REMOVE"]  = "SECTION",		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_4_CR"},		--Wanted Level 4 Corrupt Planet spawns
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnSequenceStep.xml"},
							["SECTION_ACTIVE"] = {-2,},							--Wave 2
							["VALUE_MATCH"] = "SPIDERS",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "23D_2S_45MS"},						--"SPIDERS"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_5_CR",	"Value", "SPIDER_WAVE"},		--Wanted Level 5 Corrupt Planet spawns
							["REMOVE"]  = "SECTION",		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_5_CR"},		--Wanted Level 5 Corrupt Planet spawns
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnSequenceStep.xml"},
							["VALUE_MATCH"] = "SPIDERS",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "34D_2S_45MS"},						--"SPIDERS"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_5_CR"},		--Wanted Level 5 Corrupt Planet spawns
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnSequenceStep.xml"},
							["SECTION_ACTIVE"] = {-2,},							--Wave 2
							["VALUE_MATCH"] = "CORRUPT_MED",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "45D_56MS"},						--"CORRUPT_MED"
							}		
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_5_CR"},		--Wanted Level 5 Corrupt Planet spawns
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnSequenceStep.xml"},
							["SECTION_ACTIVE"] = {-3,},							--Wave 3
							["VALUE_MATCH"] = "SPIDER_GANG",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Value", "45D_3S_56MS"},						--"SPIDER_GANG"
							}		
						},
						{--For some reason this one had trouble finding the section normally?
							--["PRECEDING_FIRST"] = "TRUE",
							--["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData.xml"},
							["PRECEDING_KEY_WORDS"] = {"Spawns"},
							["SPECIAL_KEY_WORDS"] = {"Id","FACTORY_A"},		--Manufacturing Facility guards
							--["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("Quad", 1, 1)
						},
						{--in 3.99 Causes a bug if run through AMUMSS without adding "Spawns", to the front of the Preceding Key Words?
							--["PRECEDING_FIRST"] = "TRUE",
							--["PRECEDING_KEY_WORDS"] = {"Spawns", "GcSentinelSpawnData.xml"},
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","HARVESTER_A"},	--Planetary Harvester guards
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("SummonerDrone", 1, 1)
						},
						{--in 3.99 Causes a bug if run through AMUMSS without adding "Spawns", to the front of the Preceding Key Words?
							--["PRECEDING_FIRST"] = "TRUE",
							--["PRECEDING_KEY_WORDS"] = {"Spawns", "GcSentinelSpawnData.xml"},
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","HIVE_A"},		--Sentinel Pillar guards
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("Quad", 1, 1)
						},
						{--in 3.99 Causes a bug if run through AMUMSS without adding "Spawns", to the front of the Preceding Key Words?
							--["PRECEDING_FIRST"] = "TRUE",
							--["PRECEDING_KEY_WORDS"] = {"Spawns", "GcSentinelSpawnData.xml"},
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","HIVE_EX_A"},		--Sentinel Pillar guards, "Extreme" version?
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("Quad", 1, 1)
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE",		"SentinelType", "CorruptedDrone"},		--Settlement defense Corrupted Drones
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "",
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
							["REPLACE_TYPE"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinAmount", 6},							--9
								{"MaxAmount", 10},							--9
							}
						},
						--[[{	--As of NMS v3.99, Adding non-Corrupted Drones to the Sentinel Defense assaults seems to make a regular Wanted Level event occur at the same time, so you will have escalting waves of regular sentinels in addition to the corrupted Drones
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE"},		--Settlement defense
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("Quad", 1, 1)
						},
						{
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE"},		--Settlement defense
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("SummonerDrone", 1, 1)
						},]]
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE_EX",		"SentinelType", "CorruptedDrone"},		--Settlement defense Corrupted Drones, "Extreme" version?
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinAmount", 7},							--9
								{"MaxAmount", 11},							--9
							}
						},
						--[[{	--Adding non-Corrupted Drones to the Sentinel Defense assaults seems to make a regular Wanted Level event occur at the same time, so you will have escalting waves of regular sentinels in addition to the corrupted Drones
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE_EX"},		--Settlement defense, "Extreme" version?
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("Quad", 2, 2)
						},
						{
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE_EX"},		--Settlement defense, "Extreme" version?
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("MedicDrone", 2, 2)
						},]]
					}
				},
				{	--This section added by Xen0nex
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\CORRUPTDRONEPILLAR\ENTITIES\DATA.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
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
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",							
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
							["PRECEDING_KEY_WORDS"] = {"GcDroneWeaponData.xml"},
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
								{"FireInterval", 0.03},								--0.04
								{"NumShotsMin", 50},								--30
								{"NumShotsMax", 70},								--40
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
								{"FireInterval", 0.03},								--0.05
								{"NumShotsMin", 45},								--15
								{"NumShotsMax", 75},								--25
								{"IdealRange", 20},									--20
								{"MinRange", 10},									--10
								{"MaxRange", 60}									--40	[70]
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Attack","GcDroneControlData.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed", 8},								--4
								{"Strength", 1.6},								--1.3
								{"DirectionBrake", 0.6}							--0.3
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Search","GcDroneControlData.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",	
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
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProjectileSpread", 0},							--0
								{"FireRate", 0.04},									--0.05
								{"FireTimeMin", 2},									--1.5
								{"FireTimeMax", 4.5},								--3
								{"NumShotsMin", 12},								--8
								{"NumShotsMax", 30},								--20
								{"Range", 40}										--40	Multiplied by the change to GcDroneWeaponData.xml above
								
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
								{"Range", 120},										--120	NOT Multiplied by the change to GcDroneWeaponData.xml above
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
								{"Range", 30}										--30	Multiplied by the change to GcDroneWeaponData.xml above
								
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","CORRUPTFLAME"},			--Probably weapon of the Corrupted Drones
							["INTEGER_TO_FLOAT"] = "FORCE",		
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProjectileSpread", 0.07},							--0.05
								{"FireRate", 0.03},									--0.04
								{"FireTimeMin", 4.5},								--4.5
								{"FireTimeMax", 7},									--7
								{"NumShotsMin", 45},								--30
								{"NumShotsMax", 60},								--40
								{"Range", 20}										--20	Multiplied by the change to GcDroneWeaponData.xml above
								
							}
						},
						--There's also a new "PounceData" section, which seems like it may act as a mini "flurry attack" period where the enemy gets increases fire rate for a short time???
						{
							["PRECEDING_KEY_WORDS"] = {"QuadLookTurnSpeeds"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", 1},										--1			Pre-4.20 was 2
								{"y", 1.1}										--1.1		Pre-4.20 was 2.2
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"QuadAttackTurnSpeeds"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", 1},										--1			Pre-4.20 was 2
								{"y", 1.2}										--1.1		Pre-4.20 was 2.4
							}
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"WalkerGunOffset1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", -0.005},		
								{"y", 0.065}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WalkerGunOffset2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", -0.005},		
								{"y", -0.007}
							}
						},
						{					
							["PRECEDING_KEY_WORDS"] = {"WalkerLaser"},
							["INTEGER_TO_FLOAT"] = "FORCE",							
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
							["INTEGER_TO_FLOAT"] = "FORCE",							
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
							["PRECEDING_KEY_WORDS"] = {"DroneControl"},
							["INTEGER_TO_FLOAT"] = "FORCE",							
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
								{"AttackAngle", 30},			
								--{"AttackRange", 120},								--From gexo's savage sentinels
								{"AttackActivateTime", 0.01},						--2		(1)		Controls how long they wait before starting to attack you after finding you
								{"AttackBobAmount", 0.5},
								{"AttackBobRotation", 0.05},
								--{"AttackMoveDistanceMin", 0.1},						--From gexo's savage sentinels
								{"AttackMoveMinChoiceTime", 0.05},					--1.5
								{"AttackMoveAngle", 1},
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
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/DRONE.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
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
							["INTEGER_TO_FLOAT"] = "FORCE",							
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
							["INTEGER_TO_FLOAT"] = "FORCE",							
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
							["INTEGER_TO_FLOAT"] = "FORCE",							
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
							["INTEGER_TO_FLOAT"] = "FORCE",							
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
							["INTEGER_TO_FLOAT"] = "FORCE",							
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
							["INTEGER_TO_FLOAT"] = "FORCE",							
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
							["INTEGER_TO_FLOAT"] = "FORCE",							
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
							["INTEGER_TO_FLOAT"] = "FORCE",							
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
							["INTEGER_TO_FLOAT"] = "FORCE",							
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
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth",	math.floor(SentHealth*2000),},					--2000
								{"HealthIncreasePerLevel",	math.floor(SentLevelHealth*3000),},	--3000
								{"RepairTime","7",},											--10
								{"RepairThreshold","95",},										--95
							}
						},
						--Now covered by an earlier section above
						--[[{						
							["SPECIAL_KEY_WORDS"] = {"Id","SENMECHGUN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRange","70",},
							}
						},]]
						{						
							["SPECIAL_KEY_WORDS"] = {"Id","SENMECHCANON",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRange","100",},
							}
						},
						--Now covered by an earlier section above
						--[[{						
							["SPECIAL_KEY_WORDS"] = {"Id","MECHFLAME",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
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

