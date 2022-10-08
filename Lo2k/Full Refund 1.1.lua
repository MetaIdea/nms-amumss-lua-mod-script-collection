NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Full Refund 1.1.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.0",
["MOD_DESCRIPTION"]			= "This mods changes refund from 50% to 100%",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN", "METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DeconstructRefundPercentage",	"1.0"}  --original 0.5
							}
						}
					}
				}	
			}
		}
	}	
}