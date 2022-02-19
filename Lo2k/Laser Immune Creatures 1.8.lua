NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Laser Immune Creatures 1.8.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.70",
["MOD_DESCRIPTION"]			= "This mod makes creature immunized against mining laser",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\DEFAULTREALITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Id","CREATURE","DamageType","Laser",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Multiplier",	"0"}		-- Original "1"   
							}
						},
					}
				}	
			}
		}
	}	
}