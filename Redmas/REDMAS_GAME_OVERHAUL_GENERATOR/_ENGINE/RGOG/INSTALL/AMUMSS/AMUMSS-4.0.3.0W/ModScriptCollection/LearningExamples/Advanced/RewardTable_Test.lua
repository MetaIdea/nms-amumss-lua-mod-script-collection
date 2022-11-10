--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "RewardTable_Test.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN",},  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, must be a file in PAK_FILE_SOURCE
					["EXML_CHANGE_TABLE"] = 
					{
						{ --to target only this 'AmountMin'
              ["SPECIAL_KEY_WORDS"]   = {"Id","CAPFRT_STAND",},
							["PRECEDING_KEY_WORDS"] = {"List","GcRewardTableItem.xml","GcRewardTableItem.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin",	"4"},
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{ --to target ALL 'AmountMin' WHERE <Property name="Currency" value="Nanites" />
							["PRECEDING_KEY_WORDS"] = {"GcRewardTableItem.xml",},
							["REPLACE_TYPE"]        = "ALL",
              ["WHERE_IN_SECTION"]    = {
                {"Currency","Nanites"},
              },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin",	"4"},
							},	
						},
					}
				},
			}
		}, --32 global replacements
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE