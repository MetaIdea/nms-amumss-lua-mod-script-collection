ModName = "BetterHazardTechX"
GameVersion = "3_87"

HazardRechargeMult =			1.5					--	Multiplier to apply to the cost of Sodium / Sodium Nitrate on recharging Hazard Protection			54 / 22 to fully charge
ProcHazardRechargeMult =		2					--	Multiplier to apply to the cost of Dioxite / Phosphorus / Ammonia / Uranium on recharging the procedural Hazard Protection		16 / 16 / 16 / 16 to fully charge
LifeSupportRechargeMult =		1.5					--	Multiplier to apply to the cost of Oxygen / Dioxite on recharging Life Support						50 / 20 to fully charge

HazardTechChanges =
{
	{--Shield Lattice (all elements)
		"UT_PROTECT",		0.25					--0.2 		(+20% hazard protection for Hot/Cold/Toxic/Rad)
	},
	{--Coolant Network
		"UT_HOT",			1.4						--1.2 		(+20% hazard protection for Hot)
	},
	{--Thermic Layer
		"UT_COLD",			1.4						--1.2 		(+20% hazard protection for Cold)
	},
	{--Toxic Suppressor
		"UT_TOX",			1.4						--1.2 		(+20% hazard protection for Toxic)
	},
	{--Radiation Deflector
		"UT_RAD",			1.4						--1.2 		(+20% hazard protection for Radiation)
	},
	{--Aeration Membrane
		"UT_WATER",			2.5						--1.33 		(+33% hazard protection for Underwater / breath time)
	}							--This large boost for Aeration Membrane is a workaround to compensate for how the "Stronger Hazards" mod also reduces Underwater protection
}									--However could look into HAZARDTABLE.MBIN to deal with that...

--Suspicious Hazard Protection module	(Gains huge bonuses when adjacent to any hazard tech / upgrades, often doubling in power)
SusHazModMin =				1.1						--1.01		(+1% hazard protection for all 4 specific hazards)
SusHazModMax =				1.25					--1.1		(+10% hazard protection for all 4 specific hazards)

--Multiplier to apply to the duration of the "procedural" Hazard protection upgrade modules which act as a temporary "shield" against one type of hazard.
	--These are lowered to fit with the "Stronger Hazards" mod, since they act a set duration and aren't affected by the strength of hazards
HazardProcTechChanges =
{
	{
		{0.45},					--180-265 duration for B Class Hazard Upgrade Modules
		{
			"UP_RAD1",
			"UP_TOX1",
			"UP_COLD1",
			"UP_HOT1"
		}
	},
	{
		{0.55},					--200-265 duration for A Class Hazard Upgrade Modules
		{
			"UP_RAD2",
			"UP_TOX2",
			"UP_COLD2",
			"UP_HOT2"
		}
	},
	{
		{0.667},				--220-265 duration for S Class Hazard Upgrade Modules		(In vanilla Survival seems to last roughly 180 seconds?)
		{
			"UP_RAD3",
			"UP_TOX3",
			"UP_COLD3",
			"UP_HOT3"
		}
	},
}

--Nothing below this should need to be changed. All values can be edited in the sections above this line

function Invert (value)
    return
    1/value
end

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= "Nerfs the procedural Hazard techs & Buffs the Hazard techs / upgrades which grant a % resistance to hazards to hopefully make them worth considering. Note that the different sources of +% hazard protection (multiple X Class upgrades all count as the same source) appear to stack multiplicatively with each other, and that X Class Hazard Upgrades receive significant adjacency bonuses. E.G. two fully surrounded X Class upgrades with +25% each will typically double your protection time against all hazards.",
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the HazardTechChanges at the bottom of this script
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the HazardProcTechChanges at the bottom of this script
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "ALL",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", "UP_HAZX"},
				["PRECEDING_KEY_WORDS"] = {"StatLevels"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", SusHazModMin},
					{"ValueMax", SusHazModMax},
				}
			}
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "PROTECT"},
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"]	= "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{'ChargeMultiplier', Invert (HazardRechargeMult)}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "ENERGY"},
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"]	= "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{'ChargeMultiplier', Invert (LifeSupportRechargeMult)}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "T_RAD"},
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"]	= "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{'ChargeMultiplier', Invert (ProcHazardRechargeMult)}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "T_TOX"},
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"]	= "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{'ChargeMultiplier', Invert (ProcHazardRechargeMult)}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "T_COLDPROT"},
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"]	= "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{'ChargeMultiplier', Invert (ProcHazardRechargeMult)}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "T_HOTPROT"},
				["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"]	= "FORCE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{'ChargeMultiplier', Invert (ProcHazardRechargeMult)}
				}
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "POWERCELL"},
				["MATH_OPERATION"] 		= "*",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{'ChargeValue', ProcHazardRechargeMult}
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "PRODFUEL2"},
				["MATH_OPERATION"] 		= "*",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{'ChargeValue', LifeSupportRechargeMult}
				}
			},
		}
	},
}}}}

local ChangesToHazardTechs = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #HazardTechChanges do
	local HazID = HazardTechChanges[i][1]
	local Bonus = HazardTechChanges[i][2]


			ChangesToHazardTechs[#ChangesToHazardTechs+1] =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", HazID},
				["PRECEDING_KEY_WORDS"] = {"StatBonuses"},
				--["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Bonus", Bonus}
				}
			}
end

local ChangesToHazardProcTechs = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]

for i = 1, #HazardProcTechChanges do
	local Mult = HazardProcTechChanges[i][1][1]
	local HazIDs = HazardProcTechChanges[i][2]
	
	for j = 1, #HazIDs do
		HazID = HazIDs[j]

			ChangesToHazardProcTechs[#ChangesToHazardProcTechs+1] =
			{
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "*",
				["SPECIAL_KEY_WORDS"] = {"ID", HazID},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", Mult},
					{"ValueMax", Mult}
				}
			}
	end
end