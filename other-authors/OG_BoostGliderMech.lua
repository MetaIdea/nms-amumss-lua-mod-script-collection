NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "OG_BoostGliderMechAI.pak",
["MOD_AUTHOR"]		        = "OTBP",
["NMS_VERSION"]				= "4.14, FRACTAL PATCH 4.15 ",
["MOD_DESCRIPTION"]			= "Mech will stay aloft longer, Camera Tweaks, etc",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
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
								{"MechAIResummonTriggerDistance",				"150"},		-- Fractal "100" Testing ? how far away AI Starts launch from character
								{"MechAIResummonMinSpawnDistance",				"5"},		-- Fractal "10" Testing So Close to Me
								{"MechJumpFlyBlendTime",						"0.75"},		-- Fractal "1" 
								{"MechFirstPersonDamping",						"0.01"},	-- Fractal ""0.05 Testing Gun Float
								{"MechFirstPersonStickXModerator",				"0.25"},	-- Fractal "0.5" Dampens
								{"MechFirstPersonTurretTurnModerator",			"0.71"},
								{"MechFirstPersonTurretPitchModerator",			"1.25"},	-- Fractal "0.5" EXTRA ARTICULATE/BEND: tested 2
								{"MechFirstPersonTurretAngleThrottleStrength",	"0"},		-- Fractal "2" Disable the mech moving using Look 0, Budge (0.25 nothing same as 0)				
								{"MechFirstPersonMaxTurnTurret",				"5"},		-- Fractal "20" Direction adjust while Still, SLOW!
								{"MechTurretTurnTimeAir",						"1.1"},		-- Fractal "0.7" Testing responsivness
								{"MechContrailAlpha",							"0.9"},		-- Fractal "0.6" Testing
								{"MechTurretTurnTimeGroundPlayerCombat",		"0.9"},		-- Fractal "0.15" Testing 3rd person view
								{"MechPowerUpTime",  							"1"},		-- Fractal "3" Testing
								{"MechTurretMaxAngleAir",						"100"},		-- Fractal "90" Good
								{"MechTurretTurnTimeAir",						"1.1"},		-- Fractal "0.7" Testing responsivness
								{"MechJetpackJetScaleTime",				    	"1"},		-- Fractal "0.2" Good FX diminish burn over time release trigger
								{"MechJetpackTurnSpeed",						"1"},		-- Fractal "3" Good Mid air flight adjust path Greater is slower
								{"MechPlayerGroundTurnSpeed",					"0.4"},		-- Fractal "0.5" Good Mech Higher Slower FirstPersonMaxTurnTurret 
								{"MechCoGAdjustTimeAir",						"2"},	-- Fractal "0.7" Testing
								{"MechJetpackMaxSpeed",						    "99"}, 		-- Fractal "20" Good
								{"MechJetpackMaxUpSpeed",						"25"},		-- Fractal "20" Good
								{"MechJetpackUpForce",						    "110"}, 	-- Fractal "100" Good
								{"MechJetpackFallForce",						"-20"},		-- Fractal "80" Good
								{"MechJetpackDrainRate",						"0.005"}, 	-- Fractal "0.5" Good
								{"MechJetpackFillRate",							"0.05"},	-- Fractal "0.5" Good
								{"AIMechLaserFireDurationMin",					"6"},		-- Fractal "5"? extra shot
								{"AIMechLaserFireDurationMax",					"9"},		-- Fractal "5" extra shot
								{"AIMechGunNumShotsMax",						"11"},		-- Fractal "5" extra shot
								{"AIMechGunExplosionRadius",					"1"},		-- Fractal "0" splash damage
								{"AIMechGunFireInterval",						"0.075"},	-- Fractal "0.5"? speed up								
							}
						}
					} 
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "VehicleCam",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"VertRotationMin",				"10"},		-- Fractal "-20" Positive interger to lower default Reticle centering Horizon 10 Needed for AI Mech Window.
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MechFirstPersonCam",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"VertRotationMax",				"2"},		-- Fractal "0" --Seems to effect 3rd person follow if nonzero
								{"VertRotationMin",				"17"},		-- Fractal "-20" Positive interger to lower default Reticle centering Horizon 10 Needed for AI Mech Window.
								--{"VertRotationOffset",			"-15"},		-- Fractal "0" Off for Mech Oval Window
								--{"VertRotationSpeed",			"0.5"},		-- Fractal "1" Testing Slop movement in Controller when aiming and mining.
								{"CenterStartTime",				"0.05"},	-- Fractal "0.2" Slower Center Only in Boosted Landing
								{"CenterBlendTime",				"0.1"},		-- Fractal "0.5" Slower Enguage Only in Boosed Landing
								--{"LookStickLimitAngle",			"25"},		-- Fractal "20" Cursors range of motion within Cab Aim and Peek
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MechFollowCam",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"OffsetX",				"5"},	-- Fractal "2.2"  Copied from MechCombatCam
								{"OffsetY",				"-1"},	-- Fractal "-0.5"
								{"OffsetYAlt",			"1.5"},	-- Fractal "2.5"  
							}
						}
					}
				},
			}
		},
		{			
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
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
								{"MaxHeadPitch",		"40"},		--Fractal "30" 1st person observation test 35 38 42
								{"FootAngleSpeed",		"1"},		--Fractal "10"
								{"FootPlantSpringTime",	"0.05"},	--Fractal "0.2"
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