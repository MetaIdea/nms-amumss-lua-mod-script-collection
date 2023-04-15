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
		["MinAmount"] = 2,
		["MaxAmount"] = 4,		
	},
	{
		["Type"] = "SummonerDrone",
		["MinAmount"] = 1,
		["MaxAmount"] = 2.5,		
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

CREATURE_MULTIPLIER =
{
	{
		["Type"] = "FIEND_EGG",
		["MinAmount"] = 2,
		["MaxAmount"] = 6,		
	},
	{
		["Type"] = "FIEND_DROP",
		["MinAmount"] = 2,
		["MaxAmount"] = 2.5,		
	},
	{
		["Type"] = "FLOATER",
		["MinAmount"] = 3,
		["MaxAmount"] = 4,		
	},
	{
		["Type"] = "FAST_FLOATER",
		["MinAmount"] = 3,
		["MaxAmount"] = 3,		
	},
	{
		["Type"] = "MINIDRONE",
		["MinAmount"] = 2,
		["MaxAmount"] = 3.5,		
	},
	{
		["Type"] = "SLUG",
		["MinAmount"] = 2,
		["MaxAmount"] = 8,		
	},
	{
		["Type"] = "BUG",
		["MinAmount"] = 1.75,
		["MaxAmount"] = 2.5,		
	},
	{
		["Type"] = "SANDWORMPOS",
		["MinAmount"] = 2,
		["MaxAmount"] = 5,		
	},
	{
		["Type"] = "FIEND",
		["MinAmount"] = 3,
		["MaxAmount"] = 6,		
	},
}

SHIP_MULTIPLIER =
{
	["Standard"] = 
	{
		["AIShipRole"] = "Standard",
		["MinAmount"] = 2.5,
		["MaxAmount"] = 6.5,			
	},
}

FREIGHT_SHIP_MULTIPLIER =
{
	["Freighter"] = 
	{
		["AIShipRole"] = "Freighter",		
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

function GetSentinelShipTypeMultiply(TYPE, MIN, MAX)
return
	{
		["PRECEDING_KEY_WORDS"] = {"PoliceSpawns"},
		["SPECIAL_KEY_WORDS"] = {"AIShipRole", TYPE},
		["PRECEDING_FIRST"] = "TRUE",
		["INTEGER_TO_FLOAT"] = "PRESERVE",
		["SECTION_UP"] = 1,
		["MATH_OPERATION"] = "*",
		["REPLACE_TYPE"] = "ALL",
		["WISUBSEC_OPTION"] = "ALL",
		["WHERE_IN_SUBSECTION"] = 
		{
			{"Count", "Vector2f.xml"},
		},
		["VALUE_CHANGE_TABLE"] 	= 
		{
			-- {"x",	1},
			-- {"y",	1},
			{"x",	MIN},
			{"y",	MAX},
		}
	}
end

function GetSentinelShipSpreadMultiply(TYPE, MIN)
return
	{
		["PRECEDING_KEY_WORDS"] = {"PoliceSpawns"},
		["SPECIAL_KEY_WORDS"] = {"AIShipRole", TYPE},
		["PRECEDING_FIRST"] = "TRUE",
		["INTEGER_TO_FLOAT"] = "PRESERVE",
		["SECTION_UP"] = 1,
		["MATH_OPERATION"] = "*",
		["REPLACE_TYPE"] = "ALL",
		["WISUBSEC_OPTION"] = "ALL",
		["WHERE_IN_SUBSECTION"] = 
		{
			{"Spread", "Vector2f.xml"},
		},
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"x",	MIN},
			{"y",	MIN},
		}
	}
end

function GetSentinelShipSpreadShape(TYPE, SHAPE)
return
	{
		["PRECEDING_KEY_WORDS"] = {"PoliceSpawns"},
		["SPECIAL_KEY_WORDS"] = {"AIShipRole", TYPE},
		["PRECEDING_FIRST"] = "TRUE",
		-- ["INTEGER_TO_FLOAT"] = "PRESERVE",
		["SECTION_UP"] = 1,
		["MATH_OPERATION"] = "*",
		["REPLACE_TYPE"] = "ALL",
		-- ["WISUBSEC_OPTION"] = "ALL",
		-- ["WHERE_IN_SUBSECTION"] = 
		-- {
			-- {"Spread", "Vector2f.xml"},
		-- },
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"SpawnShape",	SHAPE},
		}
	}
end

