Author = "Gumsk"
ModName = "gRNG CBAS"
ModNameSub = "Small"
BaseDescription = "Removes the glow effect from multitool mining laser"
GameVersion = "383"
ModVersion = "a"

FileSource1 = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN"

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
					["SPECIAL_KEY_WORDS"] = {"Poor","GcInventoryClassProbabilities.xml"},
					["VALUE_CHANGE_TABLE"] = {
						{"C",50}, 	--60
						{"B",33}, 	--30
						{"A",15}, 	--10
						{"S",1}, 	--0
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Average","GcInventoryClassProbabilities.xml"},
					["VALUE_CHANGE_TABLE"] = {
						{"C",35}, 	--49
						{"B",35}, 	--35
						{"A",27}, 	--15
						{"S",3}, 	--1
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Wealthy","GcInventoryClassProbabilities.xml"},
					["VALUE_CHANGE_TABLE"] = {
						{"C",20}, 	--30
						{"B",35}, 	--40
						{"A",40}, 	--28
						{"S",5}, 	--2
					},
				},
			}
		},
	}
},
}}