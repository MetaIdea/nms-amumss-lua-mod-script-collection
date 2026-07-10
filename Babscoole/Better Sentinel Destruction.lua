NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Better Sentinel Destruction",
["MOD_AUTHOR"]      = "AyyMang",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Destroyed Sentinels fall to the ground instead of all turning into the same generic loot barrel",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\ENTITIES\CORRUPTEDDRONE.ENTITY.MBIN",
            "MODELS\COMMON\ROBOTS\DRONE\ENTITIES\DRONE.ENTITY.MBIN",
            "MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\ENTITIES\SPIDERQUAD.ENTITY.MBIN",
            "MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\ENTITIES\SWARMDRONEPLANETDATA.ENTITY.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcDestructableComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DestroyedModelUsesScale", "true"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\ROBOTS\DRONEARMOURED\ENTITIES\DRONEARMOURED.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcDestructableComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename",                "MODELS/COMMON/ROBOTS/LOOTDROP/DRONEARMOUREDLOOT.SCENE.MBIN"},
                {"DestroyedModelUsesScale", "true"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\ROBOTS\DRONESUMMONER\ENTITIES\SUMDRONE.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcDestructableComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename",                "MODELS/COMMON/ROBOTS/LOOTDROP/DRONESUMMONERLOOT.SCENE.MBIN"},
                {"DestroyedModelUsesScale", "true"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD\ENTITIES\SPIDERSMALLQUAD.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "GcDestructableComponentData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Filename",                "MODELS/COMMON/ROBOTS/LOOTDROP/SPIDER_SMALLQUADLOOT.SCENE.MBIN"},
                {"DestroyedModelUsesScale", "true"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\ROBOTS\LOOTDROP\SWARMLOOT\ENTITIES\SWARMLOOT.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Components"},
              ["ADD"] =
[[
    <Property name="Components" value="GcSpringComponentData">
      <Property name="GcSpringComponentData">
        <Property name="Enabled" value="true" />
        <Property name="Name" value="Tails" />
        <Property name="SpringLinks">
          <Property name="SpringLinks" value="GcSpringLink" _id="">
            <Property name="Enabled" value="true" />
            <Property name="Name" value="TailOver" />
            <Property name="Id" value="" />
            <Property name="LinkWeightMode" value="AlwaysOn" />
            <Property name="LinkWeightModifyingAnims" />
            <Property name="LinkWeightModifyTimeActive" value="0.200000" />
            <Property name="LinkWeightModifyTimeInactive" value="0.200000" />
            <Property name="NodeNames">
              <Property name="NodeNames" value="tailBJNT01" _index="0" />
              <Property name="NodeNames" value="tailBJNT02" _index="1" />
              <Property name="NodeNames" value="tailBJNT03" _index="2" />
              <Property name="NodeNames" value="tailBJNT04" _index="3" />
            </Property>
            <Property name="CentreOfMassLocal">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.200000" />
              <Property name="Z" value="0.500000" />
            </Property>
            <Property name="PivotLocal">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="PivotAnchorsTo" value="Itself" />
            <Property name="PivotAnchorLocal">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="PivotAnchorNode" value="" />
            <Property name="ApplyGameGravity" value="0.000000" />
            <Property name="ApplyGameWind" value="0.000000" />
            <Property name="AirSpeedFromMovementSpeedScale" value="0.000000" />
            <Property name="SpringCollides" value="false" />
            <Property name="SpringHangsDown" value="0.000000" />
            <Property name="PositionalSpringEnabled" value="true" />
            <Property name="DampingCriticality" value="0.800000" />
            <Property name="NaturalFrequency" value="12.000000" />
            <Property name="SpringPivots" value="true" />
            <Property name="ApplySpringInMovingFrame" value="true" />
            <Property name="MaximumSpeedFeltByDynamics" value="5.000000" />
            <Property name="ApplyMotionScaleIn" value="Uniform" />
            <Property name="MotionScale_Uniform" value="1.000000" />
            <Property name="MotionScale">
              <Property name="X" value="1.000000" />
              <Property name="Y" value="1.000000" />
              <Property name="Z" value="1.000000" />
            </Property>
            <Property name="ApplyMotionLimitsIn" value="Disabled" />
            <Property name="MotionLimit_MaxDetachmentDistance" value="1.000000" />
            <Property name="MotionLimitMin">
              <Property name="X" value="-1.000000" />
              <Property name="Y" value="-1.000000" />
              <Property name="Z" value="-1.000000" />
            </Property>
            <Property name="MotionLimitMax">
              <Property name="X" value="1.000000" />
              <Property name="Y" value="1.000000" />
              <Property name="Z" value="1.000000" />
            </Property>
            <Property name="MotionLimitBounciness">
              <Property name="X" value="-1.000000" />
              <Property name="Y" value="-1.000000" />
              <Property name="Z" value="-1.000000" />
            </Property>
            <Property name="AngularSpringEnabled" value="false" />
            <Property name="InfluenceOfTranslation" value="0.000000" />
            <Property name="ApplyInfluenceOfTranslationInMovingFrame" value="1.000000" />
            <Property name="DistanceWhereRotationMatchesLinear" value="0.000000" />
            <Property name="AngularDampingCriticality" value="1.000000" />
            <Property name="AngularNaturalFrequency" value="4.000000" />
            <Property name="ApplyAngularSpringInMovingFrame" value="1.000000" />
            <Property name="ApplyAngularMotionScaleIn" value="Disabled" />
            <Property name="AngularMotionScale_Uniform" value="1.000000" />
            <Property name="AngularMotionScale">
              <Property name="X" value="1.000000" />
              <Property name="Y" value="1.000000" />
              <Property name="Z" value="1.000000" />
            </Property>
            <Property name="ApplyAngularLimitsIn" value="Disabled" />
            <Property name="AngularLimitMinDeg">
              <Property name="X" value="-360.000000" />
              <Property name="Y" value="-360.000000" />
              <Property name="Z" value="-360.000000" />
            </Property>
            <Property name="AngularLimitMaxDeg">
              <Property name="X" value="360.000000" />
              <Property name="Y" value="360.000000" />
              <Property name="Z" value="360.000000" />
            </Property>
            <Property name="AngularMotionLimitBounciness">
              <Property name="X" value="-1.000000" />
              <Property name="Y" value="-1.000000" />
              <Property name="Z" value="-1.000000" />
            </Property>
          </Property>
          <Property name="SpringLinks" value="GcSpringLink">
            <Property name="Enabled" value="true" />
            <Property name="Name" value="TailUnder" />
            <Property name="Id" value="" />
            <Property name="LinkWeightMode" value="AlwaysOn" />
            <Property name="LinkWeightModifyingAnims" />
            <Property name="LinkWeightModifyTimeActive" value="0.200000" />
            <Property name="LinkWeightModifyTimeInactive" value="0.200000" />
            <Property name="NodeNames">
              <Property name="NodeNames" value="tailJNT01" _index="0" />
              <Property name="NodeNames" value="tailJNT02" _index="1" />
              <Property name="NodeNames" value="tailJNT03" _index="2" />
              <Property name="NodeNames" value="tailJNT04" _index="3" />
            </Property>
            <Property name="CentreOfMassLocal">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="-0.200000" />
              <Property name="Z" value="0.500000" />
            </Property>
            <Property name="PivotLocal">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="PivotAnchorsTo" value="Itself" />
            <Property name="PivotAnchorLocal">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="PivotAnchorNode" value="" />
            <Property name="ApplyGameGravity" value="0.000000" />
            <Property name="ApplyGameWind" value="0.000000" />
            <Property name="AirSpeedFromMovementSpeedScale" value="0.000000" />
            <Property name="SpringCollides" value="false" />
            <Property name="SpringHangsDown" value="0.200000" />
            <Property name="PositionalSpringEnabled" value="true" />
            <Property name="DampingCriticality" value="0.800000" />
            <Property name="NaturalFrequency" value="12.000000" />
            <Property name="SpringPivots" value="true" />
            <Property name="ApplySpringInMovingFrame" value="true" />
            <Property name="MaximumSpeedFeltByDynamics" value="5.000000" />
            <Property name="ApplyMotionScaleIn" value="Uniform" />
            <Property name="MotionScale_Uniform" value="2.000000" />
            <Property name="MotionScale">
              <Property name="X" value="1.000000" />
              <Property name="Y" value="1.000000" />
              <Property name="Z" value="1.000000" />
            </Property>
            <Property name="ApplyMotionLimitsIn" value="Disabled" />
            <Property name="MotionLimit_MaxDetachmentDistance" value="1.000000" />
            <Property name="MotionLimitMin">
              <Property name="X" value="-1.000000" />
              <Property name="Y" value="-1.000000" />
              <Property name="Z" value="-1.000000" />
            </Property>
            <Property name="MotionLimitMax">
              <Property name="X" value="1.000000" />
              <Property name="Y" value="1.000000" />
              <Property name="Z" value="1.000000" />
            </Property>
            <Property name="MotionLimitBounciness">
              <Property name="X" value="-1.000000" />
              <Property name="Y" value="-1.000000" />
              <Property name="Z" value="-1.000000" />
            </Property>
            <Property name="AngularSpringEnabled" value="false" />
            <Property name="InfluenceOfTranslation" value="0.000000" />
            <Property name="ApplyInfluenceOfTranslationInMovingFrame" value="1.000000" />
            <Property name="DistanceWhereRotationMatchesLinear" value="0.000000" />
            <Property name="AngularDampingCriticality" value="1.000000" />
            <Property name="AngularNaturalFrequency" value="4.000000" />
            <Property name="ApplyAngularSpringInMovingFrame" value="1.000000" />
            <Property name="ApplyAngularMotionScaleIn" value="Disabled" />
            <Property name="AngularMotionScale_Uniform" value="1.000000" />
            <Property name="AngularMotionScale">
              <Property name="X" value="1.000000" />
              <Property name="Y" value="1.000000" />
              <Property name="Z" value="1.000000" />
            </Property>
            <Property name="ApplyAngularLimitsIn" value="Disabled" />
            <Property name="AngularLimitMinDeg">
              <Property name="X" value="-360.000000" />
              <Property name="Y" value="-360.000000" />
              <Property name="Z" value="-360.000000" />
            </Property>
            <Property name="AngularLimitMaxDeg">
              <Property name="X" value="360.000000" />
              <Property name="Y" value="360.000000" />
              <Property name="Z" value="360.000000" />
            </Property>
            <Property name="AngularMotionLimitBounciness">
              <Property name="X" value="-1.000000" />
              <Property name="Y" value="-1.000000" />
              <Property name="Z" value="-1.000000" />
            </Property>
          </Property>
        </Property>
        <Property name="CollisionCapsules" />
      </Property>
    </Property>
]]
            },
          }
        },
      }
    }
  },
