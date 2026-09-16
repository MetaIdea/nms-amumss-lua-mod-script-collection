NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zCorvette Station Lighting",
["MOD_AUTHOR"]      = "JMZawodny",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.24",
["MOD_DESCRIPTION"] = "zCorvette Station Lighting improves the lighting around the Corvette construction pad on Space Stations",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\BIGGSPLATFORM.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "BiggsTerminal"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransX", "-1.750000"},
                {"TransZ", "-55.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "VolumetricA1"},
                {"Name", "VolumetricA2"},
                {"Name", "VolumetricA"},
                {"Name", "VolumetricA3"},
                {"Name", "VolumetricA4"},
              },
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RotX", "35.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "VolumetricA1", "Name", "FOV"},
                {"Name", "VolumetricA2", "Name", "FOV"},
                {"Name", "VolumetricA",  "Name", "FOV"},
                {"Name", "VolumetricA3", "Name", "FOV"},
                {"Name", "VolumetricA4", "Name", "FOV"},
              },
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "105.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "VolumetricA1", "Name", "VOLUMETRIC"},
                {"Name", "VolumetricA2", "Name", "VOLUMETRIC"},
                {"Name", "VolumetricA",  "Name", "VOLUMETRIC"},
                {"Name", "UnderLight1",  "Name", "VOLUMETRIC"},
                {"Name", "UnderLight2",  "Name", "VOLUMETRIC"},
                {"Name", "UnderLight3",  "Name", "VOLUMETRIC"},
                {"Name", "UnderLight4",  "Name", "VOLUMETRIC"},
                {"Name", "UnderLight5",  "Name", "VOLUMETRIC"},
                {"Name", "UnderLight6",  "Name", "VOLUMETRIC"},
                {"Name", "UnderLight7",  "Name", "VOLUMETRIC"},
                {"Name", "UnderLight8",  "Name", "VOLUMETRIC"},
                {"Name", "VolumetricA3", "Name", "VOLUMETRIC"},
                {"Name", "VolumetricA4", "Name", "VOLUMETRIC"},
              },
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "0.005000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "VolumetricA1"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
				<Property name="Children" value="TkSceneNodeData" _index="45">
					<Property name="Name" value="VolumetricA5" />
					<Property name="NameHash" value="979377132" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="39.455560" />
						<Property name="TransY" value="0.098261" />
						<Property name="TransZ" value="-10.6138086" />
						<Property name="RotX" value="35.000000" />
						<Property name="RotY" value="105.035934" />
						<Property name="RotZ" value="-179.063431" />
						<Property name="ScaleX" value="120.713783" />
						<Property name="ScaleY" value="120.713783" />
						<Property name="ScaleZ" value="120.713783" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="FOV" />
							<Property name="Value" value="105.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="2.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="1600.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="28.284271" />
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
							<Property name="Value" value="0.005000" />
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
				<Property name="Children" value="TkSceneNodeData" _index="46">
					<Property name="Name" value="VolumetricA6" />
					<Property name="NameHash" value="1213282254" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="39.455560" />
						<Property name="TransY" value="0.098261" />
						<Property name="TransZ" value="10.6138086" />
						<Property name="RotX" value="35.000000" />
						<Property name="RotY" value="75.0359344" />
						<Property name="RotZ" value="-179.063431" />
						<Property name="ScaleX" value="120.713783" />
						<Property name="ScaleY" value="120.713783" />
						<Property name="ScaleZ" value="120.713783" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="FOV" />
							<Property name="Value" value="105.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="2.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="1600.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="28.284271" />
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
							<Property name="Value" value="0.005000" />
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
				<Property name="Children" value="TkSceneNodeData" _index="47">
					<Property name="Name" value="VolumetricA7" />
					<Property name="NameHash" value="3405921558" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-39.455560" />
						<Property name="TransY" value="0.098261" />
						<Property name="TransZ" value="-10.6138086" />
						<Property name="RotX" value="35.000000" />
						<Property name="RotY" value="-105.035934" />
						<Property name="RotZ" value="-179.063431" />
						<Property name="ScaleX" value="120.713783" />
						<Property name="ScaleY" value="120.713783" />
						<Property name="ScaleZ" value="120.713783" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="FOV" />
							<Property name="Value" value="105.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="2.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="1600.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="28.284271" />
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
							<Property name="Value" value="0.005000" />
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
				<Property name="Children" value="TkSceneNodeData" _index="48">
					<Property name="Name" value="VolumetricA8" />
					<Property name="NameHash" value="3645888945" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-39.455560" />
						<Property name="TransY" value="0.098261" />
						<Property name="TransZ" value="10.6138086" />
						<Property name="RotX" value="35.000000" />
						<Property name="RotY" value="-75.0359344" />
						<Property name="RotZ" value="-179.063431" />
						<Property name="ScaleX" value="120.713783" />
						<Property name="ScaleY" value="120.713783" />
						<Property name="ScaleZ" value="120.713783" />
					</Property>
					<Property name="PlatformExclusion" value="0" />
					<Property name="Attributes">
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
							<Property name="Name" value="FOV" />
							<Property name="Value" value="105.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="2.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="1600.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="28.284271" />
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
							<Property name="Value" value="0.005000" />
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
              ["SPECIAL_KEY_WORDS"] = {"Name", "CentreFillLight"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransY", "45.000000"},
                {"RotX",   "-90.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "CentreFillLight", "Name", "FOV"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "170.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "CentreFillLight", "Name", "FALLOFF"},
                {"Name", "CentreFillLight", "Name", "COL_R"},
                {"Name", "CentreFillLight", "Name", "COL_G"},
                {"Name", "CentreFillLight", "Name", "COL_B"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "CentreFillLight", "Name", "INTENSITY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "CentreFillLight", "Name", "RADIUS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Value", "100.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "CentreFillLight"},
              ["ADD_OPTION"] = "ADDafterSECTION",
              ["ADD"] =
[[
				<Property name="Children" value="TkSceneNodeData" _index="66">
					<Property name="Name" value="CentreFillLight1" />
					<Property name="NameHash" value="2592236318" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="30.000000" />
						<Property name="TransY" value="45.000000" />
						<Property name="TransZ" value="30.000000" />
						<Property name="RotX" value="-90.000000" />
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
							<Property name="Value" value="170.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="60.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="100.000000" />
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
				<Property name="Children" value="TkSceneNodeData" _index="67">
					<Property name="Name" value="CentreFillLight2" />
					<Property name="NameHash" value="2309341541" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="30.000000" />
						<Property name="TransY" value="45.000000" />
						<Property name="TransZ" value="-30.000000" />
						<Property name="RotX" value="-90.000000" />
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
							<Property name="Value" value="170.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="60.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="100.000000" />
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
				<Property name="Children" value="TkSceneNodeData" _index="68">
					<Property name="Name" value="CentreFillLight3" />
					<Property name="NameHash" value="2078483936" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-30.000000" />
						<Property name="TransY" value="45.000000" />
						<Property name="TransZ" value="30.000000" />
						<Property name="RotX" value="-90.000000" />
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
							<Property name="Value" value="170.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="60.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="100.000000" />
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
				<Property name="Children" value="TkSceneNodeData" _index="69">
					<Property name="Name" value="CentreFillLight4" />
					<Property name="NameHash" value="4246677594" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="-30.000000" />
						<Property name="TransY" value="45.000000" />
						<Property name="TransZ" value="-30.000000" />
						<Property name="RotX" value="-90.000000" />
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
							<Property name="Value" value="170.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="60.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="100.000000" />
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
				<Property name="Children" value="TkSceneNodeData" _index="70">
					<Property name="Name" value="CentreFillLight5" />
					<Property name="NameHash" value="4015885527" />
					<Property name="Type" value="LIGHT" />
					<Property name="Transform" value="TkTransformData">
						<Property name="TransX" value="0.000000" />
						<Property name="TransY" value="45.000000" />
						<Property name="TransZ" value="-42.000000" />
						<Property name="RotX" value="-90.000000" />
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
							<Property name="Value" value="170.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
							<Property name="Name" value="FALLOFF" />
							<Property name="Value" value="1.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
							<Property name="Name" value="INTENSITY" />
							<Property name="Value" value="60.000000" />
						</Property>
						<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
							<Property name="Name" value="RADIUS" />
							<Property name="Value" value="100.000000" />
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
              ["SPECIAL_KEY_WORDS"] = {"Name", "CSBterminal"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TransX", "5.000000"},
                {"TransZ", "-59.000000"},
              }
            },
          }
        },
      }
    }
  }
}
