--THIS USE OF RAW IS POWERFULL AND DANGEROUS, EVEN DESTRUCTIVE IF NOT USED CORRECTLY
--USE WITH GREAT CARE

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "DONOTUSE_RAW_TEST.pak",
["MOD_DESCRIPTION"]		= "",
["MOD_AUTHOR"]				= "",
["NMS_VERSION"]				= "1.77",
["MODIFICATIONS"] 		= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
						--["SPECIAL_KEY_WORDS"] = {"","",},   --can be used
						["PRECEDING_KEY_WORDS"] = {"ShipCostData","InventoryCostData","Shuttle",},       --can be used
						--["MATH_OPERATION"] 		= "*",        --does not work here
						--["VALUE_MATCH"] 		  = "",         --does not work here
						--["VALUE_MATCH_TYPE"] 	= "",         --does not work here
						--["LINE_OFFSET"] 		  = "",         --does not work here
							["REPLACE_TYPE"] 		= "RAW",
							["VALUE_CHANGE_TABLE"] 	= 
							{
							--{ [[REPLACE_THIS]],	[[WITH_THIS]] },
								{ [[<Property name="C" value="0" />]],	[[<Property name="D" value="0" />]] }, --any part of a line or a full line can be changed
								{ [[oper]],	[[OPER]] }, --any part of a line or a full line can be changed. THIS WILL NOT PASS MBINCompiler.exe and produce an error
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