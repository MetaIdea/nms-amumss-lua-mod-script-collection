ModName = "PTSd Weaker Fleet Upgrades"
GameVersion = "3_93"
Description = "Weakens Fleet Upgrade modules from giving 1~15% boost to 1~10% boosts"


--Multipliers to apply to the base stats for various Fleet upgrades. (Excluding Fuel, which does nothing anyways)
FleetUpgradeChanges =
{
	{
		{	--C class upgrades
			"1.01",			"1.03"			--"1.01",			"1.05"
		},
		{--		Speed			Combat			Trade			Explore			Mining
			"UP_FRSPE1",	"UP_FRCOM1",	"UP_FRTRA1",	"UP_FREXP1",	"UP_FRMIN1"
		}
	},
	{
		{	--B class upgrades
			"1.03",			"1.06"			--"1.05",			"1.1"
		},
		{
			"UP_FRSPE2",	"UP_FRCOM2",	"UP_FRTRA2",	"UP_FREXP2",	"UP_FRMIN2"
		}
	},
	{
		{	--A class upgrades
			"1.06",			"1.09"			--"1.1",			"1.14"
		},
		{
			"UP_FRSPE3",	"UP_FRCOM3",	"UP_FRTRA3",	"UP_FREXP3",	"UP_FRMIN3"
		}
	},
	{
		{	--S class upgrades
			"1.1",			"1.1"			--"1.15",			"1.15"
		},
		{
			"UP_FRSPE4",	"UP_FRCOM4",	"UP_FRTRA4",	"UP_FREXP4",	"UP_FRMIN4"
		}
	},
}

--Nothing below this should need to be changed. All values can be edited in the sections above this line


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= Description,
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			--This entry intentionally left blank, to be filled in by the FrigateCostChanges at the bottom of this script
		}
	}
}}}}

local ChangesToFleetUpgrades = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

for i = 1, #FleetUpgradeChanges do
	local ValueMin = FleetUpgradeChanges[i][1][1]
	local ValueMax = FleetUpgradeChanges[i][1][2]
	local UpgradeIDs = FleetUpgradeChanges[i][2]

	for j = 1, #UpgradeIDs do
		local UpgradeID = UpgradeIDs[j]

			ChangesToFleetUpgrades_temp =
			{
				--["PRECEDING_FIRST"] = "TRUE",
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"ID", UpgradeID},
				--["PRECEDING_KEY_WORDS"] = {CostType},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", ValueMin},
					{"ValueMax", ValueMax}
				}
			}
			ChangesToFleetUpgrades[#ChangesToFleetUpgrades+1] = ChangesToFleetUpgrades_temp
	end
end