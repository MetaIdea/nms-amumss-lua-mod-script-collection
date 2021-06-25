--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "MyScript.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "1.77",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak", --example, only one pak file here -OPTIONAL
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "?\?.MBIN",  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, if this section is used
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = { }, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"",	""}, --Original --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
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