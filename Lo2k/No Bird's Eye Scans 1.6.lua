NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Bird's Eye Scans 1.6.pak", 
["MOD_AUTHOR"]				= "Lo2k (based on Penitence)",
["LUA_AUTHOR"]				= "Lo2k (based on Penitence)",
["NMS_VERSION"]				= "4.51",
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
					--[[
						{
							["VALUE_CHANGE_TABLE"]	=
							{
								{"AerialViewDownDistance",		"0"}, --original "40"
								{"AerialViewPause",		"0"}, --original "2"
								{"AerialViewStartTime",		"0"}, --original "1.5"
								{"AerialViewBackTime",		"0"}, --original "1.5"
								{"AerialViewBlendTime",		"0"}, --original "1"
							},
						},   ]]--
						{
							["SPECIAL_KEY_WORDS"] = {"ID"; "BEACON",},  -- Used by signal scanner
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Time",	"1"},  --original "5"
								{"AerialViewMode", "FaceOut"},  -- original "FaceDownThenOut"
								{"TimeBack",	"0.9"},  --original "4"
								{"StartTime",	"0.4"},  --original "1" -- Back from marker to horizon
								{"PauseTime",	"0"},  --original "2.5"
								{"Distance",	"0.1"},  --original "2000", 20 is pretty nice with FaceOut
								--{"FocusTargetOffsetDistance", "0.5"},  --original 2
							},
						},
						--[[{
							["PRECEDING_KEY_WORDS"] = {"SignalTransition",},
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"Time",	"3"},  --original "3"
								{"TimeBack",	"2"},  --original "2"
								{"StartTime",	"2.5"},  --original "2.5"
								{"PauseTime",	"0.3"},  --original "0.3"
								{"Distance",	"40"},  --original "40"
								{"TargetOffsetAngle",	"30"},  --original "30"
								{"Stages",	"1"},  --original "1"
								{"SpeedLineDist",	"6"},  --original "6"
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
						},]]--
						--[[{
							["PRECEDING_KEY_WORDS"] = {"RadioTowerTransition",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{			
								{"Time",	"1"},  --original "5"
								{"AerialViewMode", "FaceOut"},  -- original "FaceDownThenOut"
								{"TimeBack",	"0.9"},  --original "3.5"
								{"StartTime",	"0.4"},  --original "1"
								{"PauseTime",	"3"},  --original "2"
								{"Distance",	"0"},  --original "8000"
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"RadioTowerTransition","CurveDown",},
							["VALUE_CHANGE_TABLE"] 	= 
							{			
								{"Curve",	"SmoothInOut"},  --original "5"
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"RadioTowerTransition","SlerpCurve",},
							["VALUE_CHANGE_TABLE"] 	= 
							{			
								{"Curve",	"FastInSlowOut"},  --original "5"
							},
						},]]--
					}
				}
			}
		}
	}	
}