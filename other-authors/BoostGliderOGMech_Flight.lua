NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BoostGliderOGMech_Flight.pak",
["MOD_AUTHOR"]		        = "OTBP",
["NMS_VERSION"]				= "Worlds 5.4.0",
["MOD_DESCRIPTION"]			= "Mech will stay aloft longer and fall slower to pad Boost distants",
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
								{"MechJetpackMaxSpeed",						    "99"}, 		-- Fractal "20" Good
								{"MechJetpackMaxUpSpeed",						"25"},		-- Fractal "20" Good
								{"MechJetpackUpForce",						    "120"}, 	-- Fractal "100" Good
								{"MechJetpackFallForce",						"10"},		-- Fractal "80" Good -20
								{"MechJetpackDrainRate",						"0.005"}, 	-- Fractal "0.5" Good
								{"MechJetpackFillRate",							"0.05"},	-- Fractal "0.5" Good							
							}
						}
					} 
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
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