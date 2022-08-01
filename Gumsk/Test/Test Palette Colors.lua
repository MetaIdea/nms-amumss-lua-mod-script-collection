Author = "Faeryn.Shea"
ModName = "Palette Edit"
ModNameSub = ""
BaseDescription = ""
GameVersion = "393"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"

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
					["SPECIAL_KEY_WORDS"] = {"Id","STONEBLUE3","PrimaryColour","Colour.xml"},
					["VALUE_CHANGE_TABLE"] = {
						{"R",0.813},
						{"G",0.629},
						{"B",0.526},
						{"A",1},
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Id","STONEBLUE3","SecondaryColour","Colour.xml"},
					["VALUE_CHANGE_TABLE"] = {
						{"R",0.813},
						{"G",0.784},
						{"B",0.733},
						{"A",1},
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Id","STONEBLUE3","TernaryColour","Colour.xml"},
					["VALUE_CHANGE_TABLE"] = {
						{"R",0.867},
						{"G",0.847},
						{"B",0.778},
						{"A",1},
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Id","STONEBLUE3","QuaternaryColour","Colour.xml"},
					["VALUE_CHANGE_TABLE"] = {
						{"R",0.851},
						{"G",0.71},
						{"B",0.502},
						{"A",1},
					},
				},
			}
		}
	}
}
}}