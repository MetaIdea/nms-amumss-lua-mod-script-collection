NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] = "Spacefarer-LeafOverlays.pak",
  ["MOD_DESCRIPTION"] = "The vanilla Lush tree model will sometimes spawn with the overlays of the pre-NEXT trees, giving them multi colored leaves.",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =  {
				{
					["MBIN_FILE_SOURCE"] 	= {"TEXTURES/PLANETS/BIOMES/COMMON/LEAVES/FRONDS/FROND.TEXTURE.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","OVERLAY"},
							["SEC_COPY"] = "overlays"
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {
						"TEXTURES\PLANETS\BIOMES\COMMON\LEAVES\HQLEAVES\HQFROND1.TEXTURE.MBIN",
						"TEXTURES\PLANETS\BIOMES\COMMON\LEAVES\HQLEAVES\HQFROND10.TEXTURE.MBIN",
						--"TEXTURES\PLANETS\BIOMES\COMMON\LEAVES\HQLEAVES\HQFROND2.TEXTURE.MBIN",
						"TEXTURES\PLANETS\BIOMES\COMMON\LEAVES\HQLEAVES\HQFROND3.TEXTURE.MBIN",
						"TEXTURES\PLANETS\BIOMES\COMMON\LEAVES\HQLEAVES\HQFROND4.TEXTURE.MBIN",
						"TEXTURES\PLANETS\BIOMES\COMMON\LEAVES\HQLEAVES\HQFROND5.TEXTURE.MBIN",
						"TEXTURES\PLANETS\BIOMES\COMMON\LEAVES\HQLEAVES\HQFROND6.TEXTURE.MBIN",
						"TEXTURES\PLANETS\BIOMES\COMMON\LEAVES\HQLEAVES\HQFROND7.TEXTURE.MBIN",
						"TEXTURES\PLANETS\BIOMES\COMMON\LEAVES\HQLEAVES\HQFROND8.TEXTURE.MBIN",
						"TEXTURES\PLANETS\BIOMES\COMMON\LEAVES\HQLEAVES\HQFROND9.TEXTURE.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SEC_EDIT"] = "overlays",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"Probability",0.5}
							},
						},
						{
							["SEC_EDIT"] = "overlays",
							["VALUE_MATCH"] = "TkPaletteTexture.xml",
							["VALUE_MATCH_OPTIONS"] = "~=",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Palette","Plant"}
							}
							
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Layers"},
							["SEC_ADD_NAMED"] = "overlays"
						},
						{
							["PRECEDING_KEY_WORDS"] = {"TkProceduralTextureLayer.xml","TkProceduralTextureLayer.xml","TkProceduralTextureLayer.xml"},
							["REMOVE"] = "SECTION"
						},	
					}
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE