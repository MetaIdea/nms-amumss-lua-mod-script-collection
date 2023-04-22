
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Mans Land Launchfuel Launchsub Jelly illegal", 
["MOD_AUTHOR"]				= "Youngneil1",				
["NMS_VERSION"]				= "4.22",
["MOD_DESCRIPTION"]			= "This mods classifies Launfuel, Lauchsub (Di-Hydrogen) and Jelly (Di-Hydro Jeely).",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHFUEL"},				
							["PRECEDING_KEY_WORDS"] = {"LEGAL"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Legality",	"Illegal"}			
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "JELLY"},				
							["PRECEDING_KEY_WORDS"] = {"LEGAL"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Legality",	"Illegal"}			
							}
						}
					}
				}	
			}
		},
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{	
							["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHSUB"},				
							["PRECEDING_KEY_WORDS"] = {"LEGAL"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Legality",	"Illegal"}			
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CAVE1"},				
							["PRECEDING_KEY_WORDS"] = {"LEGAL"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Legality",	"Illegal"}			
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CAVE2"},				
							["PRECEDING_KEY_WORDS"] = {"LEGAL"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Legality",	"Illegal"}			
							}
						},
						{
						
							["SPECIAL_KEY_WORDS"] = {"ID", "CATALYST1"},				
							["PRECEDING_KEY_WORDS"] = {"LEGAL"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Legality",	"Illegal"}			
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "CATALYST2"},				
							["PRECEDING_KEY_WORDS"] = {"LEGAL"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Legality",	"Illegal"}			
							}
						}
					}
				}	
			}
		}
		
	}	
}
