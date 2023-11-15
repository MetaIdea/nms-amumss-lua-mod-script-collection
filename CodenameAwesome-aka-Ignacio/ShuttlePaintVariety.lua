NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "ShuttlePaintVariety.pak",
  ["MOD_DESCRIPTION"] = "Adds a chance for colorful, fully painted shuttle class ships to spawn.",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"TEXTURES/COMMON/SPACECRAFT/SHUTTLE/SHARED/SHUTTLE.TEXTURE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","PAINT"},
							["PRECEDING_KEY_WORDS"] = {"TkProceduralTexture.xml"},
							["SEC_SAVE_TO"] = "PAINT_TEX",
							["SEC_KEEP"] = "TRUE"	
						},
						{
							["SEC_EDIT"] = {"PAINT_TEX"},
							["SPECIAL_KEY_WORDS"] = {"Palette", "Metal"},
							["VALUE_MATCH"]     = "TkPaletteTexture.xml",
							["VALUE_MATCH_OPTIONS"] = "~=",
							["VALUE_CHANGE_TABLE"] = {
								{"Palette","Paint"},
								{"ColourAlt","Alternative1"},
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name","PAINT"},
							["PRECEDING_KEY_WORDS"] = {"Textures"},
							["SEC_ADD_NAMED"] = "PAINT_TEX"
						}
					}
				},
			}
		},
	}
}
