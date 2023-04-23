
Author = "Youngneil1"		
ModName = "No Mans Land"
ModNameSub = "Steep resourcecost increase for Icarus Launch System"
BaseDescription = "Icarus Launch System requires 1000x times the production cost; micproprocessor will be exchanged to BLUE2 in PtsD, too"
GameVersion = "423"
ModVersion = "a"
FileSource1 = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"



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
					["REPLACE_TYPE"] = "",
					["SPECIAL_KEY_WORDS"] = {"ID","EXO_RECHARGE", "ID", "STORM_CRYSTAL"},
					--["PRECEDING_KEY_WORDS"] = "TECH_COMP",
					["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	"3000"} --3				
							} 
				},
				{
					["REPLACE_TYPE"] = "",
					["SPECIAL_KEY_WORDS"] = {"ID","EXO_RECHARGE","ID","TECH_COMP"},
					--["PRECEDING_KEY_WORDS"] = "TECH_COMP",
					["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	"2000"} --2				
							} 
				},
			}
		},
	}
},
}}



