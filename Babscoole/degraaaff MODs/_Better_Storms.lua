NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "_Better_Storms.pak",
["MOD_AUTHOR"]    = "degraaaff",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.89",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MinTimeBetweenStormsLow",             "1350"},
								{"MaxTimeBetweenStormsLow",             "3600"},
								{"MinTimeBetweenStormsHigh",            "180"},
								{"MaxTimeBetweenStormsHigh",            "930"},
								{"MinTimeBetweenStormsExtremeFallback", "360"},
								{"MaxTimeBetweenStormsExtremeFallback",	"930"},
								{"MinStormLengthLow",                   "180"},
								{"MaxStormLengthLow",                   "270"},
								{"MinStormLengthHigh",                  "225"},
								{"MaxStormLengthHigh",                  "480"},
								{"StormWarningTime",                    "80"},
								{"StormTransitionTime",                 "80"},
								{"MaxCloudCover",                       "1"},
								{"MaxStormCloudCover",                  "1"},
								{"StormAudioLevel",                     "0.4"},
								{"CloudCoverSmoothTime",                "80"},
								{"CloudRatioSmoothTime",                "28"},
								{"StormCloudSmoothTime",                "5.6"},
							}
						},
					}
				},
			}
		},
	}	
}