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

--Original Values
-- temp_array = {--Power --Mineral1 --Mineral2 --Mineral3  --Gas1	--Gas2
				-- {1,		 1,		 	1,		  1,		 1,			1}, --Probability
				-- {200,	 190,		190,	  190,	   	 190,		190}, --MinRange??
				-- {250,	 225,		225,	  225,	   	 225,		225}, --MaxRange?? Extraction radius?
				-- {10,	  	 6,		 	6,		  6,	     20,		20}, --C-class probability
				-- {6,	  	 4,		 	4,		  4,	     4,			4}, --B-class probability
				-- {2,	  	 2,		 	2,		  2,	     2,			2}, --A-class probability
				-- {1,		 1,		 	1,		  1,		 1,			1}, --S-class probability
				-- {150,     1.0,		1.0,	  1.0,	     1.0,		1.0}, --C-class output
				-- {220,	 1.5,		1.5,	  1.5,	     1.5,		1.5}, --B-class output
				-- {250,     2.0,		2.0,	  2.0,	     2.0,		2.0}, --A-class output
				-- {300,	 2.5,		2.5,	  2.5,	     2.5,		2.5}, --S-class outpur
				-- {0.95,	 0.95,		0.95,	  0.95,	     0.95,		0.95} --DiscoverThreshold??
			-- }

--New Values
-- temp_array = {
				-- {"Power",	"Mineral1",	"mineral2", "Mineral3", "Gas1", "Gas2"}, --Name
				-- {3,			3,			2,			1,			3,			2}, --Probability
				-- {200,		190,		190,		190,		190,		190}, --MinRange??
				-- {250,		225,		225,		225,		225,		225}, --MaxRange?? Extraction radius?
				-- {45,		45,			45,			45,			45,			45}, --C-class probability
				-- {40,		40,			40,			40,			40,			40}, --B-class probability
				-- {11,		11,			11,			11,			11,			11}, --A-class probability
				-- {4,			4,			4,			4,			4,			4}, --S-class probability
				-- {100,		0.5,		0.5,		0.5,		0.5,		0.5}, --C-class output
				-- {200,		1.0,		1.0,		1.0,		1.0,		1.0}, --B-class output
				-- {300,		2.0,		2.0,		2.0,		2.0,		2.0}, --A-class output
				-- {400,		3.0,		3.0,		3.0,		3.0,		3.0}, --S-class outpur
				-- {0.95,		0.95,		0.95,		0.95,		0.95,		0.95} --DiscoverThreshold??
			-- }

