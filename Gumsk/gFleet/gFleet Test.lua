Author = "Gumsk"
ModName = "gFreighter Fleet"
ModNameSub = "test"
BaseDescription = ""
GameVersion = "399"
ModVersion = "a"
FileSource1 = "GCFLEETGLOBALS.GLOBAL.MBIN"

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
								{"NumberOfExpeditionChoices",10},			--5
								{"TimeTakenForExpeditionEvent_Easy",200},	--900
								{"TimeTakenForExpeditionEvent",1000},		--5400
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TokenName","FRIGATE_FUEL_1"},
							["VALUE_CHANGE_TABLE"] = {
								{"TokenValue",10},		--50
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TokenName","FRIGATE_FUEL_2"},
							["VALUE_CHANGE_TABLE"] = {
								{"TokenValue",20},		--100
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"TokenName","FRIGATE_FUEL_3"},
							["VALUE_CHANGE_TABLE"] = {
								{"TokenValue",40},		--200
							},
						},
					},
				},
			}
		}
	}
}