Author = "Gumsk"
ModName = "GShip Frequency"
ModNameSub = "Traders"
BaseDescription = "More traders at stations and trade outposts"
GameVersion = "321"
ModVersion = "a"
FileSource1 = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"
FileSource2 = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {
	{["PRECEDING_KEY_WORDS"] = {"TraderSpawns","Count"},
		["VALUE_CHANGE_TABLE"] = {
			{"x",3},
			{"y",3},
		},
	},
}},

{
["MBIN_FILE_SOURCE"] = FileSource2,
["EXML_CHANGE_TABLE"] = {
	{
		["VALUE_CHANGE_TABLE"] = {
			{"MinimumCircleTimeBeforeLanding",1},		--Mild impact
			{"MinimumTimeBetweenOutpostLandings",1},	--Mild impact
			{"FillUpOutposts","True"},					--Needed
			{"MaxNumActiveTraders",30},					--Needed
			{"SpaceStationTraderRequestTime",1},
			{"TraderArriveSpeed",500},
			{"TraderArriveTime",1},						--Mild impact
			{"ShipSpawnStationRadius",1000},
			{"TradeRouteSeekOutpostRange",10000},
			{"TradeRouteSpawnDistance",1000},
			{"TradeRouteStationRadius",1000},
			{"DockWaitMinTime",10},						--Cycles ships faster
			{"DockWaitMaxTime",40},						--Cycles ships faster
		},
	},
}},

}}}}