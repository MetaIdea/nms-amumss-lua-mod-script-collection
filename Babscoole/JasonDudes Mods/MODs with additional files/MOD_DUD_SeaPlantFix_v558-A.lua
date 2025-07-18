--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_SeaPlantFix_v558-A",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.58",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "MODELS\PLANETS\BIOMES\UNDERWATER\INTERACTIVE\FISHFIENDROCK\ALPHASTRANDS_MAT.MATERIAL.MBIN",
                        "MODELS\PLANETS\BIOMES\UNDERWATER\LARGEPROP\UNDERWATERBOULDER\ALPHASTRANDS_MAT.MATERIAL.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuseMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.BASEO.1.DDS"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMasksMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.BASEO.1.MASKS.DDS"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gNormalMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.BASEO.1.NORMAL.DDS"}
                            }
                        },
                        
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "MODELS\PLANETS\BIOMES\UNDERWATER\LARGEPLANTS\LARGESTRANDS\ALPHASTRANDS_MAT.MATERIAL.MBIN",
                        "MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\FLOATPLANT\ALPHASTRANDS_MAT.MATERIAL.MBIN",
                        "MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\MEDIUMSEAPLANT\ALPHASTRANDS_MAT.MATERIAL.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuseMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.DDS"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMasksMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.MASKS.DDS"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gNormalMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.NORMAL.DDS"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\FLOATPLANT\FLOATLEAF_MAT.MATERIAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuseMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.DDS"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMasksMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.MASKS.DDS"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gNormalMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.NORMAL.DDS"}
                            }
                        },
                    }
                },
            }
        },
   },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANT\DUDALPHASTRANDSTILE.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="MATCH" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="true" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="1" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Alternative1" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.MATCH.1.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="1">
					<Property name="Name" value="2" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Alternative1" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.MATCH.2.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="2">
					<Property name="Name" value="3" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Alternative1" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.MATCH.3.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="3">
					<Property name="Name" value="4" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Alternative1" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.MATCH.4.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="4">
					<Property name="Name" value="5" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Alternative1" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.MATCH.5.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="BASE" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="1" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.BASEO.1.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="1">
					<Property name="Name" value="2" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.BASEO.2.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="2">
					<Property name="Name" value="3" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.BASEO.3.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="3">
					<Property name="Name" value="4" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.BASEO.4.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="4">
					<Property name="Name" value="5" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDALPHASTRANDSTILE.BASEO.5.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANT\DUDFLOATLEAF.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="COLOUR" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="1" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Alternative1" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.COLOUR.1.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="1">
					<Property name="Name" value="2" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Alternative1" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.COLOUR.2.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="BASEI" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="1" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.BASEI.1.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="1">
					<Property name="Name" value="2" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.BASEI.2.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="2">
					<Property name="Name" value="3" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.BASEI.3.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="3">
					<Property name="Name" value="4" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.BASEI.4.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="4">
					<Property name="Name" value="5" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Plant" />
						<Property name="ColourAlt" value="Primary" />
						<Property name="Index" value="-1" />
					</Property>
					<Property name="Probability" value="1.000000" />
					<Property name="TextureGameplayUse" value="IgnoreName" />
					<Property name="Multiply" value="false" />
					<Property name="OverrideAverageColour" value="false" />
					<Property name="AverageColour">
						<Property name="R" value="0.000000" />
						<Property name="G" value="0.000000" />
						<Property name="B" value="0.000000" />
						<Property name="A" value="0.000000" />
					</Property>
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/MEDIUMPLANT/DUDFLOATLEAF.BASEI.5.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="2">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="3">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="4">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="5">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="6">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="7">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
		</Property>
	</Property>
</Data>
]],
        },
    },
}