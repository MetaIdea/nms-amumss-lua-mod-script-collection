NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_Orbital.Pads.V.1.2.pak",
["MOD_AUTHOR"]              = "JJhookah",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.65",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\LANDINGPAD.SCENE.MBIN", "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\XLANDINGPAD.SCENE.MBIN",},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\XLANDINGPAD.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "LandingPadFloorLOD0"},
                                {"Name", "LandingPadFloorLOD1"},
                                {"Name", "LandingPadFloorLOD2"},
                                {"Name", "LandingPadFloorLOD3"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Type", ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Dock"},
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\LANDINGPAD.SCENE.MBIN", "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\XLANDINGPAD2.SCENE.MBIN",},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\XLANDINGPAD2.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Pad"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "ODELS\SPACE\SPACESTATION\MODULARPARTS\ENTITIES\STATIONBPAD.ENTITY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "PadGeo"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Type", ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Dock"},
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\LANDINGPAD_HANGAR.SCENE.MBIN", "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\LANDINGPAD.SCENE.MBIN", "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\LANDINGPAD.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "LandingPadFloorLOD0"},
                                {"Name", "LandingPadFloorLOD1"},
                                {"Name", "LandingPadFloorLOD2"},
                                {"Name", "LandingPadFloorLOD3"},
                                {"Name", "LODDIST1"},
                                {"Name", "LODDIST2"},
                                {"Name", "LODDIST3"},
                            },
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Pad"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOES"] = "TRUE"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Dock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.4719"},
                                {"RotY", "180"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Name", "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\LANDINGPAD_HANGAR"},
                                {"NameHash", "3008511863"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "GEOMETRY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\ACCESSORIES\LANDINGPAD_HANGAR.GEOMETRY.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NUMLODS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Root"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NameHash", "2199828403"},
                                {"Name", "Middle"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Pad"},
                            ["PRECEDING_KEY_WORDS"] = {"Attributes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Name", "SCENEGRAPH"},
                                {"Value", "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\XLANDINGPAD.SCENE.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Pad"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NameHash", "3842616250"},
                                {"Type", "REFERENCE"},
                                {"Name", "Ref_Landing_Pad"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EXIT"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Ref_Landing_Pad2" />
          <Property name="NameHash" value="3842616250" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="-0.4719" />
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
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\XLANDINGPAD2.SCENE.MBIN" />
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