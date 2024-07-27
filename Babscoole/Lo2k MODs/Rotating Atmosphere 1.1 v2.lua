NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Rotating Atmosphere 1.1.pak",
["MOD_AUTHOR"]    = "Lo2k",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.72",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\PLANETS\ATMOSPHERE\ATMOSPHERE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MESHLINK"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\SPACE\PLANETS\ATMOSPHERE\ENTITIES\ATMOSPHERE.ENTITY.MBIN" />
        </Property>
]],
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\PLANETS\ATMOSPHERE\ATMOSPHEREHIGHPOLY.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MESHLINK"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\SPACE\PLANETS\ATMOSPHERE\ENTITIES\ATMOSPHERE.ENTITY.MBIN" />
        </Property>
]],
                        },
                    },
                },
            },
        },
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "MODELS\SPACE\PLANETS\ATMOSPHERE\ENTITIES\ATMOSPHERE.ENTITY.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="AdditionalData" />
  <Property name="Components">
    <Property value="LinkableNMSTemplate.xml">
      <Property name="Template" value="TkRotationComponentData.xml">
        <Property name="Speed" value="0.0007" />
        <Property name="Axis" value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="1" />
          <Property name="z" value="0" />
        </Property>
        <Property name="SyncGroup" value="-1" />
      </Property>
      <Property name="Linked" value="" />
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property value="0" />
    <Property value="50" />
    <Property value="80" />
    <Property value="150" />
    <Property value="500" />
  </Property>
</Data>
]],
        },
    },
}