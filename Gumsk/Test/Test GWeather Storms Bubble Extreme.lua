Author = "Gumsk"
ModName = "GWeather Bubble"
ModNameSub = "Extreme"
BaseDescription = ""
GameVersion = "315"
ModVersion = "a"

FileSource1 = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BUBBLEWEATHER.MBIN"
FileSource2 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"
FileSource3 = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {{
	["PRECEDING_KEY_WORDS"] = "",
	["VALUE_CHANGE_TABLE"] = {
		{"HighStormsChance",1},
		{"ExtremeWeatherChance",1},
	}
},
}},
{
["MBIN_FILE_SOURCE"] = FileSource2,
["EXML_CHANGE_TABLE"] = {{
	["PRECEDING_KEY_WORDS"] = "",
	["VALUE_CHANGE_TABLE"] = {
		{"ViciousStormProbability",1},
		{"ViciousWeatherProbability",1},
	}
},
}},
{
["MBIN_FILE_SOURCE"] = FileSource3,
["EXML_CHANGE_TABLE"] = {{
	["PRECEDING_KEY_WORDS"] = "ExtremePlanetChance",
	["VALUE_CHANGE_TABLE"] = {
		{"Yellow",1},
		{"Green",1},
		{"Blue",1},
		{"Red",1},
	}
},
}},

},}}}