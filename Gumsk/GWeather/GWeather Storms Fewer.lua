Author = "Gumsk"
ModName = "gWeather Storms"
ModNameSub = "Fewer"
BaseDescription = "Reduces the number of storms"
GameVersion = "403"
ModVersion = "a"
FileSource1 = "GCSKYGLOBALS.GLOBALS.MBIN"

MinTimeBetweenStormsLow = 3600				--900
MaxTimeBetweenStormsLow = 9600				--2400
MinTimeBetweenStormsHigh = 480				--120
MaxTimeBetweenStormsHigh = 2480				--620
MinTimeBetweenStormsExtremeFallback = 960	--240
MaxTimeBetweenStormsExtremeFallback = 2480	--620
MinStormLengthLow = 120						--120
MaxStormLengthLow = 180						--180
MinStormLengthHigh = 150					--150
MaxStormLengthHigh = 320					--320


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