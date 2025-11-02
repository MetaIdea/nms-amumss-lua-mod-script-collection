NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_HeliosGlowFX_v606-A",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.06",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\FISH\LANDJELLYFISH.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "GlowPlane"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "JellyFishInner", "Name", "MATERIAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\PLANETS\CREATURES\FISH\LANDJELLYFISH\JELLYFISHTENT_MAT.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "INTENSITY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "15000.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "COL_R"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.009000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "COL_G"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.656000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "COL_B"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "GlowAuraEmitter"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
		<Property name="Children" value="TkSceneNodeData">
			<Property name="Name" value="DUDpointLight2" />
			<Property name="NameHash" value="0" />
			<Property name="Type" value="LIGHT" />
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
					<Property name="Name" value="FOV" />
					<Property name="Value" value="360.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
					<Property name="Name" value="FALLOFF" />
					<Property name="Value" value="quadratic" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
					<Property name="Name" value="FALLOFF_RATE" />
					<Property name="Value" value="2.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
					<Property name="Name" value="INTENSITY" />
					<Property name="Value" value="20000.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
					<Property name="Name" value="COL_R" />
					<Property name="Value" value="0.009000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
					<Property name="Name" value="COL_G" />
					<Property name="Value" value="0.656000" />
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
					<Property name="Value" value="1.000000" />
				</Property>
				<Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
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
            }
        },
    }
}