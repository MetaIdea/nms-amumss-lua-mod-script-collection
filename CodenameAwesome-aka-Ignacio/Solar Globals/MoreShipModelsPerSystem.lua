NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "MoreShipModelsPerSystem.pak",
  ["MOD_BATCHNAME"] 			= "SpacefarerSolarGlobals",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CivilianTraderSpaceshipsCacheCount",	"100"},
							}
						},
					}
				},
			}
		},
	}
}