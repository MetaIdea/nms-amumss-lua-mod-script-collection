NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "BetterStarColors.pak",
  ["MOD_DESCRIPTION"] = "Gives stars in the galaxy map brighter colors, most notably changes blue stars to cyan.",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCGALAXYGLOBALS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours","Yellow"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"1"},
								{"G",	"1"},
								{"B",	"0"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours","Green"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"1"},
								{"B",	"0"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours","Blue"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"0"},
								{"G",	"1"},
								{"B",	"1"},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BaseStarDefaultColours","Red"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	"1"},
								{"G",	"0"},
								{"B",	"0"},
							}	
						},
						
					}
				},
			}
		},
	}
}
