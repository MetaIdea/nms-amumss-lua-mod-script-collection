Author = "Gumsk"
ModName = "gSquad Pilot Stats"
ModNameSub = "test"
BaseDescription = ""
GameVersion = "399"
ModVersion = "a"
FileSource1 = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN"

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
							["PRECEDING_KEY_WORDS"] = {"PilotRankTraitRanges","Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",100},			--0
								{"y",100},			--0.7
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PilotRankTraitRanges","Vector2f.xml","Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",100},			--0.2
								{"y",100},			--0.8
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PilotRankTraitRanges","Vector2f.xml","Vector2f.xml","Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",100},			--0.4
								{"y",100},			--0.9
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PilotRankTraitRanges","Vector2f.xml","Vector2f.xml","Vector2f.xml","Vector2f.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",100},			--0.5
								{"y",100},			--1.0
							},
						},
					},
				},
			}
		}
	}
}