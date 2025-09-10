ModName = "PTSd Corvette module stats"
ModAuthor = 'Xen0nex'
GameVersion = "6_00"
Description = 'Adjusts the bonuses and their strengths granted by Corvette modules, eliminates random variation of stat bonuses from Corvette modules'

--Set to true to make any module which adds cargo slots (Habs & Walkways) slightly reduce Boosting Speed & Maneuverability (since the vanilla system for making larger Corvettes slower doesn't appear to be working)
HabsWorsenHandling = true								--false

--Set to true to make the decorative exterior Cargo Pods no longer actually add cargo slots
CargoPodsJustDecorative = true							--false

--Set to true to remove the Auto-Recharging effect all Corvette modules (can still instead regular starship auto-recharging tech)
RemoveCorvetteAutoCharge = true							--false

--Set to true to merge all Corvette Reactors into the same module group (thus you will only get stat bonuses from 5 reactors total, instead of 5 of each type of reactor)
MergeCorvetteReactorGroups = true						--false
MergeCorvetteDefenseGroups = true						--false		As above, but merges all Corvette weapon modules AND shield generators into the same module group

--Set to true to fix the Corvette Torpedo Launcher wrongly applying bonuses to Cyclotron Ballista instead of Rockets
FixTorpedoLauncher = true								--false

CorvetteModuleBonuses =
{
	{
		{"CV_FIT1"},		--Cockpits
		{
			{"Ship_Launcher_TakeOffCost", 					1.4},			--N/A (1)		(Added by PTSd)
			{"Ship_Boost", 									0.8},			--1.01-1.1
			{"Ship_PulseDrive_MiniJumpFuelSpending", 		1.3},			--N/A (1)		(Added by PTSd)
			{"Ship_PulseDrive_MiniJumpSpeed", 				0.8},			--N/A (1)		(Added by PTSd)
		},
	},
	{
		{"CV_INV1"},		--Walkways (& exterior cargo pods if CargoPodsJustDecorative set to false)
		{
			{"Ship_Cargo_Slots", 							1},				--1-1
			{"Ship_Boost", 									0.9},			--N/A (1)		(Added by PTSd)
			{"Ship_BoostManeuverability", 					0.925},			--N/A (1)		(Added by PTSd)
			{"Ship_Maneuverability", 						0.996},			--N/A (1)		(Added by PTSd)
		},
	},
	{
		{"CV_INV2"},		--Habs
		{
			{"Ship_Cargo_Slots", 							2},				--3-3
			{"Ship_Boost", 									0.8},			--N/A (1)		(Added by PTSd)
			{"Ship_BoostManeuverability", 					0.84},			--N/A (1)		(Added by PTSd)
			{"Ship_Maneuverability", 						0.994},			--N/A (1)		(Added by PTSd)
		},
	},
	{
		{"CV_HYP3"},		--Zenith-Class Reactor
		{
			{"Ship_Hyperdrive_JumpDistance", 				700},			--165-220
			{"Ship_Hyperdrive_JumpsPerCell", 				0.5},			--1
		},
	},
	{
		{"CV_FIT3"},		--Medusa-Class Reactor
		{
			{"Ship_Boost", 									1.06},			--1.1-1.2
			{"Ship_BoostManeuverability", 					1.06},			--1.05-1.16
			{"Ship_Maneuverability", 						1.003},			--1.005-1.005
		},
	},
	{
		{"CV_SCI3"},		--Azimuth-Class Reactor
		{
			{"Ship_Launcher_TakeOffCost", 					0.8},			--0.85-0.8
			{"Ship_PulseDrive_MiniJumpFuelSpending", 		0.8},			--0.8-0.85
		},
	},
	{
		{"CV_TRA3"},		--Ceto-Class Reactor
		{
			{"Ship_Armour_Shield_Strength", 				0.1},			--0.1-0.2
			{"Ship_PulseDrive_MiniJumpSpeed", 				1.09},			--N/A (1)		(Added by PTSd)
			{"Ship_Cargo_Slots", 							1},				--N/A (0)		(Added by PTSd)
		},
	},
	{
		{"CV_S_SHLA"},		--Deflector Shield
		{
			{"Ship_Armour_Shield_Strength", 					0.2},		--0.05-0.1
			{"Ship_PulseDrive_MiniJumpSpeed", 					1.06},		--N/A (1)		(Added by PTSd)
			{"Ship_Boost", 										1.04},		--N/A (1)		(Added by PTSd)
		},
	},
	{
		{"CV_S_SHLB"},		--Ion Barrier
		{
			{"Ship_Armour_Shield_Strength", 					0.2},		--0.05-0.1
			{"Ship_BoostManeuverability", 						1.04},		--N/A (1)		(Added by PTSd)
			{"Ship_Maneuverability", 							1.002},		--N/A (1)		(Added by PTSd)
			{"Ship_Launcher_TakeOffCost", 						0.9},		--N/A (1)		(Added by PTSd)
		},
	},
	{
		{"CV_S_SHL2"},		--High-Energy Shield
		{
			{"Ship_Armour_Shield_Strength", 					0.2},		--0.05-0.1
			{"Ship_Hyperdrive_JumpDistance", 					500},		--N/A (0)		(Added by PTSd)
			{"Ship_PulseDrive_MiniJumpFuelSpending", 			0.9},		--N/A (1)		(Added by PTSd)
		},
	},
	{
		{"CV_SROC3"},		--Torpedo Launcher
		{
			{"Ship_Weapons_Guns_Damage", 						3000},			--65-80
			{"Ship_Weapons_Guns_CoolTime", 						0.8},			--0.75-0.8	(Does not seem to work in vanilla)
			{"Ship_Weapons_Guns_Range", 						1.1},			--1.05-1.1
			{"Ship_Armour_Shield_Strength", 					-0.05},			--N/A (0)		(Added by PTSd)		If this value is too large (e.g. -0.2), it can cause issues with negative shield strength when multiple modules are installed
		},
	},
	{
		{"CV_SGUN3"},		--Photon Cannon Array
		{
			{"Ship_Weapons_Guns_Damage", 						178},			--16-24
			--{"Ship_Weapons_Guns_Rate", 							1.021},			--1.016-1.021		(Removed in PTSd)
			{"Ship_Weapons_Guns_HeatTime", 						1.03},			--1.02-1.03
			{"Ship_Armour_Shield_Strength", 					-0.05},			--N/A (0)		(Added by PTSd)		If this value is too large (e.g. -0.2), it can cause issues with negative shield strength when multiple modules are installed
		},
	},
	{
		{"CV_SSHOT3"},		--Deadeye Cannon	(Positron Ejector)
		{
			{"Ship_Weapons_Guns_Damage", 						81},			--5-6
			--{"Ship_Weapons_Guns_Rate", 							1.1},			--1.06-1.1			(Removed in PTSd)
			{"Ship_Weapons_Guns_HeatTime", 						1.03},			--1.06-1.1
			{"Ship_Armour_Shield_Strength", 					-0.05},			--N/A (0)		(Added by PTSd)		If this value is too large (e.g. -0.2), it can cause issues with negative shield strength when multiple modules are installed
		},
	},
	{
		{"CV_SLASR3"},		--Phase Beam Array
		{
			{"Ship_Weapons_Lasers_HeatTime", 					1.05},			--1.55-1.75
			{"Ship_Weapons_Lasers_Damage", 						225},			--50-60
			{"Ship_Armour_Shield_Strength", 					-0.05},			--N/A (0)		(Added by PTSd)		If this value is too large (e.g. -0.2), it can cause issues with negative shield strength when multiple modules are installed
		},
	},
	--Not yet implemented in vanilla
	--[[
	{
		{""},		--Cyclotron Defense Cannon
		{
			{"", 						1},			--
		},
	},
	{
		{""},		--Infra-Knife Platform
		{
			{"", 						1},			--
		},
	},
	]]
	{
		{"CV_LAUN2"},		--Thunderbird Landing Thrusters
		{
			{"Ship_Launcher_TakeOffCost", 						0.9625},	--0.85-0.9
			{"Ship_Boost", 										1.02},		--1.02-1.05
			{"Ship_PulseDrive_MiniJumpFuelSpending", 			0.9625},	--N/A (1)		(Added by PTSd)
		},
	},
	{
		{"CV_LAUNA"},		--Landing Gear
		{
			{"Ship_Launcher_TakeOffCost", 						0.9},		--0.85-0.9
			--{"Ship_Boost", 										1.01},		--1.02-1.05		(Removed in PTSd)
			{"Ship_PulseDrive_MiniJumpFuelSpending", 			0.95},		--N/A (1)		(Added by PTSd)
		},
	},
	{
		{"CV_LAUNB"},		--Mag-Field Landing Thrusters
		{
			{"Ship_Launcher_TakeOffCost", 						0.95},		--0.85-0.9
			--{"Ship_Boost", 										1.025},		--1.02-1.05		(Removed in PTSd)
			{"Ship_PulseDrive_MiniJumpFuelSpending", 			0.9},		--N/A (1)		(Added by PTSd)
		},
	},
	{
		{"CV_PULSEA"},		--Twin Echo Jets, Twin Dynamo Jets, Pyrodrive Booster
		{
			--{"Ship_PulseDrive_MiniJumpSpeed", 					1.015},		--N/A (1)		(Removed in PTSd)	(Replaces Ship_PulseDrive_MiniJumpFuelSpending by PTSd)
			{"Ship_Boost", 										1.02},		--1.1-1.15
			{"Ship_BoostManeuverability", 						1.04},		--1.01-1.12
			{"Ship_Maneuverability", 							1.002},		--1.005-1.005
			--{"Ship_Launcher_TakeOffCost", 						1.03},		--N/A (1)		(Added by PTSd)
		},
	},
	{
		{"CV_PULSE2"},		--All Sublight Thrusters
		{
			{"Ship_PulseDrive_MiniJumpSpeed", 					1.06},		--N/A (1)		(Replaces Ship_PulseDrive_MiniJumpFuelSpending by PTSd)
			--{"Ship_Boost", 										1.01},		--1.1-1.15		(Removed in PTSd)
			{"Ship_BoostManeuverability", 						1.02},		--1.01-1.12
			{"Ship_Maneuverability", 							1.001},	--1.005-1.005
			--{"Ship_Launcher_TakeOffCost", 						1.03},		--N/A (1)		(Added by PTSd)
		},
	},
	{
		{"CV_PULSE3"},		--All Heavy Boosters
		{
			{"Ship_PulseDrive_MiniJumpSpeed", 					1.03},		--N/A (1)		(Replaces Ship_PulseDrive_MiniJumpFuelSpending by PTSd)
			{"Ship_Boost", 										1.04},		--1.1-1.2
			--{"Ship_BoostManeuverability", 						1.01},		--1.05-1.16		(Removed in PTSd)
			--{"Ship_Maneuverability", 							1.005},		--1.005-1.005		(Removed in PTSd)
			--{"Ship_Launcher_TakeOffCost", 						1.03},		--N/A (1)		(Added by PTSd)
		},
	},
	{
		{"CV_PULSEB"},		--Kineostream Thruster
		{
			{"Ship_PulseDrive_MiniJumpSpeed", 					1.06},		--N/A (1)		(Replaces Ship_PulseDrive_MiniJumpFuelSpending by PTSd)
			{"Ship_Boost", 										1.04},		--1.1-1.2
			{"Ship_PulseDrive_MiniJumpFuelSpending", 			1.04},		--N/A (1)		(Added by PTSd)
			--{"Ship_BoostManeuverability", 						1.04},		--1.05-1.16		(Removed in PTSd)
			--{"Ship_Maneuverability", 							1.002},		--1.005-1.005		(Removed in PTSd)
			--{"Ship_Launcher_TakeOffCost", 						1.03},		--N/A (1)		(Added by PTSd)
		},
	},
}


function AddBonusStat (StatName, Value)
    return
[[<Property name="StatLevels" value="GcProceduralTechnologyStatLevel">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="]]..StatName..[[" />
					</Property>
					<Property name="ValueMin" value="]]..Value..[[" />
					<Property name="ValueMax" value="]]..Value..[[" />
					<Property name="WeightingCurve" value="GcWeightingCurve">
						<Property name="WeightingCurve" value="NoWeighting" />
					</Property>
					<Property name="AlwaysChoose" value="false" />
				</Property>]]
end

function AddNewLandingTech (ID, NumStats)
    return
[[<Property name="Table" value="GcProceduralTechnologyData" _id="]]..ID..[[">
			<Property name="ID" value="]]..ID..[[" />
			<Property name="Template" value="T_LAUNCHER" />
			<Property name="Group" value="BIGGS_LAUNCH" />
			<Property name="Name" value="UP_LAUNCHER" />
			<Property name="NameLower" value="LAUNCHER_NAME_L" />
			<Property name="Subtitle" value="UPGRADE_SUB_2" />
			<Property name="Description" value="UP_LAUNCH2_DESC" />
			<Property name="Colour">
				<Property name="R" value="0.129411772" />
				<Property name="G" value="0.466666669" />
				<Property name="B" value="0.784313738" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="Quality" value="Rare" />
			<Property name="Category" value="GcProceduralTechnologyCategory">
				<Property name="ProceduralTechnologyCategory" value="Protection" />
			</Property>
			<Property name="IsBiggsProcTech" value="true" />
			<Property name="NumStatsMin" value="]]..NumStats..[[" />
			<Property name="NumStatsMax" value="]]..NumStats..[[" />
			<Property name="WeightingCurve" value="GcWeightingCurve">
				<Property name="WeightingCurve" value="NoWeighting" />
			</Property>
			<Property name="UpgradeColour">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="StatLevels">
				<Property name="StatLevels" value="GcProceduralTechnologyStatLevel" _index="0">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="Ship_Launcher_TakeOffCost" />
					</Property>
					<Property name="ValueMin" value="1.000000" />
					<Property name="ValueMax" value="1.000000" />
					<Property name="WeightingCurve" value="GcWeightingCurve">
						<Property name="WeightingCurve" value="MinIsUncommon" />
					</Property>
					<Property name="AlwaysChoose" value="true" />
				</Property>
				<Property name="StatLevels" value="GcProceduralTechnologyStatLevel" _index="1">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="Ship_PulseDrive_MiniJumpFuelSpending" />
					</Property>
					<Property name="ValueMin" value="1.000000" />
					<Property name="ValueMax" value="1.000000" />
					<Property name="WeightingCurve" value="GcWeightingCurve">
						<Property name="WeightingCurve" value="MinIsUncommon" />
					</Property>
					<Property name="AlwaysChoose" value="true" />
				</Property>
			</Property>
		</Property>]]
end

function AddNewEngineTech (ID, NumStats)
    return
[[<Property name="Table" value="GcProceduralTechnologyData" _id="]]..ID..[[">
			<Property name="ID" value="]]..ID..[[" />
			<Property name="Template" value="T_SHIPJUMP" />
			<Property name="Group" value="BIGGS_JUMP" />
			<Property name="Name" value="UP_PULSEDRIVE" />
			<Property name="NameLower" value="SHIPJUMP_NAME_L" />
			<Property name="Subtitle" value="UPGRADE_SUB_2" />
			<Property name="Description" value="UP_PULSE2_DESC" />
			<Property name="Colour">
				<Property name="R" value="0.129411772" />
				<Property name="G" value="0.466666669" />
				<Property name="B" value="0.784313738" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="Quality" value="Rare" />
			<Property name="Category" value="GcProceduralTechnologyCategory">
				<Property name="ProceduralTechnologyCategory" value="Protection" />
			</Property>
			<Property name="IsBiggsProcTech" value="true" />
			<Property name="NumStatsMin" value="]]..NumStats..[[" />
			<Property name="NumStatsMax" value="]]..NumStats..[[" />
			<Property name="WeightingCurve" value="GcWeightingCurve">
				<Property name="WeightingCurve" value="NoWeighting" />
			</Property>
			<Property name="UpgradeColour">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="StatLevels">
				<Property name="StatLevels" value="GcProceduralTechnologyStatLevel" _index="0">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="Ship_PulseDrive_MiniJumpSpeed" />
					</Property>
					<Property name="ValueMin" value="1.000000" />
					<Property name="ValueMax" value="1.000000" />
					<Property name="WeightingCurve" value="GcWeightingCurve">
						<Property name="WeightingCurve" value="MinIsUncommon" />
					</Property>
					<Property name="AlwaysChoose" value="false" />
				</Property>
				<Property name="StatLevels" value="GcProceduralTechnologyStatLevel" _index="1">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="Ship_Boost" />
					</Property>
					<Property name="ValueMin" value="1.000000" />
					<Property name="ValueMax" value="1.000000" />
					<Property name="WeightingCurve" value="GcWeightingCurve">
						<Property name="WeightingCurve" value="MaxIsUncommon" />
					</Property>
					<Property name="AlwaysChoose" value="false" />
				</Property>
				<Property name="StatLevels" value="GcProceduralTechnologyStatLevel" _index="2">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="Ship_BoostManeuverability" />
					</Property>
					<Property name="ValueMin" value="1.000000" />
					<Property name="ValueMax" value="1.000000" />
					<Property name="WeightingCurve" value="GcWeightingCurve">
						<Property name="WeightingCurve" value="MaxIsRare" />
					</Property>
					<Property name="AlwaysChoose" value="false" />
				</Property>
				<Property name="StatLevels" value="GcProceduralTechnologyStatLevel" _index="3">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="Ship_Maneuverability" />
					</Property>
					<Property name="ValueMin" value="1.000000" />
					<Property name="ValueMax" value="1.000000" />
					<Property name="WeightingCurve" value="GcWeightingCurve">
						<Property name="WeightingCurve" value="NoWeighting" />
					</Property>
					<Property name="AlwaysChoose" value="true" />
				</Property>
			</Property>
		</Property>]]
end

function AddNewShieldTech (ID, NumStats)
    return
[[<Property name="Table" value="GcProceduralTechnologyData" _id="]]..ID..[[">
			<Property name="ID" value="]]..ID..[[" />
			<Property name="Template" value="T_SHIPSHLD" />
			<Property name="Group" value="BIGGS_SHIELD" />
			<Property name="Name" value="UP_SHIPSHIELD" />
			<Property name="NameLower" value="SHIPSHIELD_NAME_L" />
			<Property name="Subtitle" value="UPGRADE_SUB_2" />
			<Property name="Description" value="UP_SHIPSHIELD2_DESC" />
			<Property name="Colour">
				<Property name="R" value="0.129411772" />
				<Property name="G" value="0.466666669" />
				<Property name="B" value="0.784313738" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="Quality" value="Rare" />
			<Property name="Category" value="GcProceduralTechnologyCategory">
				<Property name="ProceduralTechnologyCategory" value="Protection" />
			</Property>
			<Property name="IsBiggsProcTech" value="true" />
			<Property name="NumStatsMin" value="]]..NumStats..[[" />
			<Property name="NumStatsMax" value="]]..NumStats..[[" />
			<Property name="WeightingCurve" value="GcWeightingCurve">
				<Property name="WeightingCurve" value="NoWeighting" />
			</Property>
			<Property name="UpgradeColour">
				<Property name="R" value="1.000000" />
				<Property name="G" value="1.000000" />
				<Property name="B" value="1.000000" />
				<Property name="A" value="1.000000" />
			</Property>
			<Property name="StatLevels">
				<Property name="StatLevels" value="GcProceduralTechnologyStatLevel" _index="0">
					<Property name="Stat" value="GcStatsTypes">
						<Property name="StatsType" value="Ship_Armour_Shield_Strength" />
					</Property>
					<Property name="ValueMin" value="0.100000" />
					<Property name="ValueMax" value="0.100000" />
					<Property name="WeightingCurve" value="GcWeightingCurve">
						<Property name="WeightingCurve" value="MaxIsUncommon" />
					</Property>
					<Property name="AlwaysChoose" value="false" />
				</Property>
			</Property>
		</Property>]]
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= ModName..GameVersion..".pak",
	MOD_AUTHOR			= ModAuthor,
	NMS_VERSION			= GameVersion,
	["EXML_CREATE"] = "FALSE",
	MOD_DESCRIPTION		= Description,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				["SPECIAL_KEY_WORDS"] = {"Table", "GcProceduralTechnologyData"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = AddNewLandingTech ("CV_LAUNA", "3")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Table", "GcProceduralTechnologyData"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = AddNewLandingTech ("CV_LAUNB", "3")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_LAUN2",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_PulseDrive_MiniJumpFuelSpending", "1.000000")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_LAUN2"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"NumStatsMin", 3},
					{"NumStatsMax", 3},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Table", "GcProceduralTechnologyData"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = AddNewEngineTech ("CV_PULSEA", "4")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Table", "GcProceduralTechnologyData"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = AddNewEngineTech ("CV_PULSEB", "4")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_PULSEB",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_PulseDrive_MiniJumpFuelSpending", "1.000000")
			},
			--WIP, currently increases Launch costs too much due to adjacency bonuses
			--[[
			{
				["SPECIAL_KEY_WORDS"] = {
                     {"ID", "CV_PULSEA",		"StatLevels", "GcProceduralTechnologyStatLevel"},
                     {"ID", "CV_PULSEB",		"StatLevels", "GcProceduralTechnologyStatLevel"},
					 {"ID", "CV_PULSE2",	"StatLevels", "GcProceduralTechnologyStatLevel"},
					 {"ID", "CV_PULSE3",	"StatLevels", "GcProceduralTechnologyStatLevel"},
                   },
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_Launcher_TakeOffCost", "1.03")
			},
			]]
			{
				["SPECIAL_KEY_WORDS"] = {
                     {"ID", "CV_PULSEA"},
                     {"ID", "CV_PULSEB"},
					 {"ID", "CV_PULSE2"},
					 {"ID", "CV_PULSE3"},
                   },
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"NumStatsMin", 4},
					{"NumStatsMax", 4},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Table", "GcProceduralTechnologyData"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = AddNewShieldTech ("CV_S_SHLA", "3")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"Table", "GcProceduralTechnologyData"},
				["ADD_OPTION"]  = "ADDafterSECTION",
				["ADD"] = AddNewShieldTech ("CV_S_SHLB", "4")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_S_SHL2"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"NumStatsMin", 3},
					{"NumStatsMax", 3},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_S_SHLA",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_PulseDrive_MiniJumpSpeed", "1.000000")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_S_SHLA",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_Boost", "1.000000")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_S_SHLB",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_BoostManeuverability", "1.000000")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_S_SHLB",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_Maneuverability", "1.000000")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_S_SHLB",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_Launcher_TakeOffCost", "1.000000")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_S_SHL2",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_Hyperdrive_JumpDistance", "1.000000")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_S_SHL2",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_PulseDrive_MiniJumpFuelSpending", "1.000000")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_FIT1",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_Launcher_TakeOffCost", "1.600000")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_FIT1",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_PulseDrive_MiniJumpFuelSpending", "1.250000")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_FIT1",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_PulseDrive_MiniJumpSpeed", "0.750000")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_FIT1",		"StatsType", "Ship_BoostManeuverability"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_FIT1",		"StatsType", "Ship_Maneuverability"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_FIT1"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"NumStatsMin", 4},
					{"NumStatsMax", 4},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_TRA3",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_PulseDrive_MiniJumpSpeed", "1.100000")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_TRA3",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_Cargo_Slots", "1.000000")
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_TRA3"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"NumStatsMin", 3},
					{"NumStatsMax", 3},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {
                     {"ID", "CV_PULSE2",		"StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
                     {"ID", "CV_PULSE3",		"StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
                   },
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"StatsType", "Ship_PulseDrive_MiniJumpSpeed"},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_PULSEA",		"StatsType", "Ship_PulseDrive_MiniJumpSpeed"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_PULSE2",		"StatsType", "Ship_Boost"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {
                     {"ID", "CV_PULSEB",		"StatsType", "Ship_BoostManeuverability"},
                     {"ID", "CV_PULSEB",		"StatsType", "Ship_Maneuverability"},
                   },
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {
                     {"ID", "CV_PULSE3",		"StatsType", "Ship_BoostManeuverability"},
                     {"ID", "CV_PULSE3",		"StatsType", "Ship_Maneuverability"},
                   },
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_SGUN3",		"StatsType", "Ship_Weapons_Guns_Rate"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_SSHOT3",		"StatsType", "Ship_Weapons_Guns_Rate"},
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			},
			{
				["SPECIAL_KEY_WORDS"] = {
                     {"ID", "CV_SROC3",		"StatLevels", "GcProceduralTechnologyStatLevel"},
                     {"ID", "CV_SGUN3",		"StatLevels", "GcProceduralTechnologyStatLevel"},
					 {"ID", "CV_SSHOT3",	"StatLevels", "GcProceduralTechnologyStatLevel"},
					 {"ID", "CV_SLASR3",	"StatLevels", "GcProceduralTechnologyStatLevel"},
                   },
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_Armour_Shield_Strength", "-0.05")
			},
			{
				["SPECIAL_KEY_WORDS"] = {
                     {"ID", "CV_SROC3"},
                     {"ID", "CV_SGUN3"},
					 {"ID", "CV_SSHOT3"},
					 {"ID", "CV_SLASR3"},
                   },
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"NumStatsMin", 4},
					{"NumStatsMax", 4},
				}
			},
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		MXML_CHANGE_TABLE	= {
			--Intentionally left blank
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_BASEPARTPRODUCTS.MBIN',
		MXML_CHANGE_TABLE	= {
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "B_SHL_A"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BuildableShipTechID", "CV_S_SHLA"},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "B_SHL_B"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BuildableShipTechID", "CV_S_SHLB"},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "B_LND_A"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BuildableShipTechID", "CV_LAUNA"},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "B_LND_B"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BuildableShipTechID", "CV_LAUNB"},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "B_TRU_C"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BuildableShipTechID", "CV_PULSEB"},
				}
			},
			{
				["SPECIAL_KEY_WORDS"] = {
                     {"ID", "B_TRU_A"},
                     {"ID", "B_TRU_B"},
					 {"ID", "B_TRU_D"},
                   },
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BuildableShipTechID", "CV_PULSEA"},
				}
			},
		}
	},
}}}}

local ChangesToProcTech = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]

if HabsWorsenHandling then
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_INV1",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_Boost", "0.900000")
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_INV1",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_BoostManeuverability", "0.925000")
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_INV1",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_Maneuverability", "0.995000")
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_INV1"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"NumStatsMin", 4},
					{"NumStatsMax", 4},
				}
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_INV2",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_Boost", "0.800000")
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_INV2",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_BoostManeuverability", "0.840000")
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_INV2",		"StatLevels", "GcProceduralTechnologyStatLevel"},
				["ADD_OPTION"] = "ADDafterSECTION",
				["ADD"] = AddBonusStat ("Ship_Maneuverability", "0.994000")
			}
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_INV2"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"NumStatsMin", 4},
					{"NumStatsMax", 4},
				}
			}
end

if RemoveCorvetteAutoCharge then
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {
                     {"ID", "CV_SCI1",	"StatsType", "Ship_Launcher_AutoCharge"},
                     {"ID", "CV_SCI2",	"StatsType", "Ship_Launcher_AutoCharge"},
					 {"ID", "CV_SCI3",	"StatsType", "Ship_Launcher_AutoCharge"},
					 {"ID", "CV_SCI4",	"StatsType", "Ship_Launcher_AutoCharge"},
                   },
				["SECTION_UP"] = 1,
				["REMOVE"] = "SECTION"
			}
