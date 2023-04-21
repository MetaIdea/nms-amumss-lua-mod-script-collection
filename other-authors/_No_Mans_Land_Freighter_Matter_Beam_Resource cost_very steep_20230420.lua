
Author = "Youngneil1"		
ModName = "No Mans Land"
ModNameSub = "Advanced Mining Laser steep resourcecost increase for Matter Beam"
BaseDescription = "Matter Beam (F_TELEPORT) requires 1000x times the production cost"
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
					["SPECIAL_KEY_WORDS"] = {"ID","F_TELEPORT","ID","ANTIMATTER"},
					--["PRECEDING_KEY_WORDS"] = "TECH_COMP",
					["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	"5000"} --5				
							} 
				},
				{
					["REPLACE_TYPE"] = "",
					["SPECIAL_KEY_WORDS"] = {"ID","F_TELEPORT","ID","MAGNET"},
					--["PRECEDING_KEY_WORDS"] = "TECH_COMP",
					["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	"3000"} --3				
							} 
				},
				{
					["REPLACE_TYPE"] = "",
					["SPECIAL_KEY_WORDS"] = {"ID","F_TELEPORT","ID","TECH_COMP"},
					--["PRECEDING_KEY_WORDS"] = "TECH_COMP",
					["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Amount",	"9999"} --10				
							} 
				},
			}
		},
	}
},
}}



