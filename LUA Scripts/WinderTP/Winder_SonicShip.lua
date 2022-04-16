NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "_Winder.SonicShip.pak",
["MOD_DESCRIPTION"]		= "Makes ships faster on planet",
["MOD_AUTHOR"]			= "WinderTP",
["NMS_VERSION"]			= "3.38.0.1",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed",		"350"},	
								{"MinSpeed",		"0.05"},
								{"Falloff",			"1.2"},
								{"BoostFalloff",	"1.2"},
								{"OverspeedBrake",	"0.5"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"35"},	
								{"MaxSpeed",		"200"},	
								{"MinSpeed",		"0.05"},
								{"BoostMaxSpeed",	"350"},
								{"BoostFalloff",	"0.35"},
								{"ReverseBrake",	"0.5"},
								{"OverspeedBrake",	"2"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"100"},	
								{"MaxSpeed",		"230"},	
								{"MinSpeed",		"0.05"},
								{"BoostFalloff",	"0.35"},
								{"ReverseBrake",	"0.125"},
								{"OverspeedBrake",	"1"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed",		"200"},	
								{"MinSpeed",		"0.05"},
								{"BoostMaxSpeed",	"350"},
								{"BoostFalloff",	"0.35"},
								{"ReverseBrake",	"0.5"},
								{"OverspeedBrake",	"2"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed",		"250"},	
								{"MinSpeed",		"0.05"},
								{"Falloff",			"0.35"},
								{"BoostFalloff",	"0.35"},
								{"TurnBrakeMax",	"4"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"35"},	
								{"MaxSpeed",		"200"},	
								{"MinSpeed",		"0.05"},
								{"Falloff",			"0.35"},
								{"BoostMaxSpeed",	"350"},
								{"BoostFalloff",	"0.35"},
								{"ReverseBrake",	"0.5"},
								{"OverspeedBrake",	"2"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"45"},	
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"80"},	
								{"ThrustForceMin",	"30"},	
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"150"},	
								{"ThrustForceMin",	"75"},	
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"450"},	
								{"ThrustForceMin",	"90"},	
							}
						},
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShieldRechargeRate",				"15"},	
								{"MiniWarpSpeed",					"100000"},	
								{"MiniWarpHUDArrowAttractAngle",	"5"},	
								{"MiniWarpStoppingMarginPlanet",	"0"},	
								{"LaunchThrustersRegenTimePeriod",	"10"},	
							}
						},
					},
				},				
			}
		}
	},
}