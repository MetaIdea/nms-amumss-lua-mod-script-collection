NEW_COLOR1 =
[[
        <Property name="Textures" value="TkProceduralTexture">
          <Property name="Name" value="GREEN" />
					<Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
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
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAY.GREEN.PNG" />
        </Property>
]]

NEW_COLOR2 =
[[
        <Property name="Textures" value="TkProceduralTexture">
          <Property name="Name" value="DARK" />
					<Property name="Palette" value="TkPaletteTexture">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
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
          <Property name="TextureName" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAY.DARK.PNG" />
        </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]    = "True Royal LITE (No Trims)",
  ["MOD_AUTHOR"]      = "courtycat and Babscoole",
  ["MOD_DESCRIPTION"] = "Adds New colors to exotic ships",
  ["NMS_VERSION"]     = "6.10",
  ["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] = "TEXTURES\COMMON\SPACECRAFT\S-CLASS\ROYALSCLASS_TRIM.TEXTURE.MBIN",
					["MXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BLUE"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TextureName", "TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAY.BLUE.PNG"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BLUE"},
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = NEW_COLOR1
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "RED"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TextureName", "TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAY.RED.PNG"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "DEFAULT"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TextureName", "TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAY.DEFAULT.PNG"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BROWN"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TextureName", "TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAY.BROWN.PNG"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "BROWN"},
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = NEW_COLOR2
						},
					}
				},
			}
		},
	}
}
