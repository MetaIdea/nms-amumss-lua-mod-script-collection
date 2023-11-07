--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = --This script currently has no effect
{
  ["MOD_FILENAME"] 			= "_CodenameAwesome.DebugGlobals.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Some convenience settings like SkipLogos and MultiplePlayerFreightersInASystem. Currenly doesn't work.",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] 	= {"GCDEBUGOPTIONS.GLOBAL.MBIN",},  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, must be a file in PAK_FILE_SOURCE
					["EXML_CHANGE_TABLE"] =
					{
						{
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"SkipLogos",	"True"},
								{"MultiplePlayerFreightersInASystem", "True"},
								{"AlwaysHaveFocus","True"},
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
