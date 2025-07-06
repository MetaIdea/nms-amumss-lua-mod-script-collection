ModName = "PTSd Creature Loot Changes"
GameVersion = "5_64"
Description = "Lowers amount of meat dropped by creatures, and improves loot of Rock Creatures, adjusts location and time of day to find certain creatures"

AngryRockProportionNormal = 0.5				--Default 0.2		Unclear this effect, there is a separate parameter for RockTransformGlobalChance
AngryRockProportionSurvival = 0.5			--Default 0.5		Unclear this effect, there is a separate parameter for RockTransformGlobalChance

--Changes loot dropped from killing the "living rocks" you rarely encounter while mining
RockCreatureLoot = "GEODE_RARE"				--Default 5/8/12 (depending on size of rock?) of "FOOD_M_MEAT" (Meaty Chunks)

--Changes loot dropped from killing the "robot antelope" rarely found in empty systems
RobotAntelopeLoot = "TRA_ENERGY2"			--Default usually 5/8 "TECHFRAG" (Nanites)

--Changes the amount of meat/loot dropped by killing creatures
CreatureKillRewardAmountSmall = 1			--Default 5
CreatureKillRewardAmountMed = 2				--Default 8
CreatureKillRewardAmountLarge = 3			--Default 12
CreatureKillRewardAmountHuge = 5			--Default 20

--Changes the chances and number of creatures being limited to a certain hemispheres per planet. In practice the actual amount of creatures on a planet to be hemisphere-locked ends up less than what the values here suggest
	--Alternatively to setting EnableHemisphereChanges to false, deleting CREATUREGENERATIONARCHETYPES.MBIN in "MODS\PTSd Incoming Damage and Predators\METADATA\SIMULATION\ECOSYSTEM" will disable these changes.
EnableHemisphereChanges =	true			--false			The following changes in this section only apply if this is set to true
HemisphereChanceNormal =	0.33			--Default 0		This applies to 80 out of the 88 Archetypes
HemisphereChanceMed =		0.75			--Default 0.5	This applies to 7 out of the 88 Archetypes
HemisphereChanceHigh =		0.9				--Default 0.7	This applies to 1 out of the 88 Archetypes
HemisphereLimitNormal =		3				--Default 1		This applies to 86 out of the 88 Archetypes, presumably the max numebr of creatures which can be hemisphere-locked on the planet with this Archetype? In practice increasing this value increases the odds of seeing a creature hemisphere-locked if its ChanceOfHemisphereLimit is more than 0
HemisphereLimitPurpWeird =	1				--Default 0		This applies to 1 out of the 88 Archetypes, seems to be the glowing geometric creatures on some Purple system planets

--Changes the time of day that certain creatures are active, options are OnlyDay, MostlyDay, AnyTime, MostlyNight, OnlyNight
	--Alternatively to setting EnableActiveTimeChanges to false, deleting all folders in "MODS\PTSd Incoming Damage and Predators\METADATA\SIMULATION\ECOSYSTEM" will disable these changes.
