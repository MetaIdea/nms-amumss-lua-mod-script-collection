NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MinotaurCameraFix.pak", 
["MOD_AUTHOR"]				= "HowardCLH",
["NMS_VERSION"]				= "4.4",
["MOD_DESCRIPTION"]			= "Adjusts minotaur hardframe camera position",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
								{
								{"MechCameraArmShootOffsetY",	"1.6"},  --original "1"
								}
						},
						{
						["PRECEDING_KEY_WORDS"] = {"MechFollowCam"},
								["INTEGER_TO_FLOAT"]	= "FORCE",
								["VALUE_CHANGE_TABLE"] 	= 
									{
									{"OffsetY",	"1.6"},			--original "-0.5",
									{"OffsetX",	"2.6"},	 		--original "2.2",
									{"UpMinDistance",	"0"},	--original "-1",
									{"BackMinDistance",	"8"}	--original "6.5",
									},
						},
						{
						["PRECEDING_KEY_WORDS"] = {"MechCombatCam"},
								["INTEGER_TO_FLOAT"]	= "FORCE",
								["VALUE_CHANGE_TABLE"] 	= 
									{
									{"OffsetY",	"1.6"}, 		--original "-1",
									{"OffsetX",	"2.6"},  		--original "5",
									{"UpMinDistance",	"0"},	--original "-1",
									{"BackMinDistance",	"8"} 	--original "6.5",
									},
						},
					}
				}
			}
		}
	}	
}