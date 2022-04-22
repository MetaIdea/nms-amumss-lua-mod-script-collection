ModeName = "UniqueSpaceShips"
Author = "Jackty89"

SpaceShipGlobalsPath = "GCSPACESHIPGLOBALS.GLOBAL.MBIN"
InventoryTablePath = "METADATA\\REALITY\\TABLES\\INVENTORYTABLE.MBIN"

ShuttleTakeOffReductionMultiplier = "0.75" -- Reduction of 25% for the base-value

ReduceLow = "0.9"
ReduceMedium = "0.8"
ReduceHigh ="0.7"

NormalValue = "1"
LowValue = "1.1"
LowMedValue ="1.25"
MedVale = "1.5"
MedHighValue = "1.75"
HighValue = "2"
HighExtrValue ="2.5"
ExtremeValue = "3"

FreighterC = "5"
FreighterB = "6"
FreighterA = "7"
FreighterS = "8"

Class = {"C", "B", "A", "S"}
Shipchanges =
{
	{
		{
			"SHIP_HYPERDRIVE"
		},
		{
			-- Shiptype, modifier-C-Class, B, A, S
			{"Scientific", MedHighValue,HighValue,HighExtrValue,ExtremeValue},
			{"Dropship", ReduceHigh,ReduceMedium,ReduceLow, NormalValue},
			{"Fighter", MedVale, MedHighValue, HighValue, HighExtrValue},
			{"Shuttle", NormalValue, LowValue, LowMedValue, MedVale},
			{"Royal", LowMedValue, MedVale, MedHighValue, HighValue},
			{"Alien", "", "", "", HighValue}
		}
	},
	{
		{
			"SHIP_DAMAGE"
		},
		{
			{"Scientific", LowValue, LowMedValue, MedVale, MedHighValue},
			{"Dropship", MedVale, MedHighValue, HighValue, HighExtrValue},
			{"Fighter", MedHighValue,HighValue,HighExtrValue,ExtremeValue},
			{"Shuttle", NormalValue, LowValue, LowMedValue, MedVale},
			{"Royal", LowMedValue, MedVale, MedHighValue, HighValue},
			{"Alien", "", "", "", HighValue}
		}
	},
	{
		{
			"SHIP_SHIELD"
		},
		{
			{"Scientific", ReduceHigh,ReduceMedium,ReduceLow, NormalValue},
			{"Dropship", MedHighValue,HighValue,HighExtrValue,ExtremeValue},
			{"Fighter", LowValue, LowMedValue, MedVale, MedHighValue},
			{"Shuttle", NormalValue, LowValue, LowMedValue, MedVale},
			{"Royal", LowMedValue, MedVale, MedHighValue, HighValue},
			{"Alien", "", "", "", HighValue}
		}
	},
	{
		{
			"FREI_HYPERDRIVE"
		},
		{
			{"Freighter", FreighterC, FreighterB, FreighterA, FreighterS}
		}
	}
}

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"] 			= ModeName..".pak",
	["MOD_DESCRIPTION"]			= "Rework of all Spaceships and their bonuses and price",
	["MOD_AUTHOR"]				= Author,
	["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= SpaceShipGlobalsPath,
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							--Reduce launch cost for Shuttle
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"ShuttleTakeOffMod",	ShuttleTakeOffReductionMultiplier}	-- Original 0.66 => 25% * 0.66 = 16.5% launch cost - Mod 25% * 0.10 = 2.5%
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= InventoryTablePath,
					["EXML_CHANGE_TABLE"] 	=
					{
					}
				}
			}
		}
	}
}

local ChangesToInventoryTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #Shipchanges do
	-- local ChangesToInventoryTable_temp
	local StatID = Shipchanges[i][1][1]
	local ShipTypes = Shipchanges[i][2]

	for j = 1, #ShipTypes do
		local ShipType = ShipTypes[j][1]
		local Modifier
		for k = 1, #Class do
			if ShipType == "Alien" then
				k = #Class
			end

			Modifier = ShipTypes[j][k+1]
			ChangesToInventoryTable_temp =
			{
				["PRECEDING_FIRST"] = "TRUE",
				["MATH_OPERATION"] = "*", -- "*", "+", "-", "/" or leave empty for normal replacement
				["INTEGER_TO_FLOAT"] = "FORCE",
				["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData", ShipType,"BaseStatsPerClass",Class[k]},
				["SPECIAL_KEY_WORDS"] = {"BaseStatID", StatID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Min", Modifier},
					{"Max", Modifier}
				}
			}
			ChangesToInventoryTable[#ChangesToInventoryTable+1] = ChangesToInventoryTable_temp
		end
	end
end