NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "Hyperdrive_x100000000.pak",
["MOD_AUTHOR"]		= "Jordan AKA twiggza",
["NMS_VERSION"]		= "2.0+",
["MOD_DESCRIPTION"]	= "Change the hyperdrive warp distance bonus to 100000000 Light Years",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{

						{
							["SPECIAL_KEY_WORDS"] = {"ID","HYPERDRIVE",},
							["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"100000000"}		-- Original "100"   
							}
						
						}
					}
				}	
			}
		}
	}	
}
