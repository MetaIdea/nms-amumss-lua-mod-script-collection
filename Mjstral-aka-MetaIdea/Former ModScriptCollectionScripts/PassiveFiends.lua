NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "PassiveFiends.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Completely Passive fiends, they won't attack you ever",         --optional, for reference
  ["MOD_AUTHOR"]				= "Easternfps2016",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCCREATUREGLOBALS.MBIN",},  --{ a_comma_separated_list_of.MBINs, }
					["EXML_CHANGE_TABLE"] = 
					{
						{
							-- ["PRECEDING_KEY_WORDS"] = {"",}, --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FiendsCanAttack",	"False"},
								{"FiendMaxAttackers",	"0"},
								{"FiendPerceptionDistance",	"0"},
							}	
						},
					}
				},
			}
		},
	} --3 global replacements
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
