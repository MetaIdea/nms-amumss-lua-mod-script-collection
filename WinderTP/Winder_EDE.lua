NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "_Winder_EDE.pak",
["MOD_DESCRIPTION"]		= "Makes rocket boots better",
["MOD_AUTHOR"]			= "WinderTP",
["NMS_VERSION"]			= "3.38.0.1",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"JetpackUnderwaterFillRate",			"4"		},	
								{"UnderwaterMaxJetpackEscapeSpeed",		"16"	},	
								{"UnderwaterJetpackEscapeForce",		"35"	},	
								{"FreeJetpackRange",					"8"		},	
								{"FreeJetpackRangePrime",				"8"		},	
								{"FreeJetpackRangeNonTerrain",			"8"		},	
								{"MeleeBoostAirForce",					"7"		},	
								{"MeleeToAirBoostInitialImpulse",		"12"	},	
								{"JetpackDrainHorizontalFactor",		"1"		},	
								{"RocketBootsImpulse",					"6.5"	},	
								{"RocketBootsBoostForce",				"85"	},	--Amount of momentum
								{"RocketBootsDriftForce",				"50"	},	--Amount of angular momentum
								{"RocketBootsForceDuration",			"0.65"	},	
								{"RocketBootsMinDesiredHeight",			"10"	},	
								{"RocketBootsMaxDesiredHeight",			"14"	},	
								{"RocketBootsHeightAdjustUpStrength",	"0.65"	},	
								{"RocketBootsHeightAdjustDownStrength",	"0.1"	},	
								{"RocketBootsBoostTankDrainSpeed",		"2"		},		
								{"RocketBootsDriftTankDrainSpeed",		"0"		},	
								{"RocketBootsZigZagForceDuration",		"0.8"	},	
								{"RocketBootsMaxSpeed",					"60"	},	
								{"RocketBootsDriftDownwardForce",		"0.2"	},	
								{"JetpackForce",						"48"	},	
								{"JetpackBrake",						"3.3"	},	
								{"JetpackMaxSpeed",						"12"	},	
								{"JetpackMaxUpSpeed",					"45"	},	
								{"JetpackUpForce",						"45"	},	
								{"SpaceJetpackForce",					"55"	},	
								{"SpaceJetpackUpForce",					"45"	},	
								{"SpaceJetpackMaxSpeed",				"17"	},	
								{"JetpackIgnitionForce",				"95"	},	
								{"JetpackIgnitionTime",					"0.75"	},	
								-- {"JetpackMinIgnitionTime",				"0.45"	},	
								{"JetpackFillRate",						"4.5"	},	
								{"JetpackFillRateHardMode",				"1.5"	},	
								{"JetpackFillRateMidair",				"3.5"	},	
								{"SpaceJetpackDrainRate",				"0.025"	},	
								{"AbandonedFreighterRechargeMod",		"1"		},	
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "JetpackTankTimes",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	"3" }
							}
						},
					},
				},				
			}
		}
	},
}