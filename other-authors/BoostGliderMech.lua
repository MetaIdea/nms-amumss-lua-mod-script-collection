NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BoostGliderMech.pak",
["MOD_AUTHOR"]		        = "OTBP",
["NMS_VERSION"]				= "v4.25.0.1 ",
["MOD_DESCRIPTION"]			= "Mech will stay aloft longer and fall slower to pad Boost distants",
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
								{"MechAIResummonTriggerDistance",				"50"},		-- WayPoint "100" Testing ? how far away AI Starts launch from character
								{"MechAIResummonMinSpawnDistance",				"25"},		-- WayPoint "10" Testing ? Don't Stomp So Close to Me
								{"MechFirstPersonDamping",						"0.05"},	-- Fractal ""0.05 Testing Gun Float
								{"MechFirstPersonStickXModerator",				"0.25"},	-- Fractal "0.5" Dampens
								--{"ControlStickRecenterSpeedDegPerSec",			"0"},		-- Fractal "100" Testing ? Slow spring in weapon ? no discenable change
								{"MechFirstPersonTurretAngleThrottleStrength",	"0"},		-- Fractal "2" Disable the mech moving using Look 							
								{"MechFirstPersonMaxTurnTurret",				"5"},		-- Fractal "20" Direction adjust while walking SLOW!
								{"MechTurretTurnTimeAir",						"1.1"},		-- WayPoint "0.7" Testing responsivness
								{"MechContrailAlpha",							"0.9"},		-- WayPoint "0.6" Testing
								{"MechTurretTurnTimeGroundPlayerCombat",		"0.9"},		-- WayPoint "0.15" Testing 3rd person view
								{"MechPowerUpTime",  							"1"},		-- WayPoint "3" Testing
								{"MechTurretMaxAngleAir",						"100"},		-- WayPoint "90" Good
								{"MechTurretTurnTimeAir",						"1.1"},		-- WayPoint "0.7" Testing responsivness
								{"MechJetpackJetScaleTime",				    	"1"},		-- WayPoint "0.2" Good FX diminish burn over time release trigger
								{"MechJetpackTurnSpeed",						"1"},		-- WayPoint "3" Good Mid air flight adjust path Greater is slower
								{"MechPlayerGroundTurnSpeed",					"0.2"},		-- WayPoint "0.5" Good
								{"MechCoGAdjustTimeAir",						"0.07"},	-- WayPoint "0.7" Testing
								{"MechJetpackMaxSpeed",						    "99"}, 		-- WayPoint "20" Good
								{"MechJetpackMaxUpSpeed",						"25"},		-- WayPoint "20" Good
								{"MechJetpackUpForce",						    "110"}, 	-- WayPoint "100" Good
								{"MechJetpackFallForce",						"-20"},		-- WayPoint "80" Good
								{"MechJetpackDrainRate",						"0.005"}, 	-- WayPoint "0.5" Good
								{"MechJetpackFillRate",							"0.05"},	-- WayPoint "0.5" Good	
							}
						}
					} --19 global replacements
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"FlybyRange",							"50"},	--Fractal "120" Land closer During Battle please
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