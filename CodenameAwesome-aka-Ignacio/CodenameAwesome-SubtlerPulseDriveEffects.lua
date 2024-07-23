NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "SubtlerPulseDriveEffects.pak",
  ["MOD_DESCRIPTION"]		= "Speed and pulse lines now spawn further away, making the effect less intense and more integrated. The white streaks on the edges of the screen when flying have been removed.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] 	= {
						"MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES.SPEEDLINE.MBIN",
						"MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN",
						"MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN",
						"MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES4.SPEEDLINE.MBIN",
						"MODELS/EFFECTS/SPEEDLINES/SPACE.SPEEDLINE.MBIN",
						"MODELS/EFFECTS/SPEEDLINES/SPACE2.SPEEDLINE.MBIN",
						"MODELS/EFFECTS/SPEEDLINES/SPACEBIG.SPEEDLINE.MBIN",
					},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RemoveCylinderRadius", 5},
								{"Radius", 5},
								{"NumberOfParticles", 5},
								{"Lifetime", 5},
								{"Alpha", 0.5},
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS/EFFECTS/WARP/SPEEDTUNNEL/SPEEDTUNNELMAT.MATERIAL.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gMaterialColourVec4"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"t",	"0"}
							}
						}
					}
				}
			}
		}
	}
}