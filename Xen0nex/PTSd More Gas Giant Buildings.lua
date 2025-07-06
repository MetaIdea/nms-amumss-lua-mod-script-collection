ModName = "PTSd More Gas Giant Buildings"
GameVersion = "5_60"
Description = "Allows more types of buildings & structures to spawn on Gas Giants"

GasGiantBuildingChanges =
{--Building type				Density		Vanilla Density
	{"Shelter",					2},			--0
	--{"Abandoned",				1},			--1
	--{"Terminal",				0},			--0
	--{"Shop",					0},			--0
	--{"Outpost",					0},			--0
	--{"Waypoint",				0},			--0
	--{"Beacon",					0.5},		--0.5
	--{"RadioTower",				1},			--1
	--{"Observatory",				0.5},		--0.5
	--{"Depot",					0.5},		--0.5
	--{"Factory",					0},			--0
	--{"Harvester",				0},			--0
	{"Plaque",					3},			--0
	{"Monolith",				1},			--0
	{"Ruin",					1},			--0
	--{"Debris",					3},			--3
	{"DamagedMachine",			5},			--1
	{"DistressSignal",			1.75},		--1
	{"Base",					1},			--0
	--{"MissionTower",			0},			--0
	{"CrashedFreighter",		1.75},		--1
	{"TreasureRuins",			1},			--0
	{"WaterCrashedFreighter",	1.75},		--0
	{"WaterTreasureRuins",		1},			--0
	{"WaterAbandoned",			1.5},		--0
	{"WaterDistressSignal",		1.75},		--0
	--{"NPCDistressSignal",		0},			--0
	--{"NPCDebris",				0},			--0
	--{"LargeBuilding",			0},			--0
	--{"RobotHead",				0.5},		--0.5
}


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"] 		= 
    {
	    {
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						--This section intentionally left blank to be filled in by the loop below
					}
				}
            }
		}
    }
}

local ChangesToPlanetBuildings = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

for i = 1, #GasGiantBuildingChanges do
	local BuildingType = GasGiantBuildingChanges[i][1]
	local Density = GasGiantBuildingChanges[i][2]
	
	
			ChangesToPlanetBuildings[#ChangesToPlanetBuildings+1] = 
		{
			["SPECIAL_KEY_WORDS"] = {BuildingType, "GcBuildingDefinitionData"},
			["PRECEDING_KEY_WORDS"] = {"Density"},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"GasGiant", Density}
			}
		}
end