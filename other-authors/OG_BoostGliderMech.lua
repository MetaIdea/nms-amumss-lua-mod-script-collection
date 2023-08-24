NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "OG_BoostGliderMechAI.pak",
["MOD_AUTHOR"]		        = "OTBP",
["NMS_VERSION"]				= "v4.34.0.1 ",
["MOD_DESCRIPTION"]			= "Mech will stay aloft longer, Camera Tweaks, etc",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.globals.pak",
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
								{"MechAIResummonTriggerDistance",				"50"},			-- Fractal "100" Testing ? how far away AI Starts launch from character 120, 80, 60
								{"MechAIResummonMinSpawnDistance",				"15"},			-- Fractal "10" Testing So Close to Me
								{"MechJumpFlyBlendTime",						"0.75"},	-- Fractal "1" 
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
								{"MechCoGAdjustTimeAir",						"2"},		-- Fractal "0.7" Testing
								{"MechJetpackMaxSpeed",						    "99"}, 		-- Fractal "20" Good
								{"MechJetpackMaxUpSpeed",						"25"},		-- Fractal "20" Good
								{"MechJetpackUpForce",						    "110"}, 	-- Fractal "100" Good
								{"MechJetpackFallForce",						"-20"},		-- Fractal "80" Good
								{"MechJetpackDrainRate",						"0.005"}, 	-- Fractal "0.5" Good
								{"MechJetpackFillRate",							"0.05"},	-- Fractal "0.5" Good
								{"AIMechLaserFireDurationMin",					"6"},		-- Fractal "5"? extra shot
								{"AIMechLaserFireDurationMax",					"9"},		-- Fractal "5" extra shot
								{"AIMechGunNumShotsMax",						"50"},		-- Fractal "5" extra shot ME!
								--{"AIMechGunNumShotsMax",						"15"},		-- Fractal "5" extra shot 11
								--{"AIMechGunNumShotsMax",						"11"},		-- Fractal "5" extra shot 11 HOTFIX
								{"AIMechGunExplosionRadius",					"0"},		-- Fractal "0" splash damage HOTFIX
								--{"AIMechGunExplosionRadius",					"1"},		-- Fractal "0" splash damage
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
							--["PRECEDING_KEY_WORDS"] = "VehicleCam",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"FlybyRange",					"50"},	--Fractal "120" Land closer During Battle please
								--{"VertRotationMin",				"-19"},		-- Fractal "-20" Positive interger to lower default Reticle centering Horizon 10 Needed for AI Mech Window. -1,-10,10,-19
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "MechFirstPersonCam",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"VertRotationMin",				"16"},		-- Fractal "-20" Positive interger to lower default Reticle centering Horizon 10 Needed for AI Mech Window..
								{"CenterStartTime",				"0.9"},		-- Fractal "0.2" 
								{"CenterBlendTime",				"0.9"},		-- Fractal "0.5" 
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
								{"MaxHeadPitch",		"40"},		--Fractal "30" 1st person observation test 35 38 42
								{"FootAngleSpeed",		"7"},		--Fractal "10" 1 lol
								{"FootPlantSpringTime",	"0.05"},	--Fractal "0.2"
								{"InteractDistance",	"25"},			--Fractal "10" Testing? Default Either Use MECH or MECH Harvest, or Both
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