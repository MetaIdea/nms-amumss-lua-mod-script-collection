--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "MyScript.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL.MBIN",},  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, must be a file in PAK_FILE_SOURCE
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks","GcObjectSpawnData.xml","LodDistances"}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
              ["MATH_OPERATION"] 		= "*",
              ["VALUE_MATCH_TYPE"] 	= "NUMBER",
              ["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	"1.5"}, --Original --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
					}
				},
			}
		}, --5 global replacements
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE