NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "One Build.pak",
["MOD_AUTHOR"]				= "Biostar Ten",				 -- mod author, only mentioned for documentaion
["NMS_VERSION"]				= "3.87",					 -- NMS version on first mod release, only mentioned for documentaion
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"0"}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ALIEN"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"0"}
							}	
						},
						{				
							["PRECEDING_KEY_WORDS"] = "",				-- what key words must occur in lines prior your desired value you want to change
							["MATH_OPERATION"] 		= "", 				-- "*", "+", "-", "/" or leave empty for normal replacement, "*F:string", "*L:NUMBERLINESFORWARD", "*FB:string", "*LB:NUMBERLINESBACKWARD", do math op with values before or after the line
							["REPLACE_TYPE"] 		= "ALL",			-- "ALL" to change every matching values or leave empty for single replacement
							["VALUE_MATCH"] 		= "", 				-- only change value(s) that match this value
							["VALUE_MATCH_TYPE"] 	= "",               --  only change value(s) that match this value type: "number" or "string" or leave empty ""
							["LINE_OFFSET"] 		= "",               -- "+1", "-1" ... replace value in line after or before the property finding (here "StackMultiplier")
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	"1"} 					-- Original 1    -- use "IGNORE" for first entry to skip property match check
							}
						}
					}
				},			
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "",				
							["MATH_OPERATION"] 		= "",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",    
							["VALUE_MATCH_TYPE"] 	= "",
							["LINE_OFFSET"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"Amount",	"1"} 					-- Original 1
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