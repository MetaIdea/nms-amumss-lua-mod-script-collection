DIFFUSE_TEXTURES = {
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.0.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.1.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.10.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.11.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.12.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.13.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.14.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.15.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.16.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.17.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.18.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.19.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.2.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.20.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.21.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.22.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.23.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.24.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.3.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.4.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.5.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.6.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.7.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.8.BASE.DDS",
	"CUSTOMTEXTURES/PARAMECIJ/BARK/BARK.9.BASE.DDS",
}

MBIN_CHANGE_TABLE = {}
for i, diffuse in ipairs(DIFFUSE_TEXTURES) do
	table.insert(MBIN_CHANGE_TABLE,{
		["MBIN_FILE_SOURCE"] = {
			"TEXTURES/PLANETS/BIOMES/COMMON/BARK/WOODLANDBARK.TEXTURE.MBIN",
		},
		["EXML_CHANGE_TABLE"] = {
			{
				["SPECIAL_KEY_WORDS"] = {"Name", "BASE"},
				["PRECEDING_KEY_WORDS"] = {"Textures"},
				["ADD"] = [[        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="]].."PARAS_"..i..[[" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Wood" />
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
          <Property name="Diffuse" value="]]..diffuse..[[" />
          <Property name="Normal" value="]]..string.gsub(diffuse,".BASE.DDS",".NORMAL.DDS")..[[" />
          <Property name="Mask" value="TEXTURES/PLANETS/BIOMES/COMMON/BARK/WOODLANDBARK.BASE.1.MASKS.DDS" />
        </Property>]]
			}
		}
	})
end

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "ParasBarkTextures.pak",
  ["MOD_DESCRIPTION"]		= "Adds 25 tree bark textures based on real photography.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = MBIN_CHANGE_TABLE
		},
	}
}