NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zHeadlights Vintage Interceptor",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.04",
["MOD_DESCRIPTION"] = "zHeadlights Vintage Interceptor adds headlights to the Expedition 23 reward Vintage Interceptor",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\VINTAGEINTERCEPTOR.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage1"},
              ["PRECEDING_KEY_WORDS"] = {"Children"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["ADD"] =
[[
				<Property name="Children" value="TkSceneNodeData" _index="0">
					<Property name="Name" value="HeadLight" />
					<Property name="NameHash" value="0" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-8.598107" />
						<Property name="TransY" value="1.250000" />
						<Property name="TransZ" value="4.750000" />
						<Property name="RotX" value="-2.000000" />
						<Property name="RotY" value="180.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="1.000000" />
						<Property name="ScaleY" value="1.000000" />
						<Property name="ScaleZ" value="1.000000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="FOV" />
							<Property name="Value" value="40.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="4000.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="10000.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="COL_R" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="COL_G" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="COL_B" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
							<Property name="Name" value="COOKIE_IDX" />
							<Property name="Value" value="-1" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
							<Property name="Name" value="VOLUMETRIC" />
							<Property name="Value" value="0.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
							<Property name="Name" value="LIGHTLAYERS" />
							<Property name="Value" value="3" />
						</Property>
					</Property>
					<Property name="InstanceTransforms" />
					<Property name="Children" />
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage13"},
              ["EXML_INDEX"] = "1",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage16"},
              ["EXML_INDEX"] = "2",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "banozelFlames7"},
              ["EXML_INDEX"] = "3",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "banozelFlames8"},
              ["EXML_INDEX"] = "4",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage20"},
              ["EXML_INDEX"] = "5",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage21"},
              ["EXML_INDEX"] = "6",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage22"},
              ["EXML_INDEX"] = "7",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage23"},
              ["EXML_INDEX"] = "8",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Stage24"},
              ["EXML_INDEX"] = "9",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "banozelFlames9"},
              ["EXML_INDEX"] = "10",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "banozelFlames10"},
              ["EXML_INDEX"] = "11",
            },
          }
        },
      }
    }
  }
}