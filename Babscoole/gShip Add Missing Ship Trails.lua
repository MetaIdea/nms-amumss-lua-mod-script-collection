Author = "N8Crafter Gumsk"
ModName = "gShip"
ModNameSub = "Add Missing Ship Trails"
BaseDescription = "Adds ship trails to all engines"
GameVersion = "445"
ModVersion = "b"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"] = BaseDescription,
["MOD_AUTHOR"]      = Author,
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = GameVersion,
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSA\THRUSTERSA_LEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail" />
      <Property name="NameHash" value="1940499083" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.769806" />
        <Property name="TransY" value="-0.790548" />
        <Property name="TransZ" value="-0.82485" />
        <Property name="RotX" value="50" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail1" />
      <Property name="NameHash" value="4190444725" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.769806" />
        <Property name="TransY" value="-0.359014" />
        <Property name="TransZ" value="-2.342611" />
        <Property name="RotX" value="50" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-50.894936"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Stage1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-50.894936"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSA\THRUSTERSA_RIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail" />
      <Property name="NameHash" value="1940499083" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.769806" />
        <Property name="TransY" value="-0.790548" />
        <Property name="TransZ" value="-0.82485" />
        <Property name="RotX" value="50" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail1" />
      <Property name="NameHash" value="4190444725" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.769806" />
        <Property name="TransY" value="-0.359014" />
        <Property name="TransZ" value="-2.342611" />
        <Property name="RotX" value="50" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-50.894936"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Stage1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-50.894936"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSB\THRUSTERSB_LEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail" />
      <Property name="NameHash" value="1940499083" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.703125" />
        <Property name="TransY" value="0.579102" />
        <Property name="TransZ" value="-1.306641" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail1" />
      <Property name="NameHash" value="4190444725" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.703125" />
        <Property name="TransY" value="-0.661621" />
        <Property name="TransZ" value="-1.199219" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSB\THRUSTERSB_LEFT"},
                            ["SECTION_ACTIVE"] = {1,2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "90"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSB\THRUSTERSB_LEFT", "Name", "HEIGHT"},
                            ["SECTION_ACTIVE"] = {1,2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.802999"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSB\THRUSTERSB_RIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail" />
      <Property name="NameHash" value="1940499083" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.703125" />
        <Property name="TransY" value="0.579102" />
        <Property name="TransZ" value="-1.306641" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail1" />
      <Property name="NameHash" value="4190444725" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.703125" />
        <Property name="TransY" value="-0.661621" />
        <Property name="TransZ" value="-1.199219" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSB\THRUSTERSB_RIGHT"},
                            ["SECTION_ACTIVE"] = {1,2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "90"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSB\THRUSTERSB_RIGHT", "Name", "HEIGHT"},
                            ["SECTION_ACTIVE"] = {1,2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.802999"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSC\THRUSTERSC_LEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail" />
      <Property name="NameHash" value="1940499083" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.678153" />
        <Property name="TransY" value="0.515339" />
        <Property name="TransZ" value="-1.04004" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail1" />
      <Property name="NameHash" value="4190444725" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.678153" />
        <Property name="TransY" value="-0.440524" />
        <Property name="TransZ" value="-0.717285" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSC\THRUSTERSC_RIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail" />
      <Property name="NameHash" value="1940499083" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.678153" />
        <Property name="TransY" value="0.515339" />
        <Property name="TransZ" value="-1.04004" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail1" />
      <Property name="NameHash" value="4190444725" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.678153" />
        <Property name="TransY" value="-0.440524" />
        <Property name="TransZ" value="-0.717285" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERSD_L.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children", "Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="1.326172" />
            <Property name="TransY" value="0.020706" />
            <Property name="TransZ" value="-1.702148" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Children", "Children"},
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERSD_L"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "90"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Children", "Children"},
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERSD_L", "Name", "HEIGHT"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.257733"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Children", "Children"},
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERSD_L"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-90"},
                                {"RotZ", "0"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Children", "Children"},
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERSD_L", "Name", "HEIGHT"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.991504"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCube8"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "20.132439"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Letter_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "31.008146"},
                                {"RotY", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EndGlow"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Glow"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                                {"RotZ", "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERSD_R.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children", "Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-1.32617" />
            <Property name="TransY" value="0.020706" />
            <Property name="TransZ" value="-1.702148" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERSD_R"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "90"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERSD_R", "Name", "HEIGHT"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.257733"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERSD_R"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-90"},
                                {"RotZ", "0"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERSD_R", "Name", "HEIGHT"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.991504"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Letter_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "33.651634"},
                                {"RotZ", "0.104513"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EndGlow"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Glow"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                                {"RotZ", "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\COMBPOUNDENGINEFLAME.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail1" />
      <Property name="NameHash" value="4190444725" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.275391" />
        <Property name="TransY" value="2.613282" />
        <Property name="TransZ" value="-2.287109" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail2" />
      <Property name="NameHash" value="1624001807" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.275391" />
        <Property name="TransY" value="2.074708" />
        <Property name="TransZ" value="-2.199774" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Trail"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\COMBPOUNDENGINEFLAMER.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail1" />
      <Property name="NameHash" value="4190444725" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.273438" />
        <Property name="TransY" value="2.613282" />
        <Property name="TransZ" value="-2.287109" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail2" />
      <Property name="NameHash" value="1624001807" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.273438" />
        <Property name="TransY" value="2.074708" />
        <Property name="TransZ" value="-2.199846" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Trail"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_A\GOLDWINGS_A.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_SmallSignL2_"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "66.26712"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_SmallSignL2_1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "66.26712"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail10" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.58" />
        <Property name="TransY" value="1.25" />
        <Property name="TransZ" value="-1.45" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.541815" />
        <Property name="ScaleY" value="0.541815" />
        <Property name="ScaleZ" value="0.541815" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail11" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.58" />
        <Property name="TransY" value="1.25" />
        <Property name="TransZ" value="-1.45" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.541815" />
        <Property name="ScaleY" value="0.541815" />
        <Property name="ScaleZ" value="0.541815" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_A\WINGS_A.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_SmallSignL2_"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "66.26712"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_SmallSignL2_1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "66.26712"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail10" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.58" />
        <Property name="TransY" value="1.25" />
        <Property name="TransZ" value="-1.45" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.541815" />
        <Property name="ScaleY" value="0.541815" />
        <Property name="ScaleZ" value="0.541815" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail11" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.58" />
        <Property name="TransY" value="1.25" />
        <Property name="TransZ" value="-1.45" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.541815" />
        <Property name="ScaleY" value="0.541815" />
        <Property name="ScaleZ" value="0.541815" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_B\WINGSB.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "VERTRENDGRAPHIC"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "415",
                            ["VALUE_MATCH_OPTIONS"] = "=",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "411"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Stage2"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail10" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.58" />
        <Property name="TransY" value="0.9" />
        <Property name="TransZ" value="-1.45" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.541815" />
        <Property name="ScaleY" value="0.541815" />
        <Property name="ScaleZ" value="0.541815" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail11" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.58" />
        <Property name="TransY" value="1.65" />
        <Property name="TransZ" value="-1.45" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.541815" />
        <Property name="ScaleY" value="0.541815" />
        <Property name="ScaleZ" value="0.541815" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail12" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.58" />
        <Property name="TransY" value="0.9" />
        <Property name="TransZ" value="-1.45" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.541815" />
        <Property name="ScaleY" value="0.541815" />
        <Property name="ScaleZ" value="0.541815" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail13" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.58" />
        <Property name="TransY" value="1.65" />
        <Property name="TransZ" value="-1.45" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="0.541815" />
        <Property name="ScaleY" value="0.541815" />
        <Property name="ScaleZ" value="0.541815" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_E\WINGSE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail20" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.72" />
        <Property name="TransY" value="1.4" />
        <Property name="TransZ" value="-1.1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail21" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.72" />
        <Property name="TransY" value="1.4" />
        <Property name="TransZ" value="-1.1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail22" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.75" />
        <Property name="TransY" value="2.05" />
        <Property name="TransZ" value="-1.1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail23" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.75" />
        <Property name="TransY" value="2.05" />
        <Property name="TransZ" value="-1.1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_F\WINGS_F.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail22" />
      <Property name="NameHash" value="2315939793" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.509766" />
        <Property name="TransY" value="1.334147" />
        <Property name="TransZ" value="-0.597534" />
        <Property name="RotX" value="-0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail23" />
      <Property name="NameHash" value="4245512007" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.50977" />
        <Property name="TransY" value="1.334147" />
        <Property name="TransZ" value="-0.597534" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SubWings_E"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Turbine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Turbine"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail20" />
          <Property name="NameHash" value="4236082237" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="4.85" />
            <Property name="TransY" value="1.23" />
            <Property name="TransZ" value="-1.1" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail21" />
          <Property name="NameHash" value="4236082237" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-4.85" />
            <Property name="TransY" value="1.23" />
            <Property name="TransZ" value="-1.1" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="0" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "Contrail2"},
                                {"Name", "Contrail3"},
                                {"Name", "Contrail4"},
                                {"Name", "Contrail5"},
                                {"Name", "Contrail6"},
                                {"Name", "Contrail7"},
                                {"Name", "Contrail8"},
                                {"Name", "Contrail9"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_G\WINGSG.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefTurbineAR"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail10" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.63" />
        <Property name="TransY" value="1.23" />
        <Property name="TransZ" value="-1.1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail11" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.63" />
        <Property name="TransY" value="1.23" />
        <Property name="TransZ" value="-1.1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_H\WINGSH.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingAnimData"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail20" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.8" />
        <Property name="TransY" value="1.32" />
        <Property name="TransZ" value="-1.1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail21" />
      <Property name="NameHash" value="4236082237" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.8" />
        <Property name="TransY" value="1.32" />
        <Property name="TransZ" value="-1.1" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="0" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_K\WINGSK.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children", "Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail4" />
          <Property name="NameHash" value="2310006842" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-3.240234" />
            <Property name="TransY" value="1.298828" />
            <Property name="TransZ" value="0.972168" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail6" />
          <Property name="NameHash" value="1738639638" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="3.24023" />
            <Property name="TransY" value="1.298828" />
            <Property name="TransZ" value="0.972168" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "_logoRight_A1LOD0"},
                                {"Name", "_LetterRight_A1LOD0"},
                                {"Name", "_LetterRight_ALOD0"},
                                {"Name", "_logoRight_ALOD0"},
                                {"Name", "_logoRight_A1LOD1"},
                                {"Name", "_LetterRight_A1LOD1"},
                                {"Name", "_LetterRight_ALOD1"},
                                {"Name", "_logoRight_ALOD1"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "Contrail12"},
                                {"Name", "Contrail13"},
                                {"Name", "Contrail3"},
                                {"Name", "Contrail4"},
                                {"Name", "Contrail2"},
                                {"Name", "Contrail5"},
                                {"Name", "Contrail6"},
                                {"Name", "Contrail7"},
                                {"Name", "Contrail9"},
                                {"Name", "Contrail10"},
                                {"Name", "Contrail8"},
                                {"Name", "Contrail11"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SubWings_A"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-31.337997"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SubWingsARight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "31.337997"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_WingsK_B"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail5" />
          <Property name="NameHash" value="4272478380" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-1.59375" />
            <Property name="TransY" value="1.298828" />
            <Property name="TransZ" value="0.996094" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail7" />
          <Property name="NameHash" value="279361920" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="1.59375" />
            <Property name="TransY" value="1.298828" />
            <Property name="TransZ" value="0.996094" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_RectangleRight_A3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "59.149002"},
                                {"RotY", "90"},
                                {"RotZ", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_RectangleLeft_A"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "59.148624"},
                                {"RotZ", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "SubWings_C1"},
                                {"Name", "SubWingsCRight1"},
                            },
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SubWings_C1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "Gun1Ref3"},
                                {"Name", "Gun1Ref4"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "AWingsL_JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail1" />
              <Property name="NameHash" value="4190444725" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="3.557988" />
                <Property name="TransY" value="1.717773" />
                <Property name="TransZ" value="-5.028202" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="180" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "AWingsR_JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail" />
              <Property name="NameHash" value="1940499083" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-1.874023" />
                <Property name="TransY" value="1.717773" />
                <Property name="TransZ" value="-9.757812" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="-178.84076" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BWingsL_JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail3" />
              <Property name="NameHash" value="399211929" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="3.758327" />
                <Property name="TransY" value="1.717773" />
                <Property name="TransZ" value="-5.027817" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="180" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BWingsR_JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail2" />
              <Property name="NameHash" value="1624001807" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-3.539204" />
                <Property name="TransY" value="1.717773" />
                <Property name="TransZ" value="-5.027817" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="180" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CWingsL_JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail10" />
              <Property name="NameHash" value="1328110910" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="3.2002" />
                <Property name="TransY" value="1.295898" />
                <Property name="TransZ" value="0.35083" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="180" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail11" />
              <Property name="NameHash" value="942566824" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="3.27734" />
                <Property name="TransY" value="2.203125" />
                <Property name="TransZ" value="0.338379" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="180" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail5" />
              <Property name="NameHash" value="4272478380" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="3.553" />
                <Property name="TransY" value="1.717773" />
                <Property name="TransZ" value="-5.028101" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="180" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CWingsR_JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail4" />
              <Property name="NameHash" value="2310006842" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-3.539204" />
                <Property name="TransY" value="1.717773" />
                <Property name="TransZ" value="-5.027817" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="180" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail8" />
              <Property name="NameHash" value="2149164049" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-3.200195" />
                <Property name="TransY" value="1.295898" />
                <Property name="TransZ" value="0.35083" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="180" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail9" />
              <Property name="NameHash" value="4145976455" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-3.277344" />
                <Property name="TransY" value="2.203125" />
                <Property name="TransZ" value="0.338379" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="180" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "FWingsL_JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail7" />
              <Property name="NameHash" value="279361920" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="3.718078" />
                <Property name="TransY" value="1.717773" />
                <Property name="TransZ" value="-5.027817" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="180" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "FWingsR_JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail6" />
              <Property name="NameHash" value="1738639638" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-3.539204" />
                <Property name="TransY" value="1.717773" />
                <Property name="TransZ" value="-5.027817" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="180" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITA\BACK\COCKPITABACKB.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail2" />
      <Property name="NameHash" value="1624001807" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.005784" />
        <Property name="TransY" value="3.324401" />
        <Property name="TransZ" value="-5.577473" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_logo1_A"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_logo2_A"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pPlane2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransZ", "-5.985569"},
                                {"RotX",   "-88.681206"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Number_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "38.172863"},
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Letter1_A"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "5.070969"},
                                {"RotY", "87.78277"},
                                {"RotZ", "38.698017"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Letter2_A"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "4.86547"},
                                {"RotY", "-85.22856"},
                                {"RotZ", "-39.07926"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CockpitDData"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail2" />
          <Property name="NameHash" value="1624001807" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="5.476562" />
            <Property name="TransZ" value="-3.195312" />
            <Property name="RotX" value="-37.50001" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail3" />
          <Property name="NameHash" value="399211929" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.252283" />
            <Property name="TransY" value="0.568473" />
            <Property name="TransZ" value="-1.339915" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail4" />
          <Property name="NameHash" value="2310006842" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.252283" />
            <Property name="TransY" value="0.568473" />
            <Property name="TransZ" value="-1.339915" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Trail"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "30.782652"},
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Trail1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "30.782652"},
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD", "Type", "COLLISION"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD", "Type", "COLLISION"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-48.134678"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD", "Type", "COLLISION"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-31.475044"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD", "Type", "COLLISION"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD", "Name", "HEIGHT"},
                            ["SECTION_ACTIVE"] = {5},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.835520"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefLandingGear"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Gun1Ref4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\SUBWINGS\SUBWINGSC\SUBWINGSC_LEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingALeft"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="3.413702" />
            <Property name="TransY" value="-0.006276" />
            <Property name="TransZ" value="-0.554895" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder8"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\SUBWINGS\SUBWINGSC\SUBWINGSC_RIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingARight"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-3.4137" />
            <Property name="TransY" value="-0.006276" />
            <Property name="TransZ" value="-0.554895" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder8"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\SUBWINGS\SUBWINGSD\SUBWINGSD_LEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SubWingD"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.829102" />
            <Property name="TransY" value="0.057312" />
            <Property name="TransZ" value="0.069092" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\SUBWINGS\SUBWINGSD\SUBWINGSD_RIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SubWingD"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.829102" />
            <Property name="TransY" value="0.057312" />
            <Property name="TransZ" value="0.069092" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSA\WINGSA_LEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingALeft"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail5" />
          <Property name="NameHash" value="4272478380" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="2.064453" />
            <Property name="TransY" value="-0.014046" />
            <Property name="TransZ" value="-1.011719" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail6" />
          <Property name="NameHash" value="1738639638" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="8.550686" />
            <Property name="TransY" value="-0.00582" />
            <Property name="TransZ" value="-0.291752" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSA\WINGSA_LEFT", "Type", "COLLISION"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSA\WINGSA_LEFT", "Name", "HEIGHT"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.162085"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder8"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSA\WINGSA_RIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingALeft"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail5" />
          <Property name="NameHash" value="4272478380" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-2.064453" />
            <Property name="TransY" value="-0.014053" />
            <Property name="TransZ" value="-1.011719" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail6" />
          <Property name="NameHash" value="1738639638" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-8.560285" />
            <Property name="TransY" value="-0.003725" />
            <Property name="TransZ" value="-0.221114" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSA\WINGSA_RIGHT", "Name", "RADIUS"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.324169"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSA\WINGSA_RIGHT", "Name", "HEIGHT"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "2.345738"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pCylinder8"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSB\WINGSBLEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Contrail3" />
      <Property name="NameHash" value="1928427471" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="4.476562" />
        <Property name="TransY" value="1.599609" />
        <Property name="TransZ" value="-3.521484" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Contrail4" />
      <Property name="NameHash" value="3969245804" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.009766" />
        <Property name="TransY" value="1.599609" />
        <Property name="TransZ" value="-3.521484" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Contrail5" />
      <Property name="NameHash" value="2610090746" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.009766" />
        <Property name="TransY" value="-0.867432" />
        <Property name="TransZ" value="-3.521484" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX", "4.476562"},
                                {"TransY", "-0.867432"},
                                {"TransZ", "-3.521484"},
                                {"RotY",   "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Data"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail5" />
          <Property name="NameHash" value="4272478380" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="3.597656" />
            <Property name="TransY" value="0.720215" />
            <Property name="TransZ" value="-3.990234" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail6" />
          <Property name="NameHash" value="1738639638" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="2.890625" />
            <Property name="TransY" value="0.720215" />
            <Property name="TransZ" value="-3.990234" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail7" />
          <Property name="NameHash" value="279361920" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="3.597656" />
            <Property name="TransY" value="0.012367" />
            <Property name="TransZ" value="-3.990234" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail8" />
          <Property name="NameHash" value="2149164049" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="2.890625" />
            <Property name="TransY" value="0.012367" />
            <Property name="TransZ" value="-3.990234" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSB\WINGSBRIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Contrail3" />
      <Property name="NameHash" value="1928427471" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-4.476562" />
        <Property name="TransY" value="1.599609" />
        <Property name="TransZ" value="-3.521484" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Contrail4" />
      <Property name="NameHash" value="3969245804" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.009766" />
        <Property name="TransY" value="1.599609" />
        <Property name="TransZ" value="-3.521484" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Contrail5" />
      <Property name="NameHash" value="2610090746" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.009766" />
        <Property name="TransY" value="-0.867432" />
        <Property name="TransZ" value="-3.521484" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX", "-4.476562"},
                                {"TransY", "-0.867432"},
                                {"TransZ", "-3.521484"},
                                {"RotY",   "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Data"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail5" />
          <Property name="NameHash" value="4272478380" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-3.59766" />
            <Property name="TransY" value="0.720215" />
            <Property name="TransZ" value="-3.990234" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail6" />
          <Property name="NameHash" value="1738639638" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-2.89062" />
            <Property name="TransY" value="0.720215" />
            <Property name="TransZ" value="-3.990234" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail7" />
          <Property name="NameHash" value="279361920" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-3.59766" />
            <Property name="TransY" value="0.012367" />
            <Property name="TransZ" value="-3.990234" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail8" />
          <Property name="NameHash" value="2149164049" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-2.89062" />
            <Property name="TransY" value="0.012367" />
            <Property name="TransZ" value="-3.990234" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="-180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSC\WINGCLEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail5" />
      <Property name="NameHash" value="4272478380" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.708055" />
        <Property name="TransY" value="1.749766" />
        <Property name="TransZ" value="-2.78599" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail6" />
      <Property name="NameHash" value="1738639638" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.707628" />
        <Property name="TransY" value="-1.09496" />
        <Property name="TransZ" value="-1.089823" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Letter_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "0.117106"},
                                {"RotZ", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_logo_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "1.145515"},
                                {"RotY", "-90"},
                                {"RotZ", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSC\WINGCLEFT", "Type", "COLLISION"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "39.953564"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSC\WINGCRIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail5" />
      <Property name="NameHash" value="4272478380" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.708055" />
        <Property name="TransY" value="1.749766" />
        <Property name="TransZ" value="-2.78599" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail6" />
      <Property name="NameHash" value="1738639638" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.707628" />
        <Property name="TransY" value="-1.09496" />
        <Property name="TransZ" value="-1.089823" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Letter_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "0.209196"},
                                {"RotZ", "-14.142616"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_logo_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-0.079342"},
                                {"RotY", "89.146736"},
                                {"RotZ", "-5.307622"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSD\WINGDLEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail5" />
      <Property name="NameHash" value="4272478380" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.94043" />
        <Property name="TransY" value="0.174438" />
        <Property name="TransZ" value="-0.92627" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail6" />
      <Property name="NameHash" value="1738639638" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.9021" />
        <Property name="TransY" value="-0.935791" />
        <Property name="TransZ" value="-0.532227" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_logo_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSD\WINGDRIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail5" />
      <Property name="NameHash" value="4272478380" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.94043" />
        <Property name="TransY" value="0.174438" />
        <Property name="TransZ" value="-0.92627" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail6" />
      <Property name="NameHash" value="1738639638" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.9021" />
        <Property name="TransY" value="-0.935791" />
        <Property name="TransZ" value="-0.532227" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_logo_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSG\WINGGLEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Contrail3" />
      <Property name="NameHash" value="1928427471" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.347656" />
        <Property name="TransY" value="0.940918" />
        <Property name="TransZ" value="-0.991211" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Contrail4" />
      <Property name="NameHash" value="3969245804" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.480469" />
        <Property name="TransY" value="0.925293" />
        <Property name="TransZ" value="-0.991211" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Contrail5" />
      <Property name="NameHash" value="2610090746" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.49585" />
        <Property name="TransY" value="-0.942871" />
        <Property name="TransZ" value="-0.991211" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail5" />
      <Property name="NameHash" value="4272478380" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.416016" />
        <Property name="TransY" value="-0.001044" />
        <Property name="TransZ" value="-0.293213" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_SmallSign_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-3.810077"},
                                {"RotY", "90"},
                                {"RotZ", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX", "2.363281"},
                                {"TransY", "-0.927734"},
                                {"TransZ", "-0.991211"},
                                {"RotY",   "-180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSG\WINGGRIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Contrail3" />
      <Property name="NameHash" value="1928427471" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.347656" />
        <Property name="TransY" value="0.940918" />
        <Property name="TransZ" value="-0.991211" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Contrail4" />
      <Property name="NameHash" value="3969245804" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.480469" />
        <Property name="TransY" value="0.925293" />
        <Property name="TransZ" value="-0.991211" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Contrail5" />
      <Property name="NameHash" value="2610090746" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.49585" />
        <Property name="TransY" value="-0.942871" />
        <Property name="TransZ" value="-0.991211" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail5" />
      <Property name="NameHash" value="4272478380" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.41602" />
        <Property name="TransY" value="-0.001044" />
        <Property name="TransZ" value="-0.293213" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_SmallSign_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "82.007126"},
                                {"RotZ", "-93.42244"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Letter_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX", "-2.363281"},
                                {"TransY", "-0.927734"},
                                {"TransZ", "-0.991211"},
                                {"RotY",   "-180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSK\WINGKLEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail5" />
      <Property name="NameHash" value="4272478380" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="2.270105" />
        <Property name="TransY" value="-0.073221" />
        <Property name="TransZ" value="-2.232291" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Rectangle_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-78.13243"},
                                {"RotZ", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "EngineGlowLOD0"},
                                {"Name", "EngineGlowLOD1"},
                                {"Name", "EngineGlowLOD2"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Subwing1_L"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "40"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSK\WINGKRIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail5" />
      <Property name="NameHash" value="4272478380" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-2.2701" />
        <Property name="TransY" value="-0.073221" />
        <Property name="TransZ" value="-2.232291" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Rectangle_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-112.13716"},
                                {"RotZ", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "EngineGlowLOD0"},
                                {"Name", "EngineGlowLOD1"},
                                {"Name", "EngineGlowLOD2"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSL\WINGSL_LEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail5" />
      <Property name="NameHash" value="4272478380" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.550781" />
        <Property name="TransY" value="-0.014046" />
        <Property name="TransZ" value="-1.873047" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail6" />
      <Property name="NameHash" value="1738639638" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="6.051735" />
        <Property name="TransY" value="-0.01" />
        <Property name="TransZ" value="-2.63443" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Letter_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "EngineGlowLOD0"},
                                {"Name", "EngineGlowLOD1"},
                                {"Name", "EngineGlowLOD2"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGSL\WINGSL_RIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail5" />
      <Property name="NameHash" value="4272478380" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.55078" />
        <Property name="TransY" value="-0.014046" />
        <Property name="TransZ" value="-1.873047" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail6" />
      <Property name="NameHash" value="1738639638" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-6.050811" />
        <Property name="TransY" value="-0.009455" />
        <Property name="TransZ" value="-2.634185" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Letter_A1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "EngineGlowLOD0"},
                                {"Name", "EngineGlowLOD1"},
                                {"Name", "EngineGlowLOD2"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGTOPJOINT\WINGTOPJOINT_LEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail10" />
      <Property name="NameHash" value="1328110910" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.570312" />
        <Property name="TransY" value="-0.371338" />
        <Property name="TransZ" value="-0.215698" />
        <Property name="RotX" value="60" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGTOPJOINT\WINGTOPJOINT_LEFT", "Type", "COLLISION"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGTOPJOINT\WINGTOPJOINT_LEFT", "Name", "HEIGHT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.715366"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGTOPJOINT\WINGTOPJOINT_LEFT", "Type", "COLLISION"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGTOPJOINT\WINGTOPJOINT_LEFT", "Name", "HEIGHT"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.769422"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGTOPJOINT\WINGTOPJOINT_RIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail10" />
      <Property name="NameHash" value="1328110910" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.538086" />
        <Property name="TransY" value="-0.371338" />
        <Property name="TransZ" value="-0.215698" />
        <Property name="RotX" value="60" />
        <Property name="RotY" value="-180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGTOPJOINT\WINGTOPJOINT_RIGHT", "Type", "COLLISION"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGTOPJOINT\WINGTOPJOINT_RIGHT", "Name", "HEIGHT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.769422"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGTOPJOINT\WINGTOPJOINT_RIGHT", "Type", "COLLISION"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\WINGS\WINGTOPJOINT\WINGTOPJOINT_RIGHT", "Name", "HEIGHT"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.715366"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\ENGINE\ENGINE_C.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineBase"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail5" />
          <Property name="NameHash" value="4272478380" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="4.890625" />
            <Property name="TransZ" value="-10.773438" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\TOPWING\TOPWING_A.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_TopWing_A"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="8.554688" />
            <Property name="TransZ" value="-6.742188" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.1" />
            <Property name="ScaleY" value="0.1" />
            <Property name="ScaleZ" value="0.1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "Decal1"},
                                {"Name", "Decal3"},
                                {"Name", "Decal5"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Decal2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SpinFront"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\TOPWING\TOPWING_B.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_TopWing_B"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail9" />
          <Property name="NameHash" value="4145976455" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="6.566406" />
            <Property name="TransZ" value="-2.039062" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.1" />
            <Property name="ScaleY" value="0.1" />
            <Property name="ScaleZ" value="0.1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Spin"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "Decal1"},
                                {"Name", "Decal3"},
                                {"Name", "Decal5"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Decal4"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Decal6"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-52.69893"},
                                {"RotY", "-72.361374"},
                                {"RotZ", "-19.862597"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Decal7"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "129.33669"},
                                {"RotY", "104.102844"},
                                {"RotZ", "21.317814"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MirrorMerged_X36", "Name", "MESHLINK"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\TOPWING\TOPWING_B\ENTITIES\.ENTITY.MBIN" />
            </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX",   "-180"},
                                {"RotY",   "11.474125"},
                                {"RotZ",   "0"},
                                {"ScaleZ", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1", "Name", "FOV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "360.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1", "Name", "VOLUMETRIC"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX",   "180"},
                                {"RotY",   "-11.474003"},
                                {"RotZ",   "0"},
                                {"ScaleX", "10"},
                                {"ScaleY", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "FOV"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "360.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight2", "Name", "VOLUMETRIC"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.000000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_B.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Wings_B"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="1.393933" />
            <Property name="TransY" value="1.658415" />
            <Property name="TransZ" value="-2.526716" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.1" />
            <Property name="ScaleY" value="0.1" />
            <Property name="ScaleZ" value="0.1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail1" />
          <Property name="NameHash" value="4190444725" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-1.395612" />
            <Property name="TransY" value="1.658415" />
            <Property name="TransZ" value="-2.526716" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.1" />
            <Property name="ScaleY" value="0.1" />
            <Property name="ScaleZ" value="0.1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENFLAMEHBOTANI.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RBottom1JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail10" />
                  <Property name="NameHash" value="1328110910" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-0.08496" />
                    <Property name="TransY" value="-0.716582" />
                    <Property name="TransZ" value="-4.930026" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LBottom1JNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LBottom1JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail9" />
                  <Property name="NameHash" value="4145976455" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0.084961" />
                    <Property name="TransY" value="0.716582" />
                    <Property name="TransZ" value="4.930026" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENFLAMEHTOPANI.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RTop1JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail12" />
                  <Property name="NameHash" value="2703703058" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-0.08496" />
                    <Property name="TransY" value="0.715547" />
                    <Property name="TransZ" value="-4.930027" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTop1JNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTop1JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail11" />
                  <Property name="NameHash" value="942566824" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0.084961" />
                    <Property name="TransY" value="-0.715547" />
                    <Property name="TransZ" value="4.930026" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENFLAMESIDESANI.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail8" />
                  <Property name="NameHash" value="2149164049" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-3.93359" />
                    <Property name="TransY" value="-0.517851" />
                    <Property name="TransZ" value="-2.346217" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail7" />
                  <Property name="NameHash" value="279361920" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="3.933593" />
                    <Property name="TransY" value="0.517851" />
                    <Property name="TransZ" value="2.346217" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="-180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENFLAMEVBOTA.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail10" />
      <Property name="NameHash" value="1328110910" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-1.44629" />
        <Property name="TransY" value="0.84668" />
        <Property name="TransZ" value="-3.882812" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail9" />
      <Property name="NameHash" value="4145976455" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="1.446289" />
        <Property name="TransY" value="0.84668" />
        <Property name="TransZ" value="-3.882812" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENFLAMEVBOTB.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail10" />
      <Property name="NameHash" value="1328110910" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.827637" />
        <Property name="TransY" value="0.84668" />
        <Property name="TransZ" value="-3.882812" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail9" />
      <Property name="NameHash" value="4145976455" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.827637" />
        <Property name="TransY" value="0.84668" />
        <Property name="TransZ" value="-3.882812" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENFLAMEVTOP.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail11" />
      <Property name="NameHash" value="942566824" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0.827637" />
        <Property name="TransY" value="3.183594" />
        <Property name="TransZ" value="-3.882812" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="Trail12" />
      <Property name="NameHash" value="2703703058" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="-0.827637" />
        <Property name="TransY" value="3.183594" />
        <Property name="TransZ" value="-3.882812" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENFLAMEVTOPANI.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RTop3JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail12" />
                  <Property name="NameHash" value="2703703058" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-0.434006" />
                    <Property name="TransY" value="-0.144961" />
                    <Property name="TransZ" value="-4.558932" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTop3JNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTop3JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail11" />
                  <Property name="NameHash" value="942566824" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0.437824" />
                    <Property name="TransY" value="0.144961" />
                    <Property name="TransZ" value="4.558933" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail4" />
                  <Property name="NameHash" value="2310006842" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-1.00391" />
                    <Property name="TransY" value="-0.160429" />
                    <Property name="TransZ" value="-2.799342" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail5" />
                  <Property name="NameHash" value="4272478380" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-0.46631" />
                    <Property name="TransY" value="-0.160429" />
                    <Property name="TransZ" value="-2.71243" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail6" />
                  <Property name="NameHash" value="1738639638" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0.23047" />
                    <Property name="TransY" value="-0.161406" />
                    <Property name="TransZ" value="-2.547389" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail1" />
                  <Property name="NameHash" value="4190444725" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="1.003906" />
                    <Property name="TransY" value="0.160429" />
                    <Property name="TransZ" value="2.799342" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="-180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail2" />
                  <Property name="NameHash" value="1624001807" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0.466308" />
                    <Property name="TransY" value="0.160429" />
                    <Property name="TransZ" value="2.71243" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="-180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail3" />
                  <Property name="NameHash" value="399211929" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-0.230469" />
                    <Property name="TransY" value="0.161406" />
                    <Property name="TransZ" value="2.547389" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="-180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineParts"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransZ", "3.662417"},
                                {"RotX",   "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY2.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail5" />
                  <Property name="NameHash" value="4272478380" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-0.46631" />
                    <Property name="TransY" value="-0.160429" />
                    <Property name="TransZ" value="-2.71243" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail6" />
                  <Property name="NameHash" value="1738639638" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0.23047" />
                    <Property name="TransY" value="-0.161406" />
                    <Property name="TransZ" value="-2.547389" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail2" />
                  <Property name="NameHash" value="1624001807" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0.466308" />
                    <Property name="TransY" value="0.160429" />
                    <Property name="TransZ" value="2.71243" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="-180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail3" />
                  <Property name="NameHash" value="399211929" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-0.230469" />
                    <Property name="TransY" value="0.161406" />
                    <Property name="TransZ" value="2.547389" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="-180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineParts"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransZ", "3.662417"},
                                {"RotX",   "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY3.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail6" />
                  <Property name="NameHash" value="1738639638" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0.23047" />
                    <Property name="TransY" value="-0.161406" />
                    <Property name="TransZ" value="-2.547389" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail3" />
                  <Property name="NameHash" value="399211929" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-0.230469" />
                    <Property name="TransY" value="0.161406" />
                    <Property name="TransZ" value="2.547389" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="-180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineParts"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransZ", "3.662417"},
                                {"RotX",   "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY4.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail4" />
                  <Property name="NameHash" value="2310006842" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-1.00391" />
                    <Property name="TransY" value="-0.160429" />
                    <Property name="TransZ" value="-2.799342" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail6" />
                  <Property name="NameHash" value="1738639638" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0.23047" />
                    <Property name="TransY" value="-0.161406" />
                    <Property name="TransZ" value="-2.547389" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail1" />
                  <Property name="NameHash" value="4190444725" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="1.003906" />
                    <Property name="TransY" value="0.160429" />
                    <Property name="TransZ" value="2.799342" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="-180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail3" />
                  <Property name="NameHash" value="399211929" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-0.230469" />
                    <Property name="TransY" value="0.161406" />
                    <Property name="TransZ" value="2.547389" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="-180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineParts"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransZ", "3.662417"},
                                {"RotX",   "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY5.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail4" />
                  <Property name="NameHash" value="2310006842" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-1.00391" />
                    <Property name="TransY" value="-0.160429" />
                    <Property name="TransZ" value="-2.799342" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail5" />
                  <Property name="NameHash" value="4272478380" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-0.46631" />
                    <Property name="TransY" value="-0.160429" />
                    <Property name="TransZ" value="-2.71243" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail1" />
                  <Property name="NameHash" value="4190444725" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="1.003906" />
                    <Property name="TransY" value="0.160429" />
                    <Property name="TransZ" value="2.799342" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="-180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail2" />
                  <Property name="NameHash" value="1624001807" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0.466308" />
                    <Property name="TransY" value="0.160429" />
                    <Property name="TransZ" value="2.71243" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="-180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineParts"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransZ", "3.662417"},
                                {"RotX",   "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY6.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail4" />
                  <Property name="NameHash" value="2310006842" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-1.00391" />
                    <Property name="TransY" value="-0.160429" />
                    <Property name="TransZ" value="-2.799342" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail1" />
                  <Property name="NameHash" value="4190444725" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="1.003906" />
                    <Property name="TransY" value="0.160429" />
                    <Property name="TransZ" value="2.799342" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="-180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineParts"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransZ", "3.662417"},
                                {"RotX",   "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY7.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail5" />
                  <Property name="NameHash" value="4272478380" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-0.46631" />
                    <Property name="TransY" value="-0.160429" />
                    <Property name="TransZ" value="-2.71243" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LTbodyJNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Trail2" />
                  <Property name="NameHash" value="1624001807" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0.466308" />
                    <Property name="TransY" value="0.160429" />
                    <Property name="TransZ" value="2.71243" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="-180" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineLight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotZ", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineParts"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransZ", "3.662417"},
                                {"RotX",   "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEL.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LBackClaw1JNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "180"},
                                {"RotY", "8.155582"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LBackClaw3JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
                        <Property value="TkSceneNodeData.xml">
                          <Property name="Name" value="Trail9" />
                          <Property name="NameHash" value="4145976455" />
                          <Property name="Type" value="LOCATOR" />
                          <Property name="Transform" value="TkTransformData.xml">
                            <Property name="TransX" value="0.030973" />
                            <Property name="TransY" value="-0.140324" />
                            <Property name="TransZ" value="1.258279" />
                            <Property name="RotX" value="0" />
                            <Property name="RotY" value="0" />
                            <Property name="RotZ" value="180" />
                            <Property name="ScaleX" value="1" />
                            <Property name="ScaleY" value="1" />
                            <Property name="ScaleZ" value="1" />
                          </Property>
                          <Property name="Attributes" />
                          <Property name="Children" />
                        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RBackClaw3JNT"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
                        <Property value="TkSceneNodeData.xml">
                          <Property name="Name" value="Trail10" />
                          <Property name="NameHash" value="1328110910" />
                          <Property name="Type" value="LOCATOR" />
                          <Property name="Transform" value="TkTransformData.xml">
                            <Property name="TransX" value="-0.030973" />
                            <Property name="TransY" value="0.140325" />
                            <Property name="TransZ" value="-1.316105" />
                            <Property name="RotX" value="0" />
                            <Property name="RotY" value="180" />
                            <Property name="RotZ" value="0" />
                            <Property name="ScaleX" value="1" />
                            <Property name="ScaleY" value="1" />
                            <Property name="ScaleZ" value="1" />
                          </Property>
                          <Property name="Attributes" />
                          <Property name="Children" />
                        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "Stage1"},
                                {"Name", "C"},
                                {"Name", "Engines8"},
                                {"Name", "Engines5"},
                                {"Name", "Stage2"},
                                {"Name", "C1"},
                                {"Name", "Engines10"},
                                {"Name", "Stage7"},
                                {"Name", "pCylinder10"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\ACCESSORYA.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EngineGlow"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Acc_A"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.529562" />
            <Property name="TransY" value="0.743365" />
            <Property name="TransZ" value="-1.356251" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail1" />
          <Property name="NameHash" value="4190444725" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.529562" />
            <Property name="TransY" value="0.743365" />
            <Property name="TransZ" value="-1.356251" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\ACCESSORYA", "Name", "RADIUS"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.592939"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\ACCESSORYA", "Name", "HEIGHT"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.689445"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_AA_3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\ACCESSORYA", "Name", "RADIUS"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.874898"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\ACCESSORYA", "Name", "HEIGHT"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.927902"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\ACCESSORYA", "Name", "HEIGHT"},
                            ["SECTION_ACTIVE"] = {3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.833797"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\ACCESSORYC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "pPlane2"},
                                {"Name", "pPlane1"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "acc3"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail" />
              <Property name="NameHash" value="1940499083" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="-0.001343" />
                <Property name="TransY" value="0.476443" />
                <Property name="TransZ" value="-0.882019" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="180" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="1" />
                <Property name="ScaleY" value="1" />
                <Property name="ScaleZ" value="1" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\ACCESSORYF.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pPlane1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MirrorMerged_X4"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0.417725" />
            <Property name="TransZ" value="-1.410156" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "polySurface9"},
                                {"Name", "polySurface10"},
                                {"Name", "polySurface11"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "90"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\ACCESSORYG.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Acc"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["CREATE_HOS"] = "TRUE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0.694824" />
            <Property name="TransZ" value="-3.760742" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\ACCESSORYI.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "pCylinder7"},
                                {"Name", "pCylinder8"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MirrorMerged_X2"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.960907" />
            <Property name="TransY" value="0.439915" />
            <Property name="TransZ" value="-2.751792" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail1" />
          <Property name="NameHash" value="4190444725" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-0.960907" />
            <Property name="TransY" value="0.439915" />
            <Property name="TransZ" value="-2.751792" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\ACCESSORYI", "Type", "COLLISION"},
                            ["SECTION_ACTIVE"] = {3,4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "40.854893"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSE\WINGSEEND_LEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "polySurface7"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="1.817383" />
            <Property name="TransY" value="0.474609" />
            <Property name="TransZ" value="-2.46875" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pPlane1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSE\WINGSEEND_RIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "polySurface8"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-1.81738" />
            <Property name="TransY" value="0.474609" />
            <Property name="TransZ" value="-2.46875" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSE\WINGSEEND_RIGHT", "Type", "COLLISION"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pPlane1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSF\WINGSF_LEFT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsLLeft"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="2.396484" />
            <Property name="TransY" value="0.766846" />
            <Property name="TransZ" value="-4.738281" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSF\WINGSF_LEFT", "Type", "COLLISION"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pPlane1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSF\WINGSF_RIGHT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "polySurface1"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="Trail" />
          <Property name="NameHash" value="1940499083" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="-2.39648" />
            <Property name="TransY" value="0.766846" />
            <Property name="TransZ" value="-4.738281" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="180" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="1" />
            <Property name="ScaleY" value="1" />
            <Property name="ScaleZ" value="1" />
          </Property>
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSF\WINGSF_RIGHT", "Type", "COLLISION"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotY", "-180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pPlane1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RotX", "-90"},
                            }
                        },
                    }
                },
            }
        }
    }
}