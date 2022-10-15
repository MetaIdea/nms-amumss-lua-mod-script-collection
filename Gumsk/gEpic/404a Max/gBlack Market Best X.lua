Author = "Gumsk"
ModName = "gBlack Market"
ModNameSub = "Best X"
BaseDescription = "Changes the weighting curve of X-class upgrades"
GameVersion = "403"
ModVersion = "b"
FileSource1 = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"

WeightingCurve = "MinIsSuperRare"			--MaxIsRare; X-class curves where higher is better
WeightingCurveReverse = "MaxIsSuperRare" 	--MinIsUncommon; X-class curves where lower is better
IdList = {
	"UP_LASERX",
	"UP_SCANX",
	"UP_BOLTX",
	"UP_GRENX",
	"UP_TGRENX",
	"UP_RAILX",
	"UP_SHOTX",
	"UP_SMGX",
	"UP_CANNX",
	"UP_ENGYX",
	"UP_HAZX",
	"UP_JETX",
	"UP_SHLDX",
	"UP_PULSEX",
	"UP_LAUNX",
	"UP_HYPX",
	"UP_S_SHLX",
	"UP_SGUNX",
	"UP_SLASRX",
	"UP_SSHOTX",
	"UP_SMINIX",
	"UP_SBLOBX",	
}

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{

						},
					}
				},
			}
		}
	}
}

--Alias for EXML_CHANGE_TABLE
local ExmlChangeTableArray = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

--Loop number of times equal to count of items in IdList
for i = 1,#IdList do
	--Find reversed weighting curves, where lower is better, and temporarily label them Reverse
	--This is done because otherwise the order of changes below will overwrite the new normal weighting curves will overwrite and become matched for reversed weighting curves before you can search for reversed weighting curves
	local TempTable1 = {
		["SPECIAL_KEY_WORDS"] = {"ID",IdList[i],"WeightingCurve","GcWeightingCurve.xml"},
		["REPLACE_TYPE"] = "ALL",
		["WHERE_IN_SUBSECTION"] = {
			{"WeightingCurve","MinIsUncommon"},
			{"WeightingCurve","MinIsRare"}
		},
		["LINE_OFFSET"] = 0,
		["VALUE_CHANGE_TABLE"] = {
			{"WeightingCurve", "Reverse"}
		}
	}
	--Assign temporary table to the next entry in the EXML_CHANGE_TABLE
	ExmlChangeTableArray[#ExmlChangeTableArray+1] = TempTable1
	
	--Find normal weighting curves, where higher is better, and apply the improved normal weighting curve
	local TempTable2 = {
		["SPECIAL_KEY_WORDS"] = {"ID",IdList[i],"WeightingCurve","GcWeightingCurve.xml"},
		["REPLACE_TYPE"] = "ALL",
		["WHERE_IN_SUBSECTION"] = {
			{"WeightingCurve","MaxIsUncommon"},
			{"WeightingCurve","MaxIsRare"}
		},
		["LINE_OFFSET"] = 0,
		["VALUE_CHANGE_TABLE"] = {
			{"WeightingCurve", WeightingCurve}
		}
	}
	--Assign temporary table to the next entry in the EXML_CHANGE_TABLE
	ExmlChangeTableArray[#ExmlChangeTableArray+1] = TempTable2
	
	--Find weighting curves labeled Reverse and apply the improved reversed weighting curve
	local TempTable3 = {
		["SPECIAL_KEY_WORDS"] = {"ID",IdList[i],"WeightingCurve","GcWeightingCurve.xml"},
		["REPLACE_TYPE"] = "ALL",
		["WHERE_IN_SUBSECTION"] = {
			{"WeightingCurve","Reverse"}
		},
		["LINE_OFFSET"] = 0,
		["VALUE_CHANGE_TABLE"] = {
			{"WeightingCurve", WeightingCurveReverse}
		}
	}
	--Assign temporary table to the next entry in the EXML_CHANGE_TABLE
	ExmlChangeTableArray[#ExmlChangeTableArray+1] = TempTable3
end