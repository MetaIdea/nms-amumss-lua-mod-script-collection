NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "G Base Mission Timers.pak", 
["MOD_AUTHOR"]				= "Gumsk",
["NMS_VERSION"]				= "3.22",
["MODIFICATIONS"] 			= {{
	["MBIN_CHANGE_TABLE"] 	= { 
		{
		["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\MISSIONS\BASECOMPUTERMISSIONTABLE.MBIN",
		["EXML_CHANGE_TABLE"] 	= {
			{
				["PRECEDING_KEY_WORDS"] = "",
				["MATH_OPERATION"] 		= "",
				["REPLACE_TYPE"] 		= "ALL",
				["VALUE_MATCH"] 		= "30",
				["VALUE_MATCH_OPTIONS"]	= ">",
				["VALUE_CHANGE_TABLE"] 	= 
				{
					{"Time",	"30"}
				}
			}
		}
	}	
}}}}