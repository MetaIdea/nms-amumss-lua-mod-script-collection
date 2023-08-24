--                             \/ --------------------- Pulse speed examples --------------------- \/
--                             0.5   (15000)
--                             1     (30000)      -- This is the default value set by Hello Games.
--                             1.5   (45000)
--                             2     (60000)
--                             4     (120000)
--                             6     (180000)
--                             8     (240000)
--                             10    (300000)
--                             69    (2070000)    -- Ha!
--                             100   (3000000)    -- Yes, that's 3 million and 100x default.
--                             420   (12600000)   -- Yolo swag.
--                             1337  (40110000)   -- Because you're the most elite.
--                             69420 (2082600000) -- The ultimate cringelord.
--                             /\ --------------------- Pulse speed examples --------------------- /\
--
PULSE_SPEED_DEFINED          = 1 -- Define your pulse speed on this line by changing the number one immediately after the equals symbol (=)
--
--                               -- Look above for ---- Pulse speed examples ---- however cringey they may be.
--                               -- NOTE: Get creative! You can set this value to whatever you desire.
--                               -- WARNING: !!! Extreme values could break the game. !!!
--
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]             = "AtmoHover-PulseSpeedDefined",
["MOD_AUTHOR"]               = "BigEx20 AKA Chromos",
["LUA_AUTHOR"]				 = "BigEx20 AKA Chromos",
["NMS_VERSION"]              = "3.84",
["MOD_DESCRIPTION"]          = "This mod allows hovering at 0u/s in the atmosphere and also brings quality-of-life adjustments to pulse engine speed defined by you via this .lua script.",
["MODIFICATIONS"]            = 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HoverTakeoffHeight", "80"},                                      -- Original 90
								{"HoverSpeedFactor",   "0.0001"},                                  -- Original 20
								{"HoverMinSpeed",      "0.0001"},                                  -- Original 1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",           "0.0001"},                                  -- Original 20
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetEngine","PlanetEngine"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",           "0.0001"},                                  -- Original 20
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetEngine","PlanetEngine","PlanetEngine"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",           "0.0001"},                                  -- Original 20
							}
						},
						{
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MiniWarpSpeed",      PULSE_SPEED_DEFINED}                        -- Scoll to top to change
							}
						}
					}
				}
			}
		}
	}
}