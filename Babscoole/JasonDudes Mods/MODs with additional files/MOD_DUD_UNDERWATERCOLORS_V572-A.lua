--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_UNDERWATERCOLORS_V572-A",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.72",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                      "MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\CRYSTALSSHAPE\CRYSTALGLOWMAT.MATERIAL.MBIN",
                      "MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\CRYSTALSSHAPELARGE\CRYSTALGLOWMAT.MATERIAL.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuseMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGLOWTEXTURE.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMasksMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGLOWTEXTURE.MASKS.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gNormalMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGLOWTEXTURE.NORMAL.DDS"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\LAMPSHAPE\FLOATGLOWMAT.MATERIAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuseMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGLOWTEXTURE.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuseMap"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
		<Property name="Samplers" value="TkMaterialSampler">
			<Property name="Name" value="gMasksMap" />
			<Property name="Map" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGLOWTEXTURE.MASKS.DDS" />
			<Property name="IsCube" value="false" />
			<Property name="UseCompression" value="true" />
			<Property name="UseMipMaps" value="true" />
			<Property name="IsSRGB" value="false" />
			<Property name="MaterialAlternativeId" value="" />
			<Property name="TextureAddressMode" value="Wrap" />
			<Property name="TextureFilterMode" value="Trilinear" />
			<Property name="Anisotropy" value="0" />
		</Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gNormalMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGLOWTEXTURE.NORMAL.DDS"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\GASBAGS\MONOLITHMAT.MATERIAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuseMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gDiffuse2Map"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDSMOOTHERGRADIENTMASK.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMasksMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.MASKS.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMasks2Map"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDSMOOTHERGRADIENTMASK.MASKS.DDS"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gNormalMap"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.NORMAL.DDS"},
                            }
                        },
                    }
                },
            }
        }
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="BioShip_Cockpit" />
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
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="1">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Rock" />
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
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="2">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Dirt" />
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
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
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
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGLOWTEXTURE.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Crystal" />
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
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGLOWTEXTURE.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
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
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDSMOOTHERGRADIENTMASK.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="BioShip_Cockpit" />
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
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDSMOOTHERGRADIENTMASK.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="1">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Rock" />
						<Property name="ColourAlt" value="Alternative2" />
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
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDSMOOTHERGRADIENTMASK.DDS" />
				</Property>
				<Property name="Textures" value="TkProceduralTexture" _index="2">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Dirt" />
						<Property name="ColourAlt" value="Alternative2" />
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
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDSMOOTHERGRADIENTMASK.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
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
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LARGESHAPE.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures">
				<Property name="Textures" value="TkProceduralTexture" _index="0">
					<Property name="Name" value="" />
					<Property name="Palette" value="TkPaletteTexture">
						<Property name="Palette" value="Sand" />
						<Property name="ColourAlt" value="Alternative2" />
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
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LARGESHAPE.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
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
]]
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LEAVESTEXTURE.TEXTURE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkProceduralTextureList">
	<Property name="AlwaysEnableUnnamedTextureLayers" value="false" />
	<Property name="Layers">
		<Property name="Layers" value="TkProceduralTextureLayer" _index="0">
			<Property name="Name" value="" />
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
					<Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LEAVESTEXTURE.1.DDS" />
				</Property>
			</Property>
		</Property>
		<Property name="Layers" value="TkProceduralTextureLayer" _index="1">
			<Property name="Name" value="" />
			<Property name="Probability" value="1.000000" />
			<Property name="Group" value="" />
			<Property name="SelectToMatchBase" value="false" />
			<Property name="Textures" />
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
]]
        },
    },
}