end
if MergeCorvetteReactorGroups then
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["VALUE_MATCH"] = {"BIGGS_REACTOR_FIGHT", "BIGGS_REACTOR_SCI", "BIGGS_REACTOR_TRA", "BIGGS_WARP",},
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Group", "CORV_REACTOR"},
				}
			}
			
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "CV_FIT1"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Group", "BIGGS_REACTOR_FIGHT"},
				}
			}
end
if MergeCorvetteDefenseGroups then
ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["VALUE_MATCH"] = {"BIGGS_GUN", "BIGGS_LASER", "BIGGS_SHOTGUN", "BIGGS_MINIGUN", "BIGGS_BLOB", "BIGGS_ROC", "BIGGS_SHIELD"},
				["REPLACE_TYPE"] = "ALL",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"Group", "CORV_WEAPON"},
				}
			}
end

for i = 1, #CorvetteModuleBonuses do
	local ModuleID = CorvetteModuleBonuses[i][1][1]
	local Bonuses = CorvetteModuleBonuses[i][2]

	for j = 1, #Bonuses do
		local StatID = Bonuses[j][1]
		local StatValue = Bonuses[j][2]
	
			ChangesToProcTech[#ChangesToProcTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", ModuleID,		"StatsType", StatID},
				["SECTION_UP"] = 1,
				--["MATH_OPERATION"] 		= "*",
				["INTEGER_TO_FLOAT"] = "PRESERVE",
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"ValueMin", StatValue},
					{"ValueMax", StatValue}
				}
			}
	end
end

local ChangesToTech = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]

if FixTorpedoLauncher then
			ChangesToTech[#ChangesToTech+1] =
			{
				["SPECIAL_KEY_WORDS"] = {"ID", "T_SHIPROC"},
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"StatsType", "Ship_Weapons_Rockets"},
					{"RequiredTech", "SHIPROCKETS"},
				}
			}
end

local ChangesToBaseParts = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["MXML_CHANGE_TABLE"]

if CargoPodsJustDecorative then
			ChangesToBaseParts[#ChangesToBaseParts+1] =
			{
				["SPECIAL_KEY_WORDS"] = {
                     {"ID", "B_DECO_D"},
                     {"ID", "B_DECO_E"},
					 {"ID", "B_DECO_F"},
					 {"ID", "B_DECO_G"},
                   },
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"BuildableShipTechID", ""}
				}
			}
end