SCAN_TIME_SECONDS = 0			-- SCAN TIME IN SECONDS, DEFAULT 3,2-3,9
PULSE_RANGE_MULTIPLIER = 1.5		-- RANGE OF SCANS, 1 IS DEFAULT 2 IS DOUBLE ETC 
SCAN_RANGE_MULTIPLIER = 2			-- RANGES FOR HUD RELATED SCANS, WAYPOINTS, MINERALS ETC
RECHARGE_TIME = 1 					-- RECHARGE TIME BETWEEN SCANS IN SECONDS
PULSE_TIME = 1 						-- HOW FAST THE SCAN WILL TRAVEL

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]             = "ScanTime-3.62.pak", 
["MOD_AUTHOR"]               = "MrFisse",
["NMS_VERSION"]              = "3.62",
["MOD_DESCRIPTION"]          = "Alters Scantimes and ranges",
["MODIFICATIONS"]            = 

{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
										
						{								
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BinocMinScanTime", 			SCAN_TIME_SECONDS},		-- Original 3.9
								{"BinocScanTime",   			SCAN_TIME_SECONDS},		-- Original 3.9
								{"BinocCreatureScanTime",      	SCAN_TIME_SECONDS},		-- Original 3.2
								{"WaypointScanTime",		 	SCAN_TIME_SECONDS},		-- Original "3"	
								{"MinScanDistance", 						  "0"},		-- 5 & 20						
							}
						},	
						{	
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{

								{"SurveyMaxDistance",			SCAN_RANGE_MULTIPLIER}, -- Original "400"	
								{"TerrainResourceScanRange",	SCAN_RANGE_MULTIPLIER}, -- Original "1200"
								{"TerrainResourceCompassRange",	SCAN_RANGE_MULTIPLIER},	-- Original "120"														
								{"BuildingBeamDistance", 		SCAN_RANGE_MULTIPLIER}, -- Original "800"
							}
						},	
						{
							["PRECEDING_KEY_WORDS"] = "ToolScan",
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					PULSE_RANGE_MULTIPLIER},	-- Original "200"				
							}
						},	
						{
							["PRECEDING_KEY_WORDS"] = "ToolScan",
							["VALUE_CHANGE_TABLE"] 	= 
							{		
								{"ChargeTime",					RECHARGE_TIME}, 	-- Original "30"		
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScanHardMode",
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					PULSE_RANGE_MULTIPLIER},	-- Original "150"									
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScanHardMode",
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"ChargeTime",					RECHARGE_TIME}, 	-- Original "90"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WaypointScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					PULSE_RANGE_MULTIPLIER},	-- Original "5000"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WaypointScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseTime",					PULSE_TIME}, 	-- Original "4"										
								{"ChargeTime",					RECHARGE_TIME}, 	-- Original "4"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "BeaconScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					PULSE_RANGE_MULTIPLIER},	-- Original "5000"						
							}
						},	
						{
							["PRECEDING_KEY_WORDS"] = "BeaconScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseTime",					PULSE_TIME}, 	-- Original "8"										
								{"ChargeTime",					RECHARGE_TIME}, 	-- Original "4"							
							}
						},					
						{
							["PRECEDING_KEY_WORDS"] = "RadioTowerScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					PULSE_RANGE_MULTIPLIER},	-- Original "100000"						
							}
						},				
						{
							["PRECEDING_KEY_WORDS"] = "RadioTowerScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseTime",					PULSE_TIME}, 	-- Original "8"										
								{"ChargeTime",					RECHARGE_TIME}, 	-- Original "4"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ObservatoryScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					PULSE_RANGE_MULTIPLIER},	-- Original "100000"						
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ObservatoryScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseTime",					PULSE_TIME}, 	-- Original "8"										
								{"ChargeTime",					RECHARGE_TIME}, 	-- Original "4"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "DistressSignalScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					PULSE_RANGE_MULTIPLIER},	-- Original "100000"						
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "DistressSignalScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseTime",					PULSE_TIME}, 	-- Original "8"										
								{"ChargeTime",					RECHARGE_TIME}, 	-- Original "4"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "DebugScanPlanet",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					PULSE_RANGE_MULTIPLIER},	-- Original "100000"					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "DebugScanPlanet",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseTime",					PULSE_TIME}, 	-- Original "5"										
								{"ChargeTime",					RECHARGE_TIME}, 	-- Original "4"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "DebugScanSpace",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					PULSE_RANGE_MULTIPLIER},	-- Original "100000"						
							}
						},	
						{
							["PRECEDING_KEY_WORDS"] = "DebugScanSpace",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseTime",					PULSE_TIME},		-- Original "5"										
								{"ChargeTime",					RECHARGE_TIME}, 	-- Original "4"							
							}
						},					
						{
							["PRECEDING_KEY_WORDS"] = "ShipScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					PULSE_RANGE_MULTIPLIER},	-- Original "10000"							
							}
						},					
						{
							["PRECEDING_KEY_WORDS"] = "ShipScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseTime",					PULSE_TIME}, 	-- Original "3"									
								{"ChargeTime",					RECHARGE_TIME}, 	-- Original "10"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "VisualScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					PULSE_RANGE_MULTIPLIER},	-- Original "10000"						
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "VisualScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseTime",					PULSE_TIME}, 	-- Original "8"									
								{"ChargeTime",					RECHARGE_TIME}, 	-- Original "4"							
							}
						},
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "None"},
                            ["REPLACE_TYPE"] = "",
                            ["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] = 
							{
                                {"MaxScanDistance", SCAN_RANGE_MULTIPLIER},		-- Original "10"	
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "Far"},
                            ["REPLACE_TYPE"] = "",
                            ["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] = 
							{
                                {"MaxScanDistance", SCAN_RANGE_MULTIPLIER},		-- Original "25"								
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "Mid"},
                            ["REPLACE_TYPE"] = "",
                            ["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] = 
							{						
                                {"MaxScanDistance", SCAN_RANGE_MULTIPLIER},		-- Original "70"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "Close"},
                            ["REPLACE_TYPE"] = "",
                            ["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] = 
							{							
                                {"MaxScanDistance", SCAN_RANGE_MULTIPLIER},	-- Original "500"
                            }
                        },
					}	
				}
			}
		}	
	}
}