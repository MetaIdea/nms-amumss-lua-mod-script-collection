NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = "VR_flight_controller_sensitivity",
  ["MOD_AUTHOR"]      = "Demonessa",
  ["LUA_AUTHOR"]      = "Demonessa",
  ["MOD_MAINTENANCE"] = "Demonessa",
  ["MOD_DESCRIPTION"] = "AMUMSS script to define VR Ship control sensitivity",
  ["NMS_VERSION"]     = "4.37",
  ["MODIFICATIONS"]   =
	{
		{
			["MBIN_CHANGE_TABLE"] = 
				{
					{
						["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
						["EXML_CHANGE_TABLE"] 	= 
						{	
						--	Note: comments were made for these settings ingame:
						--		options - controller:
						--			ship stick twist :enabled
						--			ship stick  preference: stick rolls ship
						-- 	if you have chosen other option, then X/Z axis comments are to be exchanged. 
							{	
								["PRECEDING_KEY_WORDS"] = {"HandControllerValueMultiplier",},
								["REPLACE_TYPE"]        = "ALL",
								--["INTEGER_TO_FLOAT"] = "FORCE", 
								["VALUE_CHANGE_TABLE"] 	= 
								{
								--how far a virtual stick can visually turn/twist in planet flight ,at 0.1 stick almost doesnt move 
									{"x", 			2},		--default(2)  ;rotation
									{"y", 			1},    	--default(1)  ;turning up/down  		   											
									{"z", 			1},     --default(1)  ;turning left/right       											
								
								},
							},
							{	
								["PRECEDING_KEY_WORDS"] = {"HandControllerValueMultiplierSpace",},
								["REPLACE_TYPE"]        = "ALL",
								--["INTEGER_TO_FLOAT"] = "FORCE",
								["VALUE_CHANGE_TABLE"] 	= 
								{
								--same as above for space flight, 
									{"x", 			1},		--default(1)
									{"y", 			1},     --default(1)
									{"z", 			1},     --default(1)
								
								},
							},
							{	
								["PRECEDING_KEY_WORDS"] = {"HandControllerDeadZone",},
								["REPLACE_TYPE"]        = "ALL",
								--["INTEGER_TO_FLOAT"] = "FORCE",
								["VALUE_CHANGE_TABLE"] 	= 
								{
								--my preference - bigger deadzone for ship rolling, but more sensitive up/down left/right
									{"x", 			0.35},			--default(0.2)	deadzone rotate 			
									{"y", 			0.075},			--default(0.2)	deadzone for  up/down		
									{"z", 			0.075},			--default(0.2)	deadzone for left/right	
								
								},
							},
							{	
								["PRECEDING_KEY_WORDS"] = {"HandControllerExtents",},
								["REPLACE_TYPE"]        = "ALL",
								["VALUE_CHANGE_TABLE"] 	= 
								{
								--input range, how much of a turn/twist needed to reach higher turn speeds
								--setting to 0.1 causes even little movements to insanely rotate/turn ship
								--setting to 2 causes slow turning speed even at maximum controller axis deviation
								--with lower deadzone values I recommend this value increased a bit
									{"x",	1},	--default(0.8)	
									{"y",	1}, --default(0.8)	
									{"z",	1},	--default(0.5)	
								},
							},
						},	
					},	
				},
		},
	},
}