NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Personal Shield Generator",
["MOD_AUTHOR"]      = "Mjjstral & Babscoole",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "Protective shield against hazards, bullets ...",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "0H_TURN_L"},
                            ["SEC_SAVE_TO"] = "ADD_ANIM",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_ANIM",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Anim",     "TOGGLE_SHIELD"},
                                {"Filename", "MODELS/TESTS/EFFECTTEST.ANIM.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Components", "TkAnimationComponentData"},
                            ["PRECEDING_KEY_WORDS"] = {"Anims"},
                            ["SEC_ADD_NAMED"] = "ADD_ANIM",
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] =
[[
    <Property name="Components" value="GcTriggerActionComponentData">
      <Property name="GcTriggerActionComponentData">
        <Property name="HideModel" value="false" />
        <Property name="StartInactive" value="false" />
        <Property name="States">
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcNodeActivationAction">
                    <Property name="GcNodeActivationAction">
                      <Property name="NodeActiveState" value="Toggle" />
                      <Property name="Name" value="BubbleShield" />
                      <Property name="SceneToAdd" value="" />
                      <Property name="IncludePhysics" value="true" />
                      <Property name="IncludeChildPhysics" value="true" />
                      <Property name="NotifyNPC" value="false" />
                      <Property name="UseMasterModel" value="false" />
                      <Property name="UseLocalNode" value="false" />
                      <Property name="RestartEmitters" value="false" />
                      <Property name="AffectModels" value="true" />
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="TOGGLE_SHIELD" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcNodeActivationAction">
                    <Property name="GcNodeActivationAction">
                      <Property name="NodeActiveState" value="Toggle" />
                      <Property name="Name" value="BubbleShield" />
                      <Property name="SceneToAdd" value="" />
                      <Property name="IncludePhysics" value="true" />
                      <Property name="IncludeChildPhysics" value="true" />
                      <Property name="NotifyNPC" value="true" />
                      <Property name="UseMasterModel" value="true" />
                      <Property name="UseLocalNode" value="false" />
                      <Property name="RestartEmitters" value="false" />
                      <Property name="AffectModels" value="true" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcPlayAudioAction">
                    <Property name="GcPlayAudioAction">
                      <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                      <Property name="UseOcclusion" value="false" />
                      <Property name="OcclusionRadius" value="2.000000" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcPlayAudioAction">
                    <Property name="GcPlayAudioAction">
                      <Property name="Sound" value="Anomaly_Simulation_Reveal_Open" />
                      <Property name="UseOcclusion" value="false" />
                      <Property name="OcclusionRadius" value="2.000000" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcCameraShakeAction">
                    <Property name="GcCameraShakeAction">
                      <Property name="Shake" value="SLOWRUMBLE" />
                      <Property name="FalloffMin" value="5.000000" />
                      <Property name="FalloffMax" value="15.000000" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Persistent" value="false" />
        <Property name="PersistentState" value="" />
        <Property name="ResetShotTimeOnStateChange" value="false" />
        <Property name="LinkStateToBaseGrid" value="false" />
      </Property>
    </Property>
]]
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER|collisionCapsule"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="REFShieldData" />
          <Property name="NameHash" value="781004035" />
          <Property name="Type" value="REFERENCE" />
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
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD.SCENE.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="EMBEDGEOMETRY" />
              <Property name="Value" value="TRUE" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\EMOTEMENU.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title", "EMOTE_WAVE"},
                            ["SEC_SAVE_TO"] = "ADD_EMOTE",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_EMOTE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Title",               "Shield"},
                                {"ChatText",            ""},
                                {"ChatUsesPrefix",      "false"},
                                {"EmoteID",             "TOGGLE_SHIELD"},
                                {"AnimationName",       "TOGGLE_SHIELD"},
                                {"Filename",            "TEXTURES/UI/FRONTEND/ICONS/STATS/STATS.SUIT.PROTECTION.DDS"},
                                {"MoveToCancel",        "true"},
                                {"RidingAnimationName", ""},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Emotes"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_EMOTE",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD\ENTITIES\BUBBLESHIELD.ENTITY.MBIN", "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD\ENTITIES\SHIELD_A.ENTITY.MBIN",},
                        {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD\ENTITIES\BUBBLESHIELD.ENTITY.MBIN", "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD\ENTITIES\SHIELD_B.ENTITY.MBIN", "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                      "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD\ENTITIES\SHIELD_A.ENTITY.MBIN",
                      "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD\ENTITIES\SHIELD_B.ENTITY.MBIN"
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TriggerVolume",           "false"},
                                {"VolumeTriggerType",       "GenericInterior"},
                                {"IgnoreModelOwner",        "true"},
                                {"NoPlayerCollide",         "true"},
                                {"CameraInvisible",         "true"},
                                {"InvisibleForInteraction", "true"},
                                {"Health",                  "3000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD\ENTITIES\SHIELD_B.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TriggerVolume", "true"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD.SCENE.MBIN", "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD.SCENE.MBIN",},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                              {"Name", "ATTACHMENT"},
                              {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD|collisionSphere"},
                              {"Name", "BubbleShield1", "Name", "ATTACHMENT"},
                              {"Name", "BubbleShield2", "Name", "ATTACHMENT"},
                              {"Name", "Root"},
                              {"Name", "Leg1_pCube14"},
                              {"Name", "Leg1_pCube14_2"},
                              {"Name", "Leg1_pCube14_3"},
                              {"Name", "Shield"},
                            },
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BubbleShield"},
                            ["PRECEDING_KEY_WORDS"] = {"Children"},
                            ["ADD_OPTION"]  = "ADDafterLINE",
                            ["ADD"] =
[[
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="Data" />
          <Property name="NameHash" value="2810148397" />
          <Property name="Type" value="LOCATOR" />
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
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD\ENTITIES\SHIELD_A.ENTITY.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD\ENTITIES\SHIELD_B.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData">
              <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD|collisionSphere" />
              <Property name="NameHash" value="3317400431" />
              <Property name="Type" value="COLLISION" />
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
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="NAVIGATION" />
                  <Property name="Value" value="FALSE" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="TYPE" />
                  <Property name="Value" value="Sphere" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="RADIUS" />
                  <Property name="Value" value="6.503314" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Name",     "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD"},
                                {"NameHash", "2755176659"},
                            }
                        },
                    }
                },
            }
        }
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "MODELS\TESTS\EFFECTTEST.ANIM.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAnimMetadata">
  <Property name="NodeData">
    <Property name="NodeData" value="TkAnimNodeData">
      <Property name="Node" value="AnimatedTrans" />
      <Property name="RotIndex" value="0" />
      <Property name="TransIndex" value="0" />
      <Property name="ScaleIndex" value="0" />
    </Property>
  </Property>
  <Property name="AnimFrameData">
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
  </Property>
  <Property name="StillFrameData" value="TkAnimNodeFrameData">
    <Property name="Rotations">
      <Property name="Rotations" value="Quaternion">
        <Property name="X" value="0" />
        <Property name="Y" value="0" />
        <Property name="Z" value="0" />
        <Property name="W" value="1" />
        <Property name="dropComponent" value="3" />
      </Property>
    </Property>
    <Property name="Translations">
      <Property name="Translations">
        <Property name="X" value="-0.73121876" />
        <Property name="Y" value="0.08333181" />
        <Property name="Z" value="-0.02858855" />
      </Property>
    </Property>
    <Property name="Scales">
      <Property name="Scales">
        <Property name="X" value="1.000000" />
        <Property name="Y" value="1.000000" />
        <Property name="Z" value="1.000000" />
      </Property>
    </Property>
  </Property>
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="Has30HzFrames" value="false" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "LocTable.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkLocalisationTable">
  <Property name="Table">
    <Property value="TkLocalisationEntry">
      <Property name="Id" value="Shield" />
      <Property name="English" value="Shield" />
      <Property name="French" value="Shield" />
      <Property name="Italian" value="Shield" />
      <Property name="German" value="Shield" />
      <Property name="Spanish" value="Shield" />
      <Property name="Russian" value="Shield" />
      <Property name="Polish" value="Shield" />
      <Property name="Dutch" value="Shield" />
      <Property name="Portuguese" value="Shield" />
      <Property name="LatinAmericanSpanish" value="Shield" />
      <Property name="BrazilianPortuguese" value="Shield" />
      <Property name="SimplifiedChinese" value="Shield" />
      <Property name="TraditionalChinese" value="Shield" />
      <Property name="TencentChinese" value="Shield" />
      <Property name="Korean" value="Shield" />
      <Property name="Japanese" value="Shield" />
      <Property name="USEnglish" value="Shield" />
    </Property>
    <Property value="TkLocalisationEntry">
      <Property name="Id" value="TOGGLE_SHIELD" />
      <Property name="English" value="TOGGLE_SHIELD" />
      <Property name="French" value="TOGGLE_SHIELD" />
      <Property name="Italian" value="TOGGLE_SHIELD" />
      <Property name="German" value="TOGGLE_SHIELD" />
      <Property name="Spanish" value="TOGGLE_SHIELD" />
      <Property name="Russian" value="TOGGLE_SHIELD" />
      <Property name="Polish" value="TOGGLE_SHIELD" />
      <Property name="Dutch" value="TOGGLE_SHIELD" />
      <Property name="Portuguese" value="TOGGLE_SHIELD" />
      <Property name="LatinAmericanSpanish" value="TOGGLE_SHIELD" />
      <Property name="BrazilianPortuguese" value="TOGGLE_SHIELD" />
      <Property name="SimplifiedChinese" value="TOGGLE_SHIELD" />
      <Property name="TraditionalChinese" value="TOGGLE_SHIELD" />
      <Property name="TencentChinese" value="TOGGLE_SHIELD" />
      <Property name="Korean" value="TOGGLE_SHIELD" />
      <Property name="Japanese" value="TOGGLE_SHIELD" />
      <Property name="USEnglish" value="TOGGLE_SHIELD" />
    </Property>
  </Property>
</Data>
]]
        },
    }
}