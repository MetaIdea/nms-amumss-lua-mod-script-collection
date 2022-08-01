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
						{"R",0.807},
						{"G",0.807},
						{"B",0.807},
						{"A",1},
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Id","STONEBLUE3","SecondaryColour","Colour.xml"},
					["VALUE_CHANGE_TABLE"] = {
						{"R",0.810},
						{"G",0.810},
						{"B",0.810},
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
						{"R",0.808},
						{"G",0.839},
						{"B",0.926},
						{"A",1},
					},
				},
			}
		}
	}
}
}}