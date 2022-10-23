NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BoostGliderMech.pak",
["MOD_AUTHOR"]		        = "OTBP",
["NMS_VERSION"]				= "4.0+",
["MOD_DESCRIPTION"]			= "Mech will stay aloft longer and fall slower to allow refill midair to Boost distants",
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
								{"MechContrailAlpha",							"0.9"},		-- WayPoint "0.6" Testing
								{"MechTurretTurnTimeGroundPlayerCombat",		"0.9"},		-- WayPoint "value="0.15" Tessting
								{"MechPlayerGroundTurnSpeed",					"0.2"},		-- WayPoint "value="0.5" Tessting
								{"MechCoGAdjustTimeAir",						"0.2"},		-- WayPoint "0.7" 
								{"MechJetpackMaxSpeed",							"35"}, 		-- WayPoint "20"
								{"MechJetpackMaxUpSpeed",						"35"},		-- WayPoint "20"
								{"MechJetpackUpForce",							"120"}, 	-- WayPoint "100"
								{"MechJetpackFallForce",						"25"},		-- WayPoint "80"
								{"MechJetpackDrainRate",						"0.005"}, 	-- WayPoint "0.5"
								{"MechJetpackFillRate",							"0.05"},	-- WayPoint "0.5"			
							}
						}
					} --9 global replacements
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{	
								{"MechCameraArmShootOffsetY",	"3"},  --original "1"
							},
						},
					}
				}
		    }
	    }	
    }
}	
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE