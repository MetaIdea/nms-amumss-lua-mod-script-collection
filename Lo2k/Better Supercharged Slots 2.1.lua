NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Supercharged Slots 2.1.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.51",
["MOD_DESCRIPTION"]			= "This mods reduces clicks and keys press duration",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{	-- frame color 1
							["PRECEDING_KEY_WORDS"] = {"SuperchargeGradientBaseColour",},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"1"},	--original 0.82
								{"G",	"1"},	--original 0.738
								{"B",	"1"},	--original 0.923
							}
						},
						{  -- frame color 2
							["PRECEDING_KEY_WORDS"] = {"SuperchargeGradientBlendColour",},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"1"},	--original 0.294
								{"G",	"0.2"},	--original 0.643
								{"B",	"0.0"},	--original 0.993
							}
						},
						{	--Icon background color
							["PRECEDING_KEY_WORDS"] = {"SuperchargeGradientTechColour",},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"1"},	--original 0.503	
								{"G",	"0.2"},--original 0.134	
								{"B",	"0.0"},	--original 0.793	
							}
						},
						{	--Misc.
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"SuperchargeGradientFactorMin",	"0"},	--original 0.1
								{"SuperchargeGradientFactor",		"2"},	--original 0.8
							}
						},
					}
				}
			}
		}
	}	
}