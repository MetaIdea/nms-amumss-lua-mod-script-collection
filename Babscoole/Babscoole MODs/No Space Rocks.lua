NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	  = "No Space Rocks",
["MOD_AUTHOR"]		  = "Babscoole",
["NMS_VERSION"]		  = "6.00",
["MOD_DESCRIPTION"]	= "Disables all Asteroids",
["MODIFICATIONS"]  	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{	
								{"Asteroids Enabled", "false"}, --Original "true"
							}
						}
					}
				}
			}
		}
	}	
}	