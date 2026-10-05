NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Settlement Fab Cam Raised",
["MOD_DESCRIPTION"] = "Raises the Settlement Starship Fabricator build camera so that it is no longer occluded by nearby objects.",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.18",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SETTLEMENT\LANDINGZONESHIPBUILDER_TERMINAL.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData" _index="2">
			<Property name="Name" value="CAMERAFOCUS" />
			<Property name="NameHash" value="4006631957" />
			<Property name="Type" value="JOINT" />
			<Property name="Transform" value="TkTransformData">
				<Property name="TransX" value="0.000000" />
				<Property name="TransY" value="0.000000" />
				<Property name="TransZ" value="0.000000" />
				<Property name="RotX" value="0.000000" />
				<Property name="RotY" value="0.000000" />
				<Property name="RotZ" value="0.000000" />
				<Property name="ScaleX" value="1.000000" />
				<Property name="ScaleY" value="1.000000" />
				<Property name="ScaleZ" value="1.000000" />
			</Property>
			<Property name="PlatformExclusion" value="0" />
			<Property name="Attributes">
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
					<Property name="Name" value="JOINTINDEX" />
					<Property name="Value" value="3" />
				</Property>
			</Property>
			<Property name="Children" />
		</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SETTLEMENT\LANDINGZONESHIPBUILDER_TERMINAL\ENTITIES\SHIPCUSTOMISERTERMINAL.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcInteractionComponentData", "Camera", "TkModelRendererCameraData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Distance", "27.000000"},
                {"X",        "-1.000000"},
                {"Z",        "2.000000"},
                {"Pitch",    "28.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\LANDINGPAD_BUILDER.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "HOLOGRAMMATRIX"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "-1.380079"}
              }
            },
          }
        },
      }
    }
  }
}