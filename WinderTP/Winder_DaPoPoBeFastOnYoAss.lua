MULTIPLIER_TABLE = 
{
	{
		["Type"] = "PatrolDrone",
		["MinAmount"] = 2,
		["MaxAmount"] = 10,		
	},
	{
		["Type"] = "CombatDrone",
		["MinAmount"] = 2,
		["MaxAmount"] = 7.5,		
	},
	{
		["Type"] = "MedicDrone",
		["MinAmount"] = 1,
		["MaxAmount"] = 4,		
	},
	{
		["Type"] = "SummonerDrone",
		["MinAmount"] = 1,
		["MaxAmount"] = 2,		
	},
	{
		["Type"] = "Quad",
		["MinAmount"] = 1.5,
		["MaxAmount"] = 4.5,		
	},
	{
		["Type"] = "Mech",
		["MinAmount"] = 1,
		["MaxAmount"] = 2,		
	},
	{
		["Type"] = "Walker",
		["MinAmount"] = 1,
		["MaxAmount"] = 2,		
	},
	{
		["Type"] = "CorruptedDrone",
		["MinAmount"] = 1.5,
		["MaxAmount"] = 7.5,		
	},
}

function GetSentinelTypeMultiply(TYPE, MIN, MAX)
return
	{
		["PRECEDING_KEY_WORDS"] = {"SentinelSpawns"},
		["SPECIAL_KEY_WORDS"] = {"SentinelType",TYPE},
		["PRECEDING_FIRST"] = "TRUE",
		["INTEGER_TO_FLOAT"] = "PRESERVE",
		["SECTION_UP_SPECIAL"] = 1,
		["MATH_OPERATION"] = "*",
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"MinAmount",	MIN},
			{"MaxAmount",	MAX},
		}
	}
end

CHANGE_TABLE = {}
MINEST_MIN = 1

for _,j in pairs(MULTIPLIER_TABLE) do
	table.insert(CHANGE_TABLE, GetSentinelTypeMultiply(j["Type"],j["MinAmount"],j["MaxAmount"]))
	if j["MinAmount"] < MINEST_MIN then MINEST_MIN = j["MinAmount"] end
end

if MINEST_MIN > 1 then
	table.insert(CHANGE_TABLE,
	{
			["PRECEDING_KEY_WORDS"] = {"SentinelSpawns"},
			["INTEGER_TO_FLOAT"] = "PRESERVE",
			["MATH_OPERATION"] = "*",
			["REPLACE_TYPE"] = "ALL",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"ReinforceAt",	MINEST_MIN }, -- typical vanilla value is 2
			}	
	})
end
	
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "DaPoPoBeFastOnYoAss.pak",
["MOD_BATCHNAME"]		= "~~~DaPoPoBeFastOnYoAss_COMPATIBILITY.pak",
["MOD_DESCRIPTION"]		= "Spawns MORE sentinels",
["MOD_AUTHOR"]			= "WinderTP",
["NMS_VERSION"]			= "3.90",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	= CHANGE_TABLE
				}
			}
		}
	},
}