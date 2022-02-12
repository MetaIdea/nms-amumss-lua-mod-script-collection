NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ShipSpeedsHOVERandCRUISE.pak",
["MOD_AUTHOR"]				= "HauntedKobra",
["NMS_VERSION"]				= "3.64",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{						
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine", },
						["VALUE_CHANGE_TABLE"] 	= 
							{
                                { "ThrustForce",                    "70"},      --Original "40"
                                { "MaxSpeed",                       "360"},     --Original "180"
								{ "MinSpeed",	                    "0" },	    --Original "20"
                                { "BoostMaxSpeed",                  "2000"},   --Original "1200"
                                { "ReverseBrake",                   "0"},       --Original "0.5"
                                { "ShipPlanetBrakeMaxHeight",       "2000"},    --Original "5000"
                                { "ReverseBrake",                   "5"},       --Original "0.5"
                                { "Falloff",                        "0"},       --Original "0.5"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine", },
						["VALUE_CHANGE_TABLE"] 	= 
							{
                                { "ThrustForce",                     "80" },    --Original "50"
                                { "MaxSpeed",                        "360" },   --Original "180" 
								{ "MinSpeed",	                     "0" },     --Original "20"
                                { "BoostMaxSpeed",                   "2600"},   --Original "1300"
                                { "ShipPlanetBrakeMaxHeight",        "2000"},   --Original "5000"
                                { "ReverseBrake",                    "5"},      --Original "0.5"
                                { "Falloff",                         "0"},      --Original "0.7"
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine", },
						["VALUE_CHANGE_TABLE"] 	= 
							{
                                { "ThrustForce",                      "50"},     --Original "40"
                                { "MaxSpeed",                         "360"},    --Original "180"
								{ "MinSpeed",	                      "0"},      --Original "20"
                                { "BoostMaxSpeed",                    "2600"},   --Original "1100"
                                { "ShipPlanetBrakeMaxHeight",         "2000"},   --Original "5000"
                                { "ReverseBrake",                     "5"},      --Original "0.5"
                                { "Falloff",                          "0"},      --Original "0.5"
							}
						},
					},		
                        {
                        ["PRECEDING_KEY_WORDS"] = "",
                        ["VALUE_CHANGE_TABLE"] 	= 
                            {
                               { "LandingMaxSpeed",                               "120" },   --Original "80"
                               { "LandingMargin",                                 "0.4" },   --Original "1.4"
                               { "PulseDriveStationApproachSlowdownRangeMin",     "600"},    --Original "1000"
                               { "PulseDriveStationApproachSlowdownRange",        "2000"},   --Original "5000"
                               { "WarpInRange",                                   "4000"},   --Original "10000"
                               { "WarpInRangeFreighter",                          "2000"},   --Original "5000"
                               { "WarpOutRange",                                  "200"},    --Original "1000"
                               { "WarpInRangeNexus",                              "2000"},   --Original "5000"
                               { "PulseDrivePlanetApproachHeight",                "2000"},   --Original "6000"
                               { "HoverTakeoffHeight",                            "60"},     --Original "90"
                               { "HoverAlignTime",                                "0.3"},    --Original "0.7"
                               { "HoverSpeedFactor",                              "0"},      --Original "20"
                               { "HoverMinSpeed",                                 "0"},      --Original "1"
                               { "HoverLandManeuvreTimeMin",                      "0.3"},    --Original "0.7"
                               { "HoverLandManeuvreTimeMax",                      "1"},      --Original "1.2"                               
                            } 
                        },
                        {
                        ["PRECEDING_KEY_WORDS"]  = "ControlBonusC",
                        ["VALUE_CHANGE_TABLE"]   =
                            {
                                { "ThrustForceMax",     "50"},  --Original "30"
                                { "ThrustForceMin",     "0"},   --Original "-5"
                                { "MaxSpeedMax",        "10"},  --Original "-5"
                                { "MaxSpeedMin",        "0"},   --Original "5"
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"]  = "ControlBonusB",
                        ["VALUE_CHANGE_TABLE"]   =          
                            {
                                { "ThrustForceMax",   "75"},   --Original "60"
                                { "MaxSpeedMax",      "20"},   --Original "5"
                                { "MaxSpeedMin",      "5"},    --Original "0"
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"]  = "ControlBonusA",
                        ["VALUE_CHANGE_TABLE"]   =      
                            {
                                { "ThrustForceMax",     "150"},  --Original "100"
                                { "MaxSpeedMax",        "30"},   --Original "20"
                                { "MaxSpeedMin",        "10"},   --Original "3"
                                { "BoostMaxSpeedMin",   "10"},   --Original "5"
                            }
                        },
                        {
                        ["PRECEDING_KEY_WORDS"]  = "ControlBonusS",
                        ["VALUE_CHANGE_TABLE"]   =      
                            {
                                { "ThrustForceMax",     "300"}, --Original "250"
                                { "ThrustForceMin",     "75"},  --Original "50"
                                { "MaxSpeedMax",        "75"},  --Original "30"
                                { "MaxSpeedMin",        "15"},  --Original "15"
                                { "BoostMaxSpeedMax",   "30"},  --Original "15"
                                { "BoostMaxSpeedMin",   "15"},  --Original "5"
                            }
                        }
                    }
                },                        

            }           
		},
	}