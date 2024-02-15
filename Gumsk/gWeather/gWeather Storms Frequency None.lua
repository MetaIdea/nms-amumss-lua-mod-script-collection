Author = "Gumsk"
ModName = "gWeather Storms Frequency"
ModNameSub = "None"
BaseDescription = "Reduces the number of storms"
GameVersion = "450"
ModVersion = "a"
FileSource1 = "GCSKYGLOBALS.GLOBALS.MBIN"

MinTimeBetweenStormsLow = 9999999				--900
MaxTimeBetweenStormsLow = 9999999				--2400
MinTimeBetweenStormsHigh = 9999999				--120
MaxTimeBetweenStormsHigh = 9999999				--620
MinTimeBetweenStormsExtremeFallback = 9999999	--240
MaxTimeBetweenStormsExtremeFallback = 9999999	--620
MinStormLengthLow = 1							--120
MaxStormLengthLow = 1							--180
MinStormLengthHigh = 1							--150
MaxStormLengthHigh = 1							--320


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
							},
						},
					},
				},
			}
		}
	}
}