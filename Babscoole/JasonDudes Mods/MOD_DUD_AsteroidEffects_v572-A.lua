NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "MOD_DUD_AsteroidEffects_v572-A",
["MOD_AUTHOR"]              = "JasonDude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.72",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/EFFECTS/SPACEEFFECTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_R_EXP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Life",               "1.5"},
                                {"CamShake",           "true"},
                                {"CamShakeSpaceScale", "true"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_R_EXP"},
                            ["VALUE_MATCH"] = 40,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Scale", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_R_EXP", "Debris", "GcDebrisData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number",        "2"},
                                {"Radius",        "15"},
                                {"Scale",         "0.01"},
                                {"Speed",         "700"},
                                {"AnglularSpeed", "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_R_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
				<Property name="Debris" value="GcDebrisData">
					<Property name="Filename" value="TkModelResource">
						<Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
						<Property name="ResHandle" value="GcResource">
							<Property name="ResourceID" value="0" />
						</Property>
						<Property name="Seed" value="0" />
					</Property>
					<Property name="Number" value="3" />
					<Property name="Radius" value="15.000000" />
					<Property name="Scale" value="0.008000" />
					<Property name="Speed" value="1000.000000" />
					<Property name="AnglularSpeed" value="10.000000" />
					<Property name="OverrideSeed" value="0" />
				</Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_HIT"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Life",  "0.3"},
                                {"Scale", "5"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_M_EXP", "Debris", "GcDebrisData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number",        "2"},
                                {"Radius",        "15"},
                                {"Scale",         "0.04"},
                                {"Speed",         "700"},
                                {"AnglularSpeed", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_M_EXP", "Debris", "GcDebrisData"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number",        "3"},
                                {"Radius",        "15"},
                                {"Scale",         "0.02"},
                                {"AnglularSpeed", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_M_EXP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Life",               "3"},
                                {"CamShake",           "true"},
                                {"CamShakeSpaceScale", "true"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_M_EXP"},
                            ["VALUE_MATCH"] = 80.000000,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Scale", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_S_EXP", "Debris", "GcDebrisData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number",        "2"},
                                {"Radius",        "15"},
                                {"Speed",         "700"},
                                {"AnglularSpeed", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_S_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["ADD"] =
[[
				<Property name="Debris" value="GcDebrisData">
					<Property name="Filename" value="TkModelResource">
						<Property name="Filename" value="MODELS/SPACE/ASTEROIDS/SMALLASTEROID.SCENE.MBIN" />
						<Property name="ResHandle" value="GcResource">
							<Property name="ResourceID" value="0" />
						</Property>
						<Property name="Seed" value="0" />
					</Property>
					<Property name="Number" value="3" />
					<Property name="Radius" value="15.000000" />
					<Property name="Scale" value="0.150000" />
					<Property name="Speed" value="1000.000000" />
					<Property name="AnglularSpeed" value="4.000000" />
					<Property name="OverrideSeed" value="NONE" />
				</Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_S_EXP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Life",               "3"},
                                {"CamShake",           "true"},
                                {"CamShakeSpaceScale", "true"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_S_EXP"},
                            ["VALUE_MATCH"] = 80,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Scale", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_L_EXP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Scale",              "20"},
                                {"CamShake",           "true"},
                                {"CamShakeSpaceScale", "true"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_L_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris"},
                            ["REMOVE"] = "LINE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id",  "ASTEROID_L_EXP", "AkEvent", "EXPLOSION_RESOURCE_GATHER"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
			<Property name="Debris">
				<Property name="Debris" value="GcDebrisData">
					<Property name="Filename" value="TkModelResource">
						<Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
						<Property name="ResHandle" value="GcResource">
							<Property name="ResourceID" value="0" />
						</Property>
						<Property name="Seed" value="0" />
					</Property>
					<Property name="Number" value="1" />
					<Property name="Radius" value="1.000000" />
					<Property name="Scale" value="0.013000" />
					<Property name="Speed" value="700.000000" />
					<Property name="AnglularSpeed" value="10.000000" />
					<Property name="OverrideSeed" value="NONE" />
				</Property>
				<Property name="Debris" value="GcDebrisData">
					<Property name="Filename" value="TkModelResource">
						<Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
						<Property name="ResHandle" value="GcResource">
							<Property name="ResourceID" value="0" />
						</Property>
						<Property name="Seed" value="0" />
					</Property>
					<Property name="Number" value="1" />
					<Property name="Radius" value="1.000000" />
					<Property name="Scale" value="0.010000" />
					<Property name="Speed" value="1000.000000" />
					<Property name="AnglularSpeed" value="20.000000" />
					<Property name="OverrideSeed" value="NONE" />
				</Property>
			</Property>
]]
                        },
                    }
                },
            }
        },
    }
}