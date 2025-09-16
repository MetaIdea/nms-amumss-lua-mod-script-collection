AddOverlay =
[[
    <Property name="Layers" value="TkProceduralTextureLayer">
      <Property name="Name" value="OVERLAY" />
      <Property name="Probability" value="0.500000" />
      <Property name="Group" value="" />
      <Property name="SelectToMatchBase" value="false" />
      <Property name="Textures">
        <Property name="Textures" value="TkProceduralTexture">
          <Property name="Name" value="STRIPES" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Leaf" />
            <Property name="ColourAlt" value="Alternative1" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="0.500000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="false" />
          <Property name="OverrideAverageColour" value="false" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/COMMON/LEAVES/FRONDS/FROND.OVERLAY.STRIPES.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture">
          <Property name="Name" value="GRADIENT" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Leaf" />
            <Property name="ColourAlt" value="Alternative1" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="0.500000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="False" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/COMMON/LEAVES/FRONDS/FROND.OVERLAY.GRADIENT.DDS" />
        </Property>
        <Property name="Textures" value="TkProceduralTexture">
          <Property name="Name" value="CELLS" />
          <Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Leaf" />
            <Property name="ColourAlt" value="Alternative1" />
            <Property name="Index" value="-1" />
          </Property>
          <Property name="Probability" value="0.500000" />
          <Property name="TextureGameplayUse" value="IgnoreName" />
          <Property name="Multiply" value="False" />
          <Property name="OverrideAverageColour" value="False" />
          <Property name="AverageColour">
            <Property name="R" value="0.000000" />
            <Property name="G" value="0.000000" />
            <Property name="B" value="0.000000" />
            <Property name="A" value="0.000000" />
          </Property>
          <Property name="TextureName" value="TEXTURES/PLANETS/BIOMES/COMMON/LEAVES/FRONDS/FROND.OVERLAY.CELLS.DDS" />
        </Property>
      </Property>
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] = "LeafOverlays.pak",
  ["MOD_DESCRIPTION"] = "The vanilla Lush tree model will sometimes spawn with the overlays of the pre-NEXT trees, giving them multi colored leaves.",
  ["MOD_AUTHOR"] = "CodenameAwesome",
  ["LUA_AUTHOR"] = "CodenameAwesome/Babscoole",
  ["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =  {
        {
          ["MBIN_FILE_SOURCE"]  = {
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
          ["MXML_CHANGE_TABLE"] = {
            {
              ["PRECEDING_KEY_WORDS"] = {"Layers"},
              ["ADD"] = AddOverlay
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Layers", "TkProceduralTextureLayer"},
              ["SECTION_ACTIVE"] = {2},
              ["REMOVE"] = "SECTION"
            },
          }
        }
      }
    }
  }
}