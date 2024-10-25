Author = "Gumsk"
ModName = "gFish Better Exo Skiff"
ModNameSub = ""
GameVersion = "5.2.0.0"
ModVersion = "a"

--[[ Files Modified:
MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\FISHINGPLATFORM.SCENE.MBIN
MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\FISHINGPLATFORM\ENTITIES\HAZARDPROTECTION.ENTITY.MBIN
MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\FISHINGPLATFORM\ENTITIES\FISHINGPLATFORM.ENTITY.MBIN
MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\PARTS\SKIFFCUSTOMISATIONINTERACTION\ENTITIES\CUSTOMISATION.ENTITY.MBIN
]]--

HazProtCollisionAdd = [[            <Property value="TkSceneNodeData.xml">
              <Property name="Name" value="HazProtCollision" />
              <Property name="NameHash" value="]]..GNH("HazProtCollision")..[[" />
              <Property name="Type" value="COLLISION" />
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
                  <Property name="Name" value="TYPE" />
                  <Property name="Value" value="Sphere" />
                </Property>
                <Property value="TkSceneNodeAttributeData.xml">
                  <Property name="Name" value="RADIUS" />
                  <Property name="Value" value="4" />
                </Property>
              </Property>
            <Property name="Children" />
            </Property>]]

--[[CookerAdd = [[    <Property value="LinkableNMSTemplate.xml">
      <Property name="Template" value="GcInteractionComponentData.xml">
        <Property name="InteractionAction" value="PressButton" />
        <Property name="InteractionType" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="UseIntermediateUI" value="False" />
        <Property name="Renderer" value="TkModelRendererData.xml">
          <Property name="Camera" value="TkModelRendererCameraData.xml">
            <Property name="Distance" value="3" />
            <Property name="Offset" value="Vector3f.xml">
              <Property name="x" value="0" />
              <Property name="y" value="0.5" />
              <Property name="z" value="0" />
            </Property>
            <Property name="Roll" value="0" />
            <Property name="Pitch" value="25" />
            <Property name="Rotate" value="270" />
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
          <Property name="LightIntensityMultiplier" value="1" />
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
          <Property name="AlignUIToCameraInHmd" value="False" />
          <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="False" />
          <Property name="LookForFocusInMasterModel" value="False" />
          <Property name="FlipRotationIfNecessary" value="True" />
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
            <Property name="Rotate" value="0" />
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
          <Property name="LightIntensityMultiplier" value="1" />
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
          <Property name="AlignUIToCameraInHmd" value="False" />
          <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="False" />
          <Property name="LookForFocusInMasterModel" value="False" />
          <Property name="FlipRotationIfNecessary" value="False" />
        </Property>
        <Property name="Race" value="GcAlienRace.xml">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="AttractDistanceSq" value="9" />
        <Property name="SecondaryMeshAlwaysVisible" value="False" />
        <Property name="RepeatInteraction" value="False" />
        <Property name="UseInteractCamera" value="True" />
        <Property name="BlendToCameraTime" value="0.5" />
        <Property name="BlendFromCameraTime" value="-1" />
        <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
          <Property name="SubstanceId" value="" />
          <Property name="AltIds" />
          <Property name="Cost" value="0" />
          <Property name="Repeat" value="False" />
          <Property name="RequiredTech" value="" />
          <Property name="UseCostID" value="" />
          <Property name="StartMissionOnCantAfford" value="" />
          <Property name="OnlyChargeDuringSeasons" />
        </Property>
        <Property name="TriggerAction" value="INACTIVE" />
        <Property name="TriggerActionOnPrepare" value="BOOT" />
        <Property name="BroadcastTriggerAction" value="False" />
        <Property name="InteractAngle" value="360" />
        <Property name="InteractDistance" value="5" />
        <Property name="InteractInvertFace" value="False" />
        <Property name="SecondaryInteractionType" value="GcInteractionType.xml">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="SecondaryActivationCost" value="GcInteractionActivationCost.xml">
          <Property name="SubstanceId" value="" />
          <Property name="AltIds" />
          <Property name="Cost" value="0" />
          <Property name="Repeat" value="False" />
          <Property name="RequiredTech" value="" />
          <Property name="UseCostID" value="" />
          <Property name="StartMissionOnCantAfford" value="" />
          <Property name="OnlyChargeDuringSeasons" />
        </Property>
        <Property name="EventRenderers" />
        <Property name="EventRenderersAlt" />
        <Property name="EventRenderersDoF" />
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
        <Property name="AdditionalOptionsOverrideTable" />
        <Property name="StoryUtilityOverrideData" value="GcStoryUtilityOverride.xml">
          <Property name="Name" value="" />
          <Property name="Reward" value="" />
          <Property name="SpecificRewardOverrideTable" />
        </Property>
        <Property name="OverrideInteriorExteriorMarker" value="No" />
        <Property name="ReseedAfterRewardSuccess" value="False" />
        <Property name="UsePersonalPersistentBuffer" value="True" />
        <Property name="InWorldUIScaler" value="0" />
        <Property name="InWorldUIMinDistOverride" value="0" />
        <Property name="InWorldUIMinDistOverrideV2" value="0" />
        <Property name="InWorldUIForcedOffset" value="0" />
        <Property name="InWorldUIForcedOffsetV2" value="0" />
        <Property name="InWorldUIUseCameraUp" value="False" />
        <Property name="StartMissionOnUse" value="" />
        <Property name="AllowMissionUnderwater" value="True" />
        <Property name="UseUnlockedInteractionIfMaintDone" value="False" />
      </Property>
      <Property name="Linked" value="" />
    </Property>]]
--]]

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME  = ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
  MOD_DESCRIPTION  = "Improvements to the Exo-Skiff Fishing Platform",
  MOD_AUTHOR    = Author,
  NMS_VERSION    = GameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
  MODIFICATIONS  = {
    {
      MBIN_CHANGE_TABLE = {
        {
          MBIN_FILE_SOURCE = {
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\FISHINGPLATFORM\ENTITIES\HAZARDPROTECTION.ENTITY.MBIN",
          },
          EXML_CHANGE_TABLE = {
            {
              VALUE_CHANGE_TABLE = {
                {"VolumeTriggerType","GenericInterior"},
              }
            }
          },
        },
        {
          MBIN_FILE_SOURCE = {
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\FISHINGPLATFORM.SCENE.MBIN",
          },
          EXML_CHANGE_TABLE = {
            {
              SPECIAL_KEY_WORDS = {"Name","HazardProtection"},
              PRECEDING_KEY_WORDS = {"Children"},
              CREATE_HOS = "TRUE",
              ADD = HazProtCollisionAdd,
            },
          },

          -- EXML_CHANGE_TABLE = {
            -- {
              -- SPECIAL_KEY_WORDS = {"Name","REFFishBox1","Name","SCENEGRAPH"},
              -- VALUE_CHANGE_TABLE = {
                -- {"Value","MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\COOKER.SCENE.MBIN"},
              -- }
            -- },        
          -- },
          
        },
        {
          MBIN_FILE_SOURCE = {
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\FISHINGPLATFORM\ENTITIES\FISHINGPLATFORM.ENTITY.MBIN",
          },
          EXML_CHANGE_TABLE = {
            {
              VALUE_CHANGE_TABLE = {
                {"AirborneSpringTime",1.2},
                {"UnderwaterSpringTime",0.17},
                {"UpwardRotationFactor",0.035},
              }
            },
          },
        },
        {
          MBIN_FILE_SOURCE = {
            "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\PARTS\SKIFFCUSTOMISATIONINTERACTION\ENTITIES\CUSTOMISATION.ENTITY.MBIN",
          },
          EXML_CHANGE_TABLE = {
            {
              VALUE_CHANGE_TABLE = {
                {"InteractDistance",0.9},
              }
            },
          },
        },
        -- {
          -- MBIN_FILE_SOURCE = {
            -- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\COOKER\ENTITIES\COOKER.ENTITY.MBIN",
          -- },
          -- EXML_CHANGE_TABLE = {
            -- {
              -- SPECIAL_KEY_WORDS = {"Template","TkPhysicsComponentData.xml"},
              -- SECTION_UP = 1,
              -- REPLACE_TYPE = "ADDAFTERSECTION",
              -- ADD = CookerAdd,
            -- },
            -- {
              -- VALUE_CHANGE_TABLE = {
                -- {"Gravity",0},
                -- {"ModelOwnership","None"},
                -- {"IgnoreModelOwner","True"},
                -- {"NoPlayerCollide","True"},
                -- {"IgnoreAllCollisions","True"},
                -- {"CompletionRequirement","NoRequirement"},
                -- {"AutoCompleteOnStart","True"},
                -- {"DisableSynchronise","True"},
              -- }
            -- },
          -- },
        -- },
        -- {
          -- MBIN_FILE_SOURCE = {
            -- "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\COOKER\ENTITIES\TRIGGERACTIONDATA.ENTITY.MBIN",
          -- },
          -- EXML_CHANGE_TABLE = {
            -- {
              -- VALUE_CHANGE_TABLE = {
                -- {"StartInactive","True"},
                -- {"Persistent","True"},
              -- }
            -- },
          -- },
        -- },
        
      }
    }
  }
}