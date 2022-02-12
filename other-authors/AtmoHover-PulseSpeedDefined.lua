--                             \/ --------------------- Pulse speed options --------------------- \/
--                             0.5   (15000 value)
--                             1     (30000 value) -- This is the default value set by Hello Games.
--                             1.5   (45000 value)
--                             2     (60000 value)
--                             10    (300000 value)
--                             /\ --------------------- Pulse speed options --------------------- /\
--
PULSE_SPEED_DEFINED          = 1 -- Define your pulse speed here on this line by changing the number one immediately after the equals symbol (=)
--                               -- Look above for Pulse speed options
--                               -- NOTE: You can set this value to whatever you desire (Warning: extreme values could break the game though xD)
--
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]             = "AtmoHover-PulseSpeedDefined", 
["MOD_AUTHOR"]               = "BigEx20 AKA Chromos",
["NMS_VERSION"]              = "3.10",
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
								{"HoverTakeoffHeight", "80"},											-- Original 90
								{"HoverSpeedFactor",   "0.0001"},										-- Original 20
								{"HoverMinSpeed",      "0.0001"},										-- Original 1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",           "0.0001"},										-- Orignal 20
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetEngine","PlanetEngine"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",           "0.0001"},										-- Orignal 20
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetEngine","PlanetEngine","PlanetEngine"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",           "0.0001"},										-- Orignal 20
							}
						},
						{
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MiniWarpSpeed",      PULSE_SPEED_DEFINED}								-- Original 1 (30000 value)
							}
						}
					}	
				}
			}
		}	
	}
}