EnableActiveTimeChanges =	true			--false			The following changes in this section only apply if this is set to true
ActiveTimeChanges =
{
	{
		{"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECOMMON.MBIN"},
		{--_index		ActiveTime
			{0,			"MostlyNight"},		--"AnyTime"
			{1,			"MostlyDay"},		--"AnyTime"
			{2,			"AnyTime"},		--"AnyTime"
			{3,			"OnlyNight"},		--"AnyTime"
			{4,			"OnlyDay"},			--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEWATERWORLDBASE.MBIN"},
		{--_index		ActiveTime
			{0,			"OnlyNight"},		--"AnyTime"
			{1,			"AnyTime"},		--"AnyTime"
			{2,			"MostlyNight"},		--"AnyTime"
			{3,			"MostlyDay"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEWATERALLGLOW.MBIN"},
		{--_index		ActiveTime
			{0,			"MostlyNight"},		--"AnyTime"
			{1,			"MostlyNight"},		--"AnyTime"
			{2,			"AnyTime"},		--"AnyTime"
			{3,			"MostlyNight"},		--"AnyTime"
			{4,			"OnlyNight"},		--"OnlyNight"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEWATERWORLDNOGLOW.MBIN"},
		{--_index		ActiveTime
			{0,			"OnlyDay"},			--"AnyTime"
			{1,			"AnyTime"},		--"AnyTime"
			{2,			"MostlyDay"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEWATERWORLDGLOW.MBIN"},
		{--_index		ActiveTime
			{0,			"OnlyNight"},		--"AnyTime"
			{1,			"AnyTime"},		--"AnyTime"
			{2,			"MostlyNight"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECRABS.MBIN"},
		{--_index		ActiveTime
			{0,			"OnlyNight"},		--"AnyTime"
			{1,			"MostlyNight"},		--"AnyTime"
			{2,			"AnyTime"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEEXTRAFISHBASE.MBIN"},
		{--_index		ActiveTime
			{0,			"MostlyNight"},		--"AnyTime"
			{1,			"OnlyNight"},		--"AnyTime"
			{2,			"AnyTime"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEEXTRAFISHGLOW.MBIN"},
		{--_index		ActiveTime
			{0,			"OnlyNight"},		--"AnyTime"
			{1,			"MostlyNight"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEEXTRAFISHNOGLOW.MBIN"},
		{--_index		ActiveTime
			{0,			"OnlyDay"},			--"AnyTime"
			{1,			"MostlyDay"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEARTHROPODWORLD.MBIN"},
		{--_index		ActiveTime
			{0,			"OnlyDay"},			--"AnyTime"
			{1,			"AnyTime"},		--"AnyTime"
			{2,			"MostlyDay"},		--"AnyTime"
			{3,			"MostlyNight"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLANTCATWORLD.MBIN"},
		{--_index		ActiveTime
			{0,			"OnlyDay"},			--"AnyTime"
			{1,			"AnyTime"},		--"AnyTime"
			{2,			"MostlyDay"},		--"AnyTime"
			{3,			"MostlyNight"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDGLOWSTRIDERS.MBIN"},
		{--_index		ActiveTime
			{0,			"AnyTime"},		--"AnyTime"
			{1,			"MostlyNight"},		--"AnyTime"
			{2,			"MostlyNight"},		--"AnyTime"
			{3,			"OnlyNight"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDPURPLE.MBIN"},
		{--_index		ActiveTime
			{0,			"AnyTime"},		--"AnyTime"
			{1,			"MostlyNight"},		--"AnyTime"
			{2,			"OnlyNight"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEALIEN.MBIN"},
		{--_index		ActiveTime
			{0,			"AnyTime"},		--"AnyTime"
			{1,			"MostlyNight"},		--"AnyTime"
			{2,			"MostlyDay"},		--"AnyTime"
			{3,			"OnlyDay"},			--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEARTHROPODHERB.MBIN"},
		{--_index		ActiveTime
			{0,			"OnlyDay"},			--"AnyTime"
			{1,			"MostlyDay"},		--"AnyTime"
			{2,			"AnyTime"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLANTCATHERB.MBIN"},
		{--_index		ActiveTime
			{0,			"OnlyDay"},			--"AnyTime"
			{1,			"MostlyDay"},		--"AnyTime"
			{2,			"AnyTime"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEROBOT.MBIN"},
		{--_index		ActiveTime
			{0,			"AnyTime"},		--"AnyTime"
			{1,			"OnlyDay"},			--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEWALKINGBUILDING.MBIN"},
		{--_index		ActiveTime
			{0,			"OnlyDay"},			--"AnyTime"
			{1,			"AnyTime"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERDMED.MBIN"},
		{--_index		ActiveTime
			{0,			"AnyTime"},		--"AnyTime"
			{1,			"OnlyDay"},			--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVORELARGE.MBIN"},
		{--_index		ActiveTime
			{0,			"OnlyDay"},			--"AnyTime"
			{1,			"AnyTime"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREGIANT.MBIN"},
		{--_index		ActiveTime
			{0,			"MostlyDay"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPREDATORMED.MBIN"},
		{--_index		ActiveTime
			{0,			"MostlyNight"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLANTCATPRED.MBIN"},
		{--_index		ActiveTime
			{0,			"MostlyNight"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\CAVE\CAVETABLECOMMON.MBIN"},
		{--_index		ActiveTime
			{0,			"MostlyNight"},		--"AnyTime"
			{1,			"OnlyNight"},		--"AnyTime"
			{2,			"AnyTime"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORMED.MBIN"},
		{--_index		ActiveTime
			{0,			"MostlyNight"},		--"AnyTime"
		}
	},
	{
		{"METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLAYERPREDATORLARGE.MBIN"},
		{--_index		ActiveTime
			{0,			"MostlyNight"},		--"AnyTime"
		}
	},
}

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["EXML_CREATE"] = "FALSE",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"GCCREATUREGLOBALS.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			{
				["PRECEDING_FIRST"] = "TRUE",
				["PRECEDING_KEY_WORDS"] = {"KillingProducts"},
				["SPECIAL_KEY_WORDS"] = {"CreatureType","ROCKCREATURE"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] = {
					{"Item", RockCreatureLoot},
				},
			},
			{
				["PRECEDING_FIRST"] = "TRUE",
				["PRECEDING_KEY_WORDS"] = {"KillingProducts"},
				["SPECIAL_KEY_WORDS"] = {"CreatureType","ROBOTANTELOPE"},
				["MATH_OPERATION"] 		= "", 
				["VALUE_CHANGE_TABLE"] = {
					{"Item", RobotAntelopeLoot},
				},
			},
			{
				["PRECEDING_KEY_WORDS"] = {""},
				["VALUE_CHANGE_TABLE"] = {
					{"AngryRockProportionNormal", AngryRockProportionNormal},
					{"AngryRockProportionSurvival", AngryRockProportionSurvival},
					{"CreatureKillRewardAmountSmall", CreatureKillRewardAmountSmall},
					{"CreatureKillRewardAmountMed", CreatureKillRewardAmountMed},
					{"CreatureKillRewardAmountLarge", CreatureKillRewardAmountLarge},
					{"CreatureKillRewardAmountHuge", CreatureKillRewardAmountHuge},
				},
			},
		}
	},
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONARCHETYPES.MBIN"},
		["MXML_CHANGE_TABLE"] 	= 
		{
			--This section intentionally left blank to be filled in by the function below
		}
	}
}}}}

local ChangesToCreatureGen = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]

if EnableHemisphereChanges then
			ChangesToCreatureGen[#ChangesToCreatureGen+1] =
			{
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "0.000000",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChanceOfHemisphereLimit",	HemisphereChanceNormal} 	
				}
			}
			ChangesToCreatureGen[#ChangesToCreatureGen+1] =
			{
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "0.500000",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChanceOfHemisphereLimit",	HemisphereChanceMed} 	
				}
			}
			ChangesToCreatureGen[#ChangesToCreatureGen+1] =
			{
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "0.700000",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ChanceOfHemisphereLimit",	HemisphereChanceHigh} 	
				}
			}
			ChangesToCreatureGen[#ChangesToCreatureGen+1] =
			{
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "1",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MaxToHemisphereLimit",	HemisphereLimitNormal} 	
				}
			}
			ChangesToCreatureGen[#ChangesToCreatureGen+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"Id", "T_PURPLEWEIRD"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"MaxToHemisphereLimit",	HemisphereLimitPurpWeird} 	
				}
			}
end

local ChangesToTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
local ChangesToCurrentMBIN = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

if EnableActiveTimeChanges then
	for i = 1, #ActiveTimeChanges do
		local FilePath = ActiveTimeChanges[i][1][1]
		local Creatures = ActiveTimeChanges[i][2]
				
				ChangesToTable[#ChangesToTable+1] =
			{
				["MBIN_FILE_SOURCE"] 	= {FilePath},
				["MXML_CHANGE_TABLE"] 	= 
				{
					--Intentionally left blank
				}
			}
			ChangesToCurrentMBIN = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][i+2]["MXML_CHANGE_TABLE"]
			
			for j = 1, #Creatures do
				index = Creatures[j][1]
				ActiveTime = Creatures[j][2]

					ChangesToCurrentMBIN[#ChangesToCurrentMBIN+1] =
					{
						["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription"},
						["SECTION_ACTIVE"] = index,
						["VALUE_CHANGE_TABLE"] 	=
						{
							{"CreatureActiveTime", ActiveTime}
						}
					}
			end
	end
end