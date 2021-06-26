--Changes
-- Power hotspot probability 16.7% -> 21.4%
-- C-Class [probability 52.6% > 45%] [output 150 > 100]
-- B-Class [probability 31.6% > 40%] [output 220 > 200]
-- A-Class [probability 10.5% > 11%] [output 250 > 300]
-- S-Class [probability  5.3% >  4%] [output 300 > 500]

-- Some Mineral hotspot probability 50% -> 42.9%
-- Mineral1 hotspot probability 16.7% -> 21.4%
-- Mineral2 hotspot probability 16.7% -> 14.3%
-- Mineral3 hotspot probability 16.7% -> 7.1%
-- C-Class [probability 52.6% > 45%] [output 1.0 > 0.5]
-- B-Class [probability 31.6% > 40%] [output 1.5 > 1.0]
-- A-Class [probability 10.5% > 11%] [output 2.0 > 2.0]
-- S-Class [probability  5.3% >  4%] [output 2.5 > 3.0]

-- Some Gas hotspot probability 33.3% -> 35.7%
-- Gas1 hotspot probability 16.7% -> 21.4%
-- Gas1 hotspot probability 16.7% -> 14.3%
-- C-Class [probability 52.6% > 45%] [output 1.0 > 0.5]
-- B-Class [probability 31.6% > 40%] [output 1.5 > 1.0]
-- A-Class [probability 10.5% > 11%] [output 2.0 > 2.0]
-- S-Class [probability  5.3% >  4%] [output 2.5 > 3.0]

--Variables
--General
PoleSpacing = 900					--?? Original value "900"
HotspotsPerPoleMin = 1.9			--?? Original value "1.9"
HotspotsPerPoleMax = 3.8			--?? Original value "3.8"
SpacingSameCatMin = 10				--?? Original value "10"
SpacingDiffCatMaxOverlap = 150		--?? Original value "150"

--Power
PowerProbabililty = 3				--How likely is a hotspot to be power? Original value "1"
PowerMinRange = 200					--??? Original value "200"
PowerMaxRange = 250					--??? Original value "250"
PowerCClassProbability = 45			--How likely is a power hotspot to be C-class? Original value "10"
PowerBClassProbability = 40			--How likely is a power hotspot to be B-class? Original value "6"
PowerAClassProbability = 11			--How likely is a power hotspot to be A-class? Original value "2"
PowerSClassProbability = 4			--How likely is a power hotspot to be S-class? Original value "1"
PowerCClassOutput = 100				--How much does a C-class hotspot produce? Original value "150"
PowerBClassOutput = 200				--How much does a B-class hotspot produce? Original value "220"
PowerAClassOutput = 300				--How much does a A-class hotspot produce? Original value "250"
PowerSClassOutput = 500				--How much does a S-class hotspot produce? Original value "300"
PowerDiscoverThreshold = 0.95		--??? Original value "0.95"

Mineral1Probabililty = 3			--How likely is a hotspot to be Mineral1? Original value "1"
Mineral1MinRange = 190				--??? Original value "190"
Mineral1MaxRange = 225				--??? Original value "225"
Mineral1CClassProbability = 45		--How likely is a Mineral1 hotspot to be C-class? Original value "6"
Mineral1BClassProbability = 40		--How likely is a Mineral1 hotspot to be B-class? Original value "4"
Mineral1AClassProbability = 11		--How likely is a Mineral1 hotspot to be A-class? Original value "2"
Mineral1SClassProbability = 4		--How likely is a Mineral1 hotspot to be S-class? Original value "1"
Mineral1CClassOutput = 0.5			--How much does a C-class hotspot produce? ??What units?? Original value "1"
Mineral1BClassOutput = 1.0			--How much does a B-class hotspot produce? ??What units?? Original value "1.5"
Mineral1AClassOutput = 2.0			--How much does a A-class hotspot produce? ??What units?? Original value "2"
Mineral1SClassOutput = 3.0			--How much does a S-class hotspot produce? ??What units?? Original value "2.5"
Mineral1DiscoverThreshold = 0.95	--??? Original value "0.95"

