NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "UniqueCompanionRoboDog.pak",
["MOD_AUTHOR"]      = "Mjjstral",
["MOD_MAINTENANCE"] = "Babscoole",
["NMS_VERSION"]     = "3.99",
["DESCRIPTION"]     = "Use the sphere spawner to get this unique companion",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            [[MODELS/COMMON/ROBOTS/QUADRUPED.SCENE.MBIN]],
                            [[MODELS/COMMON/ROBOTS/ROBOCOMPANION.SCENE.MBIN]],
                            "REMOVE"
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = {[[MODELS/COMMON/ROBOTS/ROBOCOMPANION.SCENE.MBIN]]},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "RAW",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {
                                    [[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\QUADRUPED_MESH.ENTITY.MBIN]],
                                    [[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\ROBOCOMPANION.ENTITY.MBIN]],
                                },
                                {
                                    [[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\CRITICAL.ENTITY.MBIN]],
                                    [[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\ROBOCOMPANION.ENTITY.MBIN]]
                                },
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            [[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\QUADRUPED_MESH.ENTITY.MBIN]],
                            [[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\ROBOCOMPANION.ENTITY.MBIN]],
                            "REMOVE"
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = {[[MODELS\COMMON\ROBOTS\QUADRUPED\ENTITIES\ROBOCOMPANION.ENTITY.MBIN]]},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IncreaseWanted", "0"},
                                {"RepairTime",     "0"},
                                {"NameOverride",   "Robo Dog Companion"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureComponentData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Id", "CAT"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["ADD"] =
[[
    <Property value="GcInteractionComponentData.xml">
      <Property name="InteractionAction" value="PressButton" />
      <Property name="InteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="Pet" />
      </Property>
      <Property name="UseIntermediateUI" value="False" />
      <Property name="Renderer" value="TkModelRendererData.xml">
        <Property name="Camera" value="TkModelRendererCameraData.xml">
          <Property name="Distance" value="1.8" />
          <Property name="Offset" value="Vector3f.xml">
            <Property name="x" value="0.45" />
            <Property name="y" value="0.65" />
            <Property name="z" value="3" />
          </Property>
          <Property name="Roll" value="0" />
          <Property name="Pitch" value="10" />
          <Property name="Rotate" value="180" />
          <Property name="LightPitch" value="45" />
          <Property name="LightRotate" value="45" />
          <Property name="Wander" value="TkCameraWanderData.xml">
            <Property name="CamWander" value="False" />
            <Property name="CamWanderPhase" value="0.003" />
            <Property name="CamWanderAmplitude" value="0.5" />
          </Property>
        </Property>
        <Property name="Fov" value="30" />
        <Property name="AspectRatio" value="1.7777" />
        <Property name="ThumbnailMode" value="None" />
        <Property name="FocusType" value="ResourceBounds" />
        <Property name="FocusLocator" value="" />
        <Property name="FocusOffset" value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property name="FocusInterpTime" value="0" />
        <Property name="BlendInTime" value="0.8" />
        <Property name="BlendInOffset" value="0" />
        <Property name="Anim" value="" />
        <Property name="HeightOffset" value="0.005" />
        <Property name="UsePlayerCameraInHmd" value="True" />
        <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="False" />
        <Property name="LookForFocusInMasterModel" value="False" />
      </Property>
      <Property name="RendererAlt" value="TkModelRendererData.xml">
        <Property name="Camera" value="TkModelRendererCameraData.xml">
          <Property name="Distance" value="1.5" />
          <Property name="Offset" value="Vector3f.xml">
            <Property name="x" value="0" />
            <Property name="y" value="0" />
            <Property name="z" value="0" />
          </Property>
          <Property name="Roll" value="0" />
          <Property name="Pitch" value="0" />
          <Property name="Rotate" value="180" />
          <Property name="LightPitch" value="45" />
          <Property name="LightRotate" value="45" />
          <Property name="Wander" value="TkCameraWanderData.xml">
            <Property name="CamWander" value="False" />
            <Property name="CamWanderPhase" value="0.003" />
            <Property name="CamWanderAmplitude" value="0.5" />
          </Property>
        </Property>
        <Property name="Fov" value="30" />
        <Property name="AspectRatio" value="1.7777" />
        <Property name="ThumbnailMode" value="None" />
        <Property name="FocusType" value="ResourceBounds" />
        <Property name="FocusLocator" value="" />
        <Property name="FocusOffset" value="Vector3f.xml">
          <Property name="x" value="0" />
          <Property name="y" value="0" />
          <Property name="z" value="0" />
        </Property>
        <Property name="FocusInterpTime" value="0" />
        <Property name="BlendInTime" value="0.8" />
        <Property name="BlendInOffset" value="0" />
        <Property name="Anim" value="" />
        <Property name="HeightOffset" value="0.005" />
        <Property name="UsePlayerCameraInHmd" value="False" />
        <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="False" />
        <Property name="LookForFocusInMasterModel" value="False" />
      </Property>
      <Property name="Race" value="GcAlienRace.xml">
        <Property name="AlienRace" value="None" />
      </Property>
      <Property name="AttractDistanceSq" value="100" />
      <Property name="RepeatInteraction" value="False" />
      <Property name="UseInteractCamera" value="False" />
      <Property name="BlendToCameraTime" value="1.5" />
      <Property name="BlendFromCameraTime" value="-1" />
      <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="" />
        <Property name="AltIds" />
        <Property name="Cost" value="0" />
        <Property name="Repeat" value="False" />
        <Property name="RequiredTech" value="" />
      </Property>
      <Property name="TriggerAction" value="INACTIVE" />
      <Property name="TriggerActionOnPrepare" value="" />
      <Property name="BroadcastTriggerAction" value="False" />
      <Property name="InteractAngle" value="360" />
      <Property name="InteractDistance" value="5" />
      <Property name="InteractInvertFace" value="True" />
      <Property name="SecondaryInteractionType" value="GcInteractionType.xml">
        <Property name="InteractionType" value="Creature" />
      </Property>
      <Property name="SecondaryActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="BAIT_BASIC" />
        <Property name="AltIds" />
        <Property name="Cost" value="1" />
        <Property name="Repeat" value="True" />
        <Property name="RequiredTech" value="" />
      </Property>
      <Property name="EventRenderers" />
      <Property name="EventRenderersAlt" />
      <Property name="SecondaryCameraTransitionTime" value="1" />
      <Property name="DepthOfField" value="GcInteractionDof.xml">
        <Property name="IsEnabled" value="True" />
        <Property name="UseGlobals" value="True" />
        <Property name="NearPlaneMin" value="2" />
        <Property name="NearPlaneAdjust" value="1" />
        <Property name="FarPlane" value="3" />
        <Property name="FarFadeDistance" value="2" />
      </Property>
      <Property name="PuzzleMissionOverrideTable" />
      <Property name="StoryUtilityOverrideData" value="GcStoryUtilityOverride.xml">
        <Property name="Name" value="" />
        <Property name="Reward" value="" />
        <Property name="SpecificRewardOverrideTable" />
      </Property>
      <Property name="OverrideInteriorExteriorMarker" value="No" />
      <Property name="ReseedAfterRewardSuccess" value="False" />
      <Property name="UsePersonalPersistentBuffer" value="False" />
      <Property name="InWorldUIScaler" value="0" />
    </Property>
]]
                        }
                    }
                },
            }
        },
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\OBJECTSPAWNER\ENTITIES\OBJECTSPAWNER.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", [[MODELS/COMMON/ROBOTS/ROBOCOMPANION.SCENE.MBIN]]}
                            }
                        }
                    }
                }
            }
        }
    }
}