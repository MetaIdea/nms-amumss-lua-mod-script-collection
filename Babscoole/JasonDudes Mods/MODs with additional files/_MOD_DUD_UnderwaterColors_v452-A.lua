--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_DUD_UnderwaterColors_v452-A.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.52",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\BIOMES\UNDERWATER\LARGEPLANTS\LARGESTRANDS\LONGSTRANDS01_MAT.MATERIAL.MBIN",
                        "MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPLANTS\MEDIUMSEAPLANT\LONGSTRANDS01_MAT.MATERIAL.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Class", "Opaque"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkMaterialFlags.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Flags"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F01_DIFFUSEMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F03_NORMALMAP" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F31_DISPLACEMENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F40_SUBSURFACE_MASK" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F61_CLAMP_AMBIENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F27_VBTANGENT" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialColourVec4"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "1"},
                                {"y", "1"},
                                {"z", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Samplers"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gDiffuseMap" />
      <Property name="Map" value="TEXTURES/PLANETS/OCEAN/SHRUBS/TALLPLANTDUD1.BASE.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="True" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gMasksMap" />
      <Property name="Map" value="TEXTURES/PLANETS/OCEAN/SHRUBS/TALLPLANTDUD1.BASE.MASKS.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
    <Property value="TkMaterialSampler.xml">
      <Property name="Name" value="gNormalMap" />
      <Property name="Map" value="TEXTURES/PLANETS/OCEAN/SHRUBS/TALLPLANTDUD1.BASE.NORMAL.DDS" />
      <Property name="IsCube" value="False" />
      <Property name="UseCompression" value="True" />
      <Property name="UseMipMaps" value="True" />
      <Property name="IsSRGB" value="False" />
      <Property name="MaterialAlternativeId" value="" />
      <Property name="TextureAddressMode" value="Wrap" />
      <Property name="TextureFilterMode" value="Trilinear" />
      <Property name="Anisotropy" value="0" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\GASBAGS\MONOLITHMAT.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
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
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\DUDGASBAGSTEXTURES.TEXTURE.EXML",
             ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="BioShip_Cockpit" />
            <Property name="ColourAlt" value="Alternative2" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="Alternative2" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Dirt" />
            <Property name="ColourAlt" value="Alternative2" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\DUDSMOOTHERGRADIENTMASK.TEXTURE.EXML",
             ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="BioShip_Cockpit" />
            <Property name="ColourAlt" value="Alternative2" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="Alternative2" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Dirt" />
            <Property name="ColourAlt" value="Alternative2" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/DUDGASBAGSTEXTURES.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\GLOWTEXTURE.TEXTURE.EXML",
             ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="BASE.1" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Crystal" />
            <Property name="ColourAlt" value="Alternative1" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/GLOWTEXTURE.BASE.1.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/GLOWTEXTURE.BASE.1.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/GLOWTEXTURE.BASE.1.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\LAMPORB.TEXTURE.EXML",
             ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="BASE" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Crystal" />
            <Property name="ColourAlt" value="Primary" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LAMPORB.BASE.DDS" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LAMPORB.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\LARGESHAPE.TEXTURE.EXML",
             ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="BASE" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Sand" />
            <Property name="ColourAlt" value="Alternative2" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LARGESHAPE.BASE.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LARGESHAPE.NORMAL.DDS" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LARGESHAPE.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\LEAVESTEXTURE.TEXTURE.EXML",
             ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="1.BASE" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Leaf" />
            <Property name="ColourAlt" value="Alternative2" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LEAVESTEXTURE.1.BASE.DDS" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/UNDERWATER/UPDATEPROPS/LEAVESTEXTURE.1.MASKS.DDS" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "TEXTURES\PLANETS\OCEAN\SHRUBS\TALLPLANTDUD1.TEXTURE.EXML",
             ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkProceduralTextureList">
  <Property name="Layers">
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="BASE" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures">
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Plant" />
            <Property name="ColourAlt" value="Alternative3" />
          </Property>
          <Property name="Probability" value="1" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour" value="Colour.xml">
            <Property name="R" value="0" />
            <Property name="G" value="0" />
            <Property name="B" value="0" />
            <Property name="A" value="0" />
          </Property>
          <Property name="Diffuse" value="TEXTURES/PLANETS/OCEAN/SHRUBS/TALLPLANTDUD1.BASE.DDS" />
          <Property name="Normal" value="TEXTURES/PLANETS/OCEAN/SHRUBS/TALLPLANTDUD1.BASE.NORMAL.DDS" />
          <Property name="Mask" value="" />
        </Property>
      </Property>
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
    <Property value="TkProceduralTextureLayer.xml">
      <Property name="Name" value="" />
      <Property name="Probability" value="1" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="False" />
      <Property name="Textures" />
    </Property>
  </Property>
</Data>
]],
        },
    },
}