Mineral2Probabililty = 2			--How likely is a hotspot to be Mineral2? Original value "1"
Mineral2MinRange = 190				--??? Original value "190"
Mineral2MaxRange = 225				--??? Original value "225"
Mineral2CClassProbability = 45		--How likely is a Mineral2 hotspot to be C-class? Original value "6"
Mineral2BClassProbability = 40		--How likely is a Mineral2 hotspot to be B-class? Original value "4"
Mineral2AClassProbability = 11		--How likely is a Mineral2 hotspot to be A-class? Original value "2"
Mineral2SClassProbability = 4		--How likely is a Mineral2 hotspot to be S-class? Original value "1"
Mineral2CClassOutput = 0.5			--How much does a C-class hotspot produce? ??What units?? Original value "1"
Mineral2BClassOutput = 1.0			--How much does a B-class hotspot produce? ??What units?? Original value "1.5"
Mineral2AClassOutput = 2.0			--How much does a A-class hotspot produce? ??What units?? Original value "2"
Mineral2SClassOutput = 3.0			--How much does a S-class hotspot produce? ??What units?? Original value "2.5"
Mineral2DiscoverThreshold = 0.95	--??? Original value "0.95"

Mineral3Probabililty = 1			--How likely is a hotspot to be Mineral3? Original value "1"
Mineral3MinRange = 190				--??? Original value "190"
Mineral3MaxRange = 225				--??? Original value "225"
Mineral3CClassProbability = 45		--How likely is a Mineral3 hotspot to be C-class? Original value "6"
Mineral3BClassProbability = 40		--How likely is a Mineral3 hotspot to be B-class? Original value "4"
Mineral3AClassProbability = 11		--How likely is a Mineral3 hotspot to be A-class? Original value "2"
Mineral3SClassProbability = 4		--How likely is a Mineral3 hotspot to be S-class? Original value "1"
Mineral3CClassOutput = 0.5			--How much does a C-class hotspot produce? ??What units?? Original value "1"
Mineral3BClassOutput = 1.0			--How much does a B-class hotspot produce? ??What units?? Original value "1.5"
Mineral3AClassOutput = 2.0			--How much does a A-class hotspot produce? ??What units?? Original value "2"
Mineral3SClassOutput = 3.0			--How much does a S-class hotspot produce? ??What units?? Original value "2.5"
Mineral3DiscoverThreshold = 0.95	--??? Original value "0.95"

Gas1Probabililty = 3				--How likely is a hotspot to be Gas1? Original value "1"
Gas1MinRange = 190					--??? Original value "190"
Gas1MaxRange = 225					--??? Original value "225"
Gas1CClassProbability = 45			--How likely is a Gas1 hotspot to be C-class? Original value "20"
Gas1BClassProbability = 40			--How likely is a Gas1 hotspot to be B-class? Original value "4"
Gas1AClassProbability = 11			--How likely is a Gas1 hotspot to be A-class? Original value "2"
Gas1SClassProbability = 4			--How likely is a Gas1 hotspot to be S-class? Original value "1"
Gas1CClassOutput = 0.5				--How much does a C-class hotspot produce? ??What units?? Original value "1"
Gas1BClassOutput = 1.0				--How much does a B-class hotspot produce? ??What units?? Original value "1.5"
Gas1AClassOutput = 2.0				--How much does a A-class hotspot produce? ??What units?? Original value "2"
Gas1SClassOutput = 3.0				--How much does a S-class hotspot produce? ??What units?? Original value "2.5"
Gas1DiscoverThreshold = 0.95		--??? Original value "0.95"

Gas2Probabililty = 2				--How likely is a hotspot to be Gas2? Original value "1"
Gas2MinRange = 190					--??? Original value "190"
Gas2MaxRange = 225					--??? Original value "225"
Gas2CClassProbability = 45			--How likely is a Gas2 hotspot to be C-class? Original value "20"
Gas2BClassProbability = 40			--How likely is a Gas2 hotspot to be B-class? Original value "4"
Gas2AClassProbability = 11			--How likely is a Gas2 hotspot to be A-class? Original value "2"
Gas2SClassProbability = 4			--How likely is a Gas2 hotspot to be S-class? Original value "1"
Gas2CClassOutput = 0.5				--How much does a C-class hotspot produce? ??What units?? Original value "1"
Gas2BClassOutput = 1.0				--How much does a B-class hotspot produce? ??What units?? Original value "1.5"
Gas2AClassOutput = 2.0				--How much does a A-class hotspot produce? ??What units?? Original value "2"
Gas2SClassOutput = 3.0				--How much does a S-class hotspot produce? ??What units?? Original value "2.5"
Gas2DiscoverThreshold = 0.95		--??? Original value "0.95"



NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GHB 224a.pak",
["MOD_DESCRIPTION"]	= "Hotspot balancing",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.24",
["MODIFICATIONS"]	=
{
{
["PAK_FILE_SOURCE"] = "",
["MBIN_CHANGE_TABLE"] = 
{
{
["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\REGIONHOTSPOTSTABLE.MBIN",
["EXML_CHANGE_TABLE"] = 
{
	{ --Power Class Probabilities
		["SPECIAL_KEY_WORDS"] = {"",""},
		["PRECEDING_KEY_WORDS"] = {"Power", "ClassWeightings"},
		["VALUE_MATCH"] = "",	
		["VALUE_MATCH_TYPE"] = "",
		["MATH_OPERATION"] = "",
		["VALUE_CHANGE_TABLE"] =
			{
			{"10",	PowerCClassProbability},
			{"6",	PowerBClassProbability},
			{"2",	PowerAClassProbability},
			{"1",	PowerSClassProbability},
			},
		["REPLACE_TYPE"] = "",
	},
	{ --Power Output
		["SPECIAL_KEY_WORDS"] = {"",""},
		["PRECEDING_KEY_WORDS"] = {"Power", "ClassStrengths"},
		["VALUE_MATCH"] = "",	
		["VALUE_MATCH_TYPE"] = "",
		["MATH_OPERATION"] = "",
		["VALUE_CHANGE_TABLE"] =
			{
			{"150", PowerCClassOutput},
			{"220", PowerBClassOutput},
			{"250", PowerAClassOutput},
			{"300", PowerSClassOutput},
			},
		["REPLACE_TYPE"] = "",
	},

	{ --Mineral1 Class Probabilities
		["SPECIAL_KEY_WORDS"] = {"",""},
		["PRECEDING_KEY_WORDS"] = {"Mineral1", "ClassWeightings"},
		["VALUE_MATCH"] = "",	
		["VALUE_MATCH_TYPE"] = "",
		["MATH_OPERATION"] = "",
		["VALUE_CHANGE_TABLE"] =
			{
			{"6", Mineral1CClassProbability},
			{"4", Mineral1BClassProbability},
			{"2", Mineral1AClassProbability},
			{"1", Mineral1SClassProbability},
			},
		["REPLACE_TYPE"] = "",
	},
	{ --Mineral1 Output
		["SPECIAL_KEY_WORDS"] = {"",""},
		["PRECEDING_KEY_WORDS"] = {"Mineral1", "ClassStrengths"},
		["VALUE_MATCH"] = "",	
		["VALUE_MATCH_TYPE"] = "",
		["MATH_OPERATION"] = "",
		["VALUE_CHANGE_TABLE"] =
			{
			{"1",	Mineral1CClassOutput},
			{"1.5",	Mineral1BClassOutput},
			{"2",	Mineral1AClassOutput},
			{"2.5", Mineral1SClassOutput},
			},
		["REPLACE_TYPE"] = "",
	},
	
	{ --Mineral2 Clsas Probabilities
		["SPECIAL_KEY_WORDS"] = {"",""},
		["PRECEDING_KEY_WORDS"] = {"mineral2", "ClassWeightings"}, --HG Typo
		["VALUE_MATCH"] = "",
		["VALUE_MATCH_TYPE"] = "",
		["MATH_OPERATION"] = "",
		["VALUE_CHANGE_TABLE"] =
			{
			{"6", Mineral2CClassProbability},
			{"4", Mineral2BClassProbability},
			{"2", Mineral2AClassProbability},
			{"1", Mineral2SClassProbability},
			},
		["REPLACE_TYPE"] = "",
	},
	{ --Mineral2 Output
		["SPECIAL_KEY_WORDS"] = {"",""},
		["PRECEDING_KEY_WORDS"] = {"mineral2", "ClassStrengths"}, --HG Typo
		["VALUE_MATCH"] = "",
		["VALUE_MATCH_TYPE"] = "",
		["MATH_OPERATION"] = "",
		["VALUE_CHANGE_TABLE"] =
			{
			{"1",	Mineral2CClassOutput},
			{"1.5", Mineral2BClassOutput},
			{"2",	Mineral2AClassOutput},
			{"2.5", Mineral2SClassOutput},
			},
		["REPLACE_TYPE"] = "",
	},

	{ --Mineral3 Class Probabilities
		["SPECIAL_KEY_WORDS"] = {"",""},
		["PRECEDING_KEY_WORDS"] = {"Mineral3", "ClassWeightings"},
		["VALUE_MATCH"] = "",	
		["VALUE_MATCH_TYPE"] = "",
		["MATH_OPERATION"] = "",
		["VALUE_CHANGE_TABLE"] =
			{
			{"6", Mineral3CClassProbability},
			{"4", Mineral3BClassProbability},
			{"2", Mineral3AClassProbability},
			{"1", Mineral3SClassProbability},
			},
		["REPLACE_TYPE"] = "",
	},
	{ --Mineral3 Output
		["SPECIAL_KEY_WORDS"] = {"",""},
		["PRECEDING_KEY_WORDS"] = {"Mineral3", "ClassStrengths"},
		["VALUE_MATCH"] = "",	
		["VALUE_MATCH_TYPE"] = "",
		["MATH_OPERATION"] = "",
		["VALUE_CHANGE_TABLE"] =
			{
			{"1",	Mineral3CClassOutput},
			{"1.5",	Mineral3BClassOutput},
			{"2",	Mineral3AClassOutput},
			{"2.5", Mineral3SClassOutput},
			},
		["REPLACE_TYPE"] = "",
	},
	
	{ --Gas1 Class Probabilities
		["SPECIAL_KEY_WORDS"] = {"",""},
		["VALUE_MATCH"] = "",	
		["PRECEDING_KEY_WORDS"] = {"Gas1", "ClassWeightings"},
		["VALUE_MATCH_TYPE"] = "",
		["MATH_OPERATION"] = "",
		["VALUE_CHANGE_TABLE"] =
			{
			{"20",	Gas1CClassProbability},
			{"4",	Gas1BClassProbability},
			{"2",	Gas1AClassProbability},
			{"1",	Gas1SClassProbability},
			},
		["REPLACE_TYPE"] = "",
	},
	{ --Gas1 Output
		["SPECIAL_KEY_WORDS"] = {"",""},
		["PRECEDING_KEY_WORDS"] = {"Gas1", "ClassStrengths"},
		["VALUE_MATCH"] = "",	
		["VALUE_MATCH_TYPE"] = "",
		["MATH_OPERATION"] = "",
		["VALUE_CHANGE_TABLE"] =
			{
			{"1",	Gas1CClassOutput},
			{"1.5", Gas1BClassOutput},
			{"2",	Gas1AClassOutput},
			{"2.5", Gas1SClassOutput},
			},
		["REPLACE_TYPE"] = "",
	},
	
	{ --Gas2 Class Probabilities
		["SPECIAL_KEY_WORDS"] = {"",""},
		["PRECEDING_KEY_WORDS"] = {"Gas2", "ClassWeightings"},
		["VALUE_MATCH"] = "",	
		["VALUE_MATCH_TYPE"] = "",
		["MATH_OPERATION"] = "",
		["VALUE_CHANGE_TABLE"] =
			{
			{"20",	Gas2CClassProbability},
			{"4",	Gas2BClassProbability},
			{"2",	Gas2AClassProbability},
			{"1",	Gas2SClassProbability},
			},
		["REPLACE_TYPE"] = "",
	},
	{ --Gas2 Output
		["SPECIAL_KEY_WORDS"] = {"",""},
		["PRECEDING_KEY_WORDS"] = {"Gas2", "ClassStrengths"},
		["VALUE_MATCH"] = "",	
		["VALUE_MATCH_TYPE"] = "",
		["MATH_OPERATION"] = "",
		["VALUE_CHANGE_TABLE"] =
			{
			{"1",	Gas2CClassOutput},
			{"1.5", Gas2BClassOutput},
			{"2",	Gas2AClassOutput},
			{"2.5", Gas2SClassOutput},
			},
		["REPLACE_TYPE"] = "",
	},
}
},
}
},
}
}