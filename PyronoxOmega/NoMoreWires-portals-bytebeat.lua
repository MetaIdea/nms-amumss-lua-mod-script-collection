NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "NoMoreWires-Byte-teleport.pak",
["MOD_AUTHOR"]				= "Pyronox Omega",
["NMS_VERSION"]				= "3.91",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
						{
							"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\CONDUIT_BYTEBEAT\BYTEWIRESCROLLEFFECTMAT.MATERIAL.MBIN"
						    
						},	
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map",	""},				
							}
						},
						
						
					}
				},	

				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\UTILITYPARTS\CONDUIT_PORTALWIRE\TELEPORTERSCROLLEFFECTMAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map",	""},
								{"Shader",	""},								
							}
						},
					}
				},


				
			}
		}
	}	
}