NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "VanillaTweaks-MoreLandingPads.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Adds landing pands to Abandoned buildings, Depots and Shelters because they're manmade objects and should have them.",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "3.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement","Abandoned"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AddLandingPad",	"True"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement","Depot"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AddLandingPad",	"True"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement","Shelter"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AddLandingPad",	"True"},
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