NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "RefinerMinMaxButtons.pak",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "4.04+",
["MOD_DESCRIPTION"]	= "Adds Min/Max buttons to the refiner UI",
["GLOBAL_INTEGER_TO_FLOAT"]	= "FORCE",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"]	= "UI/REFINERPAGE.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "BUTTONMAX"},
							["VALUE_CHANGE_TABLE"]	= 
							{	
								{ "isHidden", "False" },				
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "BUTTONMIN"},
							["VALUE_CHANGE_TABLE"]	= 
							{	
								{ "isHidden", "False" },				
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "BEGINGRP"},
							["SECTION_UP_SPECIAL"]	= 1,
							["PRECEDING_KEY_WORDS"]	= "ElementData",
							["SECTION_ACTIVE"]		= 2,
							["VALUE_CHANGE_TABLE"]	= 
							{	
								{"PositionX", "1500.6"},				
								{"Width", "193"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "BEGINGRP"},
							["SECTION_UP_SPECIAL"]	= 1,
							["PRECEDING_KEY_WORDS"]	= "ElementData",
							["SECTION_ACTIVE"]		= 3,
							["VALUE_CHANGE_TABLE"]	= 
							{	
								{"PositionX", "1500.6"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "BEGINGRP"},
							["SECTION_UP_SPECIAL"]	= 1,
							["PRECEDING_KEY_WORDS"]	= "ElementData",
							["SECTION_ACTIVE"]		= {4, 5},
							["VALUE_CHANGE_TABLE"]	= 
							{	
								{"IsHidden", "False"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "BEGINGRP"},
							["SECTION_UP_SPECIAL"]	= 1,
							["PRECEDING_KEY_WORDS"]	= "ElementData",
							["SECTION_ACTIVE"]		= 6,
							["VALUE_CHANGE_TABLE"]	= 
							{	
								{"PositionX", "1692.4"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "BUTTONLEFT"},
							["VALUE_CHANGE_TABLE"]	= 
							{	
								{"PositionX", "1535.8"},				
								{"PositionY", "607.4"},				
								{"Width", "58"},				
								{"AnchorPercent", "False"},				
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"ID", "BUTTONRIGHT"},
							["VALUE_CHANGE_TABLE"]	= 
							{	
								{"Width", "58"},				
							}
						},
					},
				}, 
			},
		}
	}	
}