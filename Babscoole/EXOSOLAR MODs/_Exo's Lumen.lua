NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Exo's Lumen.pak",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.06",
["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\CEILINGLIGHT.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", "0.25"},
								{"TransZ", "0"},
								{"RotX",   "90"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","FOV",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "180.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "27500.000000"},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT1.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1",},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransX", "0.32"},
								{"TransY", "2.65"},
								{"TransZ", "-0.28"},
								{"RotY",   "14"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1","Name","FOV",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "75.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1","Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1","Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "36000.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1","Name","VOLUMETRIC",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.010000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1","Name","VOLUMETRIC",},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="pointLight1" />
              <Property name="NameHash" value="4219409884" />
              <Property name="Type" value="LIGHT" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-0.32" />
                <Property name="TransY" value="2.65" />
                <Property name="TransZ" value="-0.28" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="-14" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FOV" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="75.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="linear" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF_RATE" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="INTENSITY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="36000.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_R" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_G" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_B" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COOKIE_IDX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-1" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VOLUMETRIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.010000" />
                </Property>
]]
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT2.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransX", "0.32"},
								{"TransY", "2.58"},
								{"TransZ", "-0.167"},
								{"RotY",   "17"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1","Name","FOV",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "110.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1","Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1","Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "30000.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1","Name","VOLUMETRIC",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.010000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight1","Name","VOLUMETRIC",},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="pointLight1" />
              <Property name="NameHash" value="4219409884" />
              <Property name="Type" value="LIGHT" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-0.32" />
                <Property name="TransY" value="2.58" />
                <Property name="TransZ" value="-0.167" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="-17" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes">
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FOV" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="110.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="linear" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="FALLOFF_RATE" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="2.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="INTENSITY" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="30000.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_R" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_G" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COL_B" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="1.000000" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="COOKIE_IDX" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="-1" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="VOLUMETRIC" />
                  <Property name="AltID" value="" />
                  <Property name="Value" value="0.010000" />
                </Property>
]]
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT3.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight2",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransX", "0.05"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight2","Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight2","Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "35000.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight2","Name","VOLUMETRIC",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.025000"},
							}
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\STANDINGLIGHT3.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight2",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransX", "0.05"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight2","Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight2","Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "35000.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight2","Name","VOLUMETRIC",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.025000"},
							}
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_BLUE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", "0.1"},
								{"RotX",   "90"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","FOV",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "180.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "30000.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","COL_G",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.530000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","COL_B",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "1.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","VOLUMETRIC",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.050000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="pointLight6" />
          <Property name="NameHash" value="3087372010" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0.25" />
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
              <Property name="Value" value="27500.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.530000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.120000" />
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
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_GREEN.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", "0.1"},
								{"TransZ", "0"},
								{"RotX",   "90"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","FOV",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "180.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "25000.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","COL_G",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "1.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","COL_B",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.270000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","VOLUMETRIC",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.050000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="pointLight6" />
          <Property name="NameHash" value="3087372010" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0.25" />
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
              <Property name="Value" value="22500.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.270000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.120000" />
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
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_PINK.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", "0.1"},
								{"TransZ", "0"},
								{"RotX",   "90"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","FOV",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "180.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "25000.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","COL_R",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "1.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","COL_B",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.730000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","VOLUMETRIC",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.050000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="pointLight6" />
          <Property name="NameHash" value="3087372010" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0.25" />
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
              <Property name="Value" value="22500.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.730000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.120000" />
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
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_RED.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", "0.1"},
								{"TransZ", "0"},
								{"RotX",   "90"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","FOV",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "180.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "25000.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","COL_G",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.220000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","COL_B",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.200000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","VOLUMETRIC",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.050000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="pointLight6" />
          <Property name="NameHash" value="3087372010" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0.25" />
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
              <Property name="Value" value="22500.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.220000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.200000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.120000" />
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
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_WHITE.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", "0.1"},
								{"TransZ", "0"},
								{"RotX",   "90"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","FOV",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "180.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "17000.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","VOLUMETRIC",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.075000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="pointLight6" />
          <Property name="NameHash" value="3087372010" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0.25" />
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
              <Property name="Value" value="20000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.200000" />
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
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\WALLLIGHT_YELLOW.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"TransY", "0.1"},
								{"TransZ", "0"},
								{"RotX",   "90"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","FOV",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "180.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","FALLOFF",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "linear"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","INTENSITY",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "25000.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","COL_R",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "1.000000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","COL_G",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.900000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","COL_B",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.100000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6","Name","VOLUMETRIC",},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Value", "0.050000"},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","pointLight6"},
							["ADD_OPTION"] = "ADDafterSECTION",
							["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="pointLight6" />
          <Property name="NameHash" value="3087372010" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0.25" />
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
              <Property name="Value" value="22500.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.900000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.100000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-1" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.120000" />
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
						},
					}
				},
			}
		}
	},
}