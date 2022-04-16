DEBUG_CHANGE_LIST = 
{
	{["Name"] = "SkipIntro", 							["Value"] = "True"},
	{["Name"] = "SkipLogos", 							["Value"] = "True"},
	{["Name"] = "GodMode", 								["Value"] = "True"},
	{["Name"] = "TakeNoDamage", 						["Value"] = "True"},
	{["Name"] = "MapWarpCheckIgnoreFuel", 				["Value"] = "True"},
	{["Name"] = "MapWarpCheckIgnoreDrive", 				["Value"] = "True"},
	{["Name"] = "EverythingIsFree", 					["Value"] = "True"},
	{["Name"] = "EverythingIsKnown", 					["Value"] = "True"},
	{["Name"] = "UseParticles", 						["Value"] = "False"},
	{["Name"] = "UseHeavyAir", 							["Value"] = "False"},
	{["Name"] = "UseVolumetrics", 						["Value"] = "False"},
	{["Name"] = "InfiniteStamina", 						["Value"] = "True"},
	{["Name"] = "IgnoreFreighterSpawnWarpRequirement", 	["Value"] = "True"},
	{["Name"] = "AlwaysAllowShipOperations", 			["Value"] = "True"},
	{["Name"] = "AlwaysAllowVehicleOperations", 		["Value"] = "True"},
	{["Name"] = "AlwaysAllowFreighterInventoryAccess", 	["Value"] = "True"},
	{["Name"] = "MultiplePlayerFreightersInASystem", 	["Value"] = "True"},
	{["Name"] = "RenderHud", 							["Value"] = "True"},
	{["Name"] = "BootMusic", 							["Value"] = "False"},
	{["Name"] = "DisableBaseBuildingLimits", 			["Value"] = "True"},
	--{["Name"] = "AllowGlobalPartSnapping", 				["Value"] = "True"},
	{["Name"] = "BaseDownloadTimeout", 					["Value"] = "10"},
	{["Name"] = "GalaxyStarAnomaly", 					["Value"] = "BlackHole"},
	{["Name"] = "DisableStorms", 						["Value"] = "True"},
}

SKY_CHANGE_LIST = 
{
	{["Name"] = "MinTimeBetweenStormsLow", 				["Value"] = "99999"},
	{["Name"] = "MaxTimeBetweenStormsLow", 				["Value"] = "99999"},
	{["Name"] = "MinTimeBetweenStormsHigh", 			["Value"] = "99999"},
	{["Name"] = "MaxTimeBetweenStormsHigh", 			["Value"] = "99999"},
	{["Name"] = "MinTimeBetweenStormsExtremeFallback",	["Value"] = "0"},
	{["Name"] = "MaxTimeBetweenStormsExtremeFallback",	["Value"] = "0.0001"},
	{["Name"] = "MinStormLengthLow",					["Value"] = "0"},
	{["Name"] = "MaxStormLengthLow",					["Value"] = "0.0001"},
	{["Name"] = "MinStormLengthHigh",					["Value"] = "0"},
	{["Name"] = "MaxStormLengthHigh",					["Value"] = "0.0001"},
	{["Name"] = "StormWarningTime",						["Value"] = "0.0001"},
	{["Name"] = "StormTransitionTime",					["Value"] = "0.0001"},
}

BUILD_DISTANCE = "1000"

DEBUG_TABLE = {}
for i,j in pairs(DEBUG_CHANGE_LIST) do
	table.insert(DEBUG_TABLE, {j["Name"],j["Value"]})
end

SKY_TABLE = {}
for i,j in pairs(SKY_CHANGE_LIST) do
	table.insert(SKY_TABLE, {j["Name"],j["Value"]})
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "__DEBUG.pak",
["MOD_AUTHOR"]				= "WinderTP",
["NMS_VERSION"]				= "whatever",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= { "GCDEBUGOPTIONS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= DEBUG_TABLE
						},
					} --1 global replacements
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCBUILDINGGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							--["PRECEDING_KEY_WORDS"] = 	{""},
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"BuildingPlacementMaxDistance",	BUILD_DISTANCE},
							},
						},
						{
							--["SPECIAL_KEY_WORDS"]	= {"BuildingPlacementScaleMinMax", "Vector2f.xml"},
							["PRECEDING_KEY_WORDS"] = "BuildingPlacementScaleMinMax",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", "0.01"},
								{"y", "IGNORE"},
							}
						},
					},
				},
				--[[{
					["MBIN_FILE_SOURCE"] 	= { "GCSKYGLOBALS.GLOBALS.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= SKY_TABLE
						},
					} --1 global replacements
				},]]
			}
		},
	}	
}