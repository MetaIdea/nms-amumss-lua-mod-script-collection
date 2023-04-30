
Author = "Youngneil1"		
ModName = "No Mans Land"
ModNameSub = "Advanced Mining Laser resource coist adjustment"
BaseDescription = "Advanced Mining Laser (STRONGLASER) does not require WiringLoom anymore"
GameVersion = "422"
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
					["SPECIAL_KEY_WORDS"] = {"ID","STRONGLASER","ID","CARBON_SEAL"},
					--["PRECEDING_KEY_WORDS"] = "Requirements",
					["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ID",	"NANOTUBES"},
								{"Amount",	"1"}
							} 
				},
				{
					["REPLACE_TYPE"] = "",
					["SPECIAL_KEY_WORDS"] = {"ID","STRONGLASER","ID","NANOTUBES"},
					--["PRECEDING_KEY_WORDS"] = "Requirements",
					["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ID",	"NANOTUBES"},
								{"Amount",	"1"}
							} 
				},
				{
					["REPLACE_TYPE"] = "",
					["SPECIAL_KEY_WORDS"] = {"ID","STRONGLASER","ID","TECH_COMP"},
					--["PRECEDING_KEY_WORDS"] = "Requirements",
					["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ID",	"NANOTUBES"},
								{"Amount",	"1"}
							} 
				}
			}
		},
	}
},
}}



