MINSPEED = 0.001	-- This value sets the minimum possible speed while being inside a planet's atmosphere
					  -- Set to a value close to zero for hover (eg. 0.001); Set to zero for backwards flight capability; Base game default = 20;
SPEEDMULT = 2		-- This sets a multiplier for the maximum flight and maximum boost speed inside a planet's atmosphere (eg. 3 would mean flight speed would be at three times the normal speed)
					  -- Base game default = 1; Mod default = 2;
TURNMULT = 0.5		-- Change this depending on your SPEEDMULT setting; For SPEEDMULT = 1 set TURNMULT = 1 as well; For SPEEDMULT = 2 I recommend setting TURNMULT = 0.5, etc.
					  -- Or simply test around and tweak it to your liking
BOOSTMULT = 1.5		-- Multiplier for strength of the boost acceleration; Set this depending on your SPEEDMULT setting;
					  -- I recommend setting it to 1.5 for SPEEDMULT = 2; Set to 1 if SPEEDMULT = 1; or tweak to your liking


NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]             = "_Planetary_Flight_Fixes_Lite_3_6_5.pak", 
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
							
								{"MinSpeed", 			MINSPEED},
								{"LowSpeedTurnDamper",	"0.01"},	
							
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
							
								{"MaxSpeed",			SPEEDMULT},
								{"BoostMaxSpeed",		SPEEDMULT},
								{"DirectionBrakeMin",	SPEEDMULT},
								{"DirectionBrake",		SPEEDMULT},
								{"ReverseBrake",		SPEEDMULT},
								{"TurnStrength",		SPEEDMULT},
								{"TurnBrakeMin",		TURNMULT},
								{"TurnBrakeMax",		TURNMULT},
								{"BoostThrustForce",	BOOSTMULT},
							}
						},
					}
				},
			}
		}	
	}
}