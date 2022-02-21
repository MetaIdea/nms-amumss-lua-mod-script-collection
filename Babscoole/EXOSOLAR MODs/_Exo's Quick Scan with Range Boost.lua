NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Exo's Quick Scan with Range Boost.pak",
["MOD_AUTHOR"]				= "Exosolar",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.81",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SurveyMaxDistance",					 "1000"}, 	-- Original "400"							
								{"TerrainResourceScanRange",			 "2000"}, 	-- Original "1200"
								{"TerrainResourceCompassRange",			 "200"},	-- Original "120"	
								{"BinocTimeBeforeScan",					 "0.01"}, 	-- Original "0.5"
								{"BinocMinScanTime",					 "0.333"},	-- Original "3.9"
								{"BinocScanTime",						 "0.333"}, 	-- Original "3.9"
								{"BinocCreatureScanTime",				 "0.333"},	-- Original "3.2"
								{"CreatureMinScanTime", 				 "0.01"}, 	-- Original "0.8"
								{"NewDiscoveryDisplayTime",		 		 "5"},		-- Original "2"	
								{"BuildingBeamDistance", 				 "1200"}, 	-- Original "800"
								{"WaypointScanTime",		 		 	 "2"},		-- Original "3"		
								{"PainTime",		 		 	 		 "1"},		-- Original "1.5"									
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScan",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"300"},	-- Original "200"			
								{"ChargeTime",					"1"}, 	-- Original "30"		
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScanHardMode",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"225"},	-- Original "150"			
								{"ChargeTime",					"5"}, 	-- Original "90"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "WaypointScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"7500"},	-- Original "5000"	
								{"PulseTime",					"0.5"}, 	-- Original "4"										
								{"ChargeTime",					"0.5"}, 	-- Original "4"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "BeaconScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"7500"},	-- Original "5000"	
								{"PulseTime",					"0.5"}, 	-- Original "8"										
								{"ChargeTime",					"0.5"}, 	-- Original "4"							
							}
						},						
						{
							["PRECEDING_KEY_WORDS"] = "RadioTowerScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"150000"},	-- Original "100000"	
								{"PulseTime",					"0.5"}, 	-- Original "8"										
								{"ChargeTime",					"0.5"}, 	-- Original "4"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ObservatoryScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"150000"},	-- Original "100000"	
								{"PulseTime",					"0.5"}, 	-- Original "8"										
								{"ChargeTime",					"0.5"}, 	-- Original "4"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "DistressSignalScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"150000"},	-- Original "100000"	
								{"PulseTime",					"0.5"}, 	-- Original "8"										
								{"ChargeTime",					"0.5"}, 	-- Original "4"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "DebugScanPlanet",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"1500000"},	-- Original "100000"	
								{"PulseTime",					"0.5"}, 	-- Original "5"										
								{"ChargeTime",					"0.25"}, 	-- Original "4"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "DebugScanSpace",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"1500000"},	-- Original "100000"	
								{"PulseTime",					"0.5"},		-- Original "5"										
								{"ChargeTime",					"0.25"}, 	-- Original "4"							
							}
						},						
						{
							["PRECEDING_KEY_WORDS"] = "ShipScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"15000"},	-- Original "10000"	
								{"PulseTime",					"0.5"}, 	-- Original "3"									
								{"ChargeTime",					"0.25"}, 	-- Original "10"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "VisualScan",
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"15000"},	-- Original "10000"	
								{"PulseTime",					"0.5"}, 	-- Original "8"									
								{"ChargeTime",					"0.25"}, 	-- Original "4"							
							}
						},
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "None"},
                            ["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"MaxScanDistance", "20"},		-- Original "10"	
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "Far"},
                            ["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"FoV", 			"75"},		-- Original "70"
                                {"MaxScanDistance", "50"},		-- Original "25"
                                {"WalkSpeed", 		"1"},		-- Original "0.5"								
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "Mid"},
                            ["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"FoV", 			"30"},		-- Original "40"
                                {"MinScanDistance", "0"},		-- Original "5"								
                                {"MaxScanDistance", "150"},		-- Original "70"
                                {"WalkSpeed", 		"1"},		-- Original "0.4"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ZoomType", "Close"},
                            ["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"FoV", 			"15"},		-- Original "20"
                                {"MinScanDistance", "0"},		-- Original "20"								
                                {"MaxScanDistance", "1000"},		-- Original "500"
                                {"WalkSpeed", 		"1"},		-- Original "0.3"
                            }
                        },
					}
				}
			}
		}
	}	
}