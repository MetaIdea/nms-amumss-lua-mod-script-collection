Author = "Gumsk"
ModName = "gHot"
ModNameSub = "All S"
BaseDescription = "Hotspot balancing"
GameVersion = "382"
ModVersion = "a"
FileSource1 = "METADATA\SIMULATION\SCANNING\REGIONHOTSPOTSTABLE.MBIN"

--Variables
--General
PoleSpacing = 900					--?? Original value "900"
HotspotsPerPoleMin = 1.9			--?? Original value "1.9"
HotspotsPerPoleMax = 3.8			--?? Original value "3.8"
SpacingSameCatMin = 10				--?? Original value "10"
SpacingDiffCatMaxOverlap = 150		--?? Original value "150"
OutX = 1.0							--Output Multiplier relative to vanilla

Original_Hotspot_Array = {			-- This is for reference. Don't change it!
				{"Power",   	"Mineral1",		"mineral2",		"Mineral3",		"Gas1",			"Gas2"},	--Type
				{1,				1,			 	1,		 	 	1,		 		1,				1}, 		--Probability
				{200,	  		190,			190,	  		190,	   		190,			190},	 	--MinRange??
				{250,	 	 	225,			225,	  		225,	   		225,			225},	 	--MaxRange?? Extraction radius?
				{10,			6,			 	6,		  		6,	     		20,				20}, 		--C-class probability
				{6,	  	  		4,			 	4,		  		4,	     		4,				4}, 		--B-class probability
				{2,	  	  		2,			 	2,		  		2,	     		2,				2}, 		--A-class probability
				{1,		  		1,				1,		  		1,		 		1,				1}, 		--S-class probability
				{150,	  		1,				1,		  		1,	  			1,				1}, 		--C-class output
				{220,	  		1.5,			1.5,	  		1.5,	   	 	1.5,			1.5}, 		--B-class output
				{250,  	  		2,				2,		  		2,		   	 	2,				2}, 		--A-class output
				{300,			2.5,			2.5,	  		2.5,			2.5,			2.5}, 		--S-class outpur
				{0.95,  		0.95,			0.95,	  		0.95,			0.95,			0.95} 		--DiscoverThreshold??
			}

Preceding_Array = {"ProbabilityWeighting", "MinRange", "MaxRange", "ClassWeightings", "ClassWeightings", "ClassWeightings", "ClassWeightings", "ClassStrengths", "ClassStrengths", "ClassStrengths", "ClassStrengths", "DiscoveryDistanceThreshold"}

New_Hotspot_Array = {
				{"Power",		"Mineral1",		"mineral2",		"Mineral3", 	"Gas1",			"Gas2"},		--Type
				{25,			15,				15,				15,				15,				15}, 			--Probability. Divide by total
				{200,			190,			190,			190,			190,			190}, 			--MinRange?? Min until another hotspot?
				{250,			225,			225,			225,			225,			225},			--MaxRange?? Extraction radius? Max distance to a new hotspot?
				{0,				0,				0,				0,				0,				0}, 			--C-class probability. Total = 100, but does not need to.
				{0,				0,				0,				0,				0,				0}, 			--B-class probability 
				{0,				0,				0,				0,				0,				0},			--A-class probability. 
				{100,			100,			100,			100,			100,			100}, 			--S-class probability. 
				{(100*OutX),	(0.5*OutX),		(0.5*OutX),		(0.5*OutX),		(0.5*OutX),		(0.5*OutX)},	--C-class output. Units unknwon.
				{(200*OutX),	(1.0*OutX),		(1.0*OutX),		(1.0*OutX),		(1.0*OutX),		(1.0*OutX)}, 	--B-class output
				{(400*OutX),	(2.0*OutX),		(2.0*OutX),		(2.0*OutX),		(2.0*OutX),		(2.0*OutX)}, 	--A-class output
				{(1200*OutX),	(6.0*OutX),		(6.0*OutX),		(6.0*OutX),		(6.0*OutX),		(6.0*OutX)}, 	--S-class output
				{0.95,			0.95,			0.95,			0.95,			0.95,			0.95} 			--DiscoverThreshold??
			}

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = { },}},}}}

local Change_Table_Array = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
for i = 1,6 do
	for j = 5,12 do	
		local temp_table =
			{
				["PRECEDING_KEY_WORDS"] = {tostring(Original_Hotspot_Array[1][i]), Preceding_Array[j-1]},
				["VALUE_CHANGE_TABLE"] = {
					{tostring(Original_Hotspot_Array[j][i]), tostring(New_Hotspot_Array[j][i])}
				}
			}
		Change_Table_Array[#Change_Table_Array + 1] = temp_table
	end
	local temp_table =
		{
			["PRECEDING_KEY_WORDS"] = {"RegionHotspots", tostring(Original_Hotspot_Array[1][i])},
			["VALUE_CHANGE_TABLE"] = {
				{"ProbabilityWeighting",tostring(New_Hotspot_Array[2][i])},
				{"MinRange",tostring(New_Hotspot_Array[3][i])},
				{"MaxRange",tostring(New_Hotspot_Array[4][i])},
				{"DiscoveryDistanceThreshold",tostring(New_Hotspot_Array[13][i])}
			}
		}
	Change_Table_Array[#Change_Table_Array + 1] = temp_table
end
