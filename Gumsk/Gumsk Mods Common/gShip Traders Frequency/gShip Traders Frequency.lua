Author = "Gumsk"
ModName = "gShip Traders Frequency"
ModNameSub = "Normal"
BaseDescription = "More traders at stations and trade outposts"
GameVersion = "6.0.5.0"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
	MOD_DESCRIPTION	= BaseDescription,
	MOD_AUTHOR		= Author,
	NMS_VERSION		= GameVersion,
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
				{
					MBIN_FILE_SOURCE = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					MXML_CHANGE_TABLE = {
						{
							PRECEDING_KEY_WORDS = {"OutpostSpawns","Count"},
							VALUE_CHANGE_TABLE = {
								{"X",3.000000},
								{"Y",3.000000},
							}
						},
						{
							PRECEDING_KEY_WORDS = {"TraderSpawns","Count"},
							VALUE_CHANGE_TABLE = {
								{"X",2},
								{"Y",2},
							}
						}
					}
				},
				{
					MBIN_FILE_SOURCE = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
					MXML_CHANGE_TABLE = {
						{
							VALUE_CHANGE_TABLE = {
								{"FillUpOutposts","true"},									--false;Needed
								{"MaxNumActiveTraders",30},									--15;Needed
								{"SpaceStationTraderRequestTime",1.000000},	--20
								{"TraderArriveSpeed",1000.000000},					--300
								{"TraderArriveTime",1.000000},							--3;Mild impact
								{"ShipSpawnStationRadius",1000.000000},			--2000
								{"DockWaitMinTime",20.000000},							--20;Cycles ships faster
								{"DockWaitMaxTime",30.000000}								--60;Cycles ships faster
							}
						}
					}
				}
			}
		}
	}
}