Author = "Gumsk"
ModName = "gPower"
ModNameSub = ""
BaseDescription = ""
GameVersion = "411"
ModVersion = "a"
FileSource1 = "GCDEBUGOPTIONS.GLOBAL.MBIN"
FileSource2 = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"

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
							["VALUE_CHANGE_TABLE"] = {
								{"DisableBasePowerRequirements", "True"},	--Original False
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"ID","U_EXTRACTOR_S"},
							["PRECEDING_KEY_WORDS"] = {"DependentConnections"},
							["VALUE_CHANGE_TABLE"] = {
								{"NetworkSubGroup", 4},
								{"NetworkMask", 1464},
								{"ConnectionDistance", 2000},
								{"DependentRate", 1},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","U_GASEXTRACTOR"},
							["PRECEDING_KEY_WORDS"] = {"DependentConnections"},
							["VALUE_CHANGE_TABLE"] = {
								{"NetworkSubGroup", 4},
								{"NetworkMask", 1464},
								{"ConnectionDistance", 2000},
								{"DependentRate", 1},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","PLANTER"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate", 1},
								--{"Storage", 10000},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","PLANTERMEGA"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate", 1},
								--{"Storage", 10000},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MAINROOM"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate", 100000},
								{"Storage", 100000},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MAINROOM_WATER"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate", 10000},
								{"Storage", 10000},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MAINROOMCUBE"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate", 10000},
								{"Storage", 10000},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","MAINROOMCUBE_W"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate", 10000},
								{"Storage", 10000},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","CUBEROOM"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate", 10000},
								{"Storage", 10000},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","CUBEROOM_SPACE"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate", 10000},
								{"Storage", 10000},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","CUBEROOMB_SPACE"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate", 10000},
								{"Storage", 10000},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","CUBEROOMC_SPACE"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate", 10000},
								{"Storage", 10000},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","CUBEGLASS"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate", 10000},
								{"Storage", 10000},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","CUBEROOMCURVED"},
							["VALUE_CHANGE_TABLE"] = {
								{"Rate", 10000},
								{"Storage", 10000},
							},
						},
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {""},
							-- ["REPLACE_TYPE"] = "ALL",
							-- ["VALUE_CHANGE_TABLE"] = {
								-- {"DependentEffect", "None"},
							-- },
						-- },

					},
				},
			},
		}
	}
}