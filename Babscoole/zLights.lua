NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zLights",
["MOD_AUTHOR"]      = "JMZ",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.20",
["MOD_DESCRIPTION"] = "zLights Makes your most commonly used Decorative lights more varied and useful, and adds some that you wished you had",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\CEILINGLIGHT.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "12.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "30.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\FIREFLYTUBE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "FireflyLight03", "Name", "FALLOFF"},
                {"Name", "FireflyLight02", "Name", "FALLOFF"},
                {"Name", "FireflyLight01", "Name", "FALLOFF"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "FireflyLight03", "Name", "RADIUS"},
                {"Name", "FireflyLight02", "Name", "RADIUS"},
                {"Name", "FireflyLight01", "Name", "RADIUS"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "4.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LABLAMP.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "LabLampLOD0"},
                {"Name", "LabLampLOD1"},
                {"Name", "LabLampLOD2"},
                {"Name", "LabLampLOD3"},
                {"Name", "data"},
                {"Name", "HIDEINABAND"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ScaleX", "0.200000"},
                {"ScaleY", "0.200000"},
                {"ScaleZ", "0.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotX", "89.990000"},
                {"RotY", "30.000000"},
                {"RotZ", "30.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "18.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "30.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
				<Property name="Children" value="TkSceneNodeData" _index="4">
					<Property name="Name" value="pointLight2" />
					<Property name="NameHash" value="230242896" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="1.941633" />
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
							<Property name="Name" value="FOV" />
							<Property name="Value" value="360.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="2.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="0.500000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="4.472136" />
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
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "LightStrip"},
              ["EXML_INDEX"] = 5,
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LIGHTTABLE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["SECTION_ACTIVE"] = {0,1},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.500000"},
                {"RotX",   "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FOV"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FALLOFF"},
              ["SECTION_ACTIVE"] = {0,1},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "INTENSITY"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "RADIUS"},
              ["SECTION_ACTIVE"] = {0,1},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "5.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\SMALLLIGHT.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "10.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "10.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT1.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotX", "-15.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "160.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "32.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "100.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT2.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotX", "-15.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "160.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "10.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "100.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT3.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransX", "0.000000"},
                {"TransY", "2.750000"},
                {"RotX",   "-90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "18.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
						<Property name="Children" value="TkSceneNodeData" _index="2">
							<Property name="Name" value="pointLight1" />
							<Property name="NameHash" value="4219409884" />
							<Property name="Type" value="LIGHT" />
							<Property name="Transform" value="TkTransformData">
								<Property name="TransX" value="0.000000" />
								<Property name="TransY" value="2.250000" />
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
									<Property name="Name" value="FOV" />
									<Property name="Value" value="120.000000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
									<Property name="Name" value="FALLOFF" />
									<Property name="Value" value="2.000000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
									<Property name="Name" value="INTENSITY" />
									<Property name="Value" value="12.500000" />
								</Property>
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
									<Property name="Name" value="RADIUS" />
									<Property name="Value" value="3.162278" />
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
								<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
									<Property name="Name" value="MATERIAL" />
									<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
								</Property>
							</Property>
							<Property name="Children" />
						</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\TABLE1.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransZ", "0.000000"},
                {"ScaleX", "1.000000"},
                {"ScaleZ", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "20.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\TABLE2.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "1.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "20.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_BLUE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.050000"},
                {"RotX",   "90.000000"},
                {"RotY",   "45.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "190.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.300000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_GREEN.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.050000"},
                {"RotX",   "90.000000"},
                {"RotY",   "45.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "190.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "5.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "COL_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.200000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = 
          {
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_PINK.SCENE.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_RED.SCENE.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_WHITE.SCENE.MBIN",
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_YELLOW.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.050000"},
                {"RotX",   "90.000000"},
                {"RotY",   "45.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "190.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "5.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight6", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "50.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP0|collisionBox"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="Lite" />
					<Property name="NameHash" value="3438460816" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="2.536044" />
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
							<Property name="Name" value="FOV" />
							<Property name="Value" value="360.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="50.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="0.500000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
							<Property name="Name" value="COL_R" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
							<Property name="Name" value="COL_G" />
							<Property name="Value" value="0.797260" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
							<Property name="Name" value="COL_B" />
							<Property name="Value" value="0.581000" />
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
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP1.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "COL_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP2.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "8.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "COL_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\HANGLAMP3.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight17", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight17", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "5.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight17", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight17", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight17", "Name", "COL_B"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\LIGHTHANGINGSTRIP.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "0.600000"},
                {"RotX",   "90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "175.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "8.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "50.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "COL_R"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
				<Property name="Children" value="TkSceneNodeData" _index="1">
					<Property name="Name" value="spotLight2" />
					<Property name="NameHash" value="4278932423" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="1.920000" />
						<Property name="TransZ" value="0.000000" />
						<Property name="RotX" value="-90.000000" />
						<Property name="RotY" value="0.000000" />
						<Property name="RotZ" value="0.000000" />
						<Property name="ScaleX" value="0.750000" />
						<Property name="ScaleY" value="0.750000" />
						<Property name="ScaleZ" value="0.750000" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="FOV" />
							<Property name="Value" value="100.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="2.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="8.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="4.898979" />
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
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
							<Property name="Name" value="MATERIAL" />
							<Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
						</Property>
					</Property>
					<Property name="Children" />
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2", "Name", "COL_R"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight2", "Name", "COL_G"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\LIGHTOUTDOORSTANDING.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "12.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "100.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\TABLELAMP0.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "10.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\BAZAAR\WALLLIGHT01.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotX", "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "120.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "2.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "Lite1", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "30.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\SPACEBASE\PROPS\LARGE_LIGHT.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1", "Name", "FALLOFF"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "18.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "50.000000"},
              }
            },
          }
        },
      }
    }
  }
}