NMS_MOD_DEFINITION_CONTAINER = 
{
MOD_FILENAME	= "GHB 224a.pak",
MOD_DESCRIPTION	= "Hotspot balancing",
MOD_AUTHOR		= "Gumsk",
NMS_VERSION		= "2.24",
MODIFICATIONS	=
{
{
["PAK_FILE_SOURCE"] = "",
MBIN_CHANGE_TABLE = 
{
{
MBIN_FILE_SOURCE = "METADATA\SIMULATION\SCANNING\REGIONHOTSPOTSTABLE.MBIN",
EXML_CHANGE_TABLE = 
{
	{ --Power Class Probabilities
		PRECEDING_KEY_WORDS = {"Power", "ClassWeightings"},
		VALUE_CHANGE_TABLE =
		{
			{"10",	PowerCClassProbability},
			{"6",	PowerBClassProbability},
			{"2",	PowerAClassProbability},
			{"1",	PowerSClassProbability},
		},
	},
	{ --Power Output
		SPECIAL_KEY_WORDS = {"",""},
		PRECEDING_KEY_WORDS = {"Power", "ClassStrengths"},
		VALUE_CHANGE_TABLE =
		{
			{"150", PowerCClassOutput},
			{"220", PowerBClassOutput},
			{"250", PowerAClassOutput},
			{"300", PowerSClassOutput},
		},
	},

	{ --Mineral1 Class Probabilities
		SPECIAL_KEY_WORDS = {"",""},
		PRECEDING_KEY_WORDS = {"Mineral1", "ClassWeightings"},
		VALUE_CHANGE_TABLE =
		{
			{"6", Mineral1CClassProbability},
			{"4", Mineral1BClassProbability},
			{"2", Mineral1AClassProbability},
			{"1", Mineral1SClassProbability},
		},
	},
	{ --Mineral1 Output
		SPECIAL_KEY_WORDS = {"",""},
		PRECEDING_KEY_WORDS = {"Mineral1", "ClassStrengths"},
		VALUE_CHANGE_TABLE =
		{
			{"1",	Mineral1CClassOutput},
			{"1.5",	Mineral1BClassOutput},
			{"2",	Mineral1AClassOutput},
			{"2.5", Mineral1SClassOutput},
		},
	},
	
	{ --Mineral2 Clsas Probabilities
		SPECIAL_KEY_WORDS = {"",""},
		PRECEDING_KEY_WORDS = {"mineral2", "ClassWeightings"}, --HG Typo
		VALUE_CHANGE_TABLE =
		{
			{"6", Mineral2CClassProbability},
			{"4", Mineral2BClassProbability},
			{"2", Mineral2AClassProbability},
			{"1", Mineral2SClassProbability},
		},
	},
	{ --Mineral2 Output
		SPECIAL_KEY_WORDS = {"",""},
		PRECEDING_KEY_WORDS = {"mineral2", "ClassStrengths"}, --HG Typo
		VALUE_CHANGE_TABLE =
		{
			{"1",	Mineral2CClassOutput},
			{"1.5", Mineral2BClassOutput},
			{"2",	Mineral2AClassOutput},
			{"2.5", Mineral2SClassOutput},
		},
	},

	{ --Mineral3 Class Probabilities
		SPECIAL_KEY_WORDS = {"",""},
		PRECEDING_KEY_WORDS = {"Mineral3", "ClassWeightings"},
		VALUE_CHANGE_TABLE =
			{
			{"6", Mineral3CClassProbability},
			{"4", Mineral3BClassProbability},
			{"2", Mineral3AClassProbability},
			{"1", Mineral3SClassProbability},
			},
	},
	{ --Mineral3 Output
		SPECIAL_KEY_WORDS = {"",""},
		PRECEDING_KEY_WORDS = {"Mineral3", "ClassStrengths"},
		VALUE_CHANGE_TABLE =
			{
			{"1",	Mineral3CClassOutput},
			{"1.5",	Mineral3BClassOutput},
			{"2",	Mineral3AClassOutput},
			{"2.5", Mineral3SClassOutput},
			},
	},
	
	{ --Gas1 Class Probabilities
		SPECIAL_KEY_WORDS = {"",""},
		PRECEDING_KEY_WORDS = {"Gas1", "ClassWeightings"},
		VALUE_CHANGE_TABLE =
		{
			{"20",	Gas1CClassProbability},
			{"4",	Gas1BClassProbability},
			{"2",	Gas1AClassProbability},
			{"1",	Gas1SClassProbability},
		},
	},
	{ --Gas1 Output
		SPECIAL_KEY_WORDS = {"",""},
		PRECEDING_KEY_WORDS = {"Gas1", "ClassStrengths"},
		VALUE_CHANGE_TABLE =
		{
			{"1",	Gas1CClassOutput},
			{"1.5", Gas1BClassOutput},
			{"2",	Gas1AClassOutput},
			{"2.5", Gas1SClassOutput},
		},
	},
	
	{ --Gas2 Class Probabilities
		SPECIAL_KEY_WORDS = {"",""},
		PRECEDING_KEY_WORDS = {"Gas2", "ClassWeightings"},
		VALUE_CHANGE_TABLE =
		{
			{"20",	Gas2CClassProbability},
			{"4",	Gas2BClassProbability},
			{"2",	Gas2AClassProbability},
			{"1",	Gas2SClassProbability},
		},
	},
	{ --Gas2 Output
		SPECIAL_KEY_WORDS = {"",""},
		PRECEDING_KEY_WORDS = {"Gas2", "ClassStrengths"},
		VALUE_CHANGE_TABLE =
		{
			{"1",	Gas2CClassOutput},
			{"1.5", Gas2BClassOutput},
			{"2",	Gas2AClassOutput},
			{"2.5", Gas2SClassOutput},
		},
	},
}},}},}}