function GetSentinelFreighterTypeMultiply(TYPE)
return
	{
		["PRECEDING_KEY_WORDS"] = {"PoliceSpawns"},
		["SPECIAL_KEY_WORDS"] = {"AIShipRole", TYPE},
		["PRECEDING_FIRST"] = "TRUE",
		-- ["INTEGER_TO_FLOAT"] = "PRESERVE",
		["SECTION_UP"] = 1,
		-- ["MATH_OPERATION"] = "*",
		["REPLACE_TYPE"] = "RAW",
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{ 
			[[<Property name="ChildSpawns" />]], 
			[[
      <Property name="ChildSpawns">
        <Property value="GcAIShipSpawnData.xml">
		  <Property name="Message" value="" />
		  <Property name="CombatMessage" value="" />
		  <Property name="OSDMessage" value="" />
		  <Property name="Shortcut" value="TkInputEnum.xml">
			<Property name="InputButton" value="None" />
		  </Property>
		  <Property name="WarpIn" value="True" />
		  <Property name="Role" value="GcAISpaceshipRoles.xml">
			<Property name="AIShipRole" value="Standard" />
		  </Property>
		  <Property name="MinRange" value="800" />
		  <Property name="Scale" value="Vector2f.xml">
			<Property name="x" value="1" />
			<Property name="y" value="1" />
		  </Property>
		  <Property name="Reward" value="" />
		  <Property name="RewardMessage" value="" />
		  <Property name="MarkerData" value="GcAIShipSpawnMarkerData.xml">
			<Property name="MarkerIcon" value="TkTextureResource.xml">
			  <Property name="Filename" value="" />
			  <Property name="ResHandle" value="GcResource.xml">
				<Property name="ResourceID" value="0" />
			  </Property>
			</Property>
			<Property name="MarkerLabel" value="" />
			<Property name="HideDuringCombat" value="False" />
			<Property name="MinVisibleRange" value="0" />
			<Property name="MaxVisibleRange" value="10000" />
			<Property name="MinAngleVisible" value="0" />
			<Property name="ShipsToMark" value="None" />
		  </Property>
		  <Property name="AttackFreighter" value="True" />
		  <Property name="Spread" value="Vector2f.xml">
			<Property name="x" value="375" />
			<Property name="y" value="375" />
		  </Property>
		  <Property name="Count" value="Vector2f.xml">
			<Property name="x" value="7" />
			<Property name="y" value="7" />
		  </Property>
		  <Property name="StartTime" value="Vector2f.xml">
			<Property name="x" value="1" />
			<Property name="y" value="3" />
		  </Property>
		  <Property name="SpawnShape" value="Cone" />
		  <Property name="Performances" value="GcShipAIPerformanceArray.xml">
			<Property name="Array" />
		  </Property>
		  <Property name="ChildSpawns" />
		</Property>
	</Property>]]
			}
		}
	}
end

function GetStationShipMultiply(MIN, MAX)
return
{
	["MBIN_FILE_SOURCE"] 	= "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"]	= 
	{
		{
			["MATH_OPERATION"] = "*",
			["REPLACE_TYPE"] = "ONCE",
			["INTEGER_TO_FLOAT"] = "PRESERVE",
			["VALUE_CHANGE_TABLE"] 	= 
			{
				{"PoliceStationNumToLaunch",	MIN},
				-- {"FreighterMaxNumLaunchedShips",	MIN},
				{"MaxNumActivePolice",	MAX},
				-- {"PoliceNumPerTarget",	MIN},
			},
		}
	}
}
end

function GetCreatureMultiplyMin(TYPE, MULTI, ISMAX)
MINMAX = ""
if ISMAX then
	MINMAX = "MaxNum"
else MINMAX = "MinNum"
end
return
	{
		["SPECIAL_KEY_WORDS"] = {"Event", TYPE},
		["PRECEDING_KEY_WORDS"] = {MINMAX},
		["INTEGER_TO_FLOAT"] = "PRESERVE",
		["MATH_OPERATION"] = "*",
		["REPLACE_TYPE"] = "ALL",
		["VALUE_CHANGE_TABLE"] 	= 
		{
			{"IGNORE",	MULTI},
		}
	}
end

CHANGE_TABLE = {}
MINEST_MIN = 1

AISPACESHIP_CHANGE = { true, [[Multiply Space Station Sentinel ship spawn?
It will modify GCAISPACESHIPGLOBALS, remember to check for mod conflicts!]] }

INJECT_DECISION = GUIF(AISPACESHIP_CHANGE, 10)
MBIN_CHANGE = {}
if INJECT_DECISION then
	table.insert(MBIN_CHANGE, GetStationShipMultiply(SHIP_MULTIPLIER["Standard"]["MinAmount"], SHIP_MULTIPLIER["Standard"]["MaxAmount"]))
end

for _,j in pairs(MULTIPLIER_TABLE) do
	table.insert(CHANGE_TABLE, GetSentinelTypeMultiply(j["Type"],j["MinAmount"],j["MaxAmount"]))
	if j["MinAmount"] < MINEST_MIN then MINEST_MIN = j["MinAmount"]
	end
end

for _,j in pairs(FREIGHT_SHIP_MULTIPLIER) do
	-- table.insert(CHANGE_TABLE, GetSentinelFreighterTypeMultiply(j["AIShipRole"]))
	table.insert(CHANGE_TABLE, GetSentinelShipTypeMultiply(j["AIShipRole"], 3, 5))
	table.insert(CHANGE_TABLE, GetSentinelShipSpreadMultiply(j["AIShipRole"], 18))
	table.insert(CHANGE_TABLE, GetSentinelShipSpreadShape(j["AIShipRole"], "Cone"))
end

for _,j in pairs(SHIP_MULTIPLIER) do
	table.insert(CHANGE_TABLE, GetSentinelShipTypeMultiply(j["AIShipRole"],j["MinAmount"],j["MaxAmount"]))
	table.insert(CHANGE_TABLE, GetSentinelShipSpreadMultiply(j["AIShipRole"],j["MinAmount"]))
end

for _,j in pairs(CREATURE_MULTIPLIER) do
	table.insert(CHANGE_TABLE, GetCreatureMultiplyMin(j["Type"], j["MinAmount"], false))
	table.insert(CHANGE_TABLE, GetCreatureMultiplyMin(j["Type"], j["MaxAmount"], true))
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

table.insert(MBIN_CHANGE, 
{
	["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
	["EXML_CHANGE_TABLE"]	= CHANGE_TABLE
})
	
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "DaPoPoBeFastOnYoAss.pak",
["MOD_BATCHNAME"]		= "~~~DaPoPoBeFastOnYoAss_COMPATIBILITY.pak",
["MOD_DESCRIPTION"]		= "Spawns MORE sentinels",
["MOD_AUTHOR"]			= "WinderTP, lyravega",
["NMS_VERSION"]			= "3.90",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE
		}
	},
}