Author = "Gumsk"
ModName = "GEnviro"
ModNameSub = ""
BaseDescription = "Environment globals"
GameVersion = "352"
ModVersion = "a"
FileSource = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN"

--Clouds
	HorizonDistance = 11165							--11165 ; 
	AtmosphereStartHeight = 600						--600 ; 
	AtmosphereEndHeight = 1500						--1276 ; 
	StratosphereHeight = 4000						--4000 ; 


--Disruptive - If you change these, you will get different terrain with and without the module
	MaxElevation = 500								--500 ; 
	SunFactorMin = 0.4								--0.4 ??? ; 
	DailyTempChangePercent = 0.25					--0.25 ; 
	SpaceTemp = 19									--0 ; 
	ShipTemp = 19									--19 ; 
	SpaceRad = 0									--5 ; 
	ShipRad = 0										--0 ; 
	SpaceTox = 0									--0 ; 
	ShipTox = 0										--0 ; 
	SpaceStationStateBoundingBoxScalar = 0.75		--0.75 ; 
	AtmosphereSpaceRadius = 10800					--10800 ; 
	SkyHeight1 = 1000								--1000 ; 
	SkyHeight2 = 800								--800 ; 
	SkyHeight3 = 700								--700 ; 
	SkyHeight4 = 500								--500 ; 

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = 
{{
	["PRECEDING_KEY_WORDS"] = "",
	["VALUE_CHANGE_TABLE"] =
	{
		{"AtmosphereEndHeight", AtmosphereEndHeight},
		{"SpaceTemperature", SpaceTemp},
		{"SpaceRadiation", SpaceRad}
	}
}}}}}}}