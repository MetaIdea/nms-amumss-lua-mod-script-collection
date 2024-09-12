NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "__Las_Globals_x7ShipPulseSpeed_v1.41.pak",
["MOD_AUTHOR"]				= "goosetehmoose",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HoverTakeoffHeight",	"75"},
								{"HoverSpeedFactor",	"0.0025"},
								{"HoverMinSpeed",	"0.0025"},
							}
						},
						{
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["MATH_OPERATION"]      = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MiniWarpSpeed",	"7"}
							}
						},
						{
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["PRECEDING_KEY_WORDS"] = {"PlanetEngine","PlanetEngine","PlanetEngine"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",	"0.0025"},
							}
						},
						{
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["PRECEDING_KEY_WORDS"] = {"PlanetEngine","PlanetEngine"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",	"0.0025"},
							}
						},
						{
							["INTEGER_TO_FLOAT"]    = "FORCE",
							["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",	"0.0025"},
							}
						},
					}
				},
			}
		},
	}	
}