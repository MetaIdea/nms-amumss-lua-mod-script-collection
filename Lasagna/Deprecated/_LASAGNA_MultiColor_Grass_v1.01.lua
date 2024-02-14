
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_LASAGNA_MultiColor_Grass_v1.01.pak",       
["MOD_AUTHOR"]				= "Lasagna",         
["NMS_VERSION"]				= "",     
["MODIFICATIONS"] 			=             
	{
		{
			["PAK_FILE_SOURCE"] 	= "",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				
				--Change altcolor scale and frequency
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"GCTERRAINGLOBALS.GLOBAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["VALUE_CHANGE_TABLE"] 	=
							{			
								{ "TextureBlendScale0",	0.01 }, --0.01 --TINY= 5.0
								{ "TextureBlendScale1",	0.1 }, --1.0 --TINY= 1.0
								{ "TextureBlendScale2",	40 }, --5.0 --TINY= 0.01 --BIG= 10
								{ "TextureBlendOffset",	0.99 }, --.01 --med= 0.25
							}
						},	

					},
				},
				
				
			}
		}
	}	
}	
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE