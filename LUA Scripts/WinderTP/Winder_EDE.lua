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
								{"FreeJetpackRange",					"5"		},	
								{"RocketBootsImpulse",					"6.5"	},	
								{"RocketBootsBoostForce",				"75"	},	--Amount of momentum
								{"RocketBootsDriftForce",				"45"	},	--Amount of angular momentum
								{"RocketBootsForceDuration",			"0.6"	},	
								{"RocketBootsMinDesiredHeight",			"8"		},	
								{"RocketBootsMaxDesiredHeight",			"12"	},	
								{"RocketBootsHeightAdjustUpStrength",	"0.65"	},	
								{"RocketBootsHeightAdjustDownStrength",	"0.1"	},	
								{"RocketBootsBoostTankDrainSpeed",		"2"		},		
								{"RocketBootsDriftTankDrainSpeed",		"0"		},	
								{"RocketBootsZigZagForceDuration",		"0.8"	},	
								{"RocketBootsMaxSpeed",					"60"	},	
								{"RocketBootsDriftDownwardForce",		"0.2"	},	
								{"JetpackFillRate",						"4.5"	},	
								{"JetpackFillRateHardMode",				"1.5"	},	
								{"JetpackFillRateMidair",				"3.5"	},	
								{"SpaceJetpackDrainRate",				"0.15"	},	
								{"AbandonedFreighterRechargeMod",		"1"		},	
							}
						},
					},
				},				
			}
		}
	},
}