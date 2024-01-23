--see also scripts in Advanced folder

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "ZZZsome.pak",      --the name of the pak created (if not combined) - REQUIRED - "ZZZ" to make it load ~last
  ["MOD_AUTHOR"]				= "ItIsMe",           --optional, for reference only
  ["MOD_DESCRIPTION"]		= "anything goes",    --optional, for reference only
  ["NMS_VERSION"]				= "1.77",             --optional, for reference only
  ["MODIFICATIONS"] 		=                     --REQUIRED SECTION
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak", --only one pak file here -OPTIONAL
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= { "?\?.MBIN", }  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, if this section is used
          ["REGEXBEFORE"]       =
						{
							{"",""},
						},
					["EXML_CHANGE_TABLE"] = 
					{
						{
              ["SPECIAL_KEY_WORDS"]   = {"", ""},	--can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["PRECEDING_KEY_WORDS"] = "",	      --can be missing (if not used) or "" or {"",} or { a comma separated list of key_words }, see Script_Rules.txt
							["WHERE"] 	= 	--NOT YET IMPLEMENTED
							{
								{"",	""},
							},	
							["MATH_OPERATION"] 		  = "",       --see commented math operation example, see Script_Rules.txt
							["REPLACE_TYPE"] 		    = "",       --can be missing (if not used) or "", "ALL" or "RAW", see Script_Rules.txt
							["VALUE_MATCH"] 		    = "",       --can be missing (if not used) or "", a literal value (string or number), see Script_Rules.txt
							["VALUE_MATCH_TYPE"] 	  = "",       --can be missing (if not used) or "", "number", "string", see Script_Rules.txt
							["LINE_OFFSET"] 		    = "",	      --can be missing (if not used) or +/- an integer number of lines, see Script_Rules.txt
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"",	""}, 		-- Original   --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							},	
							["ADD"] 				= [[NEW TEXT TO ADD HERE]]    --adds the text inserted between the double-brackets or a simple string inside double-quotes
							
              --PLEASE, note if you use both ADD and REMOVE inside the same EXML_CHANGE_TABLE
              --the TEXT will be "added" AND "removed" (the LINE or the SECTION)
              ["REMOVE"] 			= ""                --removes the section pointed to by the keywords
						},
					}
          ["REGEXAFTER"]        =
						{
							{"",""},
						},
				},
			}
		}, --other PAK_FILE_SOURCE sections can be added here, see Multi_PAK_Multi_MBIN_Example_Mod.lua in Advanced folder
	},	
  ["ADD_FILES"] 			= 
	{
		{
			["FILE_DESTINATION"] 		= "\.EXML",
			["EXTERNAL_FILE_SOURCE"] 	= "",
			["FILE_CONTENT"] 	= 
[[
NEW TEXT TO ADD HERE	
]]
		},		
	},
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE