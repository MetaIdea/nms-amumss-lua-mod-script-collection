Author = "Xen0nex"
ModName = "PTSd Scan + Discovery Rewards + Shop Stock Changes + Misc"
Description = "Adjusts scan & discovery rewards and items available in shops. Also changes starter starship slots and % chance to spawn jellyfish / anglerfish underwater."
GameVersion = "398"

--Inventory size for the starter ship on a new save
StarterShipGenSlots = 12							--14
StarterShipTechSlots = 2							--4
StarterShipCargoSlots = 2							--3

--UnderwaterProtectionMultiplier = 2				--Default Range 0 - 310

JellyfishSpawnChance = 0.2							--0.3		Chance to spawn Jellyfish when mining objects underwater
AnglerfishSpawnChance = 0.45						--0.5		Chance to spawn Anglerfish when collecting an Alluring Specimen

  --Multipliers to apply to the reward in units or Nanites for Scanning or Recording different things
	--Currently experiencing some odd behaviour where in-game, the base OnScan Units reward for Fauna & Flora is set to double whatever I put here? But bonus units from Scan reward upgrades do seem to work based off the value I put here?
  DiscoveryChanges =
  {
	{
		{"SolarSystem"},
		{
			{"Record",		2}						--15 Nanites
		}
	},
	{
		{"Planet"},
		{
			{"Record",		3}						--10 Nanites
		}
	},
	{
		{"Animal"},
		{
			{"OnScan",		0.75},					--500, 800, 1500 depending on rarity					Boosted up to ~200k, 320k, 600k with maxed Scanner upgrades
			{"Record",		1}						--5, 10, 15 depending on rarity
		}
	},
	{
		{"Flora"},
		{
			{"OnScan",		0.75},					--250													Boosted up to ~100k with maxed Scanner upgrades
			{"Record",		3}						--3, 5, or 8 Nanites, but the game only ever seems to use 3?
		}
	},
	{
		{"Mineral"},
		{
			{"OnScan",		0.75},					--200													Guessing that it is boosted up to ~80k with maxed Scanner upgrades
			{"Record",		3}						--3, 5, or 12 Nanites, but the game only ever seems to use 3
		}
	},
	{
		{"Sector"},
		{
			{"Record",		10}						--3 Nanites
		}
	}
  }

ItemReplacement =			"CAVECUBE"				--Removed shop stock items are replaced with Vortex Cubes

ShopStockChanges =
{
	{
		{"NAV_DATA_DROP"},							--Item to be removed/replaced
		{"Shop"}									--Shops to remove it from
	},
	{
		{"NAV_DATA"},								--Navigation Data
		{"Shop"}									--"Regular" Galactic Trade Terminals, such as in Minor Settlements?
	},
	{
		{"ALLOY1"},
		{"Shop",	"SpaceStation"}
	},
	{
		{"ALLOY2"},
		{"Shop",	"SpaceStation"}
	},
	{
		{"ALLOY4"},
		{"Shop",	"SpaceStation"}
	},
	{
		{"ALLOY5"},
		{"Shop",	"SpaceStation"}
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersion..".pak",
["MOD_DESCRIPTION"]	= Description,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
{
	["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\DEFAULTREALITY.MBIN"},
	["EXML_CHANGE_TABLE"] 	= 
	{
		{
			--Intentionally left blank to be filled by the function below
		}
	}
},
{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
["EXML_CHANGE_TABLE"] = {
	--[[{
		["REPLACE_TYPE"] 		= "",
		["MATH_OPERATION"] 		= "*",
		["SPECIAL_KEY_WORDS"] = {"StatsType", "Suit_Underwater"},
		["SECTION_UP"] = 1, 
		["VALUE_CHANGE_TABLE"] 	=
		{
			{"RangeMax", UnderwaterProtectionMultiplier}
		}
	},]]
	{
		["REPLACE_TYPE"] 		= "",
		["MATH_OPERATION"] 		= "",
		["PRECEDING_KEY_WORDS"] = {"ShipStartingLayout"},
		["VALUE_CHANGE_TABLE"] 	=
		{
			{"Slots", StarterShipGenSlots}
		}
	},
	{
		["REPLACE_TYPE"] 		= "",
		["MATH_OPERATION"] 		= "",
		["PRECEDING_KEY_WORDS"] = {"ShipTechOnlyStartingLayout"},
		["VALUE_CHANGE_TABLE"] 	=
		{
			{"Slots", StarterShipTechSlots}
		}
	},
	{
		["REPLACE_TYPE"] 		= "",
		["MATH_OPERATION"] 		= "",
		["PRECEDING_KEY_WORDS"] = {"ShipCargoOnlyStartingLayout"},
		["VALUE_CHANGE_TABLE"] 	=
		{
			{"Slots", StarterShipCargoSlots}
		}
	},
	{
		["REPLACE_TYPE"] 		= "",
		["MATH_OPERATION"] 		= "",
		["SPECIAL_KEY_WORDS"] = {"FiendCrime", "UnderwaterPropDamaged"},
		["SECTION_UP"] = 1, 
		["VALUE_CHANGE_TABLE"] 	=
		{
			{"ResponseRate", JellyfishSpawnChance}
		}
	},
	{
		["REPLACE_TYPE"] 		= "",
		["MATH_OPERATION"] 		= "",
		["SPECIAL_KEY_WORDS"] = {"FiendCrime", "UnderwaterPropCollected"},
		["SECTION_UP"] = 1, 
		["VALUE_CHANGE_TABLE"] 	=
		{
			{"ResponseRate", AnglerfishSpawnChance}
		}
	}
}}
}}}}


local ChangesToDefaultReality = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #DiscoveryChanges do
	local Type = DiscoveryChanges[i][1][1]
	local ScanRecords = DiscoveryChanges[i][2]
	
	for j=1, #ScanRecords do
		ScanRecord = ScanRecords[j][1]
		Mult = ScanRecords[j][2]
	
			ChangesToDefaultReality[#ChangesToDefaultReality+1] = 
		{
			["MATH_OPERATION"] = "*",
			["PRECEDING_KEY_WORDS"] = {"DiscoveryWorth", Type, ScanRecord},
			["REPLACE_TYPE"] 		= "ALL",
			["INTEGER_TO_FLOAT"] = "PRESERVE",
			["VALUE_CHANGE_TABLE"] 	=
			{
				{"IGNORE",Mult}
			}
		}
	end
end
for i = 1, #ShopStockChanges do
	local ItemID = ShopStockChanges[i][1][1]
	local ShopIDs = ShopStockChanges[i][2]

	for j = 1, #ShopIDs do
		ShopID = ShopIDs[j]
			ChangesToDefaultReality[#ChangesToDefaultReality+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {ShopID, "GcTradeData.xml"},
				["PRECEDING_KEY_WORDS"] = {"OptionalProducts"},
				--["SECTION_UP"] = 1,
				["VALUE_MATCH"] 	= ItemID,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Value", ItemReplacement}
				}
			}
	end
end