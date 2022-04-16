NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "QuickSilver-1000PerMission.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "This Mod makes it so quicksilver missions give 1000 Quicksilver instead of 250",         --optional, for reference
  ["MOD_AUTHOR"]			= "Tyler9400",         --optional, for reference  
  ["MOD_VERSION"]           = "1.0", --optional, for reference
  ["NMS_VERSION"]			= "3.10",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			-- ["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak", --example, only one pak file here -OPTIONAL
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\SIMULATION\MISSIONS\COMMUNITYMISSIONTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_NP09_HANDIN"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin", "1000"}, -- Original Value = 250
								{"AmountMax", "1000"}, -- Original Value = 250
							}

						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","R_NEXUS_QS"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin", "1000"}, -- Original Value = 250
								{"AmountMax", "1000"}, -- Original Value = 250
							}

						},
					}
				},
			} -- 1 global replacements
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERET9400