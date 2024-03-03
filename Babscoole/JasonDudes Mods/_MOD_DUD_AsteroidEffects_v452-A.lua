NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_AsteroidEffects_v452-A.pak",
["MOD_AUTHOR"]              = "JasonDude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.52",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/EFFECTS/SPACEEFFECTS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_R_EXP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Life",               "1.5"},
                                {"CamShake",           "True"},
                                {"CamShakeSpaceScale", "True"},
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
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_R_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="15" />
          <Property name="Scale" value="0.008" />
          <Property name="Speed" value="1000" />
          <Property name="AnglularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="True" />
          </Property>
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
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_M_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris", "GcDebrisData.xml"},
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
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_M_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"Debris", "GcDebrisData.xml", "GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number",        "4"},
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
                                {"CamShake",           "True"},
                                {"CamShakeSpaceScale", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_M_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml", "GcDebrisData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_M_EXP"},
                            ["VALUE_MATCH"] = 80,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Scale", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_S_EXP"},
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GcDebrisData.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/SMALLASTEROID.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="3" />
          <Property name="Radius" value="15" />
          <Property name="Scale" value="0.15" />
          <Property name="Speed" value="1000" />
          <Property name="AnglularSpeed" value="4" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ASTEROID_S_EXP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Life",               "3"},
                                {"CamShake",           "True"},
                                {"CamShakeSpaceScale", "True"},
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
                                {"CamShake",           "True"},
                                {"CamShakeSpaceScale", "True"},
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
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.013" />
          <Property name="Speed" value="700" />
          <Property name="AnglularSpeed" value="10" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
        </Property>
        <Property value="GcDebrisData.xml">
          <Property name="Filename" value="TkModelResource.xml">
            <Property name="Filename" value="MODELS/SPACE/ASTEROIDS/ASTEROIDXL.SCENE.MBIN" />
            <Property name="ResHandle" value="GcResource.xml">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="Number" value="1" />
          <Property name="Radius" value="1" />
          <Property name="Scale" value="0.01" />
          <Property name="Speed" value="1000" />
          <Property name="AnglularSpeed" value="20" />
          <Property name="OverrideSeed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
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