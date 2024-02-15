Author = "Gumsk"
ModName = "gShip Traders Frequency"
ModNameSub = "Normal"
BaseDescription = "More traders at stations and trade outposts"
GameVersion = "450"
ModVersion = "a"
FileSource1 = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"
FileSource2 = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN"

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
							["PRECEDING_KEY_WORDS"] = {"OutpostSpawns","Count"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",3},
								{"y",3},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TraderSpawns","Count"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",2},
								{"y",2},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"FillUpOutposts","True"},					--False;Needed
								{"MaxNumActiveTraders",30},					--15;Needed
								{"SpaceStationTraderRequestTime",1},		--20
								{"TraderArriveSpeed",1000},					--300
								{"TraderArriveTime",1},						--3;Mild impact
								{"ShipSpawnStationRadius",1000},			--2000
								{"DockWaitMinTime",20},						--20;Cycles ships faster
								{"DockWaitMaxTime",30},						--60;Cycles ships faster
							},
						},
					},
				},
			}
		}
	}
}