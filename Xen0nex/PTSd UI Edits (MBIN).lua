ModName = "PTSd UI Edits (MBIN)"
GameVersion = "7_03"
Description = "Resizes certain UI elements to fit longer/additional PTSd descriptions. This will always create an .MBIN format mod due to the types of files it edits."


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]		= ModName..GameVersion,
	["MOD_DESCRIPTION"]		= Description,
	["MOD_AUTHOR"]			= "Xen0nex",
	["NMS_VERSION"]			= GameVersion,   
	--["EXML_CREATE"] = "FALSE",  
    ["MODIFICATIONS"] 		= 
    {
	    {
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"UI\BUYSCREEN.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BUY_SLOT_SUB"},
							["REPLACE_TYPE"] 		= "ALL",
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"AllowScroll", "false"},		--"true"
								{"Is Paragraph", "true"},		--"false"
								{"AnimTime", "3"}				--"0.5"
							}
						},
					}
				},
				{--Rearranges UI elements to to fit PTSd's longer Nutrient Ingestor description
					["MBIN_FILE_SOURCE"] 	= {"UI\FOODUNITPAGE.MBIN"},
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BOXGRP",	"Layout", "GcNGuiLayoutData"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"Position X", 183},			--183
								{"Position Y", 253},			--303
								--{"Width", 600},					--600
								{"Height", 270},				--220
								--{"Constrain Aspect", 1.000000},	--1.000000
								--{"Max Width", 0.000000},		--0.000000
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "FOODTEXT",	"Layout", "GcNGuiLayoutData"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"Position X", 165},				--165
								--{"Position Y", 25},				--25
								--{"Width", 430},					--430
								{"Height", 225},				--185
								--{"Constrain Aspect", 1.000000},	--1.000000
								--{"Max Width", 0.000000},		--0.000000
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "FOOD_DESC",	"Layout", "GcNGuiLayoutData"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								--{"Position X", 0},				--0
								--{"Position Y", 0},				--0
								--{"Width", 100},					--100
								{"Height", 150},				--100
								--{"Constrain Aspect", 1.000000},	--1.000000
								--{"Max Width", 0.000000},		--0.000000
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID", "BEGINGRP",	"Layout", "GcNGuiLayoutData"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Position Y", 85.599900},				--82.599900
							}
						},
					}
				},
            }
		}
    }
}