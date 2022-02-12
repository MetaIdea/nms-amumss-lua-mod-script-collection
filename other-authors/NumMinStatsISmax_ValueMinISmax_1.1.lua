NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NumMinStatsISmax_ValueMinISmax_1.1.pak",
["MOD_DESCRIPTION"]			= "Technology max stats and max stat value",
["MOD_AUTHOR"]				= "Sefer",
["NMS_VERSION"]				= "3.3",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["MATH_OPERATION"] 		= "*F:NumStatsMax",  			
							["REPLACE_TYPE"] 		= "ALL",
							["INTEGER_TO_FLOAT"]    = "FORCE",			
							["VALUE_MATCH"] 		= "",	
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"NumStatsMin",		"1"}				
							}
						},
						{		
							["MATH_OPERATION"] 		= "*FB:ValueMin",  			
							["INTEGER_TO_FLOAT"]    = "FORCE",			
							["SPECIAL_KEY_WORDS"]	= {"WeightingCurve", "MinIsSuperRare"},
							["SECTION_UP"]			= 1,
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"ValueMax",	"1"}
							}
						},
						{			
							["MATH_OPERATION"] 		= "*FB:ValueMin",  			
							["INTEGER_TO_FLOAT"]    = "FORCE",			
							["SPECIAL_KEY_WORDS"]	= {"WeightingCurve", "MinIsRare"},
							["SECTION_UP"]			= 1,
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"ValueMax",	"1"}
							}
						},
						{			
							["MATH_OPERATION"] 		= "*FB:ValueMin",  			
							["INTEGER_TO_FLOAT"]    = "FORCE",			
							["SPECIAL_KEY_WORDS"]	= {"WeightingCurve", "MinIsUncommon"},
							["SECTION_UP"]			= 1,
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"ValueMax",	"1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["MATH_OPERATION"] 		= "*F:ValueMax",  			
							["REPLACE_TYPE"] 		= "ALL",
							["INTEGER_TO_FLOAT"]    = "FORCE",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"ValueMin",	"1"}
							}
						}
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE