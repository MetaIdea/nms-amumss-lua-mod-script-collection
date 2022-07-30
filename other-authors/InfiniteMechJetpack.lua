ModName = "InfiniteMechJetpack.pak"
Author = "Striker0420"
Version = "3.97"


VehicleGlobals =  "GCVEHICLEGLOBALS.GLOBAL.MBIN"
MechForwardSpeed = 4 -- Original value is 2


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName,
["MOD_AUTHOR"]				= Author,
["LUA_AUTHOR"]				= Author,
["NMS_VERSION"]				= Version,
["MODIFICATIONS"] 			= 
	{
		{
			
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= VehicleGlobals,
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MechJetpackTurnSpeed","4"}, 
								{"MechJetpackMaxSpeed",	"45"} ,	
								{"MechJetpackDrainRate","0.0"}, 
								{"MechJetpackFillRate",	"10000"},
								{"MechPlayerGroundTurnSpeed", "1"}, -- Original 0.5
								{"MechJetpackFallForce", "0"}, -- Original 80		
								{"MechJetpackAvoidGroundForce", "1000"} -- Original 120
							}
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"Name","MECH"},
								["PRECEDING_KEY_WORDS"] = {"WheelSuspensionAnimMax"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TopSpeedForward",  MechForwardSpeed} 
							}
						},
					} --14 global replacements
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE