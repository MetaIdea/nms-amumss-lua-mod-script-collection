NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "RPwalk.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Realistic Walking for Immersion",         --optional, for reference
  ["MOD_AUTHOR"]				= "INFPlanet",         --optional, for reference
  ["NMS_VERSION"]				= "0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			-- ["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak", --example, only one pak file here -REQUIRED
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCPLAYERGLOBALS.GLOBAL.MBIN",},  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, must be a file in PAK_FILE_SOURCE
					["EXML_CHANGE_TABLE"] = 
					{
						{
							-- ["PRECEDING_KEY_WORDS"] = {"",}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GroundWalkSpeed",	"2.2"},
								{"GroundRunSpeed",	"6.5"}
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"GCCAMERAGLOBALS.GLOBAL.MBIN",},  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, must be a file in PAK_FILE_SOURCE
					["EXML_CHANGE_TABLE"] = 
					{
						{
							-- ["PRECEDING_KEY_WORDS"] = {"",}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BobAmount",	"0.1"},
								{"BobFactor",	"0.4"}
							}	
						},
					}
				}
			}
		},
	} --1 global replacements
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
