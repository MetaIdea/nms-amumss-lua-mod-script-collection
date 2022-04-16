Author = "Gumsk"
ModName = "GWeather Storms"
ModNameSub = "Longer"
BaseDescription = "Makes storms longer"
GameVersion = "363"
ModVersion = "a"
FileSource1 = "GCSKYGLOBALS.GLOBALS.MBIN"

MinTimeBetweenStormsLow = 1800				--900
MaxTimeBetweenStormsLow = 4800				--2400
MinTimeBetweenStormsHigh = 240				--120
MaxTimeBetweenStormsHigh = 1240				--620
MinTimeBetweenStormsExtremeFallback = 480	--240
MaxTimeBetweenStormsExtremeFallback = 1240	--620
MinStormLengthLow = 240						--120
MaxStormLengthLow = 360						--180
MinStormLengthHigh = 300					--150
MaxStormLengthHigh = 640					--320


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
		{"MinTimeBetweenStormsLow",MinTimeBetweenStormsLow},
		{"MaxTimeBetweenStormsLow",MaxTimeBetweenStormsLow},
		{"MinTimeBetweenStormsHigh",MinTimeBetweenStormsHigh},
		{"MaxTimeBetweenStormsHigh",MaxTimeBetweenStormsHigh},
		{"MinTimeBetweenStormsExtremeFallback",MinTimeBetweenStormsExtremeFallback},
		{"MaxTimeBetweenStormsExtremeFallback",MaxTimeBetweenStormsExtremeFallback},
		{"MinStormLengthLow",MinStormLengthLow},
		{"MaxStormLengthLow",MaxStormLengthLow},
		{"MinStormLengthHigh",MinStormLengthHigh},
		{"MaxStormLengthHigh",MaxStormLengthHigh},
		--{"InFlightStormStrength","0.00001"},
	}
}}}}}}}