Class = {"C", "B", "A", "S"}
StatChanges =
{
	-- Shiptype, modifier-C-Class, B, A, S
	{
		["Type"] = "Shuttle",
		["Stat"] = "SHIP_HYPERDRIVE",
		["C"] = {
					["Min"] = "0",
					["Max"] = "15",
				},
		["B"] = {
					["Min"] = "5",
					["Max"] = "30",
				},
		["A"] = {
					["Min"] = "10",
					["Max"] = "45",
				},
		["S"] = {
					["Min"] = "15",
					["Max"] = "80",
				},
	},
	{
		["Type"] = "Shuttle",
		["Stat"] = "SHIP_DAMAGE",
		["C"] = {
					["Min"] = "0",
					["Max"] = "10",
				},
		["B"] = {
					["Min"] = "5",
					["Max"] = "30",
				},
		["A"] = {
					["Min"] = "5",
					["Max"] = "50",
				},
		["S"] = {
					["Min"] = "10",
					["Max"] = "60",
				},
	},
	{
		["Type"] = "Shuttle",
		["Stat"] = "SHIP_SHIELD",
		["C"] = {
					["Min"] = "0",
					["Max"] = "20",
				},
		["B"] = {
					["Min"] = "5",
					["Max"] = "35",
				},
		["A"] = {
					["Min"] = "10",
					["Max"] = "50",
				},
		["S"] = {
					["Min"] = "15",
					["Max"] = "85",
				},
	},
}

GenerationSizeType = 
{
	["Scientific"] = "Sci",
	["Fighter"] = "Fgt",
	["Shuttle"] = "Sht",
	["Dropship"] = "Drp",
	["Royal"] = "Roy",
	["Alien"] = "Alien",
	["Sail"] = "Sail",
}

SpawnInventory =
{
	{
		["Type"] = "Shuttle",
		["Sizes"] = {
						{
							["Size"] = "Small",
							["MinSlots"] = 		"15",
							["MaxSlots"] = 		"31",
							["MinTechSlots"] = 	"2",
							["MaxTechSlots"] = 	"6",
							["MinCargoSlots"] = "2",
							["MaxCargoSlots"] = "6",
						},
						{
							["Size"] = "Medium",
							["MinSlots"] = 		"20",
							["MaxSlots"] = 		"39",
							["MinTechSlots"] = 	"3",
							["MaxTechSlots"] = 	"8",
							["MinCargoSlots"] = "3",
							["MaxCargoSlots"] = "8",
						},
						{
							["Size"] = "Large",
							["MinSlots"] = 		"30",
							["MaxSlots"] = 		"48",
							["MinTechSlots"] = 	"5",
							["MaxTechSlots"] = 	"12",
							["MinCargoSlots"] = "4",
							["MaxCargoSlots"] = "12",
						},
					},
	}
}

MaxUpgradeSize =
{
	{
		["ShipType"] = "Shuttle",
		["Data"] = 	{
						{
							["InvType"] = "MaxInventoryCapacity",
							["Class"] =
							{
								{"24", "24" },
								{"32", "32" },
								{"40", "40" },
								{"48", "48" },
							}
						},
						{
							["InvType"] = "MaxTechInventoryCapacity",
							["Class"] =
							{
								{"0", "0"},
								{"7", "7"},
								{"14", "14"},
								{"21", "21"},
							}
						},
						{
							["InvType"] = "MaxCargoInventoryCapacity",
							["Class"] =
							{
								{"6", "12"},
								{"9", "12"},
								{"14", "24"},
								{"21", "36"},
							}
						},
					},
	}
}

INVENTORY_CHANGE = 
{
	["MBIN_FILE_SOURCE"] 	= "METADATA\\REALITY\\TABLES\\INVENTORYTABLE.MBIN",
	["EXML_CHANGE_TABLE"] 	=
	{
	}
}

for i,j in pairs(StatChanges) do
	for k,l in pairs(Class) do
		TEMP_TABLE =
		{
			["PRECEDING_FIRST"] = "TRUE",
			--["MATH_OPERATION"] = "*", -- "*", "+", "-", "/" or leave empty for normal replacement
			["INTEGER_TO_FLOAT"] = "FORCE",
			["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData", j["Type"], "BaseStatsPerClass", l},
			["SPECIAL_KEY_WORDS"] = {"BaseStatID", j["Stat"]},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"Min", j[l]["Min"]},
				{"Max", j[l]["Max"]}
			}
		}
		table.insert(INVENTORY_CHANGE["EXML_CHANGE_TABLE"], TEMP_TABLE)
	end
end

for i,j in pairs(SpawnInventory) do
	for k,l in pairs(j["Sizes"]) do
		if j["Type"] == "Shuttle" and l["Size"] == "Small" then
			SHIP_SIZE = "ShuSmall"
		else SHIP_SIZE = GenerationSizeType[j["Type"]] .. l["Size"]
		end
		TEMP_TABLE =
		{
			--["MATH_OPERATION"] = "*", -- "*", "+", "-", "/" or leave empty for normal replacement
			["INTEGER_TO_FLOAT"] = "FORCE",
			["PRECEDING_KEY_WORDS"] = {"GenerationData", SHIP_SIZE},
			["VALUE_CHANGE_TABLE"] 	=
			{
				{ "MinSlots", l["MinSlots"] },
				{ "MaxSlots", l["MaxSlots"] },
				{ "MinTechSlots", l["MinTechSlots"] },
				{ "MaxTechSlots", l["MaxTechSlots"] },
				{ "MinCargoSlots", l["MinCargoSlots"] },
				{ "MaxCargoSlots", l["MaxCargoSlots"] },
			}
		}
		table.insert(INVENTORY_CHANGE["EXML_CHANGE_TABLE"], TEMP_TABLE)
	end
end

for i,j in pairs(MaxUpgradeSize) do
	for k,l in pairs(j["Data"]) do
		TEMP_TABLE =
		{
			--["MATH_OPERATION"] = "*", -- "*", "+", "-", "/" or leave empty for normal replacement
			["INTEGER_TO_FLOAT"] = "FORCE",
			["PRECEDING_KEY_WORDS"] = {"ShipInventoryMaxUpgradeSize", j["ShipType"], l["InvType"]},
			["VALUE_CHANGE_TABLE"] 	= l["Class"]
		}
		table.insert(INVENTORY_CHANGE["EXML_CHANGE_TABLE"], TEMP_TABLE)
	end
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "_GiveMeShuttlesOrGiveMeDeath.pak",
["MOD_DESCRIPTION"]		= "Makes shuttles eternal",
["MOD_AUTHOR"]			= "WinderTP",
["NMS_VERSION"]			= "3.38.0.1",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcAISpaceshipWeightingData.xml"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Dropship",	"0"},	
								{"Fighter",		"0"},
								{"Scientific",	"0"},
								{"Shuttle",		"100"},
							}
						},
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"]		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CivilianTraderSpaceshipsCacheCount", "48"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"]		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"5", "15"},
								{"2", "10"},
								{"0.5", "7.5"},
							}
						},
					},
				},		
				INVENTORY_CHANGE,
			}
		}
	},
}