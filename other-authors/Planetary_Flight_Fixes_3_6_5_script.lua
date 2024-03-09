MINSPEED = 		0.001 -- This value sets the minimum possible speed while being inside a planet's atmosphere;
						-- Set to a value close to zero for hover (eg. 0.001); Set to zero for backwards flight capability; Base game default = 20;
					  
SPEEDMULT = 	2	  -- This sets a multiplier for the maximum flight and maximum boost speed inside a planet's atmosphere (eg. 3 would mean flight speed would be at three times the normal speed);
						-- Base game default = 1; Mod default = 2;
					  
TURNMULT = 		0.5	  -- Change this depending on your SPEEDMULT setting; For SPEEDMULT = 1 set TURNMULT = 1 as well; For SPEEDMULT = 2 I recommend setting TURNMULT = 0.5, etc;
						-- Or simply test around and tweak it to your liking;
					  
BOOSTMULT = 	1.5	  -- Multiplier for strength of the boost acceleration; Set this depending on your SPEEDMULT setting;
						-- I recommend setting it to 1.5 for SPEEDMULT = 2; Set to 1 if SPEEDMULT = 1; or tweak to your liking;
					  
INVENTORYMULT = 6	  -- Multiplier for ship inventory interaction range; Tweak it to your liking;
						-- By default this is set to 6 times the vanilla range, which is 50u x 6 = 300u;

SCANRANGEMULT = 2	  -- Multiplier for ship scan range; Tweak as you see fit;
						-- By default this doubles the ship scanner range;
						
ICONRANGEMULT =	3	  -- Multiplier for the range at which icons will start to pop up when scanning; Tweak as you see fit;
						-- By default this triples the range at which icons will start to show up when you scan
							
COOLDOWNMULT = 	0.3	  -- This sets the ship scanner cooldown; The lower the number, the quicker you're able to scan again;
						-- By default this reduces scan cooldown by 70%; 10 x 0.3 = 3 seconds;
							
SCANSPEEDMULT = 0.75  -- This sets the speed of the scan pulse; The lower the number, the quicker it scans;
						-- By default this speeds up the scanning process by 25%; 3 x 0.75 = 2,25 seconds;
							
MAXSCANMULT = 	1.5	  -- This will determine how many buildings you can scan at once;
						-- By default this will allow you to scan a max of 3 instead of 2 at once;
							
COSTMULT = 		0.33  -- This sets the ship launch fuel cost; The lower the number, the cheaper it gets; Tweak to your liking;
						-- Setting this to 0 makes launching your ship drain no fuel, setting it to 0.5 halves the amount it usually drains, etc; 0 makes it cost nothing;
							
NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]             = "_Planetary_Flight_Fixes_3_6_5.pak", 
  ["MOD_AUTHOR"]               = "chronicallybored",
  ["NMS_VERSION"]              = "4.52",
  ["MOD_DESCRIPTION"]          = "Fixes various aspects of the flight system while inside a planets atmosphere",
  ["MODIFICATIONS"]            = 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{			
						{	
							["PRECEDING_KEY_WORDS"] = {"PlanetEngine",},
							["REPLACE_TYPE"]        = "ALL",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
							
								{"MinSpeed", 				MINSPEED},
								{"LowSpeedTurnDamper",		"0.01"},  	-- Do not change this
							
							}
						},
					}	
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetEngine",},
							["REPLACE_TYPE"]        = "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
							
								{"MaxSpeed",				SPEEDMULT},
								{"BoostMaxSpeed",			SPEEDMULT},
								{"DirectionBrakeMin",		SPEEDMULT},
								{"DirectionBrake",			SPEEDMULT},
								{"ReverseBrake",			SPEEDMULT},
								{"TurnStrength",			SPEEDMULT},
								{"TurnBrakeMin",			TURNMULT},
								{"TurnBrakeMax",			TURNMULT},
								{"BoostThrustForce",		BOOSTMULT},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShipInteractRadius",		INVENTORYMULT},		
							}
						}
					} 
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCBUILDINGGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"UnknownBuildingRange",	SCANRANGEMULT},
								{"MaxIconRange",			ICONRANGEMULT},
								{"MaxShipScanBuildings",	MAXSCANMULT},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinShipScanBuildings",		"1"},  -- Do not change this
							}
						},
					}
				},
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	COSTMULT}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ALIEN"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	COSTMULT}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_SPEC"},
							["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	COSTMULT}
							}
						},
					}
				}
			}
		},		
	}
}