["ADD_FILES"] =
  {
    {
      ["FILE_DESTINATION"] = "MODELS\COMMON\ROBOTS\LOOTDROP\CORRUPTLOOT.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\ROBOTS\CORRUPTEDDRONE" />
  <Property name="NameHash" value="2634926283" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\COMMON\ROBOTS\CORRUPTEDDRONE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="LODDIST1" />
      <Property name="Value" value="50.000000" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
      <Property name="Name" value="LODDIST2" />
      <Property name="Value" value="80.000000" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
      <Property name="Name" value="LODDIST3" />
      <Property name="Value" value="150.000000" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="4" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Root" />
      <Property name="NameHash" value="2839882488" />
      <Property name="Type" value="JOINT" />
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
          <Property name="Name" value="JOINTINDEX" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="J_PanelL" />
          <Property name="NameHash" value="2869023203" />
          <Property name="Type" value="JOINT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-0.478348" />
            <Property name="TransY" value="0.108529" />
            <Property name="TransZ" value="-0.325370" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="90.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="JOINTINDEX" />
              <Property name="Value" value="2" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="J_PanelR" />
          <Property name="NameHash" value="856777312" />
          <Property name="Type" value="JOINT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.478348" />
            <Property name="TransY" value="0.108529" />
            <Property name="TransZ" value="-0.325367" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="90.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="JOINTINDEX" />
              <Property name="Value" value="3" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="2">
          <Property name="Name" value="J_Eye" />
          <Property name="NameHash" value="2826800501" />
          <Property name="Type" value="JOINT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="-0.702523" />
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
              <Property name="Name" value="JOINTINDEX" />
              <Property name="Value" value="4" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="3">
          <Property name="Name" value="J_GunL" />
          <Property name="NameHash" value="3602644936" />
          <Property name="Type" value="JOINT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-0.511425" />
            <Property name="TransY" value="-0.267998" />
            <Property name="TransZ" value="-0.492177" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.001178" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="JOINTINDEX" />
              <Property name="Value" value="5" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="J_BarrelL" />
              <Property name="NameHash" value="833297330" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.000010" />
                <Property name="TransY" value="0.000000" />
                <Property name="TransZ" value="-0.620074" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="0.000920" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="6" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="J_FlashL" />
                  <Property name="NameHash" value="2455317964" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000028" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.068691" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="0.010000" />
                    <Property name="ScaleY" value="0.010000" />
                    <Property name="ScaleZ" value="0.010000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="7" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="1">
              <Property name="Name" value="gunL" />
              <Property name="NameHash" value="684506082" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.000013" />
                <Property name="TransY" value="0.000000" />
                <Property name="TransZ" value="-0.620074" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="0.000920" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="4">
          <Property name="Name" value="J_GunR" />
          <Property name="NameHash" value="5755655" />
          <Property name="Type" value="JOINT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.511430" />
            <Property name="TransY" value="-0.267998" />
            <Property name="TransZ" value="-0.492177" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-0.000920" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="JOINTINDEX" />
              <Property name="Value" value="8" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="J_BarrelR" />
              <Property name="NameHash" value="672204910" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.000010" />
                <Property name="TransY" value="0.000000" />
                <Property name="TransZ" value="-0.620074" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="0.000920" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="9" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="J_FlashR" />
                  <Property name="NameHash" value="1075415378" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000028" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.068691" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="0.010000" />
                    <Property name="ScaleY" value="0.010000" />
                    <Property name="ScaleZ" value="0.010000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="10" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="1">
              <Property name="Name" value="gunR" />
              <Property name="NameHash" value="900978120" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.000013" />
                <Property name="TransY" value="0.000000" />
                <Property name="TransZ" value="-0.620074" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="0.000920" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes" />
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="5">
          <Property name="Name" value="J_Engine" />
          <Property name="NameHash" value="912286911" />
          <Property name="Type" value="JOINT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="-0.173273" />
            <Property name="TransZ" value="0.431036" />
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
              <Property name="Name" value="JOINTINDEX" />
              <Property name="Value" value="11" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="6">
          <Property name="Name" value="Critical" />
          <Property name="NameHash" value="2359539522" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.656042" />
            <Property name="TransY" value="0.555867" />
            <Property name="TransZ" value="0.042642" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="0.463132" />
            <Property name="ScaleY" value="0.463132" />
            <Property name="ScaleZ" value="0.463132" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="7938" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="1747" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="1770" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="36" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="23" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="372" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="380" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-0.005000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="-0.005000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-0.005000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="0.005000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="0.005000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="0.005000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="18196780867710041049" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\LAMBERT1.MATERIAL.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
              <Property name="Name" value="MESHLINK" />
              <Property name="Value" value="CriticalShape" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="MODELS\COMMON\ROBOTS\CORRUPTEDDRONE|collisionSphere2" />
              <Property name="NameHash" value="3637594209" />
              <Property name="Type" value="COLLISION" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.002657" />
                <Property name="TransZ" value="-0.092073" />
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
                  <Property name="Name" value="TYPE" />
                  <Property name="Value" value="Sphere" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                  <Property name="Name" value="RADIUS" />
                  <Property name="Value" value="0.832082" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="BodyLOD0" />
      <Property name="NameHash" value="973315710" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="13266" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="2784" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="40761" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="88500" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="37977" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="500" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="542" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-1.762692" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.527728" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-1.179427" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="1.762692" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.850370" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="2.693549" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="13748077795160834308" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\RESONATORTRIM_MAT.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="BodyLOD0Shape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="BodyLOD1" />
      <Property name="NameHash" value="2685201035" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="101982" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="40843" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="68256" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="58497" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="27413" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="1" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="587" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="629" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-1.762699" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.527728" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-1.179435" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="1.762699" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.850370" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="2.693549" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="579672127463583598" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\RESONATORTRIM_MAT.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="BodyLODShape1" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="BodyLOD2" />
      <Property name="NameHash" value="2505168149" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="160533" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="68293" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="87901" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="39864" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="19608" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="2" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="674" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="716" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-1.762699" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.530283" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-1.179488" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="1.762699" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.850279" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="2.693767" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="168218286638953982" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\RESONATORTRIM_MAT.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="BodyLODShape2" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="BodyLOD3" />
      <Property name="NameHash" value="1370443217" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="200451" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="87938" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="93139" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="9870" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="5201" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="3" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="761" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="803" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-1.093996" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.475188" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-1.179651" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="1.124708" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.849596" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="2.694017" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="7087085282960531579" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\RESONATORTRIM_MAT.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="BodyLODShape3" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="Pipe1" />
      <Property name="NameHash" value="4079929538" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="210339" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="93152" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="93502" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="1872" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="350" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="835" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="881" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="0.363381" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.050115" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.301276" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.763545" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="-0.333017" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.305590" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="7350367545574588388" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\VERTDISPLACE_MAT.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="Pipe1Shape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="Pipe2" />
      <Property name="NameHash" value="1301806491" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="212211" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="93503" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="93892" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="2088" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="389" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="881" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="927" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.604364" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.058668" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.105744" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="-0.179969" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="-0.464440" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.428286" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="18234095656715917476" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\VERTDISPLACE_MAT.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="Pipe2Shape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="Pipe3" />
      <Property name="NameHash" value="392270127" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="214299" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="93893" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="94552" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="3330" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="659" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="927" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="970" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.220792" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.885269" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.190017" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.265007" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="-0.504166" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.188643" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="1931140279820355772" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\VERTDISPLACE_MAT.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="Pipe3Shape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="Pipe4" />
      <Property name="NameHash" value="1345684182" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="217629" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="94553" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="94812" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="1368" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="259" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="970" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="1012" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.361347" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.989219" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.548501" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="-0.015142" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="-0.408815" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="-0.064456" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="10201793660756695929" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\CORRUPTEDDRONE\VERTDISPLACE_MAT.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="Pipe4Shape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="DroneData" />
      <Property name="NameHash" value="1138557908" />
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
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\LOOTDROP\CORRUPTLOOT\ENTITIES\CORRUPTLOOT.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="MODELS\COMMON\ROBOTS\CORRUPTEDDRONE|collisionSphere" />
          <Property name="NameHash" value="319599525" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-0.005861" />
            <Property name="TransY" value="-0.079189" />
            <Property name="TransZ" value="-0.091573" />
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
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Sphere" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="0.925103" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="EXPLODE" />
      <Property name="NameHash" value="2977219630" />
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
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\COMMON\ROBOTS\LOOTDROP\DRONEARMOUREDLOOT.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\ROBOTS\DRONEARMOURED" />
  <Property name="NameHash" value="1163086251" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONEARMOURED.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="ArmDrone" />
      <Property name="NameHash" value="237343436" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="23280" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="4835" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="28325" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="60636" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="23490" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="1" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="632" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="676" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.924511" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.882615" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-1.753798" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.924511" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="0.951080" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.734461" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="18406688927887158656" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONEARMOURED\ARMDRONEMAT3.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\LOOTDROP\DRONELOOT\ENTITIES\DRONELOOT.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="MODELS\COMMON\ROBOTS\DRONEARMOURED|collisionSphere3" />
          <Property name="NameHash" value="4094493611" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="-0.052525" />
            <Property name="TransZ" value="-0.509090" />
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
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Sphere" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="1.097" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Root" />
      <Property name="NameHash" value="2839882488" />
      <Property name="Type" value="JOINT" />
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
          <Property name="Name" value="JOINTINDEX" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="Critical" />
          <Property name="NameHash" value="2359539522" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="-0.917982" />
            <Property name="TransZ" value="0.042642" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="0.463132" />
            <Property name="ScaleY" value="0.463132" />
            <Property name="ScaleZ" value="0.463132" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="MODELS\COMMON\ROBOTS\DRONE|collisionSphere2" />
              <Property name="NameHash" value="4124440882" />
              <Property name="Type" value="COLLISION" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.844240" />
                <Property name="TransZ" value="-1.875500" />
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
                  <Property name="Name" value="TYPE" />
                  <Property name="Value" value="Sphere" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                  <Property name="Name" value="RADIUS" />
                  <Property name="Value" value="1.782" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="Local" />
          <Property name="NameHash" value="2003939311" />
          <Property name="Type" value="JOINT" />
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
              <Property name="Name" value="JOINTINDEX" />
              <Property name="Value" value="2" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="J_Eye" />
              <Property name="NameHash" value="2826800501" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.000000" />
                <Property name="TransZ" value="-0.702523" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="3" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="1">
              <Property name="Name" value="J_Engine" />
              <Property name="NameHash" value="912286911" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="-0.173273" />
                <Property name="TransZ" value="0.431036" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="4" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="2">
              <Property name="Name" value="RinnerWingJNT" />
              <Property name="NameHash" value="4151491672" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.159067" />
                <Property name="TransY" value="-0.375609" />
                <Property name="TransZ" value="-0.414699" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="5" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="RoutherWingJNT" />
                  <Property name="NameHash" value="771376567" />
                  <Property name="Type" value="JOINT" />
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
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="6" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="1">
                  <Property name="Name" value="J_BarrelR" />
                  <Property name="NameHash" value="672204910" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.103551" />
                    <Property name="TransY" value="-0.812518" />
                    <Property name="TransZ" value="-1.291509" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000920" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="7" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="J_FlashR" />
                      <Property name="NameHash" value="1075415378" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000028" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="-0.068691" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="0.010000" />
                        <Property name="ScaleY" value="0.010000" />
                        <Property name="ScaleZ" value="0.010000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="8" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="3">
              <Property name="Name" value="LinnerWingJNT" />
              <Property name="NameHash" value="2716573241" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.159067" />
                <Property name="TransY" value="-0.375609" />
                <Property name="TransZ" value="-0.414699" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="180.000000" />
                <Property name="RotZ" value="180.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="9" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="LouterWingJNT" />
                  <Property name="NameHash" value="2041661292" />
                  <Property name="Type" value="JOINT" />
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
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="10" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="1">
                  <Property name="Name" value="J_BarrelL" />
                  <Property name="NameHash" value="833297330" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.103551" />
                    <Property name="TransY" value="0.798746" />
                    <Property name="TransZ" value="1.291509" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="179.998413" />
                    <Property name="RotZ" value="180.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="11" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="J_FlashL" />
                      <Property name="NameHash" value="2455317964" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000028" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="-0.068691" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="0.010000" />
                        <Property name="ScaleY" value="0.010000" />
                        <Property name="ScaleZ" value="0.010000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="12" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="4">
              <Property name="Name" value="LowerGunJNT" />
              <Property name="NameHash" value="3982476663" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="-0.713480" />
                <Property name="TransZ" value="-0.034977" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="13" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="LowerGunAimJNT" />
                  <Property name="NameHash" value="2809233574" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="-0.255167" />
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
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="14" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="J_BarrelM" />
                      <Property name="NameHash" value="8927581" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="-0.000010" />
                        <Property name="TransY" value="-0.013205" />
                        <Property name="TransZ" value="-1.134629" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000920" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="15" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="J_FlashM" />
                          <Property name="NameHash" value="2602549089" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.000028" />
                            <Property name="TransY" value="0.000000" />
                            <Property name="TransZ" value="-0.068691" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="0.000000" />
                            <Property name="ScaleX" value="0.010000" />
                            <Property name="ScaleY" value="0.010000" />
                            <Property name="ScaleZ" value="0.010000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="16" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="5">
              <Property name="Name" value="TopShieldJNT" />
              <Property name="NameHash" value="996711945" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="-0.053510" />
                <Property name="TransZ" value="-0.891963" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="17" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="6">
              <Property name="Name" value="LowerShieldJNT" />
              <Property name="NameHash" value="3958141991" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="-0.320546" />
                <Property name="TransZ" value="-0.891963" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="18" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Gun" />
      <Property name="NameHash" value="1568724861" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="84708" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="28608" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="33111" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="13716" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="4503" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="2" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="4" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="692" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="740" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.460361" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.308179" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-1.280283" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.460361" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="-0.378199" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.521464" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="3678339115541680451" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONEARMOURED\ARMDRONEMAT3.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="GunShape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="RInnerWing" />
      <Property name="NameHash" value="2321883670" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="98424" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="33112" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="38149" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="13755" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="5037" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="4" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="7" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="740" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="788" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="0.062886" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.386701" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-1.840569" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.928669" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="-0.382368" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.718279" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="6426685674656495435" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONEARMOURED\ARMDRONEMAT3.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="RInnerWingShape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="LInnerWing" />
      <Property name="NameHash" value="680832088" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="112179" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="38150" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="43199" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="13755" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="5049" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="7" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="10" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="788" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="836" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.928669" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.386701" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-1.840568" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="-0.062886" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="-0.382368" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.718279" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="5933438682302729336" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONEARMOURED\ARMDRONEMAT3.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="LInnerWingShape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="RInnerWing" />
      <Property name="NameHash" value="2321883670" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="98424" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="33112" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="38149" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="13755" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="5037" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="4" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="7" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="740" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="788" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="0.062886" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.386701" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-1.840569" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.928669" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="-0.382368" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.718279" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="6426685674656495435" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONEARMOURED\ARMDRONEMAT3.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="RInnerWingShape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="LInnerWing" />
      <Property name="NameHash" value="680832088" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="112179" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="38150" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="43199" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="13755" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="5049" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="7" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="10" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="788" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="836" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.928669" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.386701" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-1.840568" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="-0.062886" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="-0.382368" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.718279" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="5933438682302729336" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONEARMOURED\ARMDRONEMAT3.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="LInnerWingShape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="LOuterWing" />
      <Property name="NameHash" value="1726766395" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="150366" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="51054" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="54796" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="11211" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="3742" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="13" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="14" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="973" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="1017" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-1.310165" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.739250" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-1.491201" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="-0.312201" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.021450" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.377183" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="9665311080197945964" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONEARMOURED\ARMDRONEMAT3.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="EXPLODE" />
          <Property name="NameHash" value="2977219630" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-1.026022" />
            <Property name="TransY" value="0.278805" />
            <Property name="TransZ" value="-0.682878" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="60.0000038" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="MODELS\COMMON\ROBOTS\DRONEARMOURED|collisionBox5" />
          <Property name="NameHash" value="3777744021" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-0.902484" />
            <Property name="TransY" value="0.231245" />
            <Property name="TransZ" value="-0.578924" />
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
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="0.323229" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="0.890590" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.564279" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="ROuterWing" />
      <Property name="NameHash" value="750249182" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="162219" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="55057" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="58797" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="11211" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="3740" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="15" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="16" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="1064" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="1108" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="0.312201" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.739250" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-1.491201" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="1.310165" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.021450" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.377183" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="9467122694878306591" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONEARMOURED\ARMDRONEMAT3.MATERIAL.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="MODELS\COMMON\ROBOTS\DRONEARMOURED|collisionBox4" />
          <Property name="NameHash" value="2514793988" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.875627" />
            <Property name="TransY" value="0.231245" />
            <Property name="TransZ" value="-0.578924" />
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
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="0.323229" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="0.890590" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="1.564279" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="EXPLODE" />
          <Property name="NameHash" value="2977219630" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.960633" />
            <Property name="TransY" value="0.278805" />
            <Property name="TransZ" value="-0.682878" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="-45.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="EXPLODE" />
      <Property name="NameHash" value="2977219630" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="-0.152006" />
        <Property name="TransZ" value="-0.658313" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\COMMON\ROBOTS\LOOTDROP\DRONELOOT.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\ROBOTS\DRONE" />
  <Property name="NameHash" value="2265475647" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONE.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Drone" />
      <Property name="NameHash" value="3641229020" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="2280" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="439" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="17045" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="43104" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="16606" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="9" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="48" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="96" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.727520" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.944339" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-1.179429" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.727520" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="0.829775" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.734438" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="661619378826939586" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONE\DRONE_MAT.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\LOOTDROP\DRONELOOT\ENTITIES\DRONELOOT.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="MODELS\COMMON\ROBOTS\DRONE|collisionSphere" />
          <Property name="NameHash" value="1139461367" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="-0.052525" />
            <Property name="TransZ" value="-0.156196" />
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
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Sphere" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="0.762401" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Root" />
      <Property name="NameHash" value="2839882488" />
      <Property name="Type" value="JOINT" />
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
          <Property name="Name" value="JOINTINDEX" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="Local" />
          <Property name="NameHash" value="2003939311" />
          <Property name="Type" value="JOINT" />
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
              <Property name="Name" value="JOINTINDEX" />
              <Property name="Value" value="2" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="J_PanelL" />
              <Property name="NameHash" value="2869023203" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.478348" />
                <Property name="TransY" value="0.108529" />
                <Property name="TransZ" value="-0.325370" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="90.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="3" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="1">
              <Property name="Name" value="J_PanelR" />
              <Property name="NameHash" value="856777312" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.478348" />
                <Property name="TransY" value="0.108529" />
                <Property name="TransZ" value="-0.325367" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="90.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="4" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="2">
              <Property name="Name" value="J_Eye" />
              <Property name="NameHash" value="2826800501" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.000000" />
                <Property name="TransZ" value="-0.702523" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="5" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="3">
              <Property name="Name" value="J_GunL" />
              <Property name="NameHash" value="3602644936" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.511425" />
                <Property name="TransY" value="-0.267998" />
                <Property name="TransZ" value="-0.492177" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="0.001178" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="6" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="J_BarrelL" />
                  <Property name="NameHash" value="833297330" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.000010" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.620074" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000920" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="7" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="J_FlashL" />
                      <Property name="NameHash" value="2455317964" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000028" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="-0.068691" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="0.010000" />
                        <Property name="ScaleY" value="0.010000" />
                        <Property name="ScaleZ" value="0.010000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="8" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="1">
                  <Property name="Name" value="gunL" />
                  <Property name="NameHash" value="684506082" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.000013" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.620074" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000920" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="4">
              <Property name="Name" value="J_GunR" />
              <Property name="NameHash" value="5755655" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.511430" />
                <Property name="TransY" value="-0.267998" />
                <Property name="TransZ" value="-0.492177" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="-0.000920" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="9" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="J_BarrelR" />
                  <Property name="NameHash" value="672204910" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.000010" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.620074" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000920" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="10" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="J_FlashR" />
                      <Property name="NameHash" value="1075415378" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000028" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="-0.068691" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="0.010000" />
                        <Property name="ScaleY" value="0.010000" />
                        <Property name="ScaleZ" value="0.010000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="11" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="1">
                  <Property name="Name" value="gunR" />
                  <Property name="NameHash" value="900978120" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.000013" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.620074" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000920" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="5">
              <Property name="Name" value="J_Engine" />
              <Property name="NameHash" value="912286911" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="-0.173273" />
                <Property name="TransZ" value="0.431036" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="12" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="6">
              <Property name="Name" value="Critical" />
              <Property name="NameHash" value="2359539522" />
              <Property name="Type" value="MESH" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="-0.917982" />
                <Property name="TransZ" value="0.042642" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="0.463132" />
                <Property name="ScaleY" value="0.463132" />
                <Property name="ScaleZ" value="0.463132" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="Value" value="54246" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="Value" value="18993" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="Value" value="19016" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="Value" value="36" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="Value" value="23" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
                  <Property name="Name" value="FIRSTSKINMAT" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
                  <Property name="Name" value="LASTSKINMAT" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
                  <Property name="Name" value="LODLEVEL" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
                  <Property name="Name" value="BOUNDHULLST" />
                  <Property name="Value" value="492" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="Value" value="500" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="Value" value="-0.005000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="Value" value="-0.005000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="Value" value="-0.005000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="Value" value="0.005000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="Value" value="0.005000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="Value" value="0.005000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
                  <Property name="Name" value="HASH" />
                  <Property name="Value" value="18196780867710041049" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONE\LAMBERT1.MATERIAL.MBIN" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="Value" value="CriticalShape" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="MODELS\COMMON\ROBOTS\DRONE|collisionSphere2" />
                  <Property name="NameHash" value="4124440882" />
                  <Property name="Type" value="COLLISION" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="0.002657" />
                    <Property name="TransZ" value="-0.092073" />
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
                      <Property name="Name" value="TYPE" />
                      <Property name="Value" value="Sphere" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                      <Property name="Name" value="RADIUS" />
                      <Property name="Value" value="0.832082" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="EXPLODE" />
      <Property name="NameHash" value="2977219630" />
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
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\COMMON\ROBOTS\LOOTDROP\DRONESUMMONERLOOT.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\ROBOTS\DRONESUMMONER" />
  <Property name="NameHash" value="4106879423" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONESUMMONER.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="SumDrone" />
      <Property name="NameHash" value="258921479" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="12954" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="2706" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="3063" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="564" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="357" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="7" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="420" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="453" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.749297" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.362588" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.804434" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.749297" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.089087" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.071067" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="7584708210139987860" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONESUMMONER\ARMDRONEMAT1.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\LOOTDROP\DRONELOOT\ENTITIES\DRONELOOT.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="SUB1SumDrone" />
          <Property name="NameHash" value="3111586930" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="13518" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="3064" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="39987" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="95916" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="36923" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="7" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="31" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="453" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="497" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-0.855179" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="-0.944339" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-1.178036" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="0.855179" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="1.251635" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="0.740266" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="3962723747815114581" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\COMMON\ROBOTS\DRONESUMMONER\ARMDRONEMAT_SKINNED.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="MODELS\COMMON\ROBOTS\DRONESUMMONER|collisionSphere4" />
          <Property name="NameHash" value="3348981508" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="-0.052525" />
            <Property name="TransZ" value="-0.156196" />
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
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Sphere" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="0.762401" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Root" />
      <Property name="NameHash" value="2839882488" />
      <Property name="Type" value="JOINT" />
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
          <Property name="Name" value="JOINTINDEX" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="Local" />
          <Property name="NameHash" value="2003939311" />
          <Property name="Type" value="JOINT" />
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
              <Property name="Name" value="JOINTINDEX" />
              <Property name="Value" value="2" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="Critical" />
              <Property name="NameHash" value="2359539522" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.917982" />
                <Property name="TransZ" value="0.042642" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="0.463132" />
                <Property name="ScaleY" value="0.463132" />
                <Property name="ScaleZ" value="0.463132" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes" />
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="MODELS\COMMON\ROBOTS\DRONE|collisionSphere2" />
                  <Property name="NameHash" value="4124440882" />
                  <Property name="Type" value="COLLISION" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="-0.002657" />
                    <Property name="TransZ" value="-1.329200" />
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
                      <Property name="Name" value="TYPE" />
                      <Property name="Value" value="Sphere" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                      <Property name="Name" value="RADIUS" />
                      <Property name="Value" value="0.486" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="1">
              <Property name="Name" value="J_PanelL" />
              <Property name="NameHash" value="2869023203" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.478348" />
                <Property name="TransY" value="0.108529" />
                <Property name="TransZ" value="-0.325370" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="90.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="3" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="2">
              <Property name="Name" value="J_PanelR" />
              <Property name="NameHash" value="856777312" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.478348" />
                <Property name="TransY" value="0.108529" />
                <Property name="TransZ" value="-0.325367" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="90.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="4" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="3">
              <Property name="Name" value="J_Eye" />
              <Property name="NameHash" value="2826800501" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.000000" />
                <Property name="TransZ" value="-0.702523" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="5" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="4">
              <Property name="Name" value="J_GunL" />
              <Property name="NameHash" value="3602644936" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.511425" />
                <Property name="TransY" value="-0.267998" />
                <Property name="TransZ" value="-0.492177" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="0.001178" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="6" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="J_BarrelL" />
                  <Property name="NameHash" value="833297330" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.000010" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.620074" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000920" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="7" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="J_FlashL" />
                      <Property name="NameHash" value="2455317964" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000028" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="-0.068691" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="0.010000" />
                        <Property name="ScaleY" value="0.010000" />
                        <Property name="ScaleZ" value="0.010000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="8" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="5">
              <Property name="Name" value="J_GunR" />
              <Property name="NameHash" value="5755655" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.511430" />
                <Property name="TransY" value="-0.267998" />
                <Property name="TransZ" value="-0.492177" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="-0.000920" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="9" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="J_BarrelR" />
                  <Property name="NameHash" value="672204910" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.000010" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.620074" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000920" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="10" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="J_FlashR" />
                      <Property name="NameHash" value="1075415378" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000028" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="-0.068691" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="0.010000" />
                        <Property name="ScaleY" value="0.010000" />
                        <Property name="ScaleZ" value="0.010000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="11" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="1">
                  <Property name="Name" value="gunR" />
                  <Property name="NameHash" value="900978120" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.025481" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.620075" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000920" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="6">
              <Property name="Name" value="J_Engine" />
              <Property name="NameHash" value="912286911" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="-0.173273" />
                <Property name="TransZ" value="0.431036" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="12" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="7">
              <Property name="Name" value="ScannerJNT" />
              <Property name="NameHash" value="3713992252" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.464799" />
                <Property name="TransZ" value="-0.360000" />
                <Property name="RotX" value="-24.500000" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="13" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="LeftInLeg" />
                  <Property name="NameHash" value="4084197126" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.176663" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="-65.528000" />
                    <Property name="RotY" value="90.000000" />
                    <Property name="RotZ" value="-90.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="14" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="LeftOutLeg" />
                      <Property name="NameHash" value="3147232014" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="-0.198204" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="0.307030" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="180.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="15" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="LeftFlap" />
                          <Property name="NameHash" value="2400052467" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.000000" />
                            <Property name="TransY" value="0.000000" />
                            <Property name="TransZ" value="-0.376879" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="180.000000" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="16" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="1">
                  <Property name="Name" value="RightInLeg" />
                  <Property name="NameHash" value="291323632" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.176660" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="-65.528000" />
                    <Property name="RotY" value="-90.000000" />
                    <Property name="RotZ" value="-90.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="17" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="RightOutLeg" />
                      <Property name="NameHash" value="1416791982" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="-0.198204" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="0.307030" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="180.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="18" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="RightFlap" />
                          <Property name="NameHash" value="871320235" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.000000" />
                            <Property name="TransY" value="0.000000" />
                            <Property name="TransZ" value="-0.376879" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="180.000000" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="19" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="2">
                  <Property name="Name" value="BackInLeg" />
                  <Property name="NameHash" value="1977940189" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="0.176660" />
                    <Property name="RotX" value="-65.528000" />
                    <Property name="RotY" value="180.000000" />
                    <Property name="RotZ" value="-90.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="20" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="BackOutLeg" />
                      <Property name="NameHash" value="920723444" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="-0.198204" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="0.307030" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="180.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="21" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="BackFlap" />
                          <Property name="NameHash" value="2261083931" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.000000" />
                            <Property name="TransY" value="0.000000" />
                            <Property name="TransZ" value="-0.376879" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="180.000000" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="22" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="3">
                  <Property name="Name" value="FrontInLeg" />
                  <Property name="NameHash" value="2337329272" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.176660" />
                    <Property name="RotX" value="-65.528000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="-90.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="23" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="FrontOutLeg" />
                      <Property name="NameHash" value="193260461" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="-0.201685" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="0.305169" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="180.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="24" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="FrontFlap" />
                          <Property name="NameHash" value="1205419407" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-0.003481" />
                            <Property name="TransY" value="0.000000" />
                            <Property name="TransZ" value="-0.375018" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="180.000000" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="25" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="4">
                  <Property name="Name" value="FrontAntJNT" />
                  <Property name="NameHash" value="3952340059" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="0.263292" />
                    <Property name="TransZ" value="-0.259556" />
                    <Property name="RotX" value="-79.858330" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="-90.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="26" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="5">
                  <Property name="Name" value="LeftAntJNT" />
                  <Property name="NameHash" value="2504652203" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.259556" />
                    <Property name="TransY" value="0.263292" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="-79.858330" />
                    <Property name="RotY" value="90.000000" />
                    <Property name="RotZ" value="-90.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="27" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="CapJNT" />
                      <Property name="NameHash" value="1629853550" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.301683" />
                        <Property name="TransY" value="0.000999" />
                        <Property name="TransZ" value="-0.212476" />
                        <Property name="RotX" value="90.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="-79.858320" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="28" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="LightJNT" />
                          <Property name="NameHash" value="1535704240" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-0.095000" />
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
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="29" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="6">
                  <Property name="Name" value="BackAntJNT" />
                  <Property name="NameHash" value="934994080" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.000656" />
                    <Property name="TransY" value="0.263292" />
                    <Property name="TransZ" value="0.259555" />
                    <Property name="RotX" value="-79.858330" />
                    <Property name="RotY" value="179.77565" />
                    <Property name="RotZ" value="-90.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="30" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="7">
                  <Property name="Name" value="RightAntJNT" />
                  <Property name="NameHash" value="460187673" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.259555" />
                    <Property name="TransY" value="0.263292" />
                    <Property name="TransZ" value="0.000656" />
                    <Property name="RotX" value="-79.858330" />
                    <Property name="RotY" value="-90.224360" />
                    <Property name="RotZ" value="-90.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="31" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="EXPLODE" />
      <Property name="NameHash" value="2977219630" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.076374" />
        <Property name="TransZ" value="-0.266596" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\COMMON\ROBOTS\LOOTDROP\MECHLOOT.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\ROBOTS\SENTINELMECH" />
  <Property name="NameHash" value="2455925208" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\COMMON\ROBOTS\SENTINELMECH.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="LODDIST1" />
      <Property name="Value" value="50.000000" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
      <Property name="Name" value="LODDIST2" />
      <Property name="Value" value="80.000000" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
      <Property name="Name" value="LODDIST3" />
      <Property name="Value" value="150.000000" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="4" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="TrajectorySHJnt" />
      <Property name="NameHash" value="3441478114" />
      <Property name="Type" value="JOINT" />
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
          <Property name="Name" value="JOINTINDEX" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="ROOTSHJnt" />
          <Property name="NameHash" value="4052183372" />
          <Property name="Type" value="JOINT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="1.927637" />
            <Property name="TransZ" value="0.017578" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="-90.000000" />
            <Property name="RotZ" value="90.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="JOINTINDEX" />
              <Property name="Value" value="2" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="spine_01SHJnt" />
              <Property name="NameHash" value="2976108325" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.308975" />
                <Property name="TransY" value="0.100279" />
                <Property name="TransZ" value="-0.000082" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="3" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="spine_TopSHJnt" />
                  <Property name="NameHash" value="823423660" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.194982" />
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
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="4" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="l_shoulder_AuxSHJnt" />
                      <Property name="NameHash" value="2985721446" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="1.515811" />
                        <Property name="TransY" value="0.100456" />
                        <Property name="TransZ" value="-0.603987" />
                        <Property name="RotX" value="90.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="-90.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="5" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="l_shd_btm_out_AuxSHJnt" />
                          <Property name="NameHash" value="3673578951" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.778967" />
                            <Property name="TransY" value="0.086267" />
                            <Property name="TransZ" value="0.016404" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="180.000000" />
                            <Property name="RotZ" value="-30.161170" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="6" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                        <Property name="Children" value="TkSceneNodeData" _index="1">
                          <Property name="Name" value="l_shd_around_AuxSHJnt" />
                          <Property name="NameHash" value="2392017284" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.778967" />
                            <Property name="TransY" value="0.086267" />
                            <Property name="TransZ" value="0.016404" />
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
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="7" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="l_arm_ClavicleSHJnt" />
                              <Property name="NameHash" value="2778517407" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="-0.243061" />
                                <Property name="TransZ" value="0.000000" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="-90.000000" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="8" />
                                </Property>
                              </Property>
                              <Property name="Children">
                                <Property name="Children" value="TkSceneNodeData" _index="0">
                                  <Property name="Name" value="l_arm_ShoulderSHJnt" />
                                  <Property name="NameHash" value="466976412" />
                                  <Property name="Type" value="JOINT" />
                                  <Property name="Transform" value="TkTransformData">
                                    <Property name="TransX" value="0.000000" />
                                    <Property name="TransY" value="0.320148" />
                                    <Property name="TransZ" value="0.000000" />
                                    <Property name="RotX" value="-0.543093" />
                                    <Property name="RotY" value="-0.649108" />
                                    <Property name="RotZ" value="-0.386773" />
                                    <Property name="ScaleX" value="1.000000" />
                                    <Property name="ScaleY" value="1.000000" />
                                    <Property name="ScaleZ" value="1.000000" />
                                  </Property>
                                  <Property name="PlatformExclusion" value="0" />
                                  <Property name="Attributes">
                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                      <Property name="Name" value="JOINTINDEX" />
                                      <Property name="Value" value="9" />
                                    </Property>
                                  </Property>
                                  <Property name="Children">
                                    <Property name="Children" value="TkSceneNodeData" _index="0">
                                      <Property name="Name" value="l_arm_ElbowSHJnt" />
                                      <Property name="NameHash" value="2701499047" />
                                      <Property name="Type" value="JOINT" />
                                      <Property name="Transform" value="TkTransformData">
                                        <Property name="TransX" value="1.140166" />
                                        <Property name="TransY" value="0.000000" />
                                        <Property name="TransZ" value="0.000000" />
                                        <Property name="RotX" value="0.000000" />
                                        <Property name="RotY" value="42.7769356" />
                                        <Property name="RotZ" value="0.000000" />
                                        <Property name="ScaleX" value="1.000000" />
                                        <Property name="ScaleY" value="1.000000" />
                                        <Property name="ScaleZ" value="1.000000" />
                                      </Property>
                                      <Property name="PlatformExclusion" value="0" />
                                      <Property name="Attributes">
                                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                          <Property name="Name" value="JOINTINDEX" />
                                          <Property name="Value" value="10" />
                                        </Property>
                                      </Property>
                                      <Property name="Children">
                                        <Property name="Children" value="TkSceneNodeData" _index="0">
                                          <Property name="Name" value="l_arm_WristSHJnt" />
                                          <Property name="NameHash" value="2019730741" />
                                          <Property name="Type" value="JOINT" />
                                          <Property name="Transform" value="TkTransformData">
                                            <Property name="TransX" value="1.091023" />
                                            <Property name="TransY" value="0.000000" />
                                            <Property name="TransZ" value="0.000000" />
                                            <Property name="RotX" value="0.103066" />
                                            <Property name="RotY" value="2.874599" />
                                            <Property name="RotZ" value="0.658723" />
                                            <Property name="ScaleX" value="1.000000" />
                                            <Property name="ScaleY" value="1.000000" />
                                            <Property name="ScaleZ" value="1.000000" />
                                          </Property>
                                          <Property name="PlatformExclusion" value="0" />
                                          <Property name="Attributes">
                                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                              <Property name="Name" value="JOINTINDEX" />
                                              <Property name="Value" value="11" />
                                            </Property>
                                          </Property>
                                          <Property name="Children">
                                            <Property name="Children" value="TkSceneNodeData" _index="0">
                                              <Property name="Name" value="l_thumb_01_01SHJnt" />
                                              <Property name="NameHash" value="3696897986" />
                                              <Property name="Type" value="JOINT" />
                                              <Property name="Transform" value="TkTransformData">
                                                <Property name="TransX" value="0.109027" />
                                                <Property name="TransY" value="-0.089879" />
                                                <Property name="TransZ" value="0.079300" />
                                                <Property name="RotX" value="0.000000" />
                                                <Property name="RotY" value="180.000000" />
                                                <Property name="RotZ" value="-135.000000" />
                                                <Property name="ScaleX" value="1.000000" />
                                                <Property name="ScaleY" value="1.000000" />
                                                <Property name="ScaleZ" value="1.000000" />
                                              </Property>
                                              <Property name="PlatformExclusion" value="0" />
                                              <Property name="Attributes">
                                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                  <Property name="Name" value="JOINTINDEX" />
                                                  <Property name="Value" value="12" />
                                                </Property>
                                              </Property>
                                              <Property name="Children">
                                                <Property name="Children" value="TkSceneNodeData" _index="0">
                                                  <Property name="Name" value="l_thumb_01_02SHJnt" />
                                                  <Property name="NameHash" value="3999261938" />
                                                  <Property name="Type" value="JOINT" />
                                                  <Property name="Transform" value="TkTransformData">
                                                    <Property name="TransX" value="0.121507" />
                                                    <Property name="TransY" value="0.000000" />
                                                    <Property name="TransZ" value="0.000000" />
                                                    <Property name="RotX" value="0.000000" />
                                                    <Property name="RotY" value="0.000000" />
                                                    <Property name="RotZ" value="-15.000001" />
                                                    <Property name="ScaleX" value="1.000000" />
                                                    <Property name="ScaleY" value="1.000000" />
                                                    <Property name="ScaleZ" value="1.000000" />
                                                  </Property>
                                                  <Property name="PlatformExclusion" value="0" />
                                                  <Property name="Attributes">
                                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                      <Property name="Name" value="JOINTINDEX" />
                                                      <Property name="Value" value="13" />
                                                    </Property>
                                                  </Property>
                                                  <Property name="Children">
                                                    <Property name="Children" value="TkSceneNodeData" _index="0">
                                                      <Property name="Name" value="l_thumb_01_03SHJnt" />
                                                      <Property name="NameHash" value="822233448" />
                                                      <Property name="Type" value="JOINT" />
                                                      <Property name="Transform" value="TkTransformData">
                                                        <Property name="TransX" value="0.105265" />
                                                        <Property name="TransY" value="0.000000" />
                                                        <Property name="TransZ" value="0.000000" />
                                                        <Property name="RotX" value="0.000000" />
                                                        <Property name="RotY" value="0.000000" />
                                                        <Property name="RotZ" value="-21.9999981" />
                                                        <Property name="ScaleX" value="1.000000" />
                                                        <Property name="ScaleY" value="1.000000" />
                                                        <Property name="ScaleZ" value="1.000000" />
                                                      </Property>
                                                      <Property name="PlatformExclusion" value="0" />
                                                      <Property name="Attributes">
                                                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                          <Property name="Name" value="JOINTINDEX" />
                                                          <Property name="Value" value="14" />
                                                        </Property>
                                                      </Property>
                                                      <Property name="Children" />
                                                    </Property>
                                                  </Property>
                                                </Property>
                                              </Property>
                                            </Property>
                                            <Property name="Children" value="TkSceneNodeData" _index="1">
                                              <Property name="Name" value="l_thumb_02_01SHJnt" />
                                              <Property name="NameHash" value="1210867404" />
                                              <Property name="Type" value="JOINT" />
                                              <Property name="Transform" value="TkTransformData">
                                                <Property name="TransX" value="0.109027" />
                                                <Property name="TransY" value="-0.089879" />
                                                <Property name="TransZ" value="-0.076157" />
                                                <Property name="RotX" value="0.000000" />
                                                <Property name="RotY" value="180.000000" />
                                                <Property name="RotZ" value="-135.000000" />
                                                <Property name="ScaleX" value="1.000000" />
                                                <Property name="ScaleY" value="1.000000" />
                                                <Property name="ScaleZ" value="1.000000" />
                                              </Property>
                                              <Property name="PlatformExclusion" value="0" />
                                              <Property name="Attributes">
                                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                  <Property name="Name" value="JOINTINDEX" />
                                                  <Property name="Value" value="15" />
                                                </Property>
                                              </Property>
                                              <Property name="Children">
                                                <Property name="Children" value="TkSceneNodeData" _index="0">
                                                  <Property name="Name" value="l_thumb_02_02SHJnt" />
                                                  <Property name="NameHash" value="692544132" />
                                                  <Property name="Type" value="JOINT" />
                                                  <Property name="Transform" value="TkTransformData">
                                                    <Property name="TransX" value="0.121507" />
                                                    <Property name="TransY" value="0.000000" />
                                                    <Property name="TransZ" value="-0.000035" />
                                                    <Property name="RotX" value="0.000000" />
                                                    <Property name="RotY" value="0.000000" />
                                                    <Property name="RotZ" value="-15.000001" />
                                                    <Property name="ScaleX" value="1.000000" />
                                                    <Property name="ScaleY" value="1.000000" />
                                                    <Property name="ScaleZ" value="1.000000" />
                                                  </Property>
                                                  <Property name="PlatformExclusion" value="0" />
                                                  <Property name="Attributes">
                                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                      <Property name="Name" value="JOINTINDEX" />
                                                      <Property name="Value" value="16" />
                                                    </Property>
                                                  </Property>
                                                  <Property name="Children">
                                                    <Property name="Children" value="TkSceneNodeData" _index="0">
                                                      <Property name="Name" value="l_thumb_02_03SHJnt" />
                                                      <Property name="NameHash" value="2670261820" />
                                                      <Property name="Type" value="JOINT" />
                                                      <Property name="Transform" value="TkTransformData">
                                                        <Property name="TransX" value="0.105265" />
                                                        <Property name="TransY" value="0.000000" />
                                                        <Property name="TransZ" value="0.000035" />
                                                        <Property name="RotX" value="0.000000" />
                                                        <Property name="RotY" value="0.000000" />
                                                        <Property name="RotZ" value="-9.622194" />
                                                        <Property name="ScaleX" value="1.000000" />
                                                        <Property name="ScaleY" value="1.000000" />
                                                        <Property name="ScaleZ" value="1.000000" />
                                                      </Property>
                                                      <Property name="PlatformExclusion" value="0" />
                                                      <Property name="Attributes">
                                                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                          <Property name="Name" value="JOINTINDEX" />
                                                          <Property name="Value" value="17" />
                                                        </Property>
                                                      </Property>
                                                      <Property name="Children" />
                                                    </Property>
                                                  </Property>
                                                </Property>
                                              </Property>
                                            </Property>
                                            <Property name="Children" value="TkSceneNodeData" _index="2">
                                              <Property name="Name" value="l_finger_01_01SHJnt" />
                                              <Property name="NameHash" value="601270599" />
                                              <Property name="Type" value="JOINT" />
                                              <Property name="Transform" value="TkTransformData">
                                                <Property name="TransX" value="0.282542" />
                                                <Property name="TransY" value="0.028491" />
                                                <Property name="TransZ" value="0.063918" />
                                                <Property name="RotX" value="0.000000" />
                                                <Property name="RotY" value="0.000000" />
                                                <Property name="RotZ" value="-5.000000" />
                                                <Property name="ScaleX" value="1.000000" />
                                                <Property name="ScaleY" value="1.000000" />
                                                <Property name="ScaleZ" value="1.000000" />
                                              </Property>
                                              <Property name="PlatformExclusion" value="0" />
                                              <Property name="Attributes">
                                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                  <Property name="Name" value="JOINTINDEX" />
                                                  <Property name="Value" value="18" />
                                                </Property>
                                              </Property>
                                              <Property name="Children">
                                                <Property name="Children" value="TkSceneNodeData" _index="0">
                                                  <Property name="Name" value="l_finger_01_02SHJnt" />
                                                  <Property name="NameHash" value="3184599204" />
                                                  <Property name="Type" value="JOINT" />
                                                  <Property name="Transform" value="TkTransformData">
                                                    <Property name="TransX" value="0.121508" />
                                                    <Property name="TransY" value="0.000000" />
                                                    <Property name="TransZ" value="0.000650" />
                                                    <Property name="RotX" value="0.000000" />
                                                    <Property name="RotY" value="0.000000" />
                                                    <Property name="RotZ" value="-10.204000" />
                                                    <Property name="ScaleX" value="1.000000" />
                                                    <Property name="ScaleY" value="1.000000" />
                                                    <Property name="ScaleZ" value="1.000000" />
                                                  </Property>
                                                  <Property name="PlatformExclusion" value="0" />
                                                  <Property name="Attributes">
                                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                      <Property name="Name" value="JOINTINDEX" />
                                                      <Property name="Value" value="19" />
                                                    </Property>
                                                  </Property>
                                                  <Property name="Children">
                                                    <Property name="Children" value="TkSceneNodeData" _index="0">
                                                      <Property name="Name" value="l_finger_01_03SHJnt" />
                                                      <Property name="NameHash" value="1790306081" />
                                                      <Property name="Type" value="JOINT" />
                                                      <Property name="Transform" value="TkTransformData">
                                                        <Property name="TransX" value="0.121505" />
                                                        <Property name="TransY" value="0.000432" />
                                                        <Property name="TransZ" value="0.000444" />
                                                        <Property name="RotX" value="0.000000" />
                                                        <Property name="RotY" value="0.000000" />
                                                        <Property name="RotZ" value="-9.999887" />
                                                        <Property name="ScaleX" value="1.000000" />
                                                        <Property name="ScaleY" value="1.000000" />
                                                        <Property name="ScaleZ" value="1.000000" />
                                                      </Property>
                                                      <Property name="PlatformExclusion" value="0" />
                                                      <Property name="Attributes">
                                                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                          <Property name="Name" value="JOINTINDEX" />
                                                          <Property name="Value" value="20" />
                                                        </Property>
                                                      </Property>
                                                      <Property name="Children" />
                                                    </Property>
                                                  </Property>
                                                </Property>
                                              </Property>
                                            </Property>
                                            <Property name="Children" value="TkSceneNodeData" _index="3">
                                              <Property name="Name" value="l_finger_02_01SHJnt" />
                                              <Property name="NameHash" value="767180954" />
                                              <Property name="Type" value="JOINT" />
                                              <Property name="Transform" value="TkTransformData">
                                                <Property name="TransX" value="0.282543" />
                                                <Property name="TransY" value="0.028491" />
                                                <Property name="TransZ" value="-0.058790" />
                                                <Property name="RotX" value="0.000000" />
                                                <Property name="RotY" value="0.000000" />
                                                <Property name="RotZ" value="-5.000000" />
                                                <Property name="ScaleX" value="1.000000" />
                                                <Property name="ScaleY" value="1.000000" />
                                                <Property name="ScaleZ" value="1.000000" />
                                              </Property>
                                              <Property name="PlatformExclusion" value="0" />
                                              <Property name="Attributes">
                                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                  <Property name="Name" value="JOINTINDEX" />
                                                  <Property name="Value" value="21" />
                                                </Property>
                                              </Property>
                                              <Property name="Children">
                                                <Property name="Children" value="TkSceneNodeData" _index="0">
                                                  <Property name="Name" value="l_finger_02_02SHJnt" />
                                                  <Property name="NameHash" value="693650709" />
                                                  <Property name="Type" value="JOINT" />
                                                  <Property name="Transform" value="TkTransformData">
                                                    <Property name="TransX" value="0.121507" />
                                                    <Property name="TransY" value="0.000000" />
                                                    <Property name="TransZ" value="0.000000" />
                                                    <Property name="RotX" value="0.000000" />
                                                    <Property name="RotY" value="0.000000" />
                                                    <Property name="RotZ" value="-10.203887" />
                                                    <Property name="ScaleX" value="1.000000" />
                                                    <Property name="ScaleY" value="1.000000" />
                                                    <Property name="ScaleZ" value="1.000000" />
                                                  </Property>
                                                  <Property name="PlatformExclusion" value="0" />
                                                  <Property name="Attributes">
                                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                      <Property name="Name" value="JOINTINDEX" />
                                                      <Property name="Value" value="22" />
                                                    </Property>
                                                  </Property>
                                                  <Property name="Children">
                                                    <Property name="Children" value="TkSceneNodeData" _index="0">
                                                      <Property name="Name" value="l_finger_02_03SHJnt" />
                                                      <Property name="NameHash" value="3581477185" />
                                                      <Property name="Type" value="JOINT" />
                                                      <Property name="Transform" value="TkTransformData">
                                                        <Property name="TransX" value="0.121505" />
                                                        <Property name="TransY" value="0.000432" />
                                                        <Property name="TransZ" value="0.000000" />
                                                        <Property name="RotX" value="0.000000" />
                                                        <Property name="RotY" value="0.000000" />
                                                        <Property name="RotZ" value="-10.000001" />
                                                        <Property name="ScaleX" value="1.000000" />
                                                        <Property name="ScaleY" value="1.000000" />
                                                        <Property name="ScaleZ" value="1.000000" />
                                                      </Property>
                                                      <Property name="PlatformExclusion" value="0" />
                                                      <Property name="Attributes">
                                                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                          <Property name="Name" value="JOINTINDEX" />
                                                          <Property name="Value" value="23" />
                                                        </Property>
                                                      </Property>
                                                      <Property name="Children" />
                                                    </Property>
                                                  </Property>
                                                </Property>
                                              </Property>
                                            </Property>
                                          </Property>
                                        </Property>
                                        <Property name="Children" value="TkSceneNodeData" _index="1">
                                          <Property name="Name" value="l_arm_bck_btm_AuxSHJnt" />
                                          <Property name="NameHash" value="4189428614" />
                                          <Property name="Type" value="JOINT" />
                                          <Property name="Transform" value="TkTransformData">
                                            <Property name="TransX" value="-0.068813" />
                                            <Property name="TransY" value="-0.009499" />
                                            <Property name="TransZ" value="0.173994" />
                                            <Property name="RotX" value="89.3335342" />
                                            <Property name="RotY" value="0.000000" />
                                            <Property name="RotZ" value="-147.87471" />
                                            <Property name="ScaleX" value="1.000000" />
                                            <Property name="ScaleY" value="1.000000" />
                                            <Property name="ScaleZ" value="1.000000" />
                                          </Property>
                                          <Property name="PlatformExclusion" value="0" />
                                          <Property name="Attributes">
                                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                              <Property name="Name" value="JOINTINDEX" />
                                              <Property name="Value" value="24" />
                                            </Property>
                                          </Property>
                                          <Property name="Children" />
                                        </Property>
                                        <Property name="Children" value="TkSceneNodeData" _index="2">
                                          <Property name="Name" value="l_arm_side_btm_AuxSHJnt" />
                                          <Property name="NameHash" value="378315725" />
                                          <Property name="Type" value="JOINT" />
                                          <Property name="Transform" value="TkTransformData">
                                            <Property name="TransX" value="0.013153" />
                                            <Property name="TransY" value="-0.209542" />
                                            <Property name="TransZ" value="-0.161392" />
                                            <Property name="RotX" value="-63.9273834" />
                                            <Property name="RotY" value="138.675171" />
                                            <Property name="RotZ" value="-12.0714893" />
                                            <Property name="ScaleX" value="1.000000" />
                                            <Property name="ScaleY" value="1.000000" />
                                            <Property name="ScaleZ" value="1.000000" />
                                          </Property>
                                          <Property name="PlatformExclusion" value="0" />
                                          <Property name="Attributes">
                                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                              <Property name="Name" value="JOINTINDEX" />
                                              <Property name="Value" value="25" />
                                            </Property>
                                          </Property>
                                          <Property name="Children" />
                                        </Property>
                                        <Property name="Children" value="TkSceneNodeData" _index="3">
                                          <Property name="Name" value="l_elbow_btm_AuxSHJnt" />
                                          <Property name="NameHash" value="823878958" />
                                          <Property name="Type" value="JOINT" />
                                          <Property name="Transform" value="TkTransformData">
                                            <Property name="TransX" value="0.518297" />
                                            <Property name="TransY" value="0.014544" />
                                            <Property name="TransZ" value="-0.174443" />
                                            <Property name="RotX" value="89.3335342" />
                                            <Property name="RotY" value="0.000000" />
                                            <Property name="RotZ" value="-177.874786" />
                                            <Property name="ScaleX" value="1.000000" />
                                            <Property name="ScaleY" value="1.000000" />
                                            <Property name="ScaleZ" value="1.000000" />
                                          </Property>
                                          <Property name="PlatformExclusion" value="0" />
                                          <Property name="Attributes">
                                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                              <Property name="Name" value="JOINTINDEX" />
                                              <Property name="Value" value="26" />
                                            </Property>
                                          </Property>
                                          <Property name="Children" />
                                        </Property>
                                        <Property name="Children" value="TkSceneNodeData" _index="4">
                                          <Property name="Name" value="SHOOT_ARMR" />
                                          <Property name="NameHash" value="54392245" />
                                          <Property name="Type" value="LOCATOR" />
                                          <Property name="Transform" value="TkTransformData">
                                            <Property name="TransX" value="1.602521" />
                                            <Property name="TransY" value="0.005888" />
                                            <Property name="TransZ" value="-0.025673" />
                                            <Property name="RotX" value="-0.658722" />
                                            <Property name="RotY" value="92.873410" />
                                            <Property name="RotZ" value="-89.896930" />
                                            <Property name="ScaleX" value="1.000000" />
                                            <Property name="ScaleY" value="1.000000" />
                                            <Property name="ScaleZ" value="1.000000" />
                                          </Property>
                                          <Property name="PlatformExclusion" value="0" />
                                          <Property name="Attributes" />
                                          <Property name="Children" />
                                        </Property>
                                      </Property>
                                    </Property>
                                    <Property name="Children" value="TkSceneNodeData" _index="1">
                                      <Property name="Name" value="l_arm_bck_tp_AuxSHJnt" />
                                      <Property name="NameHash" value="3105376792" />
                                      <Property name="Type" value="JOINT" />
                                      <Property name="Transform" value="TkTransformData">
                                        <Property name="TransX" value="0.148455" />
                                        <Property name="TransY" value="-0.018539" />
                                        <Property name="TransZ" value="0.373638" />
                                        <Property name="RotX" value="-89.3335342" />
                                        <Property name="RotY" value="0.000000" />
                                        <Property name="RotZ" value="10.6527081" />
                                        <Property name="ScaleX" value="1.000000" />
                                        <Property name="ScaleY" value="1.000000" />
                                        <Property name="ScaleZ" value="1.000000" />
                                      </Property>
                                      <Property name="PlatformExclusion" value="0" />
                                      <Property name="Attributes">
                                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                          <Property name="Name" value="JOINTINDEX" />
                                          <Property name="Value" value="27" />
                                        </Property>
                                      </Property>
                                      <Property name="Children" />
                                    </Property>
                                    <Property name="Children" value="TkSceneNodeData" _index="2">
                                      <Property name="Name" value="l_elbow_tp_AuxSHJnt" />
                                      <Property name="NameHash" value="1018664673" />
                                      <Property name="Type" value="JOINT" />
                                      <Property name="Transform" value="TkTransformData">
                                        <Property name="TransX" value="1.009353" />
                                        <Property name="TransY" value="0.008697" />
                                        <Property name="TransZ" value="-0.142799" />
                                        <Property name="RotX" value="-89.3335342" />
                                        <Property name="RotY" value="0.000000" />
                                        <Property name="RotZ" value="40.652780" />
                                        <Property name="ScaleX" value="1.000000" />
                                        <Property name="ScaleY" value="1.000000" />
                                        <Property name="ScaleZ" value="1.000000" />
                                      </Property>
                                      <Property name="PlatformExclusion" value="0" />
                                      <Property name="Attributes">
                                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                          <Property name="Name" value="JOINTINDEX" />
                                          <Property name="Value" value="28" />
                                        </Property>
                                      </Property>
                                      <Property name="Children" />
                                    </Property>
                                    <Property name="Children" value="TkSceneNodeData" _index="3">
                                      <Property name="Name" value="CONTRAIL1" />
                                      <Property name="NameHash" value="2149917556" />
                                      <Property name="Type" value="LOCATOR" />
                                      <Property name="Transform" value="TkTransformData">
                                        <Property name="TransX" value="0.128411" />
                                        <Property name="TransY" value="0.083899" />
                                        <Property name="TransZ" value="0.484540" />
                                        <Property name="RotX" value="0.000000" />
                                        <Property name="RotY" value="0.000000" />
                                        <Property name="RotZ" value="0.000000" />
                                        <Property name="ScaleX" value="1.000000" />
                                        <Property name="ScaleY" value="1.000000" />
                                        <Property name="ScaleZ" value="1.000000" />
                                      </Property>
                                      <Property name="PlatformExclusion" value="0" />
                                      <Property name="Attributes" />
                                      <Property name="Children" />
                                    </Property>
                                  </Property>
                                </Property>
                                <Property name="Children" value="TkSceneNodeData" _index="1">
                                  <Property name="Name" value="l_arm_side_tp_AuxSHJnt" />
                                  <Property name="NameHash" value="446526747" />
                                  <Property name="Type" value="JOINT" />
                                  <Property name="Transform" value="TkTransformData">
                                    <Property name="TransX" value="0.230150" />
                                    <Property name="TransY" value="0.030706" />
                                    <Property name="TransZ" value="-0.256658" />
                                    <Property name="RotX" value="63.391450" />
                                    <Property name="RotY" value="0.000000" />
                                    <Property name="RotZ" value="11.177510" />
                                    <Property name="ScaleX" value="1.000000" />
                                    <Property name="ScaleY" value="1.000000" />
                                    <Property name="ScaleZ" value="1.000000" />
                                  </Property>
                                  <Property name="PlatformExclusion" value="0" />
                                  <Property name="Attributes">
                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                      <Property name="Name" value="JOINTINDEX" />
                                      <Property name="Value" value="29" />
                                    </Property>
                                  </Property>
                                  <Property name="Children" />
                                </Property>
                                <Property name="Children" value="TkSceneNodeData" _index="2">
                                  <Property name="Name" value="l_shd_bck_out_AuxSHJnt" />
                                  <Property name="NameHash" value="2675567125" />
                                  <Property name="Type" value="JOINT" />
                                  <Property name="Transform" value="TkTransformData">
                                    <Property name="TransX" value="0.028191" />
                                    <Property name="TransY" value="-0.035529" />
                                    <Property name="TransZ" value="0.238225" />
                                    <Property name="RotX" value="20.0000019" />
                                    <Property name="RotY" value="180.000000" />
                                    <Property name="RotZ" value="-90.000000" />
                                    <Property name="ScaleX" value="1.000000" />
                                    <Property name="ScaleY" value="1.000000" />
                                    <Property name="ScaleZ" value="1.000000" />
                                  </Property>
                                  <Property name="PlatformExclusion" value="0" />
                                  <Property name="Attributes">
                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                      <Property name="Name" value="JOINTINDEX" />
                                      <Property name="Value" value="30" />
                                    </Property>
                                  </Property>
                                  <Property name="Children" />
                                </Property>
                                <Property name="Children" value="TkSceneNodeData" _index="3">
                                  <Property name="Name" value="l_shd_bck02_out_AuxSHJnt" />
                                  <Property name="NameHash" value="1822027110" />
                                  <Property name="Type" value="JOINT" />
                                  <Property name="Transform" value="TkTransformData">
                                    <Property name="TransX" value="0.154752" />
                                    <Property name="TransY" value="-0.035007" />
                                    <Property name="TransZ" value="0.238036" />
                                    <Property name="RotX" value="20.0000019" />
                                    <Property name="RotY" value="180.000000" />
                                    <Property name="RotZ" value="-90.000000" />
                                    <Property name="ScaleX" value="1.000000" />
                                    <Property name="ScaleY" value="1.000000" />
                                    <Property name="ScaleZ" value="1.000000" />
                                  </Property>
                                  <Property name="PlatformExclusion" value="0" />
                                  <Property name="Attributes">
                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                      <Property name="Name" value="JOINTINDEX" />
                                      <Property name="Value" value="31" />
                                    </Property>
                                  </Property>
                                  <Property name="Children" />
                                </Property>
                              </Property>
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="1">
                              <Property name="Name" value="l_shd_tp02_out_AuxSHJnt" />
                              <Property name="NameHash" value="376318369" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="-0.072677" />
                                <Property name="TransY" value="0.231667" />
                                <Property name="TransZ" value="0.001831" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="180.000000" />
                                <Property name="RotZ" value="-15.000001" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="32" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="2">
                              <Property name="Name" value="l_shd_tp_out_AuxSHJnt" />
                              <Property name="NameHash" value="2557347976" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="-0.171569" />
                                <Property name="TransY" value="0.379069" />
                                <Property name="TransZ" value="0.000000" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="180.000000" />
                                <Property name="RotZ" value="-10.000001" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="33" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                        <Property name="Children" value="TkSceneNodeData" _index="2">
                          <Property name="Name" value="l_shd_tp02_in_AuxSHJnt" />
                          <Property name="NameHash" value="859316292" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.203857" />
                            <Property name="TransY" value="0.183307" />
                            <Property name="TransZ" value="0.018235" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="15.000001" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="34" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                      </Property>
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="1">
                      <Property name="Name" value="r_shoulder_AuxSHJnt" />
                      <Property name="NameHash" value="1096097014" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="1.515811" />
                        <Property name="TransY" value="0.100456" />
                        <Property name="TransZ" value="0.603987" />
                        <Property name="RotX" value="-90.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="90.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="35" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="r_shd_btm_out_AuxSHJnt" />
                          <Property name="NameHash" value="3174275342" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-0.778967" />
                            <Property name="TransY" value="-0.086267" />
                            <Property name="TransZ" value="-0.016404" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.326613" />
                            <Property name="RotZ" value="30.1607628" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="36" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                        <Property name="Children" value="TkSceneNodeData" _index="1">
                          <Property name="Name" value="r_shd_around_AuxSHJnt" />
                          <Property name="NameHash" value="1222090742" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-0.778967" />
                            <Property name="TransY" value="-0.086267" />
                            <Property name="TransZ" value="-0.016404" />
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
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="37" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="r_arm_ClavicleSHJnt" />
                              <Property name="NameHash" value="2623214586" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="0.243061" />
                                <Property name="TransZ" value="0.000000" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="-90.000000" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="38" />
                                </Property>
                              </Property>
                              <Property name="Children">
                                <Property name="Children" value="TkSceneNodeData" _index="0">
                                  <Property name="Name" value="r_arm_ShoulderSHJnt" />
                                  <Property name="NameHash" value="2688337877" />
                                  <Property name="Type" value="JOINT" />
                                  <Property name="Transform" value="TkTransformData">
                                    <Property name="TransX" value="0.000000" />
                                    <Property name="TransY" value="-0.320148" />
                                    <Property name="TransZ" value="0.000000" />
                                    <Property name="RotX" value="-0.543093" />
                                    <Property name="RotY" value="-0.649108" />
                                    <Property name="RotZ" value="-0.386773" />
                                    <Property name="ScaleX" value="1.000000" />
                                    <Property name="ScaleY" value="1.000000" />
                                    <Property name="ScaleZ" value="1.000000" />
                                  </Property>
                                  <Property name="PlatformExclusion" value="0" />
                                  <Property name="Attributes">
                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                      <Property name="Name" value="JOINTINDEX" />
                                      <Property name="Value" value="39" />
                                    </Property>
                                  </Property>
                                  <Property name="Children">
                                    <Property name="Children" value="TkSceneNodeData" _index="0">
                                      <Property name="Name" value="r_arm_ElbowSHJnt" />
                                      <Property name="NameHash" value="3076331995" />
                                      <Property name="Type" value="JOINT" />
                                      <Property name="Transform" value="TkTransformData">
                                        <Property name="TransX" value="-1.140166" />
                                        <Property name="TransY" value="0.000000" />
                                        <Property name="TransZ" value="0.000000" />
                                        <Property name="RotX" value="0.000000" />
                                        <Property name="RotY" value="42.7769356" />
                                        <Property name="RotZ" value="0.000000" />
                                        <Property name="ScaleX" value="1.000000" />
                                        <Property name="ScaleY" value="1.000000" />
                                        <Property name="ScaleZ" value="1.000000" />
                                      </Property>
                                      <Property name="PlatformExclusion" value="0" />
                                      <Property name="Attributes">
                                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                          <Property name="Name" value="JOINTINDEX" />
                                          <Property name="Value" value="40" />
                                        </Property>
                                      </Property>
                                      <Property name="Children">
                                        <Property name="Children" value="TkSceneNodeData" _index="0">
                                          <Property name="Name" value="r_arm_WristSHJnt" />
                                          <Property name="NameHash" value="125285867" />
                                          <Property name="Type" value="JOINT" />
                                          <Property name="Transform" value="TkTransformData">
                                            <Property name="TransX" value="-1.091023" />
                                            <Property name="TransY" value="0.000000" />
                                            <Property name="TransZ" value="0.000000" />
                                            <Property name="RotX" value="0.103066" />
                                            <Property name="RotY" value="2.874599" />
                                            <Property name="RotZ" value="0.658723" />
                                            <Property name="ScaleX" value="1.000000" />
                                            <Property name="ScaleY" value="1.000000" />
                                            <Property name="ScaleZ" value="1.000000" />
                                          </Property>
                                          <Property name="PlatformExclusion" value="0" />
                                          <Property name="Attributes">
                                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                              <Property name="Name" value="JOINTINDEX" />
                                              <Property name="Value" value="41" />
                                            </Property>
                                          </Property>
                                          <Property name="Children">
                                            <Property name="Children" value="TkSceneNodeData" _index="0">
                                              <Property name="Name" value="r_thumb_01_01SHJnt" />
                                              <Property name="NameHash" value="516995494" />
                                              <Property name="Type" value="JOINT" />
                                              <Property name="Transform" value="TkTransformData">
                                                <Property name="TransX" value="-0.109027" />
                                                <Property name="TransY" value="0.089879" />
                                                <Property name="TransZ" value="-0.079300" />
                                                <Property name="RotX" value="0.000000" />
                                                <Property name="RotY" value="180.000000" />
                                                <Property name="RotZ" value="-135.000000" />
                                                <Property name="ScaleX" value="1.000000" />
                                                <Property name="ScaleY" value="1.000000" />
                                                <Property name="ScaleZ" value="1.000000" />
                                              </Property>
                                              <Property name="PlatformExclusion" value="0" />
                                              <Property name="Attributes">
                                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                  <Property name="Name" value="JOINTINDEX" />
                                                  <Property name="Value" value="42" />
                                                </Property>
                                              </Property>
                                              <Property name="Children">
                                                <Property name="Children" value="TkSceneNodeData" _index="0">
                                                  <Property name="Name" value="r_thumb_01_02SHJnt" />
                                                  <Property name="NameHash" value="1727512555" />
                                                  <Property name="Type" value="JOINT" />
                                                  <Property name="Transform" value="TkTransformData">
                                                    <Property name="TransX" value="-0.121507" />
                                                    <Property name="TransY" value="0.000000" />
                                                    <Property name="TransZ" value="0.000000" />
                                                    <Property name="RotX" value="0.000000" />
                                                    <Property name="RotY" value="0.000000" />
                                                    <Property name="RotZ" value="-15.000001" />
                                                    <Property name="ScaleX" value="1.000000" />
                                                    <Property name="ScaleY" value="1.000000" />
                                                    <Property name="ScaleZ" value="1.000000" />
                                                  </Property>
                                                  <Property name="PlatformExclusion" value="0" />
                                                  <Property name="Attributes">
                                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                      <Property name="Name" value="JOINTINDEX" />
                                                      <Property name="Value" value="43" />
                                                    </Property>
                                                  </Property>
                                                  <Property name="Children">
                                                    <Property name="Children" value="TkSceneNodeData" _index="0">
                                                      <Property name="Name" value="r_thumb_01_03SHJnt" />
                                                      <Property name="NameHash" value="691632360" />
                                                      <Property name="Type" value="JOINT" />
                                                      <Property name="Transform" value="TkTransformData">
                                                        <Property name="TransX" value="-0.105265" />
                                                        <Property name="TransY" value="0.000000" />
                                                        <Property name="TransZ" value="0.000000" />
                                                        <Property name="RotX" value="0.000000" />
                                                        <Property name="RotY" value="0.000000" />
                                                        <Property name="RotZ" value="-21.9999981" />
                                                        <Property name="ScaleX" value="1.000000" />
                                                        <Property name="ScaleY" value="1.000000" />
                                                        <Property name="ScaleZ" value="1.000000" />
                                                      </Property>
                                                      <Property name="PlatformExclusion" value="0" />
                                                      <Property name="Attributes">
                                                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                          <Property name="Name" value="JOINTINDEX" />
                                                          <Property name="Value" value="44" />
                                                        </Property>
                                                      </Property>
                                                      <Property name="Children" />
                                                    </Property>
                                                  </Property>
                                                </Property>
                                              </Property>
                                            </Property>
                                            <Property name="Children" value="TkSceneNodeData" _index="1">
                                              <Property name="Name" value="r_thumb_02_01SHJnt" />
                                              <Property name="NameHash" value="654489930" />
                                              <Property name="Type" value="JOINT" />
                                              <Property name="Transform" value="TkTransformData">
                                                <Property name="TransX" value="-0.109027" />
                                                <Property name="TransY" value="0.089879" />
                                                <Property name="TransZ" value="0.076157" />
                                                <Property name="RotX" value="0.000000" />
                                                <Property name="RotY" value="180.000000" />
                                                <Property name="RotZ" value="-135.000000" />
                                                <Property name="ScaleX" value="1.000000" />
                                                <Property name="ScaleY" value="1.000000" />
                                                <Property name="ScaleZ" value="1.000000" />
                                              </Property>
                                              <Property name="PlatformExclusion" value="0" />
                                              <Property name="Attributes">
                                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                  <Property name="Name" value="JOINTINDEX" />
                                                  <Property name="Value" value="45" />
                                                </Property>
                                              </Property>
                                              <Property name="Children">
                                                <Property name="Children" value="TkSceneNodeData" _index="0">
                                                  <Property name="Name" value="r_thumb_02_02SHJnt" />
                                                  <Property name="NameHash" value="3979303131" />
                                                  <Property name="Type" value="JOINT" />
                                                  <Property name="Transform" value="TkTransformData">
                                                    <Property name="TransX" value="-0.121507" />
                                                    <Property name="TransY" value="0.000000" />
                                                    <Property name="TransZ" value="0.000035" />
                                                    <Property name="RotX" value="0.000000" />
                                                    <Property name="RotY" value="0.000000" />
                                                    <Property name="RotZ" value="-15.000001" />
                                                    <Property name="ScaleX" value="1.000000" />
                                                    <Property name="ScaleY" value="1.000000" />
                                                    <Property name="ScaleZ" value="1.000000" />
                                                  </Property>
                                                  <Property name="PlatformExclusion" value="0" />
                                                  <Property name="Attributes">
                                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                      <Property name="Name" value="JOINTINDEX" />
                                                      <Property name="Value" value="46" />
                                                    </Property>
                                                  </Property>
                                                  <Property name="Children">
                                                    <Property name="Children" value="TkSceneNodeData" _index="0">
                                                      <Property name="Name" value="r_thumb_02_03SHJnt" />
                                                      <Property name="NameHash" value="1812771218" />
                                                      <Property name="Type" value="JOINT" />
                                                      <Property name="Transform" value="TkTransformData">
                                                        <Property name="TransX" value="-0.105265" />
                                                        <Property name="TransY" value="0.000000" />
                                                        <Property name="TransZ" value="-0.000035" />
                                                        <Property name="RotX" value="0.000000" />
                                                        <Property name="RotY" value="0.000000" />
                                                        <Property name="RotZ" value="-9.622194" />
                                                        <Property name="ScaleX" value="1.000000" />
                                                        <Property name="ScaleY" value="1.000000" />
                                                        <Property name="ScaleZ" value="1.000000" />
                                                      </Property>
                                                      <Property name="PlatformExclusion" value="0" />
                                                      <Property name="Attributes">
                                                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                          <Property name="Name" value="JOINTINDEX" />
                                                          <Property name="Value" value="47" />
                                                        </Property>
                                                      </Property>
                                                      <Property name="Children" />
                                                    </Property>
                                                  </Property>
                                                </Property>
                                              </Property>
                                            </Property>
                                            <Property name="Children" value="TkSceneNodeData" _index="2">
                                              <Property name="Name" value="r_finger_01_01SHJnt" />
                                              <Property name="NameHash" value="1776025054" />
                                              <Property name="Type" value="JOINT" />
                                              <Property name="Transform" value="TkTransformData">
                                                <Property name="TransX" value="-0.282542" />
                                                <Property name="TransY" value="-0.028491" />
                                                <Property name="TransZ" value="-0.063918" />
                                                <Property name="RotX" value="0.000000" />
                                                <Property name="RotY" value="0.000000" />
                                                <Property name="RotZ" value="-5.000000" />
                                                <Property name="ScaleX" value="1.000000" />
                                                <Property name="ScaleY" value="1.000000" />
                                                <Property name="ScaleZ" value="1.000000" />
                                              </Property>
                                              <Property name="PlatformExclusion" value="0" />
                                              <Property name="Attributes">
                                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                  <Property name="Name" value="JOINTINDEX" />
                                                  <Property name="Value" value="48" />
                                                </Property>
                                              </Property>
                                              <Property name="Children">
                                                <Property name="Children" value="TkSceneNodeData" _index="0">
                                                  <Property name="Name" value="r_finger_01_02SHJnt" />
                                                  <Property name="NameHash" value="3391545428" />
                                                  <Property name="Type" value="JOINT" />
                                                  <Property name="Transform" value="TkTransformData">
                                                    <Property name="TransX" value="-0.121508" />
                                                    <Property name="TransY" value="0.000000" />
                                                    <Property name="TransZ" value="-0.000650" />
                                                    <Property name="RotX" value="0.000000" />
                                                    <Property name="RotY" value="0.000000" />
                                                    <Property name="RotZ" value="-10.204000" />
                                                    <Property name="ScaleX" value="1.000000" />
                                                    <Property name="ScaleY" value="1.000000" />
                                                    <Property name="ScaleZ" value="1.000000" />
                                                  </Property>
                                                  <Property name="PlatformExclusion" value="0" />
                                                  <Property name="Attributes">
                                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                      <Property name="Name" value="JOINTINDEX" />
                                                      <Property name="Value" value="49" />
                                                    </Property>
                                                  </Property>
                                                  <Property name="Children">
                                                    <Property name="Children" value="TkSceneNodeData" _index="0">
                                                      <Property name="Name" value="r_finger_01_03SHJnt" />
                                                      <Property name="NameHash" value="1693228356" />
                                                      <Property name="Type" value="JOINT" />
                                                      <Property name="Transform" value="TkTransformData">
                                                        <Property name="TransX" value="-0.121505" />
                                                        <Property name="TransY" value="-0.000432" />
                                                        <Property name="TransZ" value="-0.000444" />
                                                        <Property name="RotX" value="0.000000" />
                                                        <Property name="RotY" value="0.000000" />
                                                        <Property name="RotZ" value="-9.999887" />
                                                        <Property name="ScaleX" value="1.000000" />
                                                        <Property name="ScaleY" value="1.000000" />
                                                        <Property name="ScaleZ" value="1.000000" />
                                                      </Property>
                                                      <Property name="PlatformExclusion" value="0" />
                                                      <Property name="Attributes">
                                                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                          <Property name="Name" value="JOINTINDEX" />
                                                          <Property name="Value" value="50" />
                                                        </Property>
                                                      </Property>
                                                      <Property name="Children" />
                                                    </Property>
                                                  </Property>
                                                </Property>
                                              </Property>
                                            </Property>
                                            <Property name="Children" value="TkSceneNodeData" _index="3">
                                              <Property name="Name" value="r_finger_02_01SHJnt" />
                                              <Property name="NameHash" value="1539296250" />
                                              <Property name="Type" value="JOINT" />
                                              <Property name="Transform" value="TkTransformData">
                                                <Property name="TransX" value="-0.282543" />
                                                <Property name="TransY" value="-0.028491" />
                                                <Property name="TransZ" value="0.058790" />
                                                <Property name="RotX" value="0.000000" />
                                                <Property name="RotY" value="0.000000" />
                                                <Property name="RotZ" value="-5.000000" />
                                                <Property name="ScaleX" value="1.000000" />
                                                <Property name="ScaleY" value="1.000000" />
                                                <Property name="ScaleZ" value="1.000000" />
                                              </Property>
                                              <Property name="PlatformExclusion" value="0" />
                                              <Property name="Attributes">
                                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                  <Property name="Name" value="JOINTINDEX" />
                                                  <Property name="Value" value="51" />
                                                </Property>
                                              </Property>
                                              <Property name="Children">
                                                <Property name="Children" value="TkSceneNodeData" _index="0">
                                                  <Property name="Name" value="r_finger_02_02SHJnt" />
                                                  <Property name="NameHash" value="3978018391" />
                                                  <Property name="Type" value="JOINT" />
                                                  <Property name="Transform" value="TkTransformData">
                                                    <Property name="TransX" value="-0.121507" />
                                                    <Property name="TransY" value="0.000000" />
                                                    <Property name="TransZ" value="0.000000" />
                                                    <Property name="RotX" value="0.000000" />
                                                    <Property name="RotY" value="0.000000" />
                                                    <Property name="RotZ" value="-10.203887" />
                                                    <Property name="ScaleX" value="1.000000" />
                                                    <Property name="ScaleY" value="1.000000" />
                                                    <Property name="ScaleZ" value="1.000000" />
                                                  </Property>
                                                  <Property name="PlatformExclusion" value="0" />
                                                  <Property name="Attributes">
                                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                      <Property name="Name" value="JOINTINDEX" />
                                                      <Property name="Value" value="52" />
                                                    </Property>
                                                  </Property>
                                                  <Property name="Children">
                                                    <Property name="Children" value="TkSceneNodeData" _index="0">
                                                      <Property name="Name" value="r_finger_02_03SHJnt" />
                                                      <Property name="NameHash" value="1429897654" />
                                                      <Property name="Type" value="JOINT" />
                                                      <Property name="Transform" value="TkTransformData">
                                                        <Property name="TransX" value="-0.121505" />
                                                        <Property name="TransY" value="-0.000432" />
                                                        <Property name="TransZ" value="0.000000" />
                                                        <Property name="RotX" value="0.000000" />
                                                        <Property name="RotY" value="0.000000" />
                                                        <Property name="RotZ" value="-10.000001" />
                                                        <Property name="ScaleX" value="1.000000" />
                                                        <Property name="ScaleY" value="1.000000" />
                                                        <Property name="ScaleZ" value="1.000000" />
                                                      </Property>
                                                      <Property name="PlatformExclusion" value="0" />
                                                      <Property name="Attributes">
                                                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                                          <Property name="Name" value="JOINTINDEX" />
                                                          <Property name="Value" value="53" />
                                                        </Property>
                                                      </Property>
                                                      <Property name="Children" />
                                                    </Property>
                                                  </Property>
                                                </Property>
                                              </Property>
                                            </Property>
                                          </Property>
                                        </Property>
                                        <Property name="Children" value="TkSceneNodeData" _index="1">
                                          <Property name="Name" value="r_arm_bck_btm_AuxSHJnt" />
                                          <Property name="NameHash" value="3517489079" />
                                          <Property name="Type" value="JOINT" />
                                          <Property name="Transform" value="TkTransformData">
                                            <Property name="TransX" value="0.068813" />
                                            <Property name="TransY" value="0.009499" />
                                            <Property name="TransZ" value="-0.173994" />
                                            <Property name="RotX" value="-89.3335342" />
                                            <Property name="RotY" value="0.000000" />
                                            <Property name="RotZ" value="-32.1252861" />
                                            <Property name="ScaleX" value="1.000000" />
                                            <Property name="ScaleY" value="1.000000" />
                                            <Property name="ScaleZ" value="1.000000" />
                                          </Property>
                                          <Property name="PlatformExclusion" value="0" />
                                          <Property name="Attributes">
                                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                              <Property name="Name" value="JOINTINDEX" />
                                              <Property name="Value" value="54" />
                                            </Property>
                                          </Property>
                                          <Property name="Children" />
                                        </Property>
                                        <Property name="Children" value="TkSceneNodeData" _index="2">
                                          <Property name="Name" value="r_arm_side_btm_AuxSHJnt" />
                                          <Property name="NameHash" value="2964762781" />
                                          <Property name="Type" value="JOINT" />
                                          <Property name="Transform" value="TkTransformData">
                                            <Property name="TransX" value="-0.013153" />
                                            <Property name="TransY" value="0.209542" />
                                            <Property name="TransZ" value="0.161392" />
                                            <Property name="RotX" value="63.9273834" />
                                            <Property name="RotY" value="-41.324820" />
                                            <Property name="RotZ" value="12.0714893" />
                                            <Property name="ScaleX" value="1.000000" />
                                            <Property name="ScaleY" value="1.000000" />
                                            <Property name="ScaleZ" value="1.000000" />
                                          </Property>
                                          <Property name="PlatformExclusion" value="0" />
                                          <Property name="Attributes">
                                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                              <Property name="Name" value="JOINTINDEX" />
                                              <Property name="Value" value="55" />
                                            </Property>
                                          </Property>
                                          <Property name="Children" />
                                        </Property>
                                        <Property name="Children" value="TkSceneNodeData" _index="3">
                                          <Property name="Name" value="r_elbow_btm_AuxSHJnt" />
                                          <Property name="NameHash" value="1975767122" />
                                          <Property name="Type" value="JOINT" />
                                          <Property name="Transform" value="TkTransformData">
                                            <Property name="TransX" value="-0.518297" />
                                            <Property name="TransY" value="-0.014544" />
                                            <Property name="TransZ" value="0.174443" />
                                            <Property name="RotX" value="-89.3335342" />
                                            <Property name="RotY" value="0.000000" />
                                            <Property name="RotZ" value="-2.125216" />
                                            <Property name="ScaleX" value="1.000000" />
                                            <Property name="ScaleY" value="1.000000" />
                                            <Property name="ScaleZ" value="1.000000" />
                                          </Property>
                                          <Property name="PlatformExclusion" value="0" />
                                          <Property name="Attributes">
                                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                              <Property name="Name" value="JOINTINDEX" />
                                              <Property name="Value" value="56" />
                                            </Property>
                                          </Property>
                                          <Property name="Children" />
                                        </Property>
                                        <Property name="Children" value="TkSceneNodeData" _index="4">
                                          <Property name="Name" value="SHOOT_ARML" />
                                          <Property name="NameHash" value="1801766405" />
                                          <Property name="Type" value="LOCATOR" />
                                          <Property name="Transform" value="TkTransformData">
                                            <Property name="TransX" value="-1.602564" />
                                            <Property name="TransY" value="-0.002123" />
                                            <Property name="TransZ" value="0.025682" />
                                            <Property name="RotX" value="0.658722" />
                                            <Property name="RotY" value="-87.126590" />
                                            <Property name="RotZ" value="-90.103070" />
                                            <Property name="ScaleX" value="1.000000" />
                                            <Property name="ScaleY" value="1.000000" />
                                            <Property name="ScaleZ" value="1.000000" />
                                          </Property>
                                          <Property name="PlatformExclusion" value="0" />
                                          <Property name="Attributes" />
                                          <Property name="Children" />
                                        </Property>
                                      </Property>
                                    </Property>
                                    <Property name="Children" value="TkSceneNodeData" _index="1">
                                      <Property name="Name" value="r_arm_bck_tp_AuxSHJnt" />
                                      <Property name="NameHash" value="2721403428" />
                                      <Property name="Type" value="JOINT" />
                                      <Property name="Transform" value="TkTransformData">
                                        <Property name="TransX" value="-0.148455" />
                                        <Property name="TransY" value="0.018539" />
                                        <Property name="TransZ" value="-0.373638" />
                                        <Property name="RotX" value="89.3335342" />
                                        <Property name="RotY" value="0.000000" />
                                        <Property name="RotZ" value="169.34729" />
                                        <Property name="ScaleX" value="1.000000" />
                                        <Property name="ScaleY" value="1.000000" />
                                        <Property name="ScaleZ" value="1.000000" />
                                      </Property>
                                      <Property name="PlatformExclusion" value="0" />
                                      <Property name="Attributes">
                                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                          <Property name="Name" value="JOINTINDEX" />
                                          <Property name="Value" value="57" />
                                        </Property>
                                      </Property>
                                      <Property name="Children" />
                                    </Property>
                                    <Property name="Children" value="TkSceneNodeData" _index="2">
                                      <Property name="Name" value="r_elbow_tp_AuxSHJnt" />
                                      <Property name="NameHash" value="2396539426" />
                                      <Property name="Type" value="JOINT" />
                                      <Property name="Transform" value="TkTransformData">
                                        <Property name="TransX" value="-1.009353" />
                                        <Property name="TransY" value="-0.008697" />
                                        <Property name="TransZ" value="0.142799" />
                                        <Property name="RotX" value="89.3335342" />
                                        <Property name="RotY" value="0.000000" />
                                        <Property name="RotZ" value="139.347229" />
                                        <Property name="ScaleX" value="1.000000" />
                                        <Property name="ScaleY" value="1.000000" />
                                        <Property name="ScaleZ" value="1.000000" />
                                      </Property>
                                      <Property name="PlatformExclusion" value="0" />
                                      <Property name="Attributes">
                                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                          <Property name="Name" value="JOINTINDEX" />
                                          <Property name="Value" value="58" />
                                        </Property>
                                      </Property>
                                      <Property name="Children" />
                                    </Property>
                                    <Property name="Children" value="TkSceneNodeData" _index="3">
                                      <Property name="Name" value="CONTRAIL" />
                                      <Property name="NameHash" value="328066744" />
                                      <Property name="Type" value="LOCATOR" />
                                      <Property name="Transform" value="TkTransformData">
                                        <Property name="TransX" value="-0.087092" />
                                        <Property name="TransY" value="-0.086384" />
                                        <Property name="TransZ" value="-0.475219" />
                                        <Property name="RotX" value="0.000000" />
                                        <Property name="RotY" value="0.000000" />
                                        <Property name="RotZ" value="0.000000" />
                                        <Property name="ScaleX" value="1.000000" />
                                        <Property name="ScaleY" value="1.000000" />
                                        <Property name="ScaleZ" value="1.000000" />
                                      </Property>
                                      <Property name="PlatformExclusion" value="0" />
                                      <Property name="Attributes" />
                                      <Property name="Children" />
                                    </Property>
                                  </Property>
                                </Property>
                                <Property name="Children" value="TkSceneNodeData" _index="1">
                                  <Property name="Name" value="r_arm_side_tp_AuxSHJnt" />
                                  <Property name="NameHash" value="4090113460" />
                                  <Property name="Type" value="JOINT" />
                                  <Property name="Transform" value="TkTransformData">
                                    <Property name="TransX" value="-0.230150" />
                                    <Property name="TransY" value="-0.030706" />
                                    <Property name="TransZ" value="0.256658" />
                                    <Property name="RotX" value="-63.391450" />
                                    <Property name="RotY" value="180.000000" />
                                    <Property name="RotZ" value="-11.177510" />
                                    <Property name="ScaleX" value="1.000000" />
                                    <Property name="ScaleY" value="1.000000" />
                                    <Property name="ScaleZ" value="1.000000" />
                                  </Property>
                                  <Property name="PlatformExclusion" value="0" />
                                  <Property name="Attributes">
                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                      <Property name="Name" value="JOINTINDEX" />
                                      <Property name="Value" value="59" />
                                    </Property>
                                  </Property>
                                  <Property name="Children" />
                                </Property>
                                <Property name="Children" value="TkSceneNodeData" _index="2">
                                  <Property name="Name" value="r_shd_bck_out_AuxSHJnt" />
                                  <Property name="NameHash" value="3464380831" />
                                  <Property name="Type" value="JOINT" />
                                  <Property name="Transform" value="TkTransformData">
                                    <Property name="TransX" value="-0.028191" />
                                    <Property name="TransY" value="0.035529" />
                                    <Property name="TransZ" value="-0.238225" />
                                    <Property name="RotX" value="-20.0000019" />
                                    <Property name="RotY" value="0.000000" />
                                    <Property name="RotZ" value="90.000000" />
                                    <Property name="ScaleX" value="1.000000" />
                                    <Property name="ScaleY" value="1.000000" />
                                    <Property name="ScaleZ" value="1.000000" />
                                  </Property>
                                  <Property name="PlatformExclusion" value="0" />
                                  <Property name="Attributes">
                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                      <Property name="Name" value="JOINTINDEX" />
                                      <Property name="Value" value="60" />
                                    </Property>
                                  </Property>
                                  <Property name="Children" />
                                </Property>
                                <Property name="Children" value="TkSceneNodeData" _index="3">
                                  <Property name="Name" value="r_shd_bck02_out_AuxSHJnt" />
                                  <Property name="NameHash" value="2441640218" />
                                  <Property name="Type" value="JOINT" />
                                  <Property name="Transform" value="TkTransformData">
                                    <Property name="TransX" value="-0.154752" />
                                    <Property name="TransY" value="0.035007" />
                                    <Property name="TransZ" value="-0.238036" />
                                    <Property name="RotX" value="-20.0000019" />
                                    <Property name="RotY" value="0.000000" />
                                    <Property name="RotZ" value="90.000000" />
                                    <Property name="ScaleX" value="1.000000" />
                                    <Property name="ScaleY" value="1.000000" />
                                    <Property name="ScaleZ" value="1.000000" />
                                  </Property>
                                  <Property name="PlatformExclusion" value="0" />
                                  <Property name="Attributes">
                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                      <Property name="Name" value="JOINTINDEX" />
                                      <Property name="Value" value="61" />
                                    </Property>
                                  </Property>
                                  <Property name="Children" />
                                </Property>
                              </Property>
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="1">
                              <Property name="Name" value="r_shd_tp02_out_AuxSHJnt" />
                              <Property name="NameHash" value="627636955" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.072677" />
                                <Property name="TransY" value="-0.231667" />
                                <Property name="TransZ" value="-0.001831" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="15.000001" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="62" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="2">
                              <Property name="Name" value="r_shd_tp_out_AuxSHJnt" />
                              <Property name="NameHash" value="3802060351" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.171569" />
                                <Property name="TransY" value="-0.379069" />
                                <Property name="TransZ" value="0.000000" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="10.000001" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="63" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                        <Property name="Children" value="TkSceneNodeData" _index="2">
                          <Property name="Name" value="r_shd_tp02_in_AuxSHJnt" />
                          <Property name="NameHash" value="3170278226" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-0.203857" />
                            <Property name="TransY" value="-0.183307" />
                            <Property name="TransZ" value="-0.018235" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="180.000000" />
                            <Property name="RotZ" value="-15.000001" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="64" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                      </Property>
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="2">
                      <Property name="Name" value="l_shd_btm_in_AuxSHJnt" />
                      <Property name="NameHash" value="3620143010" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="1.234743" />
                        <Property name="TransY" value="0.084053" />
                        <Property name="TransZ" value="-0.750824" />
                        <Property name="RotX" value="90.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="-59.838830" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="65" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="3">
                      <Property name="Name" value="r_shd_btm_in_AuxSHJnt" />
                      <Property name="NameHash" value="2297722380" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="1.234743" />
                        <Property name="TransY" value="0.080449" />
                        <Property name="TransZ" value="0.750824" />
                        <Property name="RotX" value="89.6737442" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="59.839240" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="66" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="4">
                      <Property name="Name" value="l_shd_bck02_in_AuxSHJnt" />
                      <Property name="NameHash" value="4272991848" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="1.204265" />
                        <Property name="TransY" value="-0.516048" />
                        <Property name="TransZ" value="-0.353181" />
                        <Property name="RotX" value="70.000000" />
                        <Property name="RotY" value="180.000000" />
                        <Property name="RotZ" value="90.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="67" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="5">
                      <Property name="Name" value="r_shd_bck02_in_AuxSHJnt" />
                      <Property name="NameHash" value="657527845" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="1.204265" />
                        <Property name="TransY" value="-0.516048" />
                        <Property name="TransZ" value="0.353181" />
                        <Property name="RotX" value="70.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="90.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="68" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="6">
                      <Property name="Name" value="l_shd_bck_in_AuxSHJnt" />
                      <Property name="NameHash" value="1138380708" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="1.330826" />
                        <Property name="TransY" value="-0.516048" />
                        <Property name="TransZ" value="-0.353181" />
                        <Property name="RotX" value="70.000000" />
                        <Property name="RotY" value="180.000000" />
                        <Property name="RotZ" value="90.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="69" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="7">
                      <Property name="Name" value="r_shd_bck_in_AuxSHJnt" />
                      <Property name="NameHash" value="2072641281" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="1.330826" />
                        <Property name="TransY" value="-0.516048" />
                        <Property name="TransZ" value="0.353181" />
                        <Property name="RotX" value="70.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="90.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="70" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="8">
                      <Property name="Name" value="l_hip_frnt_tp_AuxSHJnt" />
                      <Property name="NameHash" value="3294542372" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.314946" />
                        <Property name="TransY" value="0.343704" />
                        <Property name="TransZ" value="-0.198355" />
                        <Property name="RotX" value="-30.0000019" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="-160.000031" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="71" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="9">
                      <Property name="Name" value="r_hip_frnt_tp_AuxSHJnt" />
                      <Property name="NameHash" value="1108302696" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.314946" />
                        <Property name="TransY" value="0.343704" />
                        <Property name="TransZ" value="0.198355" />
                        <Property name="RotX" value="-30.0000019" />
                        <Property name="RotY" value="180.000000" />
                        <Property name="RotZ" value="-19.9999828" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="72" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="10">
                      <Property name="Name" value="l_hip_mid_tp_AuxSHJnt" />
                      <Property name="NameHash" value="598284080" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.314946" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="-0.396793" />
                        <Property name="RotX" value="-90.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="-160.000015" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="73" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="11">
                      <Property name="Name" value="r_hip_mid_tp_AuxSHJnt" />
                      <Property name="NameHash" value="3252215919" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.314946" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="0.396793" />
                        <Property name="RotX" value="-90.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="160.000015" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="74" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="12">
                      <Property name="Name" value="l_hip_bck_tp_AuxSHJnt" />
                      <Property name="NameHash" value="556915451" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.314946" />
                        <Property name="TransY" value="-0.343703" />
                        <Property name="TransZ" value="-0.198356" />
                        <Property name="RotX" value="-30.0000038" />
                        <Property name="RotY" value="180.000000" />
                        <Property name="RotZ" value="19.999979" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="75" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="13">
                      <Property name="Name" value="r_hip_bck_tp_AuxSHJnt" />
                      <Property name="NameHash" value="2707685023" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.314946" />
                        <Property name="TransY" value="-0.343703" />
                        <Property name="TransZ" value="0.198356" />
                        <Property name="RotX" value="-30.0000038" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="160.000031" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="76" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="14">
                      <Property name="Name" value="l_shd_tp_in_AuxSHJnt" />
                      <Property name="NameHash" value="2288335327" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="1.877667" />
                        <Property name="TransY" value="0.084053" />
                        <Property name="TransZ" value="-0.624521" />
                        <Property name="RotX" value="90.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="-80.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="77" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="15">
                      <Property name="Name" value="r_shd_tp_in_AuxSHJnt" />
                      <Property name="NameHash" value="1461499004" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="1.877667" />
                        <Property name="TransY" value="0.084053" />
                        <Property name="TransZ" value="0.624521" />
                        <Property name="RotX" value="90.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="80.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="78" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="16">
                      <Property name="Name" value="cam1_AuxSHJnt" />
                      <Property name="NameHash" value="4180621001" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="2.243523" />
                        <Property name="TransY" value="0.025787" />
                        <Property name="TransZ" value="0.228048" />
                        <Property name="RotX" value="90.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="-90.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="79" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="cam2_AuxSHJnt" />
                          <Property name="NameHash" value="3794972944" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-0.284061" />
                            <Property name="TransY" value="0.092137" />
                            <Property name="TransZ" value="0.002913" />
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
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="80" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="cam3_AuxSHJnt" />
                              <Property name="NameHash" value="1875435297" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="0.157319" />
                                <Property name="TransZ" value="0.003676" />
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
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="81" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="17">
                      <Property name="Name" value="MaintenanceSlot0" />
                      <Property name="NameHash" value="1004495448" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="1.441625" />
                        <Property name="TransY" value="-0.968046" />
                        <Property name="TransZ" value="0.026027" />
                        <Property name="RotX" value="90.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="-90.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes" />
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="18">
                      <Property name="Name" value="Gun" />
                      <Property name="NameHash" value="1568724861" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="1.105022" />
                        <Property name="TransY" value="0.489610" />
                        <Property name="TransZ" value="-0.157728" />
                        <Property name="RotX" value="-90.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="-90.000000" />
                        <Property name="ScaleX" value="0.724267" />
                        <Property name="ScaleY" value="0.724267" />
                        <Property name="ScaleZ" value="0.724267" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="ATTACHMENT" />
                          <Property name="Value" value="MODELS\COMMON\VEHICLES\BUGGY\ENTITIES\GUN.ENTITY.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="19">
                      <Property name="Name" value="Stage1" />
                      <Property name="NameHash" value="1790279305" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="-2.431594" />
                        <Property name="TransY" value="-0.082701" />
                        <Property name="TransZ" value="0.000082" />
                        <Property name="RotX" value="90.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="-90.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes" />
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="20">
                      <Property name="Name" value="Stage2" />
                      <Property name="NameHash" value="1483987462" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="-2.431594" />
                        <Property name="TransY" value="-0.082701" />
                        <Property name="TransZ" value="0.000082" />
                        <Property name="RotX" value="90.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="-90.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes" />
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="21">
                      <Property name="Name" value="RBottomJetpack" />
                      <Property name="NameHash" value="1769260467" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="-0.191435" />
                        <Property name="TransY" value="-0.689434" />
                        <Property name="TransZ" value="-0.149577" />
                        <Property name="RotX" value="-20.4256477" />
                        <Property name="RotY" value="90.000000" />
                        <Property name="RotZ" value="180.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes" />
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="22">
                      <Property name="Name" value="LBottomJetpack" />
                      <Property name="NameHash" value="861923504" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="-0.191435" />
                        <Property name="TransY" value="-0.689434" />
                        <Property name="TransZ" value="0.150336" />
                        <Property name="RotX" value="-20.4256477" />
                        <Property name="RotY" value="90.000000" />
                        <Property name="RotZ" value="180.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes" />
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="23">
                      <Property name="Name" value="LMiddleJetpack" />
                      <Property name="NameHash" value="3990956497" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.027039" />
                        <Property name="TransY" value="-0.801278" />
                        <Property name="TransZ" value="0.249343" />
                        <Property name="RotX" value="-23.529080" />
                        <Property name="RotY" value="147.928024" />
                        <Property name="RotZ" value="147.499023" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes" />
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="24">
                      <Property name="Name" value="RMiddleJetpack" />
                      <Property name="NameHash" value="4054450325" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.024593" />
                        <Property name="TransY" value="-0.807589" />
                        <Property name="TransZ" value="-0.253210" />
                        <Property name="RotX" value="-23.7137775" />
                        <Property name="RotY" value="29.4458447" />
                        <Property name="RotZ" value="-146.47113" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes" />
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="25">
                      <Property name="Name" value="RTopJetpack" />
                      <Property name="NameHash" value="2013094974" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.621853" />
                        <Property name="TransY" value="-0.815663" />
                        <Property name="TransZ" value="-0.216910" />
                        <Property name="RotX" value="-0.224196" />
                        <Property name="RotY" value="36.462420" />
                        <Property name="RotZ" value="-176.797800" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes" />
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="26">
                      <Property name="Name" value="LTopJetpack" />
                      <Property name="NameHash" value="3098604483" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.623918" />
                        <Property name="TransY" value="-0.815630" />
                        <Property name="TransZ" value="0.221946" />
                        <Property name="RotX" value="-0.346399" />
                        <Property name="RotY" value="139.575623" />
                        <Property name="RotZ" value="170.762344" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes" />
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="27">
                      <Property name="Name" value="TorsoTopArmour" />
                      <Property name="NameHash" value="2406492723" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="-2.431594" />
                        <Property name="TransY" value="-0.082701" />
                        <Property name="TransZ" value="0.000082" />
                        <Property name="RotX" value="90.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="-90.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="ATTACHMENT" />
                          <Property name="Value" value="MODELS\COMMON\ROBOTS\SENTINELMECH\ENTITIES\MECHARMOUR.ENTITY.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="EXPLODE" />
                          <Property name="NameHash" value="2977219630" />
                          <Property name="Type" value="LOCATOR" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.000000" />
                            <Property name="TransY" value="3.912525" />
                            <Property name="TransZ" value="-0.722923" />
                            <Property name="RotX" value="-90.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="0.000000" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes" />
                          <Property name="Children" />
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="1">
                  <Property name="Name" value="l_hip_frnt_btm_AuxSHJnt" />
                  <Property name="NameHash" value="3814741302" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.077599" />
                    <Property name="TransY" value="0.207430" />
                    <Property name="TransZ" value="-0.119678" />
                    <Property name="RotX" value="30.0000019" />
                    <Property name="RotY" value="180.000000" />
                    <Property name="RotZ" value="160.000031" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="82" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="2">
                  <Property name="Name" value="r_hip_frnt_btm_AuxSHJnt" />
                  <Property name="NameHash" value="1267132537" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.077625" />
                    <Property name="TransY" value="0.207439" />
                    <Property name="TransZ" value="0.119683" />
                    <Property name="RotX" value="30.0000019" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="19.9999828" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="83" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="3">
                  <Property name="Name" value="l_hip_mid_btm_AuxSHJnt" />
                  <Property name="NameHash" value="465854958" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.077599" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.239438" />
                    <Property name="RotX" value="90.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="-19.9999886" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="84" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="4">
                  <Property name="Name" value="r_hip_mid_btm_AuxSHJnt" />
                  <Property name="NameHash" value="1938492585" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.077651" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="0.239457" />
                    <Property name="RotX" value="90.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="19.9999886" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="85" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="5">
                  <Property name="Name" value="l_hip_bck_btm_AuxSHJnt" />
                  <Property name="NameHash" value="137428079" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.077599" />
                    <Property name="TransY" value="-0.207430" />
                    <Property name="TransZ" value="-0.119678" />
                    <Property name="RotX" value="30.0000038" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="-19.999979" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="86" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="6">
                  <Property name="Name" value="r_hip_bck_btm_AuxSHJnt" />
                  <Property name="NameHash" value="2516873355" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.077625" />
                    <Property name="TransY" value="-0.207438" />
                    <Property name="TransZ" value="0.119683" />
                    <Property name="RotX" value="30.0000038" />
                    <Property name="RotY" value="180.000000" />
                    <Property name="RotZ" value="-160.000031" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="87" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="1">
              <Property name="Name" value="l_hip_AuxSHJnt" />
              <Property name="NameHash" value="1950878746" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.067500" />
                <Property name="TransY" value="-0.014346" />
                <Property name="TransZ" value="-0.469584" />
                <Property name="RotX" value="90.000000" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="-90.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="88" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="l_hip_tp_bck_out1_AuxSHJnt" />
                  <Property name="NameHash" value="2824717795" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.088903" />
                    <Property name="TransY" value="0.211699" />
                    <Property name="TransZ" value="0.108105" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="-144.701172" />
                    <Property name="RotZ" value="30.1971588" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="89" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="1">
                  <Property name="Name" value="l_hip_tp_bck_out2_AuxSHJnt" />
                  <Property name="NameHash" value="3624051750" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.088948" />
                    <Property name="TransY" value="0.095796" />
                    <Property name="TransZ" value="0.224629" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="-144.730682" />
                    <Property name="RotZ" value="29.9782162" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="90" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="2">
                  <Property name="Name" value="l_hip_tp_frnt_out1_AuxSHJnt" />
                  <Property name="NameHash" value="3470883720" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.088841" />
                    <Property name="TransY" value="0.213677" />
                    <Property name="TransZ" value="-0.130246" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="144.289337" />
                    <Property name="RotZ" value="29.6183853" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="91" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="3">
                  <Property name="Name" value="l_hip_tp_frnt_out2_AuxSHJnt" />
                  <Property name="NameHash" value="4259533575" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.090085" />
                    <Property name="TransY" value="0.096108" />
                    <Property name="TransZ" value="-0.246049" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="144.291500" />
                    <Property name="RotZ" value="29.621220" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="92" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="4">
                  <Property name="Name" value="l_hip_btm_frnt_out_AuxSHJnt" />
                  <Property name="NameHash" value="3622355483" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.092006" />
                    <Property name="TransY" value="-0.230391" />
                    <Property name="TransZ" value="-0.265201" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="155.540000" />
                    <Property name="RotZ" value="0.000018" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="93" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="5">
                  <Property name="Name" value="l_hip_btm_bck_out_AuxSHJnt" />
                  <Property name="NameHash" value="3305727663" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.093419" />
                    <Property name="TransY" value="-0.230391" />
                    <Property name="TransZ" value="0.239761" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="-155.05336" />
                    <Property name="RotZ" value="0.000018" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="94" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="6">
                  <Property name="Name" value="l_leg_HipSHJnt" />
                  <Property name="NameHash" value="1898634210" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.385031" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="44.0153122" />
                    <Property name="RotY" value="0.035582" />
                    <Property name="RotZ" value="-89.950840" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="95" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="l_leg_KneeSHJnt" />
                      <Property name="NameHash" value="145455739" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="1.100057" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="0.000000" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="-110.551842" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="96" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="l_leg_AnkleSHJnt" />
                          <Property name="NameHash" value="3262919520" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.894207" />
                            <Property name="TransY" value="0.000000" />
                            <Property name="TransZ" value="0.000000" />
                            <Property name="RotX" value="-0.001427" />
                            <Property name="RotY" value="-113.463387" />
                            <Property name="RotZ" value="-179.964661" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="97" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="l_leg_BallSHJnt" />
                              <Property name="NameHash" value="1446274555" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.361335" />
                                <Property name="TransY" value="0.000935" />
                                <Property name="TransZ" value="0.538967" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="-89.9995956" />
                                <Property name="RotZ" value="0.000000" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="98" />
                                </Property>
                              </Property>
                              <Property name="Children">
                                <Property name="Children" value="TkSceneNodeData" _index="0">
                                  <Property name="Name" value="l_leg_ToeSHJnt" />
                                  <Property name="NameHash" value="428821773" />
                                  <Property name="Type" value="JOINT" />
                                  <Property name="Transform" value="TkTransformData">
                                    <Property name="TransX" value="-0.025260" />
                                    <Property name="TransY" value="-0.000226" />
                                    <Property name="TransZ" value="-0.110690" />
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
                                      <Property name="Name" value="JOINTINDEX" />
                                      <Property name="Value" value="99" />
                                    </Property>
                                  </Property>
                                  <Property name="Children" />
                                </Property>
                                <Property name="Children" value="TkSceneNodeData" _index="1">
                                  <Property name="Name" value="l_toe_AuxSHJnt" />
                                  <Property name="NameHash" value="1552027681" />
                                  <Property name="Type" value="JOINT" />
                                  <Property name="Transform" value="TkTransformData">
                                    <Property name="TransX" value="-0.025260" />
                                    <Property name="TransY" value="-0.000226" />
                                    <Property name="TransZ" value="-0.110689" />
                                    <Property name="RotX" value="-0.000154" />
                                    <Property name="RotY" value="89.999850" />
                                    <Property name="RotZ" value="90.000000" />
                                    <Property name="ScaleX" value="1.000000" />
                                    <Property name="ScaleY" value="1.000000" />
                                    <Property name="ScaleZ" value="1.000000" />
                                  </Property>
                                  <Property name="PlatformExclusion" value="0" />
                                  <Property name="Attributes">
                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                      <Property name="Name" value="JOINTINDEX" />
                                      <Property name="Value" value="100" />
                                    </Property>
                                  </Property>
                                  <Property name="Children" />
                                </Property>
                              </Property>
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="1">
                              <Property name="Name" value="l_calf_btm_AuxSHJnt" />
                              <Property name="NameHash" value="3334111508" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="-0.000001" />
                                <Property name="TransY" value="0.000000" />
                                <Property name="TransZ" value="0.000000" />
                                <Property name="RotX" value="90.000000" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="130.000381" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="101" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="2">
                              <Property name="Name" value="l_heel_tp_AuxSHJnt" />
                              <Property name="NameHash" value="418673870" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.140643" />
                                <Property name="TransY" value="0.000000" />
                                <Property name="TransZ" value="0.139552" />
                                <Property name="RotX" value="-89.4614944" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="10.0006781" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="102" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="3">
                              <Property name="Name" value="l_heel_AuxSHJnt" />
                              <Property name="NameHash" value="1954322299" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.585309" />
                                <Property name="TransY" value="-0.000176" />
                                <Property name="TransZ" value="0.139812" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="-0.000335" />
                                <Property name="RotZ" value="90.000050" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="103" />
                                </Property>
                              </Property>
                              <Property name="Children">
                                <Property name="Children" value="TkSceneNodeData" _index="0">
                                  <Property name="Name" value="l_hl_btm_AuxSHJnt" />
                                  <Property name="NameHash" value="2091877866" />
                                  <Property name="Type" value="JOINT" />
                                  <Property name="Transform" value="TkTransformData">
                                    <Property name="TransX" value="-0.000463" />
                                    <Property name="TransY" value="0.059111" />
                                    <Property name="TransZ" value="-0.068248" />
                                    <Property name="RotX" value="-0.000045" />
                                    <Property name="RotY" value="-89.4614258" />
                                    <Property name="RotZ" value="79.998560" />
                                    <Property name="ScaleX" value="1.000000" />
                                    <Property name="ScaleY" value="1.000000" />
                                    <Property name="ScaleZ" value="1.000000" />
                                  </Property>
                                  <Property name="PlatformExclusion" value="0" />
                                  <Property name="Attributes">
                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                      <Property name="Name" value="JOINTINDEX" />
                                      <Property name="Value" value="104" />
                                    </Property>
                                  </Property>
                                  <Property name="Children" />
                                </Property>
                              </Property>
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="4">
                              <Property name="Name" value="l_tp_foot_btm_AuxSHJnt" />
                              <Property name="NameHash" value="2011337016" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.361335" />
                                <Property name="TransY" value="0.000061" />
                                <Property name="TransZ" value="0.538962" />
                                <Property name="RotX" value="-89.980220" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="139.997742" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="105" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="5">
                              <Property name="Name" value="CONTRAIL3" />
                              <Property name="NameHash" value="1787394109" />
                              <Property name="Type" value="LOCATOR" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="-0.286341" />
                                <Property name="TransZ" value="0.000000" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="0.000000" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes" />
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                        <Property name="Children" value="TkSceneNodeData" _index="1">
                          <Property name="Name" value="l_thigh_btm_AuxSHJnt" />
                          <Property name="NameHash" value="4061819900" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.201771" />
                            <Property name="TransY" value="-0.000224" />
                            <Property name="TransZ" value="-0.087602" />
                            <Property name="RotX" value="89.944046" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="68.466230" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="106" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                        <Property name="Children" value="TkSceneNodeData" _index="2">
                          <Property name="Name" value="l_tp_foot_tp_AuxSHJnt" />
                          <Property name="NameHash" value="452406953" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.692408" />
                            <Property name="TransY" value="0.000106" />
                            <Property name="TransZ" value="-0.045187" />
                            <Property name="RotX" value="-89.960434" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="106.538445" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="107" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                      </Property>
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="1">
                      <Property name="Name" value="l_thigh_tp_AuxSHJnt" />
                      <Property name="NameHash" value="2196173907" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.144349" />
                        <Property name="TransY" value="0.000718" />
                        <Property name="TransZ" value="0.236254" />
                        <Property name="RotX" value="-89.944046" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="0.981936" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="108" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="2">
                      <Property name="Name" value="l_calf_tp_AuxSHJnt" />
                      <Property name="NameHash" value="348596409" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.845276" />
                        <Property name="TransY" value="0.000301" />
                        <Property name="TransZ" value="-0.005160" />
                        <Property name="RotX" value="89.965740" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="94.015280" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="109" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="2">
              <Property name="Name" value="r_hip_AuxSHJnt" />
              <Property name="NameHash" value="2804557427" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.067500" />
                <Property name="TransY" value="-0.014346" />
                <Property name="TransZ" value="0.469584" />
                <Property name="RotX" value="-90.000000" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="90.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="110" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="r_hip_tp_bck_out1_AuxSHJnt" />
                  <Property name="NameHash" value="2558531932" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.088903" />
                    <Property name="TransY" value="-0.211699" />
                    <Property name="TransZ" value="-0.108105" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="35.2988243" />
                    <Property name="RotZ" value="-30.1971588" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="111" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="1">
                  <Property name="Name" value="r_hip_tp_bck_out2_AuxSHJnt" />
                  <Property name="NameHash" value="1448690675" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.088948" />
                    <Property name="TransY" value="-0.095796" />
                    <Property name="TransZ" value="-0.224629" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="35.2693176" />
                    <Property name="RotZ" value="-29.9782162" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="112" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="2">
                  <Property name="Name" value="r_hip_tp_frnt_out1_AuxSHJnt" />
                  <Property name="NameHash" value="2097197373" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.088841" />
                    <Property name="TransY" value="-0.213677" />
                    <Property name="TransZ" value="0.130246" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="-35.7106667" />
                    <Property name="RotZ" value="-29.6183853" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="113" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="3">
                  <Property name="Name" value="r_hip_tp_frnt_out2_AuxSHJnt" />
                  <Property name="NameHash" value="273903931" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.090085" />
                    <Property name="TransY" value="-0.096108" />
                    <Property name="TransZ" value="0.246049" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="-35.7084923" />
                    <Property name="RotZ" value="-29.621220" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="114" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="4">
                  <Property name="Name" value="r_hip_btm_frnt_out_AuxSHJnt" />
                  <Property name="NameHash" value="3107763354" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.092103" />
                    <Property name="TransY" value="0.230391" />
                    <Property name="TransZ" value="0.265157" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="-24.4600086" />
                    <Property name="RotZ" value="-0.000018" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="115" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="5">
                  <Property name="Name" value="r_hip_btm_bck_out_AuxSHJnt" />
                  <Property name="NameHash" value="1492148678" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.092028" />
                    <Property name="TransY" value="0.230391" />
                    <Property name="TransZ" value="-0.240408" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="24.9466438" />
                    <Property name="RotZ" value="-0.000018" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="116" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="6">
                  <Property name="Name" value="r_leg_HipSHJnt" />
                  <Property name="NameHash" value="3611517775" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.385031" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="44.0153122" />
                    <Property name="RotY" value="0.035582" />
                    <Property name="RotZ" value="-89.950840" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="117" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="r_leg_KneeSHJnt" />
                      <Property name="NameHash" value="1890257127" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="-1.100057" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="0.000000" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="-110.551842" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="118" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="r_leg_AnkleSHJnt" />
                          <Property name="NameHash" value="4017059443" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-0.894207" />
                            <Property name="TransY" value="0.000000" />
                            <Property name="TransZ" value="0.000000" />
                            <Property name="RotX" value="-0.001427" />
                            <Property name="RotY" value="-113.463387" />
                            <Property name="RotZ" value="-179.964661" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="119" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="r_leg_BallSHJnt" />
                              <Property name="NameHash" value="376809524" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="-0.361335" />
                                <Property name="TransY" value="-0.000935" />
                                <Property name="TransZ" value="-0.538967" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="-89.9995956" />
                                <Property name="RotZ" value="0.000000" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="120" />
                                </Property>
                              </Property>
                              <Property name="Children">
                                <Property name="Children" value="TkSceneNodeData" _index="0">
                                  <Property name="Name" value="r_leg_ToeSHJnt" />
                                  <Property name="NameHash" value="2083281450" />
                                  <Property name="Type" value="JOINT" />
                                  <Property name="Transform" value="TkTransformData">
                                    <Property name="TransX" value="0.025260" />
                                    <Property name="TransY" value="0.000226" />
                                    <Property name="TransZ" value="0.110690" />
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
                                      <Property name="Name" value="JOINTINDEX" />
                                      <Property name="Value" value="121" />
                                    </Property>
                                  </Property>
                                  <Property name="Children" />
                                </Property>
                                <Property name="Children" value="TkSceneNodeData" _index="1">
                                  <Property name="Name" value="r_toe_AuxSHJnt" />
                                  <Property name="NameHash" value="4280021979" />
                                  <Property name="Type" value="JOINT" />
                                  <Property name="Transform" value="TkTransformData">
                                    <Property name="TransX" value="0.025260" />
                                    <Property name="TransY" value="0.000226" />
                                    <Property name="TransZ" value="0.110689" />
                                    <Property name="RotX" value="-0.000155" />
                                    <Property name="RotY" value="89.999850" />
                                    <Property name="RotZ" value="90.000000" />
                                    <Property name="ScaleX" value="1.000000" />
                                    <Property name="ScaleY" value="1.000000" />
                                    <Property name="ScaleZ" value="1.000000" />
                                  </Property>
                                  <Property name="PlatformExclusion" value="0" />
                                  <Property name="Attributes">
                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                      <Property name="Name" value="JOINTINDEX" />
                                      <Property name="Value" value="122" />
                                    </Property>
                                  </Property>
                                  <Property name="Children" />
                                </Property>
                              </Property>
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="1">
                              <Property name="Name" value="r_calf_btm_AuxSHJnt" />
                              <Property name="NameHash" value="3805349932" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000001" />
                                <Property name="TransY" value="0.000000" />
                                <Property name="TransZ" value="0.000000" />
                                <Property name="RotX" value="-90.000000" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="49.999960" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="123" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="2">
                              <Property name="Name" value="r_heel_tp_AuxSHJnt" />
                              <Property name="NameHash" value="3754984585" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="-0.140643" />
                                <Property name="TransY" value="0.000000" />
                                <Property name="TransZ" value="-0.139552" />
                                <Property name="RotX" value="89.4614944" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="169.998978" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="124" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="3">
                              <Property name="Name" value="r_heel_AuxSHJnt" />
                              <Property name="NameHash" value="3927834988" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="-0.585309" />
                                <Property name="TransY" value="0.000176" />
                                <Property name="TransZ" value="-0.139812" />
                                <Property name="RotX" value="-0.000079" />
                                <Property name="RotY" value="0.000009" />
                                <Property name="RotZ" value="90.000145" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="125" />
                                </Property>
                              </Property>
                              <Property name="Children">
                                <Property name="Children" value="TkSceneNodeData" _index="0">
                                  <Property name="Name" value="r_hl_btm_AuxSHJnt" />
                                  <Property name="NameHash" value="1483911106" />
                                  <Property name="Type" value="JOINT" />
                                  <Property name="Transform" value="TkTransformData">
                                    <Property name="TransX" value="0.000463" />
                                    <Property name="TransY" value="-0.059110" />
                                    <Property name="TransZ" value="0.068249" />
                                    <Property name="RotX" value="0.000148" />
                                    <Property name="RotY" value="90.538490" />
                                    <Property name="RotZ" value="-79.998900" />
                                    <Property name="ScaleX" value="1.000000" />
                                    <Property name="ScaleY" value="1.000000" />
                                    <Property name="ScaleZ" value="1.000000" />
                                  </Property>
                                  <Property name="PlatformExclusion" value="0" />
                                  <Property name="Attributes">
                                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                      <Property name="Name" value="JOINTINDEX" />
                                      <Property name="Value" value="126" />
                                    </Property>
                                  </Property>
                                  <Property name="Children" />
                                </Property>
                              </Property>
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="4">
                              <Property name="Name" value="r_tp_foot_btm_AuxSHJnt" />
                              <Property name="NameHash" value="3237012163" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="-0.361335" />
                                <Property name="TransY" value="-0.000061" />
                                <Property name="TransZ" value="-0.538962" />
                                <Property name="RotX" value="89.980220" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="40.001910" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes">
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="127" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="5">
                              <Property name="Name" value="CONTRAIL2" />
                              <Property name="NameHash" value="959387017" />
                              <Property name="Type" value="LOCATOR" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="0.286913" />
                                <Property name="TransZ" value="0.000000" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="0.000000" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes" />
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                        <Property name="Children" value="TkSceneNodeData" _index="1">
                          <Property name="Name" value="r_thigh_btm_AuxSHJnt" />
                          <Property name="NameHash" value="2236267726" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-0.201771" />
                            <Property name="TransY" value="0.000224" />
                            <Property name="TransZ" value="0.087602" />
                            <Property name="RotX" value="-89.944046" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="111.533768" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="128" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                        <Property name="Children" value="TkSceneNodeData" _index="2">
                          <Property name="Name" value="r_tp_foot_tp_AuxSHJnt" />
                          <Property name="NameHash" value="180932905" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-0.692408" />
                            <Property name="TransY" value="-0.000106" />
                            <Property name="TransZ" value="0.045187" />
                            <Property name="RotX" value="89.960434" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="73.4615555" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="129" />
                            </Property>
                          </Property>
                          <Property name="Children" />
                        </Property>
                      </Property>
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="1">
                      <Property name="Name" value="r_thigh_tp_AuxSHJnt" />
                      <Property name="NameHash" value="4255694831" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="-0.144349" />
                        <Property name="TransY" value="-0.000718" />
                        <Property name="TransZ" value="-0.236254" />
                        <Property name="RotX" value="89.944046" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="179.018066" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="130" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="2">
                      <Property name="Name" value="r_calf_tp_AuxSHJnt" />
                      <Property name="NameHash" value="168882536" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="-0.845276" />
                        <Property name="TransY" value="-0.000301" />
                        <Property name="TransZ" value="0.005160" />
                        <Property name="RotX" value="-89.965740" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="85.984720" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="131" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="3">
              <Property name="Name" value="l_hip_tp_bck_in1_AuxSHJnt" />
              <Property name="NameHash" value="2027942005" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.275993" />
                <Property name="TransY" value="-0.253315" />
                <Property name="TransZ" value="-0.373653" />
                <Property name="RotX" value="54.701180" />
                <Property name="RotY" value="180.000000" />
                <Property name="RotZ" value="59.802840" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="132" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="4">
              <Property name="Name" value="r_hip_tp_bck_in1_AuxSHJnt" />
              <Property name="NameHash" value="2424926392" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.275993" />
                <Property name="TransY" value="-0.253315" />
                <Property name="TransZ" value="0.373653" />
                <Property name="RotX" value="54.701180" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="120.197166" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="133" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="5">
              <Property name="Name" value="l_hip_tp_bck_in2_AuxSHJnt" />
              <Property name="NameHash" value="118439427" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.159291" />
                <Property name="TransY" value="-0.370101" />
                <Property name="TransZ" value="-0.373125" />
                <Property name="RotX" value="54.7306824" />
                <Property name="RotY" value="180.000000" />
                <Property name="RotZ" value="60.0217857" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="134" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="6">
              <Property name="Name" value="r_hip_tp_bck_in2_AuxSHJnt" />
              <Property name="NameHash" value="1181707351" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.159291" />
                <Property name="TransY" value="-0.370101" />
                <Property name="TransZ" value="0.373125" />
                <Property name="RotX" value="54.7306824" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="119.978218" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="135" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="7">
              <Property name="Name" value="l_hip_tp_frnt_in1_AuxSHJnt" />
              <Property name="NameHash" value="2550016847" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.277198" />
                <Property name="TransY" value="0.250421" />
                <Property name="TransZ" value="-0.371292" />
                <Property name="RotX" value="54.2893372" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="-119.618385" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="136" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="8">
              <Property name="Name" value="r_hip_tp_frnt_in1_AuxSHJnt" />
              <Property name="NameHash" value="3859158338" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.277198" />
                <Property name="TransY" value="0.250421" />
                <Property name="TransZ" value="0.371292" />
                <Property name="RotX" value="54.2893372" />
                <Property name="RotY" value="180.000000" />
                <Property name="RotZ" value="-60.381610" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="137" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="9">
              <Property name="Name" value="l_hip_tp_frnt_in2_AuxSHJnt" />
              <Property name="NameHash" value="156733189" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.159625" />
                <Property name="TransY" value="0.366198" />
                <Property name="TransZ" value="-0.372558" />
                <Property name="RotX" value="54.291510" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="-119.621216" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="138" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="10">
              <Property name="Name" value="r_hip_tp_frnt_in2_AuxSHJnt" />
              <Property name="NameHash" value="1470705631" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.159625" />
                <Property name="TransY" value="0.366198" />
                <Property name="TransZ" value="0.372558" />
                <Property name="RotX" value="54.291510" />
                <Property name="RotY" value="180.000000" />
                <Property name="RotZ" value="-60.3787766" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="139" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="11">
              <Property name="Name" value="l_hip_btm_frnt_in_AuxSHJnt" />
              <Property name="NameHash" value="1875152922" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.297891" />
                <Property name="TransY" value="0.467770" />
                <Property name="TransZ" value="-0.084732" />
                <Property name="RotX" value="65.5399857" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="-90.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="140" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="12">
              <Property name="Name" value="r_hip_btm_frnt_in_AuxSHJnt" />
              <Property name="NameHash" value="437316383" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.297891" />
                <Property name="TransY" value="0.467770" />
                <Property name="TransZ" value="0.084732" />
                <Property name="RotX" value="65.5399857" />
                <Property name="RotY" value="180.000000" />
                <Property name="RotZ" value="-89.9999847" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="141" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="13">
              <Property name="Name" value="l_hip_btm_bck_in_AuxSHJnt" />
              <Property name="NameHash" value="2833316607" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.297891" />
                <Property name="TransY" value="-0.476587" />
                <Property name="TransZ" value="-0.084732" />
                <Property name="RotX" value="65.053360" />
                <Property name="RotY" value="180.000000" />
                <Property name="RotZ" value="90.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="142" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="14">
              <Property name="Name" value="r_hip_btm_bck_in_AuxSHJnt" />
              <Property name="NameHash" value="3355959900" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.297891" />
                <Property name="TransY" value="-0.476587" />
                <Property name="TransZ" value="0.084732" />
                <Property name="RotX" value="65.053360" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="90.0000153" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="143" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="mech_mesh" />
      <Property name="NameHash" value="664045813" />
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
      <Property name="Attributes" />
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="Scanner_SENTINEL" />
          <Property name="NameHash" value="2816277501" />
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
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="Body_SENTINEL" />
          <Property name="NameHash" value="3268758049" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="3.974893" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="TorsoLOD0" />
              <Property name="NameHash" value="2418124986" />
              <Property name="Type" value="MESH" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="-3.974893" />
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
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="Value" value="1701216" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="Value" value="649978" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="Value" value="726855" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="Value" value="231627" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="Value" value="76877" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
                  <Property name="Name" value="FIRSTSKINMAT" />
                  <Property name="Value" value="1674" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
                  <Property name="Name" value="LASTSKINMAT" />
                  <Property name="Value" value="1678" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
                  <Property name="Name" value="LODLEVEL" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
                  <Property name="Name" value="BOUNDHULLST" />
                  <Property name="Value" value="10218" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="Value" value="10265" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="Value" value="-1.018146" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="Value" value="2.098155" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="Value" value="-1.200547" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="Value" value="1.018146" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="Value" value="5.079358" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="Value" value="1.350135" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
                  <Property name="Name" value="HASH" />
                  <Property name="Value" value="16990671959270681645" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="Value" value="MODELS\COMMON\ROBOTS\SENTINELMECH\SENTINELMECHMAT.MATERIAL.MBIN" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="Value" value="TorsoLOD0Shape" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="MODELS\COMMON\ROBOTS\SENTINELMECH|collisionBox5" />
                  <Property name="NameHash" value="19398114" />
                  <Property name="Type" value="COLLISION" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.017578" />
                    <Property name="TransY" value="3.267500" />
                    <Property name="TransZ" value="0.145300" />
                    <Property name="RotX" value="90.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="TYPE" />
                      <Property name="Value" value="Box" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                      <Property name="Name" value="WIDTH" />
                      <Property name="Value" value="1.725865" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                      <Property name="Name" value="HEIGHT" />
                      <Property name="Value" value="1.969503" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                      <Property name="Name" value="DEPTH" />
                      <Property name="Value" value="2.220328" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="1">
                  <Property name="Name" value="SUB2TorsoLOD0" />
                  <Property name="NameHash" value="324296731" />
                  <Property name="Type" value="MESH" />
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
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="Value" value="1932921" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="Value" value="726908" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="Value" value="726943" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="Value" value="54" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="Value" value="35" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
                      <Property name="Name" value="FIRSTSKINMAT" />
                      <Property name="Value" value="1679" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
                      <Property name="Name" value="LASTSKINMAT" />
                      <Property name="Value" value="1680" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
                      <Property name="Name" value="LODLEVEL" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
                      <Property name="Name" value="BOUNDHULLST" />
                      <Property name="Value" value="10299" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="Value" value="10327" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="Value" value="-0.247746" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="Value" value="3.115491" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="Value" value="-1.009908" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="Value" value="0.619920" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="Value" value="4.319442" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="Value" value="1.234931" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
                      <Property name="Name" value="HASH" />
                      <Property name="Value" value="17734771721718728995" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="Value" value="MODELS\COMMON\ROBOTS\SENTINELMECH\ARMDRONEMAT8.MATERIAL.MBIN" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="Value" value="TorsoLOD0Shape" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="2">
                  <Property name="Name" value="SUB3TorsoLOD0" />
                  <Property name="NameHash" value="3949099961" />
                  <Property name="Type" value="MESH" />
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
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="Value" value="1932975" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="Value" value="726944" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="Value" value="726951" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="Value" value="12" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="Value" value="7" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
                      <Property name="Name" value="FIRSTSKINMAT" />
                      <Property name="Value" value="1680" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
                      <Property name="Name" value="LASTSKINMAT" />
                      <Property name="Value" value="1681" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
                      <Property name="Name" value="LODLEVEL" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
                      <Property name="Name" value="BOUNDHULLST" />
                      <Property name="Value" value="10327" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="Value" value="10335" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="Value" value="-0.864689" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="Value" value="3.766192" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="Value" value="0.117847" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="Value" value="0.864689" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="Value" value="3.856457" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="Value" value="0.201674" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
                      <Property name="Name" value="HASH" />
                      <Property name="Value" value="11636859311200251279" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="Value" value="MODELS\COMMON\ROBOTS\SENTINELMECH\LEGARMOUR_LIGHTS_MAT3.MATERIAL.MBIN" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="Value" value="TorsoLOD0Shape" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="3">
                  <Property name="Name" value="SUB4TorsoLOD0" />
                  <Property name="NameHash" value="3782183625" />
                  <Property name="Type" value="MESH" />
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
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="Value" value="1932987" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="Value" value="726952" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="Value" value="727035" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="Value" value="228" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="Value" value="83" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
                      <Property name="Name" value="FIRSTSKINMAT" />
                      <Property name="Value" value="1681" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
                      <Property name="Name" value="LASTSKINMAT" />
                      <Property name="Value" value="1682" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
                      <Property name="Name" value="LODLEVEL" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
                      <Property name="Name" value="BOUNDHULLST" />
                      <Property name="Value" value="10335" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="Value" value="10363" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="Value" value="-0.492518" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="Value" value="3.363429" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="Value" value="-0.574956" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="Value" value="0.492518" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="Value" value="3.596927" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="Value" value="-0.462595" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
                      <Property name="Name" value="HASH" />
                      <Property name="Value" value="8448435719804192175" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="Value" value="MODELS\COMMON\ROBOTS\SENTINELMECH\LIGHTSMAT3.MATERIAL.MBIN" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="Value" value="TorsoLOD0Shape" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="Mech" />
      <Property name="NameHash" value="1952019589" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="3.285562" />
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
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\LOOTDROP\MECHLOOT\ENTITIES\MECHLOOT.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="EXPLODE" />
          <Property name="NameHash" value="2977219630" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.393137" />
            <Property name="TransZ" value="-0.171723" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\COMMON\ROBOTS\LOOTDROP\QUADLOOT.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\SCIENTIFICPARTS\LAYOUTS\LAYOUT_WORKSHOPA" />
  <Property name="NameHash" value="1424664035" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\SCIENTIFICPARTS\LAYOUTS\LAYOUT_WORKSHOPA.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Quad" />
      <Property name="NameHash" value="1958012440" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="1932" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="742" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="19489" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="52683" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="18747" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="64" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="112" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.483799" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="0.049639" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.768237" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.483799" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.293336" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.768237" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="12175363518086021485" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\SCIENTIFICPARTS\LAYOUTS\LAYOUT_WORKSHOPA\QUADRUPED_MAT1.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="QuadShape" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="21">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\LOOTDROP\QUADLOOT\ENTITIES\QUADLOOT.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\SCIENTIFICPARTS\LAYOUTS\LAYOUT_WORKSHOPA|collisionBox" />
          <Property name="NameHash" value="1707220261" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.600000" />
            <Property name="TransZ" value="0.043000" />
            <Property name="RotX" value="90.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Box" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="WIDTH" />
              <Property name="Value" value="0.51" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.477" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="DEPTH" />
              <Property name="Value" value="0.701" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\COMMON\ROBOTS\LOOTDROP\SPIDERLOOT.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED" />
  <Property name="NameHash" value="201569874" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="LODDIST1" />
      <Property name="Value" value="50.000000" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
      <Property name="Name" value="LODDIST2" />
      <Property name="Value" value="80.000000" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
      <Property name="Name" value="LODDIST3" />
      <Property name="Value" value="150.000000" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="4" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="CorruptedQuad" />
      <Property name="NameHash" value="1532674516" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="247224" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="77354" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="77553" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="348" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="199" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="38" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="39" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="1584" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="1627" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.425459" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="0.791307" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.933504" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.425459" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.337314" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="1.135117" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="7561529601077855637" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\CORRUPTEDDETMAT.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\LOOTDROP\SPIDERLOOT\ENTITIES\SPIDERLOOT.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="SUB1CorruptedQuad" />
          <Property name="NameHash" value="2142307831" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="247572" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="77554" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="125472" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="137844" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="47918" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="39" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="40" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="1627" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="1670" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-0.678180" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="0.497265" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-0.942191" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="0.678180" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="1.984508" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="1.225257" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="1436346784676270208" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\CORRUPTEDMAT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED|collisionCapsule" />
          <Property name="NameHash" value="4127842180" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="1.163807" />
            <Property name="TransZ" value="0.144955" />
            <Property name="RotX" value="-80.1954651" />
            <Property name="RotY" value="180.000000" />
            <Property name="RotZ" value="180.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Capsule" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="0.428710" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.864904" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="2">
          <Property name="Name" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED|collisionSphere4" />
          <Property name="NameHash" value="2070597922" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-0.756640" />
            <Property name="TransY" value="0.196298" />
            <Property name="TransZ" value="-0.745042" />
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
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Sphere" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="0.190930" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="3">
          <Property name="Name" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED|collisionSphere5" />
          <Property name="NameHash" value="809777878" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.743844" />
            <Property name="TransY" value="0.196298" />
            <Property name="TransZ" value="-0.745043" />
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
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Sphere" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="0.190930" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="4">
          <Property name="Name" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED|collisionSphere6" />
          <Property name="NameHash" value="2502231182" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.743844" />
            <Property name="TransY" value="0.196298" />
            <Property name="TransZ" value="0.746391" />
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
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Sphere" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="0.190930" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="5">
          <Property name="Name" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED|collisionSphere7" />
          <Property name="NameHash" value="3285443051" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="-0.756639" />
            <Property name="TransY" value="0.196298" />
            <Property name="TransZ" value="0.746391" />
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
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Sphere" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="0.349507" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="6">
          <Property name="Name" value="VFXLOCATOR" />
          <Property name="NameHash" value="2317731871" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="1.467145" />
            <Property name="TransZ" value="0.298079" />
            <Property name="RotX" value="-10.000001" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="7">
          <Property name="Name" value="LGunL" />
          <Property name="NameHash" value="616528828" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="10800" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="2124" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="2294" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="273" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="170" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="1" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="2" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="269" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="304" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-0.128798" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="1.156305" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-0.641602" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="0.162029" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="1.353953" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="-0.051061" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="12755735047323312596" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\CORRUPTEDDETMAT.MATERIAL.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
              <Property name="Name" value="MESHLINK" />
              <Property name="Value" value="LGunLShape" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="SUB1LGunL" />
              <Property name="NameHash" value="3842427404" />
              <Property name="Type" value="MESH" />
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
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="Value" value="11073" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="Value" value="2295" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="Value" value="2310" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="Value" value="24" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="Value" value="15" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
                  <Property name="Name" value="FIRSTSKINMAT" />
                  <Property name="Value" value="2" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
                  <Property name="Name" value="LASTSKINMAT" />
                  <Property name="Value" value="3" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
                  <Property name="Name" value="LODLEVEL" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
                  <Property name="Name" value="BOUNDHULLST" />
                  <Property name="Value" value="304" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="Value" value="312" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="Value" value="-0.027774" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="Value" value="1.154828" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="Value" value="-0.528990" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="Value" value="0.005117" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="Value" value="1.304512" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="Value" value="-0.472882" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
                  <Property name="Name" value="HASH" />
                  <Property name="Value" value="16925783934896285514" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\LEGARMOUR_LIGHTS_MAT5.MATERIAL.MBIN" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="Value" value="LGunLShape" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="1">
              <Property name="Name" value="SUB2LGunL" />
              <Property name="NameHash" value="4177636625" />
              <Property name="Type" value="MESH" />
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
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="Value" value="11097" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="Value" value="2311" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="Value" value="6237" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="Value" value="13902" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="Value" value="3926" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
                  <Property name="Name" value="FIRSTSKINMAT" />
                  <Property name="Value" value="3" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
                  <Property name="Name" value="LASTSKINMAT" />
                  <Property name="Value" value="4" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
                  <Property name="Name" value="LODLEVEL" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
                  <Property name="Name" value="BOUNDHULLST" />
                  <Property name="Value" value="312" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="Value" value="354" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="Value" value="-0.130416" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="Value" value="1.135050" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="Value" value="-0.729734" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="Value" value="0.161679" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="Value" value="1.357470" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="Value" value="0.107524" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
                  <Property name="Name" value="HASH" />
                  <Property name="Value" value="4443140316971697427" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\CORRUPTEDMAT.MATERIAL.MBIN" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="Value" value="LGunLShape" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="8">
          <Property name="Name" value="RGun" />
          <Property name="NameHash" value="3343614301" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="24999" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="6238" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="6401" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="264" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="163" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="4" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="5" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="354" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="392" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-0.144839" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="1.604657" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="0.491759" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="0.142229" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="1.853696" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="1.085748" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="12717172993057650539" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\CORRUPTEDDETMAT.MATERIAL.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
              <Property name="Name" value="MESHLINK" />
              <Property name="Value" value="RGunShape" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="SUB1RGun" />
              <Property name="NameHash" value="508979404" />
              <Property name="Type" value="MESH" />
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
                  <Property name="Name" value="BATCHSTARTPHYSI" />
                  <Property name="Value" value="25263" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                  <Property name="Name" value="VERTRSTARTPHYSI" />
                  <Property name="Value" value="6402" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                  <Property name="Name" value="VERTRENDPHYSICS" />
                  <Property name="Value" value="12352" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                  <Property name="Name" value="BATCHSTARTGRAPH" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
                  <Property name="Name" value="BATCHCOUNT" />
                  <Property name="Value" value="17502" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
                  <Property name="Name" value="VERTRSTARTGRAPH" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
                  <Property name="Name" value="VERTRENDGRAPHIC" />
                  <Property name="Value" value="5950" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
                  <Property name="Name" value="FIRSTSKINMAT" />
                  <Property name="Value" value="5" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
                  <Property name="Name" value="LASTSKINMAT" />
                  <Property name="Value" value="6" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
                  <Property name="Name" value="LODLEVEL" />
                  <Property name="Value" value="0" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
                  <Property name="Name" value="BOUNDHULLST" />
                  <Property name="Value" value="392" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
                  <Property name="Name" value="BOUNDHULLED" />
                  <Property name="Value" value="440" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
                  <Property name="Name" value="AABBMINX" />
                  <Property name="Value" value="-0.143873" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
                  <Property name="Name" value="AABBMINY" />
                  <Property name="Value" value="1.566128" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
                  <Property name="Name" value="AABBMINZ" />
                  <Property name="Value" value="0.245502" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
                  <Property name="Name" value="AABBMAXX" />
                  <Property name="Value" value="0.141068" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
                  <Property name="Name" value="AABBMAXY" />
                  <Property name="Value" value="1.905312" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
                  <Property name="Name" value="AABBMAXZ" />
                  <Property name="Value" value="1.128305" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
                  <Property name="Name" value="HASH" />
                  <Property name="Value" value="12675196223484884667" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
                  <Property name="Name" value="MATERIAL" />
                  <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\CORRUPTEDMAT.MATERIAL.MBIN" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
                  <Property name="Name" value="MESHLINK" />
                  <Property name="Value" value="RGunShape" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="9">
          <Property name="Name" value="RootBody" />
          <Property name="NameHash" value="624225966" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="42765" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="12353" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="18201" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="17403" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="5848" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="6" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="7" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="440" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="488" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-0.284578" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="0.494892" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-0.389338" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="0.284578" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="0.876095" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="0.389338" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="10793903060320831130" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\CORRUPTEDMAT.MATERIAL.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
              <Property name="Name" value="MESHLINK" />
              <Property name="Value" value="RootBodyShape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Global_JNT" />
      <Property name="NameHash" value="3706281401" />
      <Property name="Type" value="JOINT" />
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
          <Property name="Name" value="JOINTINDEX" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="RootJNT" />
          <Property name="NameHash" value="4109987170" />
          <Property name="Type" value="JOINT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.669348" />
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
              <Property name="Name" value="JOINTINDEX" />
              <Property name="Value" value="2" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="TopSwivelJNT" />
              <Property name="NameHash" value="747958622" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.090068" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="3" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="GrenadeLauncherJNT" />
                  <Property name="NameHash" value="3810526440" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="0.860286" />
                    <Property name="TransZ" value="0.778517" />
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
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="4" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="1">
                  <Property name="Name" value="GUN_ROOT" />
                  <Property name="NameHash" value="24639971" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.003006" />
                    <Property name="TransZ" value="0.317899" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="180.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="2">
                  <Property name="Name" value="Eye" />
                  <Property name="NameHash" value="474408149" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.003006" />
                    <Property name="TransZ" value="0.283362" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="180.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="3">
                  <Property name="Name" value="Aim" />
                  <Property name="NameHash" value="179921802" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.003006" />
                    <Property name="TransZ" value="0.283362" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="4">
                  <Property name="Name" value="RightArmArmour4" />
                  <Property name="NameHash" value="3285341772" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="1.897886" />
                    <Property name="TransY" value="-1.925108" />
                    <Property name="TransZ" value="0.586164" />
                    <Property name="RotX" value="30.0000019" />
                    <Property name="RotY" value="-135.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="0.557451" />
                    <Property name="ScaleY" value="0.557451" />
                    <Property name="ScaleZ" value="0.557451" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="ATTACHMENT" />
                      <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\ENTITIES\SPIDERQUADARMOUR.ENTITY.MBIN" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED|collisionBoxh" />
                      <Property name="NameHash" value="3207033503" />
                      <Property name="Type" value="COLLISION" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="1.896876" />
                        <Property name="TransY" value="5.203673" />
                        <Property name="TransZ" value="0.364990" />
                        <Property name="RotX" value="20.7048111" />
                        <Property name="RotY" value="130.893387" />
                        <Property name="RotZ" value="-22.207655" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="TYPE" />
                          <Property name="Value" value="Box" />
                        </Property>
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                          <Property name="Name" value="WIDTH" />
                          <Property name="Value" value="2.096777" />
                        </Property>
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                          <Property name="Name" value="HEIGHT" />
                          <Property name="Value" value="1.279951" />
                        </Property>
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                          <Property name="Name" value="DEPTH" />
                          <Property name="Value" value="3.327475" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData" _index="1">
                      <Property name="Name" value="EXPLODE" />
                      <Property name="NameHash" value="2977219630" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="2.101455" />
                        <Property name="TransY" value="5.320303" />
                        <Property name="TransZ" value="0.071241" />
                        <Property name="RotX" value="65.185790" />
                        <Property name="RotY" value="6.923749" />
                        <Property name="RotZ" value="-40.4166145" />
                        <Property name="ScaleX" value="2.000000" />
                        <Property name="ScaleY" value="2.000000" />
                        <Property name="ScaleZ" value="2.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes" />
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="5">
                  <Property name="Name" value="EyeCaps1" />
                  <Property name="NameHash" value="3589270927" />
                  <Property name="Type" value="MESH" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="-0.759416" />
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
                      <Property name="Name" value="BATCHSTARTPHYSI" />
                      <Property name="Value" value="447549" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                      <Property name="Name" value="VERTRSTARTPHYSI" />
                      <Property name="Value" value="160974" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                      <Property name="Name" value="VERTRENDPHYSICS" />
                      <Property name="Value" value="161941" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                      <Property name="Name" value="BATCHSTARTGRAPH" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
                      <Property name="Name" value="BATCHCOUNT" />
                      <Property name="Value" value="5280" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
                      <Property name="Name" value="VERTRSTARTGRAPH" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
                      <Property name="Name" value="VERTRENDGRAPHIC" />
                      <Property name="Value" value="967" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
                      <Property name="Name" value="FIRSTSKINMAT" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
                      <Property name="Name" value="LASTSKINMAT" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
                      <Property name="Name" value="LODLEVEL" />
                      <Property name="Value" value="0" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
                      <Property name="Name" value="BOUNDHULLST" />
                      <Property name="Value" value="2280" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
                      <Property name="Name" value="BOUNDHULLED" />
                      <Property name="Value" value="2319" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
                      <Property name="Name" value="AABBMINX" />
                      <Property name="Value" value="-0.258905" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
                      <Property name="Name" value="AABBMINY" />
                      <Property name="Value" value="0.804623" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
                      <Property name="Name" value="AABBMINZ" />
                      <Property name="Value" value="-0.686256" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
                      <Property name="Name" value="AABBMAXX" />
                      <Property name="Value" value="0.314867" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
                      <Property name="Name" value="AABBMAXY" />
                      <Property name="Value" value="1.095545" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
                      <Property name="Name" value="AABBMAXZ" />
                      <Property name="Value" value="-0.555420" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
                      <Property name="Name" value="HASH" />
                      <Property name="Value" value="17954982788442754338" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
                      <Property name="Name" value="MATERIAL" />
                      <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\LENS_MAT.MATERIAL.MBIN" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
                      <Property name="Name" value="MESHLINK" />
                      <Property name="Value" value="EyeCaps1Shape" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="6">
                  <Property name="Name" value="AimGL" />
                  <Property name="NameHash" value="152581763" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.003006" />
                    <Property name="TransZ" value="0.283362" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="7">
                  <Property name="Name" value="AimFT" />
                  <Property name="NameHash" value="3342252257" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="0.470255" />
                    <Property name="TransZ" value="-0.715351" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="1">
              <Property name="Name" value="BRLegJNT" />
              <Property name="NameHash" value="390922816" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.235965" />
                <Property name="TransY" value="-0.028618" />
                <Property name="TransZ" value="0.235965" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="135.000000" />
                <Property name="RotZ" value="90.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="5" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="BRLegJNT1" />
                  <Property name="NameHash" value="3368454996" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.229982" />
                    <Property name="TransY" value="0.249210" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="-42.918602" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="6" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="BRLegJNT2" />
                      <Property name="NameHash" value="3600393978" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="0.338786" />
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
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="7" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="BRLegJNT3" />
                          <Property name="NameHash" value="3874768815" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-0.357883" />
                            <Property name="TransY" value="-0.029040" />
                            <Property name="TransZ" value="0.000000" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="132.888700" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="8" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="BRLegJNT4" />
                              <Property name="NameHash" value="4106150724" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="0.359119" />
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
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="9" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                        <Property name="Children" value="TkSceneNodeData" _index="1">
                          <Property name="Name" value="RightArmArmour2" />
                          <Property name="NameHash" value="420184177" />
                          <Property name="Type" value="LOCATOR" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-1.953617" />
                            <Property name="TransY" value="-0.552844" />
                            <Property name="TransZ" value="0.927528" />
                            <Property name="RotX" value="77.081400" />
                            <Property name="RotY" value="90.000000" />
                            <Property name="RotZ" value="0.000000" />
                            <Property name="ScaleX" value="0.557451" />
                            <Property name="ScaleY" value="0.557451" />
                            <Property name="ScaleZ" value="0.557451" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="ATTACHMENT" />
                              <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\ENTITIES\SPIDERQUADARMOUR.ENTITY.MBIN" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED|collisionBoxBs" />
                              <Property name="NameHash" value="3761476416" />
                              <Property name="Type" value="COLLISION" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="1.675191" />
                                <Property name="TransY" value="3.673060" />
                                <Property name="TransZ" value="-0.177594" />
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
                                  <Property name="Name" value="TYPE" />
                                  <Property name="Value" value="Box" />
                                </Property>
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                                  <Property name="Name" value="WIDTH" />
                                  <Property name="Value" value="0.566723" />
                                </Property>
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                                  <Property name="Name" value="HEIGHT" />
                                  <Property name="Value" value="0.719310" />
                                </Property>
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                                  <Property name="Name" value="DEPTH" />
                                  <Property name="Value" value="0.730047" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="1">
                              <Property name="Name" value="EXPLODE" />
                              <Property name="NameHash" value="2977219630" />
                              <Property name="Type" value="LOCATOR" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="1.703183" />
                                <Property name="TransY" value="3.790611" />
                                <Property name="TransZ" value="-0.166753" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="-90.000000" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes" />
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="2">
              <Property name="Name" value="BLLegJNT" />
              <Property name="NameHash" value="1160633212" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.235965" />
                <Property name="TransY" value="-0.028618" />
                <Property name="TransZ" value="0.235965" />
                <Property name="RotX" value="0.461936" />
                <Property name="RotY" value="44.3679428" />
                <Property name="RotZ" value="-92.2164841" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="10" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="BLLegJNT1" />
                  <Property name="NameHash" value="2293938823" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.229982" />
                    <Property name="TransY" value="-0.249210" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="0.015263" />
                    <Property name="RotY" value="0.017448" />
                    <Property name="RotZ" value="-41.031340" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="11" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="BLLegJNT2" />
                      <Property name="NameHash" value="3266621050" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="-0.338786" />
                        <Property name="TransZ" value="0.000000" />
                        <Property name="RotX" value="0.180333" />
                        <Property name="RotY" value="0.061280" />
                        <Property name="RotZ" value="-2.187283" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="12" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="BLLegJNT3" />
                          <Property name="NameHash" value="3848008648" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.356689" />
                            <Property name="TransY" value="0.060215" />
                            <Property name="TransZ" value="0.010922" />
                            <Property name="RotX" value="0.096523" />
                            <Property name="RotY" value="0.035811" />
                            <Property name="RotZ" value="132.157471" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="13" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="BLLegJNT4" />
                              <Property name="NameHash" value="486466321" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="-0.359118" />
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
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="14" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                        <Property name="Children" value="TkSceneNodeData" _index="1">
                          <Property name="Name" value="RightArmArmour3" />
                          <Property name="NameHash" value="170353397" />
                          <Property name="Type" value="LOCATOR" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="1.915827" />
                            <Property name="TransY" value="0.656014" />
                            <Property name="TransZ" value="0.958731" />
                            <Property name="RotX" value="-74.5613251" />
                            <Property name="RotY" value="-91.921130" />
                            <Property name="RotZ" value="-178.905121" />
                            <Property name="ScaleX" value="0.557451" />
                            <Property name="ScaleY" value="0.557451" />
                            <Property name="ScaleZ" value="0.557451" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="ATTACHMENT" />
                              <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\ENTITIES\SPIDERQUADARMOUR.ENTITY.MBIN" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED|collisionBoxBf" />
                              <Property name="NameHash" value="4262514430" />
                              <Property name="Type" value="COLLISION" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="1.675191" />
                                <Property name="TransY" value="3.673060" />
                                <Property name="TransZ" value="-0.177594" />
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
                                  <Property name="Name" value="TYPE" />
                                  <Property name="Value" value="Box" />
                                </Property>
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                                  <Property name="Name" value="WIDTH" />
                                  <Property name="Value" value="0.566723" />
                                </Property>
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                                  <Property name="Name" value="HEIGHT" />
                                  <Property name="Value" value="0.719310" />
                                </Property>
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                                  <Property name="Name" value="DEPTH" />
                                  <Property name="Value" value="0.730047" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="1">
                              <Property name="Name" value="EXPLODE" />
                              <Property name="NameHash" value="2977219630" />
                              <Property name="Type" value="LOCATOR" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="1.703183" />
                                <Property name="TransY" value="3.790611" />
                                <Property name="TransZ" value="-0.166753" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="-90.000000" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes" />
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="3">
              <Property name="Name" value="FLLegJNT" />
              <Property name="NameHash" value="4140613168" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.235965" />
                <Property name="TransY" value="-0.028618" />
                <Property name="TransZ" value="-0.235965" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="-45.000000" />
                <Property name="RotZ" value="90.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="15" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="FLLegJNT1" />
                  <Property name="NameHash" value="3536151348" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.229982" />
                    <Property name="TransY" value="0.249210" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="-42.918602" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="16" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="FLLegJNT2" />
                      <Property name="NameHash" value="2678193390" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="0.338786" />
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
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="17" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="FLLegJNT3" />
                          <Property name="NameHash" value="2372229237" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-0.357883" />
                            <Property name="TransY" value="-0.029040" />
                            <Property name="TransZ" value="0.000000" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="132.888700" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="18" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="FLLegJNT4" />
                              <Property name="NameHash" value="2550263194" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="0.359118" />
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
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="19" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                        <Property name="Children" value="TkSceneNodeData" _index="1">
                          <Property name="Name" value="RightArmArmour" />
                          <Property name="NameHash" value="3964319984" />
                          <Property name="Type" value="LOCATOR" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-1.953616" />
                            <Property name="TransY" value="-0.552843" />
                            <Property name="TransZ" value="0.927528" />
                            <Property name="RotX" value="77.081400" />
                            <Property name="RotY" value="90.000000" />
                            <Property name="RotZ" value="0.000000" />
                            <Property name="ScaleX" value="0.557451" />
                            <Property name="ScaleY" value="0.557451" />
                            <Property name="ScaleZ" value="0.557451" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="ATTACHMENT" />
                              <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\ENTITIES\SPIDERQUADARMOUR.ENTITY.MBIN" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED|collisionBoxB" />
                              <Property name="NameHash" value="3294362916" />
                              <Property name="Type" value="COLLISION" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="1.675191" />
                                <Property name="TransY" value="3.673060" />
                                <Property name="TransZ" value="-0.177594" />
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
                                  <Property name="Name" value="TYPE" />
                                  <Property name="Value" value="Box" />
                                </Property>
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                                  <Property name="Name" value="WIDTH" />
                                  <Property name="Value" value="0.566723" />
                                </Property>
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                                  <Property name="Name" value="HEIGHT" />
                                  <Property name="Value" value="0.719310" />
                                </Property>
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                                  <Property name="Name" value="DEPTH" />
                                  <Property name="Value" value="0.730047" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="1">
                              <Property name="Name" value="EXPLODE" />
                              <Property name="NameHash" value="2977219630" />
                              <Property name="Type" value="LOCATOR" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="1.703183" />
                                <Property name="TransY" value="3.790611" />
                                <Property name="TransZ" value="-0.166753" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="-90.000000" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes" />
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="4">
              <Property name="Name" value="FRLegJNT" />
              <Property name="NameHash" value="84921340" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.235965" />
                <Property name="TransY" value="-0.028618" />
                <Property name="TransZ" value="-0.235965" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="-135.000000" />
                <Property name="RotZ" value="-90.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="20" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="FRLegJNT1" />
                  <Property name="NameHash" value="2928116826" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.229982" />
                    <Property name="TransY" value="-0.249210" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="-42.918602" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="21" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="FRLegJNT2" />
                      <Property name="NameHash" value="3375151524" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="-0.338786" />
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
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="22" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="FRLegJNT3" />
                          <Property name="NameHash" value="3690880839" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.357883" />
                            <Property name="TransY" value="0.029040" />
                            <Property name="TransZ" value="0.000000" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="132.888700" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="23" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="FRLegJNT4" />
                              <Property name="NameHash" value="3838341339" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="-0.359118" />
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
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="24" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                        <Property name="Children" value="TkSceneNodeData" _index="1">
                          <Property name="Name" value="RightArmArmour1" />
                          <Property name="NameHash" value="4139957292" />
                          <Property name="Type" value="LOCATOR" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="1.953616" />
                            <Property name="TransY" value="0.552843" />
                            <Property name="TransZ" value="0.927528" />
                            <Property name="RotX" value="-77.081400" />
                            <Property name="RotY" value="-90.000000" />
                            <Property name="RotZ" value="180.000000" />
                            <Property name="ScaleX" value="0.557451" />
                            <Property name="ScaleY" value="0.557451" />
                            <Property name="ScaleZ" value="0.557451" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="ATTACHMENT" />
                              <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\ENTITIES\SPIDERQUADARMOUR.ENTITY.MBIN" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED|collisionBoxB_2" />
                              <Property name="NameHash" value="1743329838" />
                              <Property name="Type" value="COLLISION" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="1.675191" />
                                <Property name="TransY" value="3.673060" />
                                <Property name="TransZ" value="-0.177594" />
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
                                  <Property name="Name" value="TYPE" />
                                  <Property name="Value" value="Box" />
                                </Property>
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
                                  <Property name="Name" value="WIDTH" />
                                  <Property name="Value" value="0.566723" />
                                </Property>
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
                                  <Property name="Name" value="HEIGHT" />
                                  <Property name="Value" value="0.719310" />
                                </Property>
                                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
                                  <Property name="Name" value="DEPTH" />
                                  <Property name="Value" value="0.730047" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                            <Property name="Children" value="TkSceneNodeData" _index="1">
                              <Property name="Name" value="EXPLODE" />
                              <Property name="NameHash" value="2977219630" />
                              <Property name="Type" value="LOCATOR" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="1.703183" />
                                <Property name="TransY" value="3.790611" />
                                <Property name="TransZ" value="-0.166753" />
                                <Property name="RotX" value="0.000000" />
                                <Property name="RotY" value="0.000000" />
                                <Property name="RotZ" value="-90.000000" />
                                <Property name="ScaleX" value="1.000000" />
                                <Property name="ScaleY" value="1.000000" />
                                <Property name="ScaleZ" value="1.000000" />
                              </Property>
                              <Property name="PlatformExclusion" value="0" />
                              <Property name="Attributes" />
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="RootLocator" />
      <Property name="NameHash" value="523273340" />
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
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\COMMON\ROBOTS\LOOTDROP\SPIDER_SMALLQUADLOOT.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD" />
  <Property name="NameHash" value="4146651523" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="SpiderSmallQuad" />
      <Property name="NameHash" value="1825285562" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="222735" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="70112" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="70271" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="264" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="159" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="37" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="38" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="1541" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="1587" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.425459" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="0.791307" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.822354" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.425459" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.345986" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="1.142415" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="3815195865223481681" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD\CORRUPTEDDETMAT.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\LOOTDROP\CORRUPTLOOT\ENTITIES\CORRUPTLOOT.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="SUB1SpiderSmallQuad" />
          <Property name="NameHash" value="2326814525" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="222999" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="70272" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="114426" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="127380" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="44154" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="38" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="39" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="1587" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="1634" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-0.685106" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="0.676179" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-0.842216" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="0.685106" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="2.906023" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="1.197537" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="14086211408422829677" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD\CORRUPTEDMAT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="VFXLOCATOR" />
          <Property name="NameHash" value="2317731871" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="1.451683" />
            <Property name="TransZ" value="0.088882" />
            <Property name="RotX" value="-10.000001" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="2">
          <Property name="Name" value="MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD|collisionCapsule" />
          <Property name="NameHash" value="2915177612" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="1.163807" />
            <Property name="TransZ" value="0.144955" />
            <Property name="RotX" value="-80.1954651" />
            <Property name="RotY" value="180.000000" />
            <Property name="RotZ" value="180.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Capsule" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="0.428710" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="HEIGHT" />
              <Property name="Value" value="1.864904" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="3">
          <Property name="Name" value="RootBody" />
          <Property name="NameHash" value="624225966" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="17412" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="4926" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="10774" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="17403" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="5848" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="4" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="5" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="349" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="397" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-0.284578" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="0.494892" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-0.389338" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="0.284578" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="0.876095" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="0.389338" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="10793903060320831130" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\COMMON\ROBOTS\SPIDER_SMALLQUAD\CORRUPTEDMAT.MATERIAL.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
              <Property name="Name" value="MESHLINK" />
              <Property name="Value" value="RootBodyShape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="Global_JNT" />
      <Property name="NameHash" value="3706281401" />
      <Property name="Type" value="JOINT" />
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
          <Property name="Name" value="JOINTINDEX" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="RootJNT" />
          <Property name="NameHash" value="4109987170" />
          <Property name="Type" value="JOINT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.669348" />
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
              <Property name="Name" value="JOINTINDEX" />
              <Property name="Value" value="2" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="TopSwivelJNT" />
              <Property name="NameHash" value="747958622" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.090068" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="3" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="GUN_ROOT" />
                  <Property name="NameHash" value="24639971" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="0.541274" />
                    <Property name="TransZ" value="-0.616686" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="180.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="1">
                  <Property name="Name" value="Eye" />
                  <Property name="NameHash" value="474408149" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="0.541274" />
                    <Property name="TransZ" value="-0.661637" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="180.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="2">
                  <Property name="Name" value="Aim" />
                  <Property name="NameHash" value="179921802" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="0.469631" />
                    <Property name="TransZ" value="-0.708612" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="1">
              <Property name="Name" value="BRLegJNT" />
              <Property name="NameHash" value="390922816" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.235965" />
                <Property name="TransY" value="-0.028618" />
                <Property name="TransZ" value="0.235965" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="135.000000" />
                <Property name="RotZ" value="90.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="4" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="BRLegJNT1" />
                  <Property name="NameHash" value="3368454996" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.229982" />
                    <Property name="TransY" value="0.249210" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="-42.918602" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="5" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="BRLegJNT2" />
                      <Property name="NameHash" value="3600393978" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="0.338786" />
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
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="6" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="BRLegJNT3" />
                          <Property name="NameHash" value="3874768815" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-0.357883" />
                            <Property name="TransY" value="-0.029040" />
                            <Property name="TransZ" value="0.000000" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="132.888700" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="7" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="BRLegJNT4" />
                              <Property name="NameHash" value="4106150724" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="0.359119" />
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
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="8" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="2">
              <Property name="Name" value="BLLegJNT" />
              <Property name="NameHash" value="1160633212" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.235965" />
                <Property name="TransY" value="-0.028618" />
                <Property name="TransZ" value="0.235965" />
                <Property name="RotX" value="0.461936" />
                <Property name="RotY" value="44.3679428" />
                <Property name="RotZ" value="-92.2164841" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="9" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="BLLegJNT1" />
                  <Property name="NameHash" value="2293938823" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.229982" />
                    <Property name="TransY" value="-0.249210" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="0.015263" />
                    <Property name="RotY" value="0.017448" />
                    <Property name="RotZ" value="-41.031340" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="10" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="BLLegJNT2" />
                      <Property name="NameHash" value="3266621050" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="-0.338786" />
                        <Property name="TransZ" value="0.000000" />
                        <Property name="RotX" value="0.180333" />
                        <Property name="RotY" value="0.061280" />
                        <Property name="RotZ" value="-2.187283" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="11" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="BLLegJNT3" />
                          <Property name="NameHash" value="3848008648" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.356689" />
                            <Property name="TransY" value="0.060215" />
                            <Property name="TransZ" value="0.010922" />
                            <Property name="RotX" value="0.096523" />
                            <Property name="RotY" value="0.035811" />
                            <Property name="RotZ" value="132.157471" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="12" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="BLLegJNT4" />
                              <Property name="NameHash" value="486466321" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="-0.359118" />
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
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="13" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="3">
              <Property name="Name" value="FLLegJNT" />
              <Property name="NameHash" value="4140613168" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.235965" />
                <Property name="TransY" value="-0.028618" />
                <Property name="TransZ" value="-0.235965" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="-45.000000" />
                <Property name="RotZ" value="90.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="14" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="FLLegJNT1" />
                  <Property name="NameHash" value="3536151348" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.229982" />
                    <Property name="TransY" value="0.249210" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="-42.918602" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="15" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="FLLegJNT2" />
                      <Property name="NameHash" value="2678193390" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="0.338786" />
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
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="16" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="FLLegJNT3" />
                          <Property name="NameHash" value="2372229237" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="-0.357883" />
                            <Property name="TransY" value="-0.029040" />
                            <Property name="TransZ" value="0.000000" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="132.888700" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="17" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="FLLegJNT4" />
                              <Property name="NameHash" value="2550263194" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="0.359118" />
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
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="18" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="4">
              <Property name="Name" value="FRLegJNT" />
              <Property name="NameHash" value="84921340" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.235965" />
                <Property name="TransY" value="-0.028618" />
                <Property name="TransZ" value="-0.235965" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="-135.000000" />
                <Property name="RotZ" value="-90.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="19" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="FRLegJNT1" />
                  <Property name="NameHash" value="2928116826" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.229982" />
                    <Property name="TransY" value="-0.249210" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="-42.918602" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="20" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="FRLegJNT2" />
                      <Property name="NameHash" value="3375151524" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="-0.338786" />
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
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="21" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="FRLegJNT3" />
                          <Property name="NameHash" value="3690880839" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.357883" />
                            <Property name="TransY" value="0.029040" />
                            <Property name="TransZ" value="0.000000" />
                            <Property name="RotX" value="0.000000" />
                            <Property name="RotY" value="0.000000" />
                            <Property name="RotZ" value="132.888700" />
                            <Property name="ScaleX" value="1.000000" />
                            <Property name="ScaleY" value="1.000000" />
                            <Property name="ScaleZ" value="1.000000" />
                          </Property>
                          <Property name="PlatformExclusion" value="0" />
                          <Property name="Attributes">
                            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="22" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="FRLegJNT4" />
                              <Property name="NameHash" value="3838341339" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="-0.359118" />
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
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="23" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="RootLocator" />
      <Property name="NameHash" value="523273340" />
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
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
    {
      ["FILE_DESTINATION"] = "MODELS\COMMON\ROBOTS\LOOTDROP\SWARMLOOT.SCENE.MXML",
      ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET" />
  <Property name="NameHash" value="1540321471" />
  <Property name="Type" value="MODEL" />
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
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
      <Property name="Name" value="LODDIST1" />
      <Property name="Value" value="50.000000" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
      <Property name="Name" value="LODDIST2" />
      <Property name="Value" value="80.000000" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
      <Property name="Name" value="LODDIST3" />
      <Property name="Value" value="150.000000" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="4" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData" _index="0">
      <Property name="Name" value="Root" />
      <Property name="NameHash" value="2839882488" />
      <Property name="Type" value="JOINT" />
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
          <Property name="Name" value="JOINTINDEX" />
          <Property name="Value" value="1" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="Local" />
          <Property name="NameHash" value="2003939311" />
          <Property name="Type" value="JOINT" />
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
              <Property name="Name" value="JOINTINDEX" />
              <Property name="Value" value="2" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData" _index="0">
              <Property name="Name" value="J_PanelL" />
              <Property name="NameHash" value="2869023203" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.478348" />
                <Property name="TransY" value="0.108529" />
                <Property name="TransZ" value="-0.325370" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="90.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="3" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="1">
              <Property name="Name" value="J_PanelR" />
              <Property name="NameHash" value="856777312" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.478348" />
                <Property name="TransY" value="0.108529" />
                <Property name="TransZ" value="-0.325367" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="90.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="4" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="2">
              <Property name="Name" value="J_Eye" />
              <Property name="NameHash" value="2826800501" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.000000" />
                <Property name="TransZ" value="-0.702523" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="5" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="3">
              <Property name="Name" value="J_GunL" />
              <Property name="NameHash" value="3602644936" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-0.562734" />
                <Property name="TransY" value="-0.150784" />
                <Property name="TransZ" value="-0.492177" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="6" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="J_BarrelL" />
                  <Property name="NameHash" value="833297330" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.003126" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.303340" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000920" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="7" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="J_FlashL" />
                      <Property name="NameHash" value="2455317964" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000028" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="-0.067812" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="0.010000" />
                        <Property name="ScaleY" value="0.010000" />
                        <Property name="ScaleZ" value="0.010000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="8" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="1">
                  <Property name="Name" value="gunL" />
                  <Property name="NameHash" value="684506082" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.003126" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.495438" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000920" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="4">
              <Property name="Name" value="J_GunR" />
              <Property name="NameHash" value="5755655" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.562734" />
                <Property name="TransY" value="-0.150784" />
                <Property name="TransZ" value="-0.492177" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="9" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="J_BarrelR" />
                  <Property name="NameHash" value="672204910" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.303340" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000920" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="10" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="J_FlashR" />
                      <Property name="NameHash" value="1075415378" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000028" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="-0.067812" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="0.010000" />
                        <Property name="ScaleY" value="0.010000" />
                        <Property name="ScaleZ" value="0.010000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="11" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
                <Property name="Children" value="TkSceneNodeData" _index="1">
                  <Property name="Name" value="gunR" />
                  <Property name="NameHash" value="900978120" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="-0.002907" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="-0.495438" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000920" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="5">
              <Property name="Name" value="J_Engine" />
              <Property name="NameHash" value="912286911" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="-0.173273" />
                <Property name="TransZ" value="0.431036" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="12" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="6">
              <Property name="Name" value="tailRootJNT" />
              <Property name="NameHash" value="853179234" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="-0.622033" />
                <Property name="TransZ" value="0.960535" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="13" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="tailJNT01" />
                  <Property name="NameHash" value="3299618457" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="0.615775" />
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
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="14" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="tailJNT02" />
                      <Property name="NameHash" value="1981452663" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="0.572097" />
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
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="15" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="tailJNT03" />
                          <Property name="NameHash" value="2822337972" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.000000" />
                            <Property name="TransY" value="0.000000" />
                            <Property name="TransZ" value="0.505034" />
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
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="16" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="tailJNT04" />
                              <Property name="NameHash" value="3650869368" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="0.000000" />
                                <Property name="TransZ" value="0.468685" />
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
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="17" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
            <Property name="Children" value="TkSceneNodeData" _index="7">
              <Property name="Name" value="tailRootBJNT" />
              <Property name="NameHash" value="2624110743" />
              <Property name="Type" value="JOINT" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.072680" />
                <Property name="TransZ" value="0.960535" />
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
                  <Property name="Name" value="JOINTINDEX" />
                  <Property name="Value" value="18" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData" _index="0">
                  <Property name="Name" value="tailBJNT01" />
                  <Property name="NameHash" value="463396592" />
                  <Property name="Type" value="JOINT" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="0.000000" />
                    <Property name="TransZ" value="0.615775" />
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
                      <Property name="Name" value="JOINTINDEX" />
                      <Property name="Value" value="19" />
                    </Property>
                  </Property>
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData" _index="0">
                      <Property name="Name" value="tailBJNT02" />
                      <Property name="NameHash" value="97039172" />
                      <Property name="Type" value="JOINT" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="0.572097" />
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
                          <Property name="Name" value="JOINTINDEX" />
                          <Property name="Value" value="20" />
                        </Property>
                      </Property>
                      <Property name="Children">
                        <Property name="Children" value="TkSceneNodeData" _index="0">
                          <Property name="Name" value="tailBJNT03" />
                          <Property name="NameHash" value="3193349217" />
                          <Property name="Type" value="JOINT" />
                          <Property name="Transform" value="TkTransformData">
                            <Property name="TransX" value="0.000000" />
                            <Property name="TransY" value="0.000000" />
                            <Property name="TransZ" value="0.505034" />
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
                              <Property name="Name" value="JOINTINDEX" />
                              <Property name="Value" value="21" />
                            </Property>
                          </Property>
                          <Property name="Children">
                            <Property name="Children" value="TkSceneNodeData" _index="0">
                              <Property name="Name" value="tailBJNT04" />
                              <Property name="NameHash" value="681605363" />
                              <Property name="Type" value="JOINT" />
                              <Property name="Transform" value="TkTransformData">
                                <Property name="TransX" value="0.000000" />
                                <Property name="TransY" value="0.000000" />
                                <Property name="TransZ" value="0.468685" />
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
                                  <Property name="Name" value="JOINTINDEX" />
                                  <Property name="Value" value="22" />
                                </Property>
                              </Property>
                              <Property name="Children" />
                            </Property>
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="1">
      <Property name="Name" value="DroneBodyLOD0" />
      <Property name="NameHash" value="114425848" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="19554" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="3923" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="35474" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="99576" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="31551" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="3" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="14" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="464" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="511" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.860041" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.863427" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.868772" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.860896" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.018485" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="3.325877" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="114425848" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\SWARMDRONECRASHED2.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="DroneBodyLOD0Shape" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="SUB1DroneBodyLOD0" />
          <Property name="NameHash" value="4157829720" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="119130" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="35475" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="38276" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="9768" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="2801" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="14" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="17" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="511" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="559" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-0.592386" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="-0.590856" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-0.871892" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="0.593241" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="0.594771" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="0.591754" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="4157829720" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\SCRAPTRIMMAT7.MATERIAL.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
              <Property name="Name" value="MESHLINK" />
              <Property name="Value" value="DroneBodyLOD0Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="2">
      <Property name="Name" value="DroneBodyLOD1" />
      <Property name="NameHash" value="2893597511" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="128898" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="38277" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="56526" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="48786" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="18249" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="17" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="28" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="1" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="559" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="606" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.858615" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.863427" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.868772" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.859470" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.018485" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="3.325410" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="2893597511" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\SWARMDRONECRASHED2.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="DroneBodyLOD1Shape" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="SUB1DroneBodyLOD1" />
          <Property name="NameHash" value="3363345315" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="177684" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="56527" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="58673" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="7464" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="2146" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="28" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="31" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="1" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="606" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="654" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-0.592386" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="-0.590856" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-0.871892" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="0.593241" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="0.594771" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="0.591754" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="3363345315" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\SCRAPTRIMMAT7.MATERIAL.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
              <Property name="Name" value="MESHLINK" />
              <Property name="Value" value="DroneBodyLOD1Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="3">
      <Property name="Name" value="DroneBodyLOD2" />
      <Property name="NameHash" value="3773248547" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="185148" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="58674" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="64755" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="11097" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="6081" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="31" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="42" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="2" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="654" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="701" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.847952" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.863427" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.868772" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.848807" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="0.996689" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="3.308844" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="3773248547" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\SWARMDRONECRASHED2.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="DroneBodyLOD2Shape" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="SUB1DroneBodyLOD2" />
          <Property name="NameHash" value="3671504991" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="196245" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="64756" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="65134" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="849" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="378" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="42" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="45" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="2" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="701" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="749" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-0.565201" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="-0.580104" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-0.871892" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="0.566056" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="0.602361" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="0.591754" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="3671504991" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\SCRAPTRIMMAT7.MATERIAL.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
              <Property name="Name" value="MESHLINK" />
              <Property name="Value" value="DroneBodyLOD2Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="4">
      <Property name="Name" value="DroneBodyLOD3" />
      <Property name="NameHash" value="2275606940" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="197094" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="65135" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="67519" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="3441" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="2384" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="45" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="54" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="3" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="749" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="791" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-0.820662" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-0.858827" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.868640" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="0.821517" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="0.883700" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="3.206473" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="2275606940" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\SWARMDRONECRASHED2.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="DroneBodyLOD3Shape" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="SUB1DroneBodyLOD3" />
          <Property name="NameHash" value="2885343912" />
          <Property name="Type" value="MESH" />
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
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="200535" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="67520" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="67696" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="309" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="176" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="54" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="57" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="3" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="791" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="839" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-0.525324" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="-0.503968" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-0.871892" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="0.526179" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="0.565003" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="0.558172" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="2885343912" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\SCRAPTRIMMAT7.MATERIAL.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
              <Property name="Name" value="MESHLINK" />
              <Property name="Value" value="DroneBodyLOD3Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="5">
      <Property name="Name" value="DroneWingsLOD0" />
      <Property name="NameHash" value="1584549247" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="200844" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="67697" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="78604" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="15744" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="10907" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="57" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="58" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="839" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="887" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-1.020328" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.015805" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.303383" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="1.020328" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.015805" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.878489" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="1584549247" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\SWARMDRONECRASHED2.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="DroneWingsLOD0Shape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="6">
      <Property name="Name" value="DroneWingsLOD1" />
      <Property name="NameHash" value="2529771048" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="216588" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="78605" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="85132" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="9168" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="6527" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="58" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="59" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="1" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="887" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="935" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-1.012659" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.008135" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.303383" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="1.012659" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.008135" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.878180" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="2529771048" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\SWARMDRONECRASHED2.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="DroneWingsLOD1Shape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="7">
      <Property name="Name" value="DroneWingsLOD2" />
      <Property name="NameHash" value="2231409303" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="225756" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="85133" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="88108" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="3984" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="2975" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="59" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="60" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="2" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="935" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="983" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-1.012659" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.008135" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.303383" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="1.012659" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.008135" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.863597" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="2231409303" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\SWARMDRONECRASHED2.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="DroneWingsLOD2Shape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="8">
      <Property name="Name" value="DroneWingsLOD3" />
      <Property name="NameHash" value="2978935731" />
      <Property name="Type" value="MESH" />
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
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="229740" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="88109" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="89808" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="3">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="4">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="2136" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="5">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="6">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="1699" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="7">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="60" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="8">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="61" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="9">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="3" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="10">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="983" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="11">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="1031" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="12">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-1.012659" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="13">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-1.008135" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="14">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-0.303383" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="15">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="1.012659" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="16">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="1.008135" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="17">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="0.818003" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="18">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="2978935731" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="19">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET\SWARMDRONECRASHED2.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="20">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="DroneWingsLOD3Shape" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="9">
      <Property name="Name" value="SwarmDronePlanetData" />
      <Property name="NameHash" value="3981956880" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS\COMMON\ROBOTS\LOOTDROP\SWARMLOOT\ENTITIES\SWARMLOOT.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="MODELS\COMMON\ROBOTS\SWARMDRONE_PLANET|collisionSphere" />
          <Property name="NameHash" value="954103811" />
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
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="NAVIGATION" />
              <Property name="Value" value="FALSE" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Sphere" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="0.897765" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData" _index="10">
      <Property name="Name" value="EXPLODE" />
      <Property name="NameHash" value="2977219630" />
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
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
    },
  }
}