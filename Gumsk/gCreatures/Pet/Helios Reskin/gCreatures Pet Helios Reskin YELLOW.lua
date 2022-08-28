Color = "YELLOW"
RedAmount = "1.0"
GreenAmount = "1.0"
BlueAmount = "0.0"

Author = "Gumsk+Jasondude"
ModName = "gCreatures Pet Helios Reskin"
ModNameSub = Color
BaseDescription = "Changes color of of the child of Helios pet to "..Color
GameVersion = "399"
ModVersion = "a"

FileSource1 = "MODELS/PLANETS/CREATURES/FISH/LANDJELLYFISH.SCENE.MBIN"
FileSource2 = "MODELS/PLANETS/CREATURES/FISH/LANDJELLYFISH/JELLYFISHCAP_MAT.MATERIAL.MBIN"
FileSource3 = "MODELS/PLANETS/CREATURES/FISH/LANDJELLYFISH/JELLYFISHINNER_MAT.MATERIAL.MBIN"
FileSource4 = "MODELS/PLANETS/CREATURES/FISH/LANDJELLYFISH/JELLYFISHSMALLTENT_MAT.MATERIAL.MBIN"
FileSource5 = "MODELS/PLANETS/CREATURES/FISH/LANDJELLYFISH/JELLYFISHTENT_MAT.MATERIAL.MBIN"

LightText = [[
	    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="DUDpointLight2" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="360.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="quadratic" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="12500.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]]..RedAmount..[[" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]]..GreenAmount..[[" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]]..BlueAmount..[[" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COOKIE_IDX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-1" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VOLUMETRIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1.000000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["ADD_FILES"] = {
		{
			["FILE_DESTINATION"] 		= "GUMSK/JELLYFISH_01.BASE."..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "JELLYFISH_01.BASE."..Color..".DDS",
		},
		{
			["FILE_DESTINATION"] 		= "GUMSK/JELLYFISH_02.BASE."..Color..".DDS",
			["EXTERNAL_FILE_SOURCE"] 	= "JELLYFISH_02.BASE."..Color..".DDS",
		},
	},

	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						
						{
							["SPECIAL_KEY_WORDS"] = {"Name","GlowPlane"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","GlowAuraEmitter"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] = LightText
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK/JELLYFISH_01.BASE."..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource3,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK/JELLYFISH_02.BASE."..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource4,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK/JELLYFISH_02.BASE."..Color..".DDS"}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource5,
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","gDiffuseMap"},
							["VALUE_CHANGE_TABLE"] = {
								{"Map", "GUMSK/JELLYFISH_02.BASE."..Color..".DDS"}
							}
						},
					}
				},
			}
		},
	}
}