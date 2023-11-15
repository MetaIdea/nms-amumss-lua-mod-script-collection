NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "SmokeNotSteam.pak",
  ["MOD_DESCRIPTION"]		= "Makes tech debris emit dark smoke instead of white vapor.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS/EFFECTS/SMOKE/DEBRISSMOKE/SMOKE.MATERIAL.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Class", "Translucent"},
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {
						"MODELS/EFFECTS/SMOKE/DEBRISSMOKE/SMOKE.PARTICLE.MBIN",
						"MODELS/EFFECTS/SMOKE/DEBRISSMJET/SMOKEJETBASE.PARTICLE.MBIN",
						"MODELS/EFFECTS/SMOKE/DEBRISGENERALMIST/SMOKE.PARTICLE.MBIN",
					},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"EmissionRate"},
							["MATH_OPERATION"] = "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FixedValue",	3},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ColourStart"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	0.25},
								{"G",	0.25},
								{"B",	0.25},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ColourMiddle"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	0.25},
								{"G",	0.25},
								{"B",	0.25},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ColourEnd"},
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"R",	0.25},
								{"G",	0.25},
								{"B",	0.25},
							}	
						},
					}
				},
			}
		},
	}
}