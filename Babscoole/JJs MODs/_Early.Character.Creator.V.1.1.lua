NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Early.Character.Creator.V.1.1.pak",
["MOD_AUTHOR"]    = "JJhookah",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.52",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\CUSTOMISESTATION.SCENE.MBIN", "MODELS\CUSTOMISER.SCENE.MBIN", "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\CUSTOMISER.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "LODDIST1"},
                                {"Name", "LODDIST2"},
                                {"Name", "LODDIST3"},
                                {"Name", "PlatformJNT"},
                                {"Name", "PlatformLOD0"},
                                {"Name", "PlatformLOD1"},
                                {"Name", "PlatformLOD2"},
                                {"Name", "PlatformLOD3"},
                                {"Name", "Shadowbox"},
                                {"Type", "COLLISION"},
                                {"Name", "NormalData"},
                                {"Name", "RotateMesh"},
                                {"Name", "Blue"},
                                {"Name", "RefSnapScene"},
                                -- {"Name", "Shadowbox"},
                                -- {"Name", "Shadowbox"},
                            },
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NameHash", "3916463041"},
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
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\CHARCUSTOMISER.ENTITY.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CHARCUSTOMISER\CHARCUSTOMISER\ENTITIES\CHARCUSTOMISER.ENTITY.MBIN", "MODELS\CHARCUSTOMISER.ENTITY.MBIN", "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\CHARCUSTOMISER.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "ARMSUP"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "ODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/ANIMATION/CUSTOMISEEND.ANIM.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "IDLEARMS"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "ODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/ANIMATION/CUSTOMISEIDLE.ANIM.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "ARMSDOWN"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "ODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/ANIMATION/CUSTOMISEACTIVATE.ANIM.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DISTRESSSIGNAL\STARTSCENE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RefBlackBoxScene"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="REFcustomiser" />
      <Property name="NameHash" value="863290756" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
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
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\CUSTOMISER.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="REFlantern" />
      <Property name="NameHash" value="3832378185" />
      <Property name="Type" value="REFERENCE" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
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
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PROPS\LIGHTS\SMALLLANTERN.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="pointLight1" />
      <Property name="NameHash" value="4219409884" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="2" />
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
          <Property name="Value" value="10000.000000" />
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
          <Property name="Value" value="0.000000" />
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
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DISTRESSSIGNAL\PARTS\ATLASORB\ATLASORB\ENTITIES\ATLASORB.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkAudioComponentData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxDistance", "3"},
                            }
                        },
                    }
                },
            }
        }
    },
}