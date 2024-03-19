NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_ShipHeadlightsPlus_v452-A.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.52",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\DROPSHIP_PROC.DESCRIPTOR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TkResourceDescriptorList.xml"},
                            ["SECTION_ACTIVE"] = 2,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_HEADLIGHTS_" />
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_HEADLIGHTS" />
          <Property name="Name" value="_Headlights" />
          <Property name="ReferencePaths">
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="MODELS/COMMON/SPACECRAFT/DROPSHIPS/HEADLIGHTS/DROPHEADLIGHTS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\DROPSHIP_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Cockpit_H"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="_Headlights" />
          <Property name="NameHash" value="0" />
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
              <Property name="Value" value="MODELS\COMMON\SPACECRAFT\DROPSHIPS\HEADLIGHTS\DROPHEADLIGHTS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "spotLight1"},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\ENGINES\ENGINESB.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "RefEngineB4"},
                                {"Name", "RefEngineB5"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "MODELS\COMMON\SPACECRAFT\DROPSHIPS\ENGINES\ENGINESB\PARTS\DUDENGINEBTHRUSTER.SCENE.MBIN"}
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTER_PROC.DESCRIPTOR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TypeId", "_COCKPIT_"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_HEADLIGHTS_" />
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_HEADLIGHTS" />
          <Property name="Name" value="_Headlights" />
          <Property name="ReferencePaths">
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/HEADLIGHTS/FIGHTHEADLIGHTS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTER_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Wings_K"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="_Headlights" />
          <Property name="NameHash" value="0" />
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
              <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\FIGHTHEADLIGHTS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTERCLASSICGOLD.DESCRIPTOR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TypeId", "_COCKPIT_"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_HEADLIGHTS_" />
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_HEADLIGHTS" />
          <Property name="Name" value="_Headlights" />
          <Property name="ReferencePaths">
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/HEADLIGHTS/FIGHTCGOLDHEADLIGHTS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTERCLASSICGOLD.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Wings_A"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="_Headlights" />
          <Property name="NameHash" value="0" />
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
              <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\FIGHTCGOLDHEADLIGHTS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\VRSPEEDER.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "REFLamp_4"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="_Headlights" />
      <Property name="NameHash" value="0" />
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
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\VRSPEEDERHEADLIGHTS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WRACER.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Contrail4"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="_Headlights" />
      <Property name="NameHash" value="0" />
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
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\WRACERHEADLIGHTS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\ACCESSORIES\HEADLAMP.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "StandingLight1"},
                                {"Name", "spotLight1"},
                            },
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\ACCESSORIES\SPECIALHEADLAMP.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight1"},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\WINGS\WINGS_K\WINGSK.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0", "Name", "BATCHSTARTPHYSI"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "37668"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0", "Name", "VERTRSTARTPHYSI"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "21866"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0", "Name", "VERTRENDPHYSICS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "24589"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0", "Name", "BATCHCOUNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "4068"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0", "Name", "VERTRENDGRAPHIC"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "2723"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0", "Name", "BOUNDHULLST"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "212"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0", "Name", "BOUNDHULLED"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "248"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0", "Name", "AABBMINX"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "-2.891207"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0", "Name", "AABBMINY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.836564"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0", "Name", "AABBMINZ"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "-1.380045"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0", "Name", "AABBMAXY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.770870"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0", "Name", "AABBMAXZ"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.631633"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0", "Name", "HASH"},
                            ["NOTICE_OFF"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "2415886621828453799"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0", "Name", "MESHLINK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "WingsK_ALODShape1"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WingsK_ALOD0"},
                            ["NOTICE_OFF"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NameHash", "108830653"},
                                {"Name",     "WingsK_ALOD1"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1WingsK_ALOD0", "Name", "BATCHSTARTPHYSI"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "41736"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1WingsK_ALOD0", "Name", "VERTRSTARTPHYSI"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "24590"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1WingsK_ALOD0", "Name", "VERTRENDPHYSICS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "29311"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1WingsK_ALOD0", "Name", "BATCHCOUNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "7890"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1WingsK_ALOD0", "Name", "VERTRENDGRAPHIC"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "4721"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1WingsK_ALOD0", "Name", "BOUNDHULLST"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "248"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1WingsK_ALOD0", "Name", "BOUNDHULLED"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "292"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1WingsK_ALOD0", "Name", "AABBMINX"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "-3.749691"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1WingsK_ALOD0", "Name", "AABBMINZ"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "-2.157869"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1WingsK_ALOD0", "Name", "AABBMAXX"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "3.749691"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1WingsK_ALOD0", "Name", "AABBMAXZ"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.163431"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1WingsK_ALOD0", "Name", "HASH"},
                            ["NOTICE_OFF"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "12658428626844270041"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1WingsK_ALOD0", "Name", "MESHLINK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "WingsK_ALODShape1"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB1WingsK_ALOD0"},
                            ["NOTICE_OFF"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NameHash", "1043619206"},
                                {"Name",     "SUB1WingsK_ALOD1"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "BATCHSTARTPHYSI"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "53247"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "VERTRSTARTPHYSI"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "31380"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "VERTRENDPHYSICS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "33122"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "BATCHCOUNT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "2856"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "VERTRENDGRAPHIC"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1742"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "BOUNDHULLST"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "328"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "BOUNDHULLED"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "352"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "AABBMINX"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "-3.733948"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "AABBMINY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.712383"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "AABBMINZ"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "-2.149216"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "AABBMAXX"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "3.733998"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "AABBMAXY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.885870"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "AABBMAXZ"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.729330"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "HASH"},
                            ["NOTICE_OFF"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "11193870210701611168"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0", "Name", "MESHLINK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "WingsK_ALODShape1"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUB3WingsK_ALOD0"},
                            ["NOTICE_OFF"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NameHash", "2832696420"},
                                {"Name",     "SUB3WingsK_ALOD1"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIP_PROC.DESCRIPTOR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TypeId", "_SAILS_"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_HEADLIGHTS_" />
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_HEADLIGHTS" />
          <Property name="Name" value="_Headlights" />
          <Property name="ReferencePaths">
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="MODELS/COMMON/SPACECRAFT/SAILSHIP/HEADLIGHTS/SAILHEADLIGHTS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Sails_C"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="_Headlights" />
      <Property name="NameHash" value="0" />
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
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SAILSHIP\HEADLIGHTS\SAILHEADLIGHTS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\SCIENTIFIC_PROC.DESCRIPTOR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TypeId", "_COCKPIT_"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_HEADLIGHTS_" />
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_HEADLIGHTS" />
          <Property name="Name" value="_Headlights" />
          <Property name="ReferencePaths">
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="MODELS/COMMON/SPACECRAFT/SCIENTIFIC/HEADLIGHTS/SCIHEADLIGHTS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\SCIENTIFIC_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Cockpit_DRoot"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="_Headlights" />
          <Property name="NameHash" value="0" />
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
              <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SCIENTIFIC\HEADLIGHTS\SCIHEADLIGHTS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\ACCESSORIES\LAMP.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "StandingLight2"},
                                {"Name", "spotLight1"},
                            },
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITA\COCKPITA.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Trail"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX", "1.03424"},
                                {"TransY", "1.568754"},
                                {"RotX",   "0"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Trail1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransX", "-1.034242"},
                                {"TransY", "1.568754"},
                                {"RotX",   "0"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Canopy_B"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "2.435838"},
                                {"TransZ", "-0.239821"},
                                {"RotX",   "0"},
                                {"RotY",   "0"},
                                {"RotZ",   "0"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\COCKPIT\COCKPITD\COCKPITD.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Trail1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "1.869246"},
                                {"TransZ", "-2.01901"},
                                {"RotX",   "0"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Trail"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "1.869246"},
                                {"TransZ", "-2.01901"},
                                {"RotX",   "0"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\S-CLASS_PROC.DESCRIPTOR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TypeId", "_TOPWING_"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
                <Property value="TkResourceDescriptorList.xml">
                  <Property name="TypeId" value="_HEADLIGHTS_" />
                  <Property name="Descriptors">
                    <Property value="TkResourceDescriptorData.xml">
                      <Property name="Id" value="_HEADLIGHTS" />
                      <Property name="Name" value="_Headlights" />
                      <Property name="ReferencePaths">
                        <Property value="NMSString0x80.xml">
                          <Property name="Value" value="MODELS/COMMON/SPACECRAFT/S-CLASS/HEADLIGHTS/ROYALHEADLIGHTS.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Chance" value="0" />
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "_SCLASSSHIP_SQU"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Children", "IGNORE"},
                            },
                            ["ADD_OPTION"] = "REPLACEatLINE",
                            ["ADD"] =
[[
          <Property name="Children">
            <Property value="TkModelDescriptorList.xml">
              <Property name="List">
                <Property value="TkResourceDescriptorList.xml">
                  <Property name="TypeId" value="_HEADLIGHTS_" />
                  <Property name="Descriptors">
                    <Property value="TkResourceDescriptorData.xml">
                      <Property name="Id" value="_HEADLIGHTS" />
                      <Property name="Name" value="_Headlights" />
                      <Property name="ReferencePaths">
                        <Property value="NMSString0x80.xml">
                          <Property name="Value" value="MODELS/COMMON/SPACECRAFT/S-CLASS/HEADLIGHTS/SQUIDHEADLIGHTS.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Chance" value="0" />
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\S-CLASS_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Inventory_Medium"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="_Headlights" />
              <Property name="NameHash" value="0" />
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
                  <Property name="Value" value="MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\ROYALHEADLIGHTS.SCENE.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "Inventory_Medium1"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="_Headlights" />
              <Property name="NameHash" value="0" />
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
                  <Property name="Value" value="MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\SQUIDHEADLIGHTS.SCENE.MBIN" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\BIOSHIP_PROC.DESCRIPTOR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TypeId", "_WINGS_"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_HEADLIGHTS_" />
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_HEADLIGHTS" />
          <Property name="Name" value="_Headlights" />
          <Property name="ReferencePaths">
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="MODELS/COMMON/SPACECRAFT/S-CLASS/HEADLIGHTS/BIOHEADLIGHTS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\BIOSHIP_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_engine_bREF"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="_Headlights" />
      <Property name="NameHash" value="0" />
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
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\BIOHEADLIGHTS.SCENE.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC.DESCRIPTOR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TypeId", "_SKIRT_"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_HEADLIGHTS_" />
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_HEADLIGHTS" />
          <Property name="Name" value="_Headlights" />
          <Property name="ReferencePaths">
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="MODELS/COMMON/SPACECRAFT/SENTINELSHIP/HEADLIGHTS/SENTINELSHIPHEADLIGHTS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Wings_B"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="_Headlights" />
          <Property name="NameHash" value="0" />
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
              <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SENTINELSHIP\HEADLIGHTS\SENTINELSHIPHEADLIGHTS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\SHUTTLE_PROC.DESCRIPTOR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TypeId", "_SHUTTLE_"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="TkResourceDescriptorList.xml">
      <Property name="TypeId" value="_HEADLIGHTS_" />
      <Property name="Descriptors">
        <Property value="TkResourceDescriptorData.xml">
          <Property name="Id" value="_HEADLIGHTS" />
          <Property name="Name" value="_Headlights" />
          <Property name="ReferencePaths">
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="MODELS/COMMON/SPACECRAFT/SHUTTLE/HEADLIGHTS/SHUTHEADLIGHTS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Chance" value="0" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\SHUTTLE_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "_Wings0_K5"},
                                {"Name", "_Wings0_L5"},
                                {"Name", "_Wings0_K6"},
                                {"Name", "_Wings0_L6"},
                                {"Name", "_UWing_AxRARE1"},
                                {"Name", "_Wings0_K3"},
                                {"Name", "_Wings0_L3"},
                                {"Name", "_UWing_AxRARE"},
                                {"Name", "_Wings0_K4"},
                                {"Name", "_Wings0_L4"},
                            },
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Wings0_F3"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="_Wings0_K5" />
                  <Property name="NameHash" value="180785959" />
                  <Property name="Type" value="LOCATOR" />
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
                  <Property name="Attributes" />
                  <Property name="Children">
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="DUDWINGS0_K5" />
                      <Property name="NameHash" value="180785959" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="3.35302" />
                        <Property name="TransY" value="-0.351762" />
                        <Property name="TransZ" value="0.350143" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="-10.000001" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_14" />
                      <Property name="NameHash" value="2774078647" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-3.35302" />
                        <Property name="TransY" value="-0.351762" />
                        <Property name="TransZ" value="0.350143" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="10.000001" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_15" />
                      <Property name="NameHash" value="3669000037" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-3.35302" />
                        <Property name="TransY" value="-0.351762" />
                        <Property name="TransZ" value="-1.036208" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="10.000001" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_16" />
                      <Property name="NameHash" value="83416057" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="3.35302" />
                        <Property name="TransY" value="-0.351762" />
                        <Property name="TransZ" value="-1.036208" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="-10.000001" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="_Wings0_L5" />
                  <Property name="NameHash" value="2695708742" />
                  <Property name="Type" value="LOCATOR" />
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
                  <Property name="Attributes" />
                  <Property name="Children">
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="DUDWINGS0_L5" />
                      <Property name="NameHash" value="2695708742" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-3.402264" />
                        <Property name="TransY" value="-0.352871" />
                        <Property name="TransZ" value="1.233973" />
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
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="WingsLL7" />
                      <Property name="NameHash" value="825895430" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="3.402264" />
                        <Property name="TransY" value="-0.352871" />
                        <Property name="TransZ" value="1.233973" />
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
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="WingsLL8" />
                      <Property name="NameHash" value="3584193252" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-3.402264" />
                        <Property name="TransY" value="-0.352871" />
                        <Property name="TransZ" value="-0.592465" />
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
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="WingsLL9" />
                      <Property name="NameHash" value="3353204571" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="3.402264" />
                        <Property name="TransY" value="-0.352871" />
                        <Property name="TransZ" value="-0.592465" />
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
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Wings0_F4"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="_Wings0_K6" />
                  <Property name="NameHash" value="1083047605" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="1.836215" />
                    <Property name="TransY" value="0" />
                    <Property name="TransZ" value="0" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children">
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="DUDWINGS0_K6" />
                      <Property name="NameHash" value="1083047605" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="3.497925" />
                        <Property name="TransY" value="-0.745968" />
                        <Property name="TransZ" value="-1.657709" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="-30.000002" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_17" />
                      <Property name="NameHash" value="3057432190" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-3.497925" />
                        <Property name="TransY" value="-0.745968" />
                        <Property name="TransZ" value="-1.657709" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="30.000002" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_18" />
                      <Property name="NameHash" value="3765177056" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-3.497925" />
                        <Property name="TransY" value="-0.745968" />
                        <Property name="TransZ" value="-3.423859" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="30.000002" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_19" />
                      <Property name="NameHash" value="279735136" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="3.497925" />
                        <Property name="TransY" value="-0.745968" />
                        <Property name="TransZ" value="-3.423859" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="-30.000002" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="_Wings0_L6" />
                  <Property name="NameHash" value="2667199712" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="1.836215" />
                    <Property name="TransY" value="0" />
                    <Property name="TransZ" value="0" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children">
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="DUDWINGS0_L6" />
                      <Property name="NameHash" value="2667199712" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-3.716782" />
                        <Property name="TransY" value="-0.002981" />
                        <Property name="TransZ" value="-1.692151" />
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
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="WingsLL10" />
                      <Property name="NameHash" value="2080054877" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="3.716782" />
                        <Property name="TransY" value="-0.002981" />
                        <Property name="TransZ" value="-1.692151" />
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
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="WingsLL11" />
                      <Property name="NameHash" value="2741562680" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-3.716782" />
                        <Property name="TransY" value="-0.002981" />
                        <Property name="TransZ" value="-3.518589" />
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
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="WingsLL12" />
                      <Property name="NameHash" value="2442086789" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="3.716782" />
                        <Property name="TransY" value="-0.002981" />
                        <Property name="TransZ" value="-3.518589" />
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
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="_UWing_AxRARE1" />
                  <Property name="NameHash" value="1786533170" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="1.836215" />
                    <Property name="TransY" value="0" />
                    <Property name="TransZ" value="0" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="0" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1" />
                    <Property name="ScaleY" value="1" />
                    <Property name="ScaleZ" value="1" />
                  </Property>
                  <Property name="Attributes" />
                  <Property name="Children">
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="DUDUWING_AXRARE1" />
                      <Property name="NameHash" value="1786533170" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="3.078511" />
                        <Property name="TransY" value="1.412158" />
                        <Property name="TransZ" value="-1.739487" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="40.000004" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_20" />
                      <Property name="NameHash" value="2371216933" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="3.078511" />
                        <Property name="TransY" value="1.412158" />
                        <Property name="TransZ" value="-3.643028" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="40.000004" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_21" />
                      <Property name="NameHash" value="2074034872" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-3.078511" />
                        <Property name="TransY" value="1.412158" />
                        <Property name="TransZ" value="-3.643028" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="-40.000004" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_22" />
                      <Property name="NameHash" value="2031828400" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-3.078511" />
                        <Property name="TransY" value="1.412158" />
                        <Property name="TransZ" value="-1.739487" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="-40.000004" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Wings0_F1"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="_Wings0_K3" />
                  <Property name="NameHash" value="3865692782" />
                  <Property name="Type" value="LOCATOR" />
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
                  <Property name="Attributes" />
                  <Property name="Children">
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="DUDWINGS0_K3" />
                      <Property name="NameHash" value="3865692782" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="1.694366" />
                        <Property name="TransY" value="-0.72795" />
                        <Property name="TransZ" value="-2.142341" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="-30.000002" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_5" />
                      <Property name="NameHash" value="2068730574" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-1.694366" />
                        <Property name="TransY" value="-0.72795" />
                        <Property name="TransZ" value="-2.142341" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="30.000002" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_6" />
                      <Property name="NameHash" value="2366174787" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-1.694366" />
                        <Property name="TransY" value="-0.72795" />
                        <Property name="TransZ" value="-3.702413" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="30.000002" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_7" />
                      <Property name="NameHash" value="2067878584" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="1.694366" />
                        <Property name="TransY" value="-0.72795" />
                        <Property name="TransZ" value="-3.702413" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="-30.000002" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="_Wings0_L3" />
                  <Property name="NameHash" value="2536025401" />
                  <Property name="Type" value="LOCATOR" />
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
                  <Property name="Attributes" />
                  <Property name="Children">
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="DUDWINGS0_L3" />
                      <Property name="NameHash" value="2536025401" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-1.852592" />
                        <Property name="TransY" value="-0.352871" />
                        <Property name="TransZ" value="-1.784739" />
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
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="WingsLL1" />
                      <Property name="NameHash" value="1444606919" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="1.852592" />
                        <Property name="TransY" value="-0.352871" />
                        <Property name="TransZ" value="-1.784739" />
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
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="WingsLL3" />
                      <Property name="NameHash" value="4265231367" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-1.852592" />
                        <Property name="TransY" value="-0.352871" />
                        <Property name="TransZ" value="-3.611177" />
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
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="WingsLL2" />
                      <Property name="NameHash" value="266135372" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="1.852592" />
                        <Property name="TransY" value="-0.352871" />
                        <Property name="TransZ" value="-3.611177" />
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
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="_UWing_AxRARE" />
                  <Property name="NameHash" value="4275571826" />
                  <Property name="Type" value="LOCATOR" />
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
                  <Property name="Attributes" />
                  <Property name="Children">
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="DUDUWING_AXRARE" />
                      <Property name="NameHash" value="4275571826" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="1.539854" />
                        <Property name="TransY" value="1.07938" />
                        <Property name="TransZ" value="-1.739487" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="40.000004" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_8" />
                      <Property name="NameHash" value="2365584949" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="1.539854" />
                        <Property name="TransY" value="1.07938" />
                        <Property name="TransZ" value="-3.643028" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="40.000004" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_9" />
                      <Property name="NameHash" value="1605802915" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-1.539854" />
                        <Property name="TransY" value="1.07938" />
                        <Property name="TransZ" value="-3.643028" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="-40.000004" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_10" />
                      <Property name="NameHash" value="3390889554" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-1.539854" />
                        <Property name="TransY" value="1.07938" />
                        <Property name="TransZ" value="-1.739487" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="-40.000004" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Wings0_F2"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="_Wings0_K4" />
                  <Property name="NameHash" value="472397290" />
                  <Property name="Type" value="LOCATOR" />
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
                  <Property name="Attributes" />
                  <Property name="Children">
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="DUDWINGS0_K4" />
                      <Property name="NameHash" value="472397290" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="1.56826" />
                        <Property name="TransY" value="-0.351762" />
                        <Property name="TransZ" value="0.350143" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="-10.000001" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_11" />
                      <Property name="NameHash" value="1543635486" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-1.56826" />
                        <Property name="TransY" value="-0.351762" />
                        <Property name="TransZ" value="0.350143" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="10.000001" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_12" />
                      <Property name="NameHash" value="2795902821" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-1.56826" />
                        <Property name="TransY" value="-0.351762" />
                        <Property name="TransZ" value="-1.736494" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="10.000001" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="K1_13" />
                      <Property name="NameHash" value="3632102163" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="1.56826" />
                        <Property name="TransY" value="-0.351762" />
                        <Property name="TransZ" value="-1.736494" />
                        <Property name="RotX" value="0" />
                        <Property name="RotY" value="0" />
                        <Property name="RotZ" value="-10.000001" />
                        <Property name="ScaleX" value="1" />
                        <Property name="ScaleY" value="1" />
                        <Property name="ScaleZ" value="1" />
                      </Property>
                      <Property name="Attributes">
                        <Property value="TkSceneNodeAttributeData.xml">
                          <Property name="Name" value="SCENEGRAPH" />
                          <Property name="AltID" value="" />
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSK\WINGSK_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="_Wings0_L4" />
                  <Property name="NameHash" value="2230716628" />
                  <Property name="Type" value="LOCATOR" />
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
                  <Property name="Attributes" />
                  <Property name="Children">
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="DUDWINGS0_L4" />
                      <Property name="NameHash" value="2230716628" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="-1.581435" />
                        <Property name="TransY" value="-0.352871" />
                        <Property name="TransZ" value="-1.151459" />
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
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_R.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property value="TkSceneNodeData.xml">
                      <Property name="Name" value="WingsLL4" />
                      <Property name="NameHash" value="575310887" />
                      <Property name="Type" value="REFERENCE" />
                      <Property name="Transform" value="TkTransformData.xml">
                        <Property name="TransX" value="1.581435" />
                        <Property name="TransY" value="-0.352871" />
                        <Property name="TransZ" value="-1.151459" />
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
                          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_L.SCENE.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "_Shuttle_Single"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="_Headlights" />
          <Property name="NameHash" value="0" />
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
              <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\HEADLIGHTS\SHUTHEADLIGHTS.SCENE.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\ACCESSORIES\HEADLAMP.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "StandingLight1"},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
            }
        },
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\ENGINES\ENGINESB\PARTS\DUDENGINEBTHRUSTER.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\DROPSHIPS\ENGINES\ENGINESB\PARTS\DUDENGINEBTHRUSTER" />
  <Property name="NameHash" value="3821677782" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\PARTS\ENGINEBTHRUSTER.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="J_Root" />
      <Property name="NameHash" value="3252211502" />
      <Property name="Type" value="JOINT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="0" />
        <Property name="TransZ" value="0" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="-90" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="1" />
        <Property name="ScaleY" value="1" />
        <Property name="ScaleZ" value="1" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="JOINTINDEX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="J_Scale" />
          <Property name="NameHash" value="64026902" />
          <Property name="Type" value="JOINT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0.55" />
            <Property name="TransY" value="0" />
            <Property name="TransZ" value="0" />
            <Property name="RotX" value="0" />
            <Property name="RotY" value="90" />
            <Property name="RotZ" value="0" />
            <Property name="ScaleX" value="0.5" />
            <Property name="ScaleY" value="0.5" />
            <Property name="ScaleZ" value="0.5" />
          </Property>
          <Property name="Attributes">
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="JOINTINDEX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2" />
            </Property>
          </Property>
          <Property name="Children">
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Stage1" />
              <Property name="NameHash" value="1790279305" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="0" />
                <Property name="TransZ" value="-1.1" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="2" />
                <Property name="ScaleY" value="2" />
                <Property name="ScaleZ" value="2" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children">
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="AE" />
                  <Property name="NameHash" value="2110272059" />
                  <Property name="Type" value="MESH" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="-1.687207" />
                    <Property name="TransY" value="-1.329538" />
                    <Property name="TransZ" value="-1.429934" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="1.0693" />
                    <Property name="ScaleY" value="1.0693" />
                    <Property name="ScaleZ" value="1.0693" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1134" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="331" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="391" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="300" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="60" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="FIRSTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LASTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LODLEVEL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLST" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="40" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="72" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.894528" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.926724" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.841498" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.261193" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1.560019" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.242055" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HASH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="11699364034995609252" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\PARTS\ENGINEBTHRUSTER\ENGINEGLOW_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="AEShape" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Stage2" />
              <Property name="NameHash" value="1483987462" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="0" />
                <Property name="TransZ" value="-1.1" />
                <Property name="RotX" value="0" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="2" />
                <Property name="ScaleY" value="2" />
                <Property name="ScaleZ" value="2" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children">
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="pCylinder10" />
                  <Property name="NameHash" value="689248453" />
                  <Property name="Type" value="MESH" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="-1E-06" />
                    <Property name="TransZ" value="0.140736" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="0.243354" />
                    <Property name="ScaleY" value="0.243354" />
                    <Property name="ScaleZ" value="0.243354" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1434" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="392" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="976" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="3072" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="584" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="FIRSTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LASTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LODLEVEL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLST" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="72" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="120" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.302084" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.302084" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-9.643144" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1.302085" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1.302085" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.000002" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HASH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="17699109134216209378" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\PARTS\ENGINEBTHRUSTER\ENGINEJET_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="pCylinderShape10" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="Stage7" />
                  <Property name="NameHash" value="3058053" />
                  <Property name="Type" value="MESH" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="-1E-06" />
                    <Property name="TransZ" value="0.41198" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="0.18824" />
                    <Property name="ScaleY" value="0.18824" />
                    <Property name="ScaleZ" value="0.18824" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="4506" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="977" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1301" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1536" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="324" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="FIRSTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LASTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LODLEVEL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLST" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="120" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="152" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.617303" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-1.617303" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.724631" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1.617303" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1.617303" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="2.663431" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HASH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="8641086052981455289" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\PARTS\ENGINEBTHRUSTER\ENGINEJET_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="StageShape7" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property value="TkSceneNodeData.xml">
                  <Property name="Name" value="C1" />
                  <Property name="NameHash" value="3411200775" />
                  <Property name="Type" value="MESH" />
                  <Property name="Transform" value="TkTransformData.xml">
                    <Property name="TransX" value="0" />
                    <Property name="TransY" value="-1E-06" />
                    <Property name="TransZ" value="0.543193" />
                    <Property name="RotX" value="0" />
                    <Property name="RotY" value="180" />
                    <Property name="RotZ" value="0" />
                    <Property name="ScaleX" value="2.314815" />
                    <Property name="ScaleY" value="2.314815" />
                    <Property name="ScaleZ" value="2.314815" />
                  </Property>
                  <Property name="Attributes">
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="6042" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1302" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1626" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="1536" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="324" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="FIRSTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LASTSKINMAT" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="LODLEVEL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLST" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="152" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="168" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.253501" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.253501" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.082535" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.253501" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="0.253501" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="-0.000001" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="HASH" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="15131237570110795455" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\PARTS\ENGINEBTHRUSTER\ENGINEJET_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property value="TkSceneNodeAttributeData.xml">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="AltID" value="" />
                      <Property name="Value" value="C1Shape" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="Trail" />
              <Property name="NameHash" value="4236082237" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData.xml">
                <Property name="TransX" value="0" />
                <Property name="TransY" value="-0.3" />
                <Property name="TransZ" value="-1.1" />
                <Property name="RotX" value="-21.100931" />
                <Property name="RotY" value="0" />
                <Property name="RotZ" value="0" />
                <Property name="ScaleX" value="0.744" />
                <Property name="ScaleY" value="0.744" />
                <Property name="ScaleZ" value="0.744" />
              </Property>
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="EngineB" />
      <Property name="NameHash" value="947670659" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="AltID" value="" />
          <Property name="Value" value="330" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1134" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="330" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="2" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="LODLEVEL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="40" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.470496" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.470496" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-0.302163" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.470496" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.470496" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.540515" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="1077645760821637270" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\PARTS\ENGINEBTHRUSTER\ENGINES_B_MAT.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="EngineBShape" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\PARTS\ENGINEBTHRUSTER\ENTITIES\ENGINEB.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\HEADLIGHTS\DROPHEADLIGHTS.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\DROPSHIPS\HEADLIGHTS\DROPHEADLIGHTS" />
  <Property name="NameHash" value="0" />
  <Property name="Type" value="LOCATOR" />
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
      <Property name="Name" value="ATTACHMENT" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\DROPSHIPS\HEADLIGHTS\ENTITIES\DROPHEADLIGHTS.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="DropSpotlight1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="9" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="10" />
        <Property name="ScaleY" value="10" />
        <Property name="ScaleZ" value="10" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.250000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="900000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
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
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\HEADLIGHTS\ENTITIES\DROPHEADLIGHTS.ENTITY.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="True" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TAKEOFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="1" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LANDING" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DISABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="DropSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="DropSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
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
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\FIGHTCGOLDHEADLIGHTS.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\FIGHTCGOLDHEADLIGHTS" />
  <Property name="NameHash" value="0" />
  <Property name="Type" value="LOCATOR" />
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
      <Property name="Name" value="ATTACHMENT" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\ENTITIES\FIGHTCGOLDHEADLIGHTS.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FightCGoldSpotlight1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="8" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="10" />
        <Property name="ScaleY" value="10" />
        <Property name="ScaleZ" value="10" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.250000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="900000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
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
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\FIGHTHEADLIGHTS.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\FIGHTHEADLIGHTS" />
  <Property name="NameHash" value="0" />
  <Property name="Type" value="LOCATOR" />
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
      <Property name="Name" value="ATTACHMENT" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\ENTITIES\FIGHTHEADLIGHTS.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="FightSpotlight1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="8" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="10" />
        <Property name="ScaleY" value="10" />
        <Property name="ScaleZ" value="10" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.250000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="900000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
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
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\VRSPEEDERHEADLIGHTS.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\VRSPEEDERHEADLIGHTS" />
  <Property name="NameHash" value="0" />
  <Property name="Type" value="LOCATOR" />
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
      <Property name="Name" value="ATTACHMENT" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\ENTITIES\VRSPEEDERHEADLIGHTS.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="VrspeederSpotlight1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="8" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="10" />
        <Property name="ScaleY" value="10" />
        <Property name="ScaleZ" value="10" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.250000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="900000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
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
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\WRACERHEADLIGHTS.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\WRACERHEADLIGHTS" />
  <Property name="NameHash" value="0" />
  <Property name="Type" value="LOCATOR" />
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
      <Property name="Name" value="ATTACHMENT" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\ENTITIES\WRACERHEADLIGHTS.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="WracerSpotlight1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="8" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="10" />
        <Property name="ScaleY" value="10" />
        <Property name="ScaleZ" value="10" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.250000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="900000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
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
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\ENTITIES\FIGHTCGOLDHEADLIGHTS.ENTITY.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="True" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TAKEOFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="1" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LANDING" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DISABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="FightCGoldSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="FightCGoldSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
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
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\ENTITIES\FIGHTHEADLIGHTS.ENTITY.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="True" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TAKEOFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="1" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LANDING" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DISABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="FightSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="FightSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
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
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\ENTITIES\VRSPEEDERHEADLIGHTS.ENTITY.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="True" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TAKEOFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="1" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LANDING" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DISABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="VrspeederSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="VrspeederSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
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
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\HEADLIGHTS\ENTITIES\WRACERHEADLIGHTS.ENTITY.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="True" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TAKEOFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="1" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LANDING" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DISABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="WracerSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="WracerSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
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
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\HEADLIGHTS\SAILHEADLIGHTS.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\SAILSHIP\HEADLIGHTS\SAILHEADLIGHTS" />
  <Property name="NameHash" value="0" />
  <Property name="Type" value="LOCATOR" />
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
      <Property name="Name" value="ATTACHMENT" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SAILSHIP\HEADLIGHTS\ENTITIES\SAILHEADLIGHTS.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SailSpotlight1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="8" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="10" />
        <Property name="ScaleY" value="10" />
        <Property name="ScaleZ" value="10" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.250000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="900000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
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
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\HEADLIGHTS\ENTITIES\SAILHEADLIGHTS.ENTITY.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="True" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TAKEOFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="1" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LANDING" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DISABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="SailSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="SailSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
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
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\HEADLIGHTS\SCIHEADLIGHTS.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\SCIENTIFIC\HEADLIGHTS\SCIHEADLIGHTS" />
  <Property name="NameHash" value="0" />
  <Property name="Type" value="LOCATOR" />
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
      <Property name="Name" value="ATTACHMENT" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SCIENTIFIC\HEADLIGHTS\ENTITIES\SCIHEADLIGHTS.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SciSpotlight1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="5" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="10" />
        <Property name="ScaleY" value="10" />
        <Property name="ScaleZ" value="10" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.250000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="900000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
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
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\HEADLIGHTS\ENTITIES\SCIHEADLIGHTS.ENTITY.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="True" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TAKEOFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="1" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LANDING" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DISABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="SciSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="True" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="SciSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="True" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
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
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\BIOHEADLIGHTS.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\BIOHEADLIGHTS" />
  <Property name="NameHash" value="0" />
  <Property name="Type" value="LOCATOR" />
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
      <Property name="Name" value="ATTACHMENT" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\ENTITIES\BIOHEADLIGHTS.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BioSpotlight1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="4" />
        <Property name="TransZ" value="11" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="10" />
        <Property name="ScaleY" value="10" />
        <Property name="ScaleZ" value="10" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.250000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="900000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
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
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\ENTITIES\BIOHEADLIGHTS.ENTITY.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="True" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TAKEOFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="1" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LANDING" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DISABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="BioSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="BioSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
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
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\ROYALHEADLIGHTS.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\ROYALHEADLIGHTS" />
  <Property name="NameHash" value="0" />
  <Property name="Type" value="LOCATOR" />
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
      <Property name="Name" value="ATTACHMENT" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\ENTITIES\ROYALHEADLIGHTS.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="RoyalSpotlight1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="13" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="10" />
        <Property name="ScaleY" value="10" />
        <Property name="ScaleZ" value="10" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.250000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="900000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
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
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\ENTITIES\ROYALHEADLIGHTS.ENTITY.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="True" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TAKEOFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="1" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LANDING" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DISABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="RoyalSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="RoyalSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
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
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\SQUIDHEADLIGHTS.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\SQUIDHEADLIGHTS" />
  <Property name="NameHash" value="0" />
  <Property name="Type" value="LOCATOR" />
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
      <Property name="Name" value="ATTACHMENT" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\ENTITIES\SQUIDHEADLIGHTS.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SquidSpotlight1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="13" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="10" />
        <Property name="ScaleY" value="10" />
        <Property name="ScaleZ" value="10" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.250000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="900000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
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
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\S-CLASS\HEADLIGHTS\ENTITIES\SQUIDHEADLIGHTS.ENTITY.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="True" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TAKEOFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="1" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LANDING" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DISABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="SquidSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="SquidSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
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
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\HEADLIGHTS\SENTINELSHIPHEADLIGHTS.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\SENTINELSHIP\HEADLIGHTS\SENTINELSHIPHEADLIGHTS" />
  <Property name="NameHash" value="0" />
  <Property name="Type" value="LOCATOR" />
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
      <Property name="Name" value="ATTACHMENT" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SENTINELSHIP\HEADLIGHTS\ENTITIES\SENTINELSHIPHEADLIGHTS.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="SentinelshipSpotlight1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="8" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="10" />
        <Property name="ScaleY" value="10" />
        <Property name="ScaleZ" value="10" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.250000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="900000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
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
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\HEADLIGHTS\SHUTHEADLIGHTS.SCENE.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\HEADLIGHTS\SHUTHEADLIGHTS" />
  <Property name="NameHash" value="0" />
  <Property name="Type" value="LOCATOR" />
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
      <Property name="Name" value="ATTACHMENT" />
      <Property name="AltID" value="" />
      <Property name="Value" value="MODELS\COMMON\SPACECRAFT\SHUTTLE\HEADLIGHTS\ENTITIES\SHUTHEADLIGHTS.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ShutSpotlight1" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LIGHT" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="1" />
        <Property name="TransZ" value="6" />
        <Property name="RotX" value="0" />
        <Property name="RotY" value="180" />
        <Property name="RotZ" value="0" />
        <Property name="ScaleX" value="10" />
        <Property name="ScaleY" value="10" />
        <Property name="ScaleZ" value="10" />
      </Property>
      <Property name="Attributes">
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FOV" />
          <Property name="AltID" value="" />
          <Property name="Value" value="45" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF" />
          <Property name="AltID" value="" />
          <Property name="Value" value="linear" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="FALLOFF_RATE" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.250000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="INTENSITY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="900000" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_R" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_G" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="COL_B" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0.3" />
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
  </Property>
</Data>
]],
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\HEADLIGHTS\ENTITIES\SENTINELSHIPHEADLIGHTS.ENTITY.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="True" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TAKEOFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="1" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LANDING" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DISABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="SentinelshipSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="SentinelshipSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
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
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\SHUTTLE\HEADLIGHTS\ENTITIES\SHUTHEADLIGHTS.ENTITY.EXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="True" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="TAKEOFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="1" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ENABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LANDING" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DISABLE_LIGHT" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
                    <Property name="BroadcastLevel" value="Scene" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DISABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="ShutSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ENABLE_LIGHT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="ShutSpotlight1" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
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