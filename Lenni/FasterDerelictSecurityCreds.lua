NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "FasterDerelictSecurityCreds",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "6.45.1",
["MOD_DESCRIPTION"]	= "Extremely increases the chance to get the derelict freighter security credentials from a data pad",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							-- set the chance for FreighterPassword to 100000
							["SKW"] = {"Id", "R_ABAND_NAN", "ProceduralProductCategory", "FreighterPassword"},
							["SECTION_UP"] = 3,
							["VCT"] = {
								{"PercentageChance", "100000"},
							},
						},
					},
				},
			}
		}
	}	
}	