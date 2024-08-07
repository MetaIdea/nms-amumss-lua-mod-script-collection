NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]			= "B-Only_Fast_Ship.pak",
["MOD_AUTHOR"]				= "Strange7",
["LUA_AUTHOR"]				= "Strange7",
["NMS_VERSION"]				= "5.03",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]			= 
{
	{
		["MBIN_CHANGE_TABLE"] =
		{
			{
				["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
				["EXML_CHANGE_TABLE"] =
				{
					{
						["VALUE_CHANGE_TABLE"] =
						{
							{"EnablePulseDriveSpaceStationOrient",  "True"},	--Original "False"
							{"MiniWarpMarkerApproachSlowdown",      "5"},		--Original "0.5"
							{"MiniWarpAlignSlerp",                  "0.2"},		--Original "0.08"
							{"MiniWarpPlanetRadius",                "200"},		--Original "500"
							{"MiniWarpStationRadius",               "200"},		--Original "700"
							{"MiniWarpChargeTime",                  "0.5"},		--Original "2"
							{"MiniWarpSpeed",                       "100000"},	--Original "30000"
							{"MiniWarpCooldownTime",                "0.75"},	--Original "2"
							{"MiniWarpMinPlanetDistance",           "300"},		--Original "2000"
							{"MiniWarpStoppingMarginDefault",       "750"},		--Original "2500"
							{"MiniWarpTrackingMargin",              "20"},		--Original "100"
							{"MiniWarpExitSpeed",                   "450"},		--Original "1000"
							{"MiniWarpExitTime",                    "0.25"},	--Original "0.5"
							{"MiniWarpHUDArrowAttractAngle",        "2"},		--Original "10"
							{"MiniWarpHUDArrowAttractAngleStation", "2"},		--Original "5"
							{"MiniWarpHUDArrowAttractAngleDense",   "1"},		--Original "4"	
						}
					}
						}
					}
				}
			}
		}	
}
