Author = "Gumsk"
ModName = "gBase"
ModNameSub = "Items EM Any 10x"
BaseDescription = "Removes restrictions on base building items"
GameVersion = "401"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"

MessageModRegion = 2		--Original 3/planet
SolarRate = 500				--Original 50
SolarStorage = 0			--Original 0
BioRate = 500				--Original 50
BioStorage = 180000			--Original 180000
BatteryRate = 0				--Original 0
BatteryStorage = 500000		--Original 50000
EMRate = 2500				--Original 1 (C=175, B=220, A=250, S=300)
EMLimit = 0					--0
EMAnywhere = "None"		--Power, None for EMAnywhere
MineralRate = 1000			--100
MineralStorage = 3600000	--360000
MineralLimit = 0			--0
GasRate = 1000				--100
GasStorage = 3600000		--360000
GasLimit = 0				--0
SiloStorage = 9999999		--Original 1440000
SiloLimit = 0				--0
FreighterRate = 999999		--10000
ParagonDistance = 100000	--1000

FreighterGroupBioList = {"PLANTER","PLANTERMEGA","PLANTPOT","PLANTPOT1","PLANTPOT2","PLANTPOT3","PLANTPOT4"}
FreighterGroupTechOtherList = {"SUMMON_GARAGE","GARAGE_B","GARAGE_L","GARAGE_M","GARAGE_MECH","GARAGE_S","POWERLINE_HIDER","NOISEBOX","SPAWNER_BALL","BYTEBEATSWITCH","RACE_START","RACE_RAMP","RACE_BOOSTER","BUILD_REFINER2","BUILD_REFINER3","DRESSING_TABLE","BUILDTERMINAL","BUILDANTIMATTER","BASECAPSULE","CREATURE_FARM","CREATURE_FEED","U_PIPELINE","BUILDLANDINGPAD","S_LANDINGZONE"}
PlantableList = {"RADIOPLANT","TOXICPLANT","SNOWPLANT","SACVENOMPLANT","SCORCHEDPLANT","GRAVPLANT","CREATUREPLANT","BARRENPLANT","LUSHPLANT","PEARLPLANT","NIPPLANT"}

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						
				--Blanket changes for all items, tweaked in lower sections
						{
							["PRECEDING_KEY_WORDS"] = {""},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"IsDecoration","False"},
								{"IsPlaceable","True"},
								{"BuildableOnPlanetBase","True"},
								{"BuildableOnPlanet","True"},
								--{"BuildableOnPlanetWithProduct","True"},
								{"BuildableOnFreighter","True"},
								{"BuildableOnSpaceBase","True"},
								{"BuildableUnderwater","True"},
								{"BuildableAboveWater","True"},
								{"PlanetBaseLimit",0},
								{"RegionLimit",0},
								{"PlanetLimit",0},
								{"FreighterBaseLimit",0},
								{"CheckPlaceholderCollision","False"},
								{"CheckPlayerCollision","False"},
								{"CanRotate3D","True"},
								{"CanScale","True"},
								{"CanChangeColour","True"},
								{"CanChangeMaterial","True"},
								{"DependsOnEnvironment","None"},
								{"RemovesAttachedDecoration","False"},
								{"RemovesWhenUnsnapped","False"},
							}
						},
						
				--Limits on Communications Stations and Message Modules
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MESSAGEMODULE"},
							["VALUE_CHANGE_TABLE"] = {
								{"RegionLimit",MessageModRegion},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MESSAGE"},
							["VALUE_CHANGE_TABLE"] = {
								{"RegionLimit",1},
							}
						},
						
				--Needed to avoid tutorial softlock
						{
							["SPECIAL_KEY_WORDS"] = {"ID","T_WALL"},
							["VALUE_CHANGE_TABLE"] = {
								{"BuildableOnPlanet", "False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","T_FLOOR"},
							["VALUE_CHANGE_TABLE"] = {
								{"BuildableOnPlanet", "False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","T_ROOF6"},
							["VALUE_CHANGE_TABLE"] = {
								{"BuildableOnPlanet", "False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","T_DOOR1"},
							["VALUE_CHANGE_TABLE"] = {
								{"BuildableOnPlanet", "False"},
							}
						},
				
				--Industrial changes
						{
							["SPECIAL_KEY_WORDS"] = {"ID","U_SOLAR_S"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate",SolarRate},
								{"Storage",SolarStorage},
								{"DependsOnEnvironment","DayNight"},
								{"BuildableOnPlanet", "False"},
								{"BuildableOnPlanetWithProduct", "False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","U_BIOGENERATOR"},
							["VALUE_CHANGE_TABLE"] = {
								{"DependentRate",BioRate},
								{"Storage",BioStorage},
								{"BuildableOnSpaceBase", "False"},
								{"BuildableOnFreighter", "False"},
								{"BuildableOnPlanet", "False"},
								{"BuildableOnPlanetWithProduct", "False"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","U_BATTERY_S"},
							["VALUE_CHANGE_TABLE"] = {
								{"BuildableOnPlanet", "False"},
								{"BuildableOnPlanetWithProduct", "False"},
								{"Rate",BatteryRate},
								{"Storage",BatteryStorage},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","U_GENERATOR_S"},
							["VALUE_CHANGE_TABLE"] = {
								{"DependsOnHotspots",EMAnywhere},
								{"Rate",EMRate},
								{"BuildableOnPlanet", "False"},
								{"BuildableOnPlanetWithProduct", "False"},
								{"RegionLimit", EMLimit},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","U_EXTRACTOR_S"},
							["VALUE_CHANGE_TABLE"] = {
								{"Storage",MineralStorage},
								{"Rate",MineralRate},
								{"BuildableOnPlanet", "False"},
								{"BuildableOnPlanetWithProduct", "False"},
								{"RegionLimit", MineralLimit},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","U_GASEXTRACTOR"},
							["VALUE_CHANGE_TABLE"] = {
								{"Storage",GasStorage},
								{"Rate",GasRate},
								{"BuildableOnPlanet", "False"},
								{"BuildableOnPlanetWithProduct", "False"},
								{"RegionLimit", GasLimit},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","U_SILO_S"},
							["VALUE_CHANGE_TABLE"] = {
								{"Storage",SiloStorage},
								{"BuildableOnPlanet", "False"},
								{"BuildableOnPlanetWithProduct", "False"},
								{"PlanetBaseLimit", SiloLimit},
							}
						},
				
				--Increase paragon device distance
						{
							["SPECIAL_KEY_WORDS"] = {"ID","U_PARAGON"},
							["VALUE_CHANGE_TABLE"] = {
								{"ConnectionDistance",ParagonDistance},
							}
						},
						
				--Increase power provided by freighter
						{
							["SPECIAL_KEY_WORDS"] = {"ID","AIRLCKCONNECTOR"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate", FreighterRate},
							}
						},
				
				--Make teleporter item only for planets
						{
							["SPECIAL_KEY_WORDS"] = {"ID","TELEPORTER"},
							["VALUE_CHANGE_TABLE"] = {
								{"BuildableOnPlanet", "False"},
								{"BuildableOnPlanetWithProduct", "False"},
								{"BuildableOnFreighter", "False"},
								{"BuildableOnSpaceBase", "False"},
							}
						},
				
				--Make freighter teleporter item only for freighters
						{
							["SPECIAL_KEY_WORDS"] = {"ID","TELEPORTER_F"},
							["VALUE_CHANGE_TABLE"] = {
								{"BuildableOnPlanet", "False"},
								{"BuildableOnPlanetWithProduct", "False"},
								{"BuildableOnPlanetBase", "False"},
							}
						},
				
				--Disable obsolete freighter items
						{
							["SPECIAL_KEY_WORDS"] = {"ID","CORSTAIRS_SPACE"},
							["VALUE_CHANGE_TABLE"] = {
								{"BuildableOnPlanet", "False"},
								{"BuildableOnPlanetWithProduct", "False"},
								{"BuildableOnFreighter", "False"},
								{"BuildableOnPlanetBase", "False"},
								{"BuildableOnSpaceBase", "False"},
							}
						},
				
				--Fix bug with bulkhead doors
						{
							["SPECIAL_KEY_WORDS"] = {"ID","FRE_FACE_DOOR_A"},
							["VALUE_CHANGE_TABLE"] = {
								{"IsPlaceable", "False"},
							}
						},
					},
				}
			},
		}
	}
}

--Alias for EXML_CHANGE_TABLE
local ExmlChangeTableArray = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

--Loop number of times equal to count of items in FreighterGroupBioList
for i = 1,#FreighterGroupBioList do
	--Create a temporary table that adds the appropriate freighter group to each loop item
	local TempTable = {
		["SPECIAL_KEY_WORDS"] = {"ID",FreighterGroupBioList[i]},
		["PRECEDING_KEY_WORDS"] = {"Groups"},
		["ADD"] = 
			[[
			<Property value="GcBaseBuildingEntryGroup.xml">
			  <Property name="Group" value="FREIGHTER_BIO" />
			  <Property name="SubGroupName" value="FRE_PLANTS" />
			  <Property name="SubGroup" value="0" />
			</Property>]]
	}
	--Assign temporary table to the next entry in the EXML_CHANGE_TABLE
	ExmlChangeTableArray[#ExmlChangeTableArray+1] = TempTable
end

--Loop number of times equal to count of items in FreighterGroupTechOtherList
for i = 1,#FreighterGroupTechOtherList do
	--Create a temporary table that adds the appropriate freighter group to each loop item
	local TempTable = {
		["SPECIAL_KEY_WORDS"] = {"ID",FreighterGroupTechOtherList[i]},
		["PRECEDING_KEY_WORDS"] = {"Groups"},
		["ADD"] = 
			[[
			<Property value="GcBaseBuildingEntryGroup.xml">
			  <Property name="Group" value="FREIGHTER_TECH" />
			  <Property name="SubGroupName" value="FRE_TECH_OTHER" />
			  <Property name="SubGroup" value="0" />
			</Property>]]
	}
	--Assign temporary table to the next entry in the EXML_CHANGE_TABLE
	ExmlChangeTableArray[#ExmlChangeTableArray+1] = TempTable
end

--Loop number of times equal to count of items in PlantableList
for i = 1,#PlantableList do
	--Create a temporary table that makes plants plantable anywhere for each loop item
	local TempTable = {
		["SPECIAL_KEY_WORDS"] = {"ID",PlantableList[i]},
		["VALUE_CHANGE_TABLE"] = {
			{"BaseBuildingDecorationType","Normal"},
		},
	}
	--Assign temporary table 1 to the next entry in the EXML_CHANGE_TABLE
	ExmlChangeTableArray[#ExmlChangeTableArray+1] = TempTable
	
	--Create a temporary table that makes plants plantable in any biome for each loop item
	local TempTable2 = {
		["SPECIAL_KEY_WORDS"] = {"ID",PlantableList[i],"Biome","GcBiomeType.xml"},
		["LINE_OFFSET"] = "+1",
		["VALUE_CHANGE_TABLE"] = {
			{"Biome","All"},
		},
	}
	--Assign temporary table to the next entry in the EXML_CHANGE_TABLE
	ExmlChangeTableArray[#ExmlChangeTableArray+1] = TempTable2
	
	--Create a temporary table that gives plantable plants wireless power for 100u for each loop item
	local TempTable3 = {
		["SPECIAL_KEY_WORDS"] = {"ID",PlantableList[i]},
		["PRECEDING_KEY_WORDS"] = {"DependentConnections"},
		["VALUE_CHANGE_TABLE"] = {
			{"ConnectionDistance",100},
		},
	}
	--Assign temporary table to the next entry in the EXML_CHANGE_TABLE
	ExmlChangeTableArray[#ExmlChangeTableArray+1] = TempTable3
end