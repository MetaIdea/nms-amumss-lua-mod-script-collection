NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "AlienWordsInEnglish.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "makes all unlearned words show as english instead alien, does not prevent learning words",         --optional, for reference
  ["MOD_AUTHOR"]				= "Easternfps2016",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			-- ["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak", --example, only one pak file here -REQUIRED
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCDEBUGOPTIONS.GLOBAL.MBIN",},  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, must be a file in PAK_FILE_SOURCE
					["EXML_CHANGE_TABLE"] = 
					{
						{
							-- ["PRECEDING_KEY_WORDS"] = {"",}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DoAlienLanguage",	"False"},
							}	
						},
					}
				},
			}
		},
	} --1 global replacements
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE