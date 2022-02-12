NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Aerial Camera Zoom Reduction.pak", 
["MOD_AUTHOR"]				= "Penitence",
["NMS_VERSION"]				= "3.67",
["MOD_DESCRIPTION"]			= "Disables Aerial Camera Zoom on Waypoints, Beacons, Signals, and Transmission Towers",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
					
						{
							["VALUE_CHANGE_TABLE"]	=
							{
								{"AerialViewDownDistance",		"0"}, --original "40"
								{"AerialViewPause",		"0"}, --original "2"
								{"AerialViewStartTime",		"0"}, --original "1.5"
								{"AerialViewBackTime",		"0"}, --original "1.5"
								{"AerialViewBlendTime",		"0"}, --original "1"
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BeaconTransition",},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Time",	"0"},  --original "5"
								{"TimeBack",	"0"},  --original "4"
								{"StartTime",	"0"},  --original "1"
								{"PauseTime",	"0"},  --original "2.5"
								{"Distance",	"0"},  --original "2000"
								{"Stages",	"0"},  --original "1"
								{"SpeedLineDist",	"0"},  --original "6"
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SignalTransition",},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Time",	"0"},  --original "3"
								{"TimeBack",	"0"},  --original "2"
								{"StartTime",	"0"},  --original "2.5"
								{"PauseTime",	"0"},  --original "0.3"
								{"Distance",	"0"},  --original "40"
								{"TargetOffsetAngle",	"0"},  --original "30"
								{"Stages",	"0"},  --original "1"
								{"SpeedLineDist",	"0"},  --original "6"
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WaypointTransition",},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Time",	"0"},  --original "2"
								{"TimeBack",	"0"},  --original "1.5"
								{"StartTime",	"0"},  --original "0.4"
								{"PauseTime",	"0"},  --original "0.2"
								{"Distance",	"0"},  --original "3"
								{"Stages",	"0"},  --original "1"
								{"SpeedLineDist",	"0"},  --original "6"
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"RadioTowerTransition",},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Time",	"0"},  --original "5"
								{"TimeBack",	"0"},  --original "3.5"
								{"StartTime",	"0"},  --original "1"
								{"PauseTime",	"0"},  --original "2"
								{"Distance",	"0"},  --original "8000"
								{"Stages",	"0"},  --original "1"
								{"SpeedLineDist",	"0"},  --original "6"
							},
						},
					}
				}
			}
		}
	}	
}