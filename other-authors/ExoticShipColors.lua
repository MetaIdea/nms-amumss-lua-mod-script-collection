NEW_COLORS = 
[[
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="DARK" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
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
          <Property name="Diffuse" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAY.DARK.PNG" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.BASE.MASKS.DDS" />
        </Property>
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="GREEN" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
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
          <Property name="Diffuse" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAY.GREEN.PNG" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.BASE.MASKS.DDS" />
        </Property>
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="CYAN" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
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
          <Property name="Diffuse" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAY.CYAN.PNG" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.BASE.MASKS.DDS" />
        </Property>
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="NOIR" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
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
          <Property name="Diffuse" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAY.NOIR.PNG" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.BASE.MASKS.DDS" />
        </Property>
        <Property value="TkProceduralTexture.xml">
          <Property name="Name" value="GOLDEN" />
          <Property name="Palette" value="TkPaletteTexture.xml">
            <Property name="Palette" value="Rock" />
            <Property name="ColourAlt" value="None" />
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
          <Property name="Diffuse" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAY.GOLDEN.PNG" />
          <Property name="Normal" value="" />
          <Property name="Mask" value="TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.BASEMETAL.MASKS.PNG" />
        </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] = "ExoticShipColors_v1.7.pak",
  ["MOD_AUTHOR"] = "Original work by courtykat, scripted into LUA by Weasel",
  ["MOD_DESCRIPTION"] =
  [[
  Adds New colors to exotic ships
  ]],
  ["NMS_VERSION"] = "3.87", --NMS version when this script was created
  ["ADD_FILES"] 		= {
	{
			["FILE_DESTINATION"] 		= [[TEXTURES/COMMON/SPACECRAFT/S-CLASS//ROYALSCLASS_TRIM.BASEMETAL.MASKS.PNG]],
			["EXTERNAL_FILE_SOURCE"] 	= "ROYALSCLASS_TRIM.BASEMETAL.MASKS.PNG",
	},
	{
			["FILE_DESTINATION"] 		= [[TEXTURES/COMMON/SPACECRAFT/S-CLASS//ROYALSCLASS_TRIM.OVERLAY.BLUE.PNG]],
			["EXTERNAL_FILE_SOURCE"] 	= "ROYALSCLASS_TRIM.OVERLAY.BLUE.PNG",
	},
	{
			["FILE_DESTINATION"] 		= [[TEXTURES/COMMON/SPACECRAFT/S-CLASS//ROYALSCLASS_TRIM.OVERLAY.CYAN.PNG]],
			["EXTERNAL_FILE_SOURCE"] 	= "ROYALSCLASS_TRIM.OVERLAY.CYAN.PNG",
	},
	{
			["FILE_DESTINATION"] 		= [[TEXTURES/COMMON/SPACECRAFT/S-CLASS//ROYALSCLASS_TRIM.OVERLAY.DARK.PNG]],
			["EXTERNAL_FILE_SOURCE"] 	= "ROYALSCLASS_TRIM.OVERLAY.DARK.PNG",
	},
	{
			["FILE_DESTINATION"] 		= [[TEXTURES/COMMON/SPACECRAFT/S-CLASS//ROYALSCLASS_TRIM.OVERLAY.DEFAULT.PNG]],
			["EXTERNAL_FILE_SOURCE"] 	= "ROYALSCLASS_TRIM.OVERLAY.DEFAULT.PNG",
	},
	{
			["FILE_DESTINATION"] 		= [[TEXTURES/COMMON/SPACECRAFT/S-CLASS//ROYALSCLASS_TRIM.OVERLAY.GOLDEN.PNG]],
			["EXTERNAL_FILE_SOURCE"] 	= "ROYALSCLASS_TRIM.OVERLAY.GOLDEN.PNG",
	},
	{
			["FILE_DESTINATION"] 		= [[TEXTURES/COMMON/SPACECRAFT/S-CLASS//ROYALSCLASS_TRIM.OVERLAY.GREEN.PNG]],
			["EXTERNAL_FILE_SOURCE"] 	= "ROYALSCLASS_TRIM.OVERLAY.GREEN.PNG",
	},
	{
			["FILE_DESTINATION"] 		= [[TEXTURES/COMMON/SPACECRAFT/S-CLASS//ROYALSCLASS_TRIM.OVERLAY.NOIR.PNG]],
			["EXTERNAL_FILE_SOURCE"] 	= "ROYALSCLASS_TRIM.OVERLAY.NOIR.PNG",
	}
		
},
  ["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.TEXTURE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["SPECIAL_KEY_WORDS"] = {"Diffuse","TEXTURES/COMMON/SPACECRAFT/S%-CLASS/ROYALSCLASS_TRIM.BASE.DDS",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Mask",""},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Diffuse","TEXTURES/COMMON/SPACECRAFT/S%-CLASS/ROYALSCLASS_TRIM.OVERLAY.YELLOW.DDS",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Mask","TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.BASE.MASKS.DDS"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Diffuse","TEXTURES/COMMON/SPACECRAFT/S%-CLASS/ROYALSCLASS_TRIM.OVERLAY.BLUE.DDS",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Diffuse","TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAY.BLUE.PNG"},
								{"Mask","TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.BASE.MASKS.DDS"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Diffuse","TEXTURES/COMMON/SPACECRAFT/S%-CLASS/ROYALSCLASS_TRIM.OVERLAY.RED.DDS",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Mask","TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.BASE.MASKS.DDS"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Diffuse","TEXTURES/COMMON/SPACECRAFT/S%-CLASS/ROYALSCLASS_TRIM.OVERLAY.DEFAULT.DDS",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Diffuse","TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.OVERLAY.DEFAULT.PNG"},
								{"Mask","TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.BASE.MASKS.DDS"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Diffuse","TEXTURES/COMMON/SPACECRAFT/S%-CLASS/ROYALSCLASS_TRIM.OVERLAY.BROWN.DDS",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Mask","TEXTURES/COMMON/SPACECRAFT/S-CLASS/ROYALSCLASS_TRIM.BASE.MASKS.DDS"},
							},
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Diffuse","TEXTURES/COMMON/SPACECRAFT/S%-CLASS/ROYALSCLASS_TRIM.OVERLAY.BROWN.DDS",},
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = NEW_COLORS

						},
					}
				},
			} 
		},
	}
}
--DON'T ADD ANYTHING PAST THIS POINT HERE

