--Multipliers to apply to the base attributes of all ships
RegSpdMult = 2												--	Multiplier to apply to the base speed for regular starships
RegManMult = 2												--	Multiplier to apply to the base Maneuverability for regular starships

LiveSpdMult = 2												--	Multiplier to apply to the base speed for Living starships
LiveManMult = 2												--	Multiplier to apply to the base Maneuverability for Living starships

SolarSpdMult = 2											--	Multiplier to apply to the base speed for Solar starships	(stacks with regular ships)


--Replacers for attributes of all ships be adjusting specific pre-installed tech, or otehr tech adjustments
ShipTechChanges =
{
	{
		{
			"SHIPJUMP1"				--Regular ship starting Pulse Engine
		},
		{
			{
				"Ship_Boost",						100*RegSpdMult					--100
			},
			{
				"Ship_Maneuverability",				1*RegManMult					--1
			},
			{
				"Ship_PulseDrive_MiniJumpSpeed",	1								--1
			},
			{
				"Ship_PulseDrive_MiniJumpFuelSpending",		1						--1
			}
		}
	},
	{
		{
			"SHIPJUMP_ALIEN"		--Living Ship starting Pulse Engine
		},
		{
			{
				"Ship_Boost",						100*LiveSpdMult					--100
			},
			{
				"Ship_Maneuverability",				1*LiveManMult					--1
			},
			{
				"Ship_PulseDrive_MiniJumpSpeed",	1								--1
			},
			{
				"Ship_PulseDrive_MiniJumpFuelSpending",		1						--1
			}
		}
	},
	{
		{
			"SOLAR_SAIL"			--Solar ship unique starting tech, should apply as multipliers to the base regular Ship engine stats
		},
		{
			{
				"Ship_Boost",						1.15*SolarSpdMult				--1.15
			},
			{
				"Ship_BoostManeuverability",		1.1								--1.1
			},
			{
				"Ship_PulseDrive_MiniJumpFuelSpending",		0.2						--0.2
			}
		}
	},
}


--Nothing below this line should need to be edited; all changes should be possible with the values above

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'FasterShips.pak',
	MOD_AUTHOR			= 'Xen0nex',
	NMS_VERSION			= '3.87',
	MOD_DESCRIPTION		= 'Makes ships start out faster',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			--Intentionally left blank to be filled by the function below
		}
	},
}}}}

local ChangesToShipTech = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #ShipTechChanges do
	local TechID = ShipTechChanges[i][1][1]
	local Stats = ShipTechChanges[i][2]

	for j = 1, #Stats do
		local StatID = Stats[j][1]
		local StatRep = Stats[j][2]

			ChangesToShipTech[#ChangesToShipTech+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				--["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", TechID, "StatsType", StatID},
				--["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Bonus", StatRep}
				}
			}
	end
end