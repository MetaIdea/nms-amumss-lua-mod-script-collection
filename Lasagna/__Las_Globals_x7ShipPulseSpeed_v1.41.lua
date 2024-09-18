--[[
for the latest mod updates, visit: https://github.com/SunnySummit/LasagnaBiomeGeneration2

feel free to make your own changes. in order to distribute (paks or lua scripts) you must:
    1. provide full credits in a readme file included with the archive.
    2. use open (GPLv3) licensing and/or open nexus mods permissions (include these 5 points in the readme/description page).
    3. you cannot sell or profit from this mod.
    4. you cannot distribute this mod for other games or media besides No Man's Sky.
    5. don't re-upload these lua scripts verbatim, instead, link to this repo (or create a fork).
	
thank.
--]]

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