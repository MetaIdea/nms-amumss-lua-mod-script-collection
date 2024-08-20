NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BoostGliderOGMech_AI2.pak",
["MOD_AUTHOR"]		        = "OTBP",
["NMS_VERSION"]				= "Worlds 5.4.0 ",
["MOD_DESCRIPTION"]			= "Mech will stay aloft longer, Camera Tweaks, Weapons Cycle, etc",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"] 			= 
	{
		{
			--["PAK_FILE_SOURCE"] 	= "NMSARC.globals.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MechAIResummonMinSpawnDistance",				"20"},		-- Worlds	"10"
								{"MechAIResummonTriggerDistance",				"90"},		-- Worlds	"100"
								{"MechFirstPersonTurretPitchModerator",			"1"},		-- Fractal "0.5" EXTRA ARTICULATE/BEND: tested 2,1.5
								{"MechFirstPersonTurretAngleThrottleStrength",	"0"},		-- Fractal "2" Disable the mech moving using Look 0, Budge (0.25 nothing same as 0)				
								{"MechCameraOffsetAmount",						"0.9"},		-- Fractal "10" Testing
								{"MechTurretTurnTimeGroundPlayerCombat",		"0.9"},		-- Fractal "0.15" Testing 3rd person view
								{"MechContrailAlpha",							"0.9"},		-- WayPoint "0.6"
								{"MechPowerUpTime",  							"1"},		-- Fractal "3" 
								{"MechTurretMaxAngleAir",						"10"},		-- Fractal "90" Good
								{"MechTurretTurnTimeAir",						"1.1"},		-- Fractal "0.7" Testing responsivness
								{"MechJetpackJetScaleTime",				    	"1"},		-- Fractal "0.2" Good FX diminish burn over time release trigger
								{"MechJetpackTurnSpeed",						"1"},		-- Fractal "3" Good Mid air flight adjust path Greater is slower
								{"MechPlayerGroundTurnSpeed",					"0.4"},		-- Fractal "0.5" Good Mech Higher Slower FirstPersonMaxTurnTurret 
								{"MechCoGAdjustTimeAir",						"2"},		-- Fractal "0.7" Testing
								{"MechJetpackStrafeStrength",					"0.2"},		-- Worlds "0.5" NEW testing 8112024 LESS SKEW?
								{"MechJetpackLandTime",							"0.5"},		-- Worlds "0.6" NEW testing 8112024 Float
								{"MechJetpackMaxSpeed",						    "99"}, 		-- Fractal "20" Good
								{"MechJetpackMaxUpSpeed",						"25"},		-- Fractal "20" Good
								{"MechJetpackUpForce",						    "120"}, 	-- Fractal "100" Good
								{"MechJetpackFallForce",						"10"},		-- Fractal "80" Good -20
								{"MechJetpackDrainRate",						"0.005"}, 	-- Fractal "0.5" Good
								{"MechJetpackFillRate",							"0.05"},	-- Fractal "0.5" Good
								--{"AIMechLaserFireDurationMin",					"5"},		-- Fractal "3" extra
								--{"AIMechLaserFireDurationMax",					"9"},		-- Fractal "5" extra
								{"AIMechGunNumShotsMax",						"50"},		-- Fractal "5" extra
								{"AIMechStunGunFireInterval",					"2"},		-- Worlds "1"
								{"AIMechStunGunNumShotsMin",					"2"},		-- Worlds "1"
								{"AIMechStunGunNumShotsMax",					"3"},		-- Worlds "1"
								{"AIMechGunNumShotsMin",						"30"},		-- Fractal "3" extra shots
								{"AIMechFlamethrowerNumShotsMin", "50"},
								{"AIMechFlamethrowerNumShotsMax", "100"},
								{"MechWeaponInterpSpeed",						"10"},		-- Worlds "5" speed up ?
								{"AIMechGunFireInterval",						"0.01"},	-- Worlds "0.5" Blur Gun
								{"AIMechFlamethrowerFireInterval",				"0.00001"},	-- Worlds New "0.025"
							}
						}
					} 
				},				
				{
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] =	{"Laser"},	-- New Worlds tweaks for faster/longer range for cycling Solo Worthy
							["REPLACE_TYPE"] 		=	{"ALL"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaintainFireLocationMinTime",				"1.25"},-- Worlds "1.5" Cycle weapons faster 2.5 increase base duration
								{"SelectionWeight",						 	"0.50"},-- varied "1.5" mostly
								{"MaxRange",								"70"},	-- Worlds "60" closing range for untweakable FT
								{"CooldownTimeMin",							"0.25"},-- Worlds varied
								{"CooldownTimeMax",							"2.5"},	-- Worlds varied
							}
						},
						{
							["PRECEDING_KEY_WORDS"] =	{"Gun"},	-- New Worlds tweaks for faster/longer range for cycling Solo Worthy
							["REPLACE_TYPE"] 		=	{"ALL"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaintainFireLocationMinTime",				"3.25"},-- Worlds "1.5" Cycle weapons faster 2.5 increase base duration
								{"SelectionWeight",						 	"2.5"},	-- varied "1.5" mostly
								{"MaxRange",								"80"},	-- Worlds "60" closing range for untweakable FT
								{"CooldownTimeMin",							"0.25"},-- Worlds varied
								{"CooldownTimeMax",							"0.5"},	-- Worlds varied
							}
						},
						{
							["PRECEDING_KEY_WORDS"] =	{"Stungun"},	-- New Worlds tweaks for faster/longer range for cycling Solo Worthy
							["REPLACE_TYPE"] 		=	{"ALL"},  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaintainFireLocationMinTime",				"0.5"},	-- Worlds "1.5" Cycle weapons faster 2.5 increase base duration
								{"SelectionWeight",						 	"2.0"},	-- varied "1.5" mostly
								{"MaxRange",								"25"},	-- Worlds "60" closing range for untweakable FT
								{"CooldownTimeMin",							"0.25"},-- Worlds varied
								{"CooldownTimeMax",							"0.5"},	-- Worlds varied
							}
						},
						{
							["PRECEDING_KEY_WORDS"] =	{"Flamethrower"},	-- New Worlds tweaks for faster/longer range for cycling Solo Worthy
							["REPLACE_TYPE"] 		=	{"ALL"},  -- Can't yet modify preceeding key word flamethrower w/o errors. this was the alternate.
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaintainFireLocationMinTime",				"3.25"},-- Worlds "1.5" Cycle weapons faster 2.5 increase base duration
								{"SelectionWeight",						 	"2.25"},	-- varied "1.5" mostly
								{"MinRange",								"1"},	-- "6"
								{"MaxRange",								"20"},	-- Worlds "60" closing range for untweakable FT
								{"CooldownTimeMin",							"0.25"},-- 
								{"CooldownTimeMax",							"0.5"},	-- Worlds varied
							}
						}
					} 
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "MechJetpackCam",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"DistSpeed",					"5"},		-- Omega 	"5"
								{"MinSpeed",					"100"},		-- Omega 	"1"								
								{"SpeedRange", 					"200"},		-- Omega    "14"
								{"DistStiffness", 				"2"},		-- Omega    "0.2"	
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MechFirstPersonCam",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"VertRotationMin",					"-5"},		-- Fractal 	"-20"
								{"UpGamma",							"1.8"},		-- Fractal 	"1.5" tried 4.5, 1.5, 5.5
								{"CenterStartTime",					"3.0"},
								{"CenterBlendTime",					"9.0"},
								{"CenterMaxSpring",					"10"},
								{"CenterMaxSpeed",					"5"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MechFollowCam",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"OffsetX",				"3.2"},	-- Fractal "2.2"  Modified
								{"OffsetY",				"-1"},	-- Fractal "-0.5"
								{"OffsetYAlt",			"1.5"},	-- Fractal "2.5"  
							}
						}
					}
				},
			}
		},
		{			
			["PAK_FILE_SOURCE"] 	= "NMSARC.Precache.pak",
			["MBIN_CHANGE_TABLE"] 	=  
			{
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT/ENTITIES/MECH.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"MaxHeadPitch",		"35"},		--Fractal "30" 1st person observation test 35 38 42 40
								{"FootAngleSpeed",		"7"},		--Fractal "10" I lol
								{"FootPlantSpringTime",	"0.05"},	--Fractal "0.2"
								{"InteractDistance",	"25"},		--Fractal "10"  MECH Harvest
							}
						}
					}
				}
		    }
	    }	
    }
}	
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE