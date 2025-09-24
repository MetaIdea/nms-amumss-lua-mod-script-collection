NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "NoBarter",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "6.05.2",
["MOD_DESCRIPTION"]	= "Disable bartering and use normal trading instead",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\DEFAULTREALITY.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"] = "ALL",
							["VCT"]	= {
								{"UseBarterForBuy", "false"}
							},
						},
					},
				},
			}
		}
	}	
}	