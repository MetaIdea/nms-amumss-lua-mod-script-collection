NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] = "NoAerialZoom.pak",
["MOD_DESCRIPTION"] = "Removes the top-down camera zoom animation at way-points, signal scanners, observatories, beacons, radio towers, etc.",
["MOD_AUTHOR"] = "Azzinoth",
["NMS_VERSION"] = "2.09.3",
["MODIFICATIONS"] = 
	{
		{
			["PAK_FILE_SOURCE"] = "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"AerialViewDownDistance", "0"},
								{"AerialViewPause", "0"},
								{"AerialViewStartTime", "0"},
								{"AerialViewBackTime", "0"},
								{"AerialViewBlendTime", "0"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "BeaconTransition",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Time", "0"},
								{"TimeBack", "0"},
								{"StartTime", "0"},
								{"PauseTime", "0"},
								{"Distance", "0"},
								{"TargetOffsetAngle", "0"},
								{"Stages", "0"},
								{"SpeedLineDist", "0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "SignalTransition",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Time", "0"},
								{"TimeBack", "0"},
								{"StartTime", "0"},
								{"PauseTime", "0"},
								{"Distance", "0"},
								{"TargetOffsetAngle", "0"},
								{"Stages", "0"},
								{"SpeedLineDist", "0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WaypointTransition",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Time", "0"},
								{"TimeBack", "0"},
								{"StartTime", "0"},
								{"PauseTime", "0"},
								{"Distance", "0"},
								{"TargetOffsetAngle", "0"},
								{"Stages", "0"},
								{"SpeedLineDist", "0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "RadioTowerTransition",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Time", "0"},
								{"TimeBack", "0"},
								{"StartTime", "0"},
								{"PauseTime", "0"},
								{"Distance", "0"},
								{"TargetOffsetAngle", "0"},
								{"Stages", "0"},
								{"SpeedLineDist", "0"},
							}
						},
					}
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE