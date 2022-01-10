NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "NoSpaceFog.pak",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "3.75+",
["MOD_DESCRIPTION"]	= "Removes space fog",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							-- no more weird space fog
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"SpaceFogStrength", "0"},		--Original "0.04"
							},
						},
					},
				}, 
			},
		}
	}	
}