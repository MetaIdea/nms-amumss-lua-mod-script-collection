NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "Clean Ship Space Map 1.5.pak",
	["MOD_AUTHOR"]		= "Lo2k",
	["MOD_DESCRIPTION"]	= "This mod makes ship space map cleaner",
	["NMS_VERSION"]		= "4.41",	
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{
					["MBIN_FILE_SOURCE"] = "MODELS\HUD\SPACEMAPHORIZON\HORZ_MAT.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CastShadow",	"False"},
							},
						},				
						{
							["SPECIAL_KEY_WORDS"] = {"MaterialFlag", "_F29_VBCOLOUR",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"MaterialFlag", "_F48_WARPED_DIFFUSE_LIGHTING",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"MaterialFlag", "_F49_DISABLE_AMBIENT",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"MaterialFlag", "_F50_DISABLE_POSTPROCESS",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"MaterialFlag", "_F60_ACUTE_ANGLE_FADE",},
							["REMOVE"] 	= "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"MaterialFlag", "_F09_TRANSPARENT"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F10_NORECEIVESHADOW" />
    </Property>
]],
						},	
						{
							["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialSFXColVec4"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = [[
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gCustomParams01Vec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="1" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
]],
						},	
					},
				},
			},
		},
	},
}