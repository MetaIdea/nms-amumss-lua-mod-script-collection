--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] 			= "_CodenameAwesome.SimulationGlobals.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] 	= {"GCSIMULATIONGLOBALS.GLOBAL.MBIN",},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"PortalTunnelFile",	"MODELS/EFFECTS/WARP/WARPPORTAL.SCENE.MBIN"},
								{"PortalStoryTunnelFile",	"MODELS/EFFECTS/WARP/WARPPORTAL.SCENE.MBIN"},
							}
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE
