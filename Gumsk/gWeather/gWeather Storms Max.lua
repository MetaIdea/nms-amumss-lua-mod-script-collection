Author = "Gumsk"
ModName = "gWeather Storms"
ModNameSub = "Max"
BaseDescription = "Reduces the number of storms"
GameVersion = "411"
ModVersion = "a"
FileSource1 = "GCSKYGLOBALS.GLOBALS.MBIN"

MinTimeBetweenStormsLow = 1					--900
MaxTimeBetweenStormsLow = 1					--2400
MinTimeBetweenStormsHigh = 1				--120
MaxTimeBetweenStormsHigh = 3				--620
MinTimeBetweenStormsExtremeFallback = 1		--240
MaxTimeBetweenStormsExtremeFallback = 1		--620
MinStormLengthLow = 1000000					--120
MaxStormLengthLow = 1000000					--180
MinStormLengthHigh = 1000000				--150
MaxStormLengthHigh = 1000000				--320


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