--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "_CodenameAwesome.VehicleGlobals.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Tweaks the speed and handling of exocrafts",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCVEHICLEGLOBALS.GLOBAL.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["MATH_OPERATION"] = "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"VehicleBoostTime",		"3"},
								{"VehicleBoostForce",		"1"},
								{"VehicleBoostMaxSpeed",	"2"},
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