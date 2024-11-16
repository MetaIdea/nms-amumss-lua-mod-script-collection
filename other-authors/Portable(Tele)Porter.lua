function teleportInteraction()
    local result = [[
        <Property value="LinkableNMSTemplate.xml">
      <Property name="Template" value="GcInteractionComponentData.xml">
        <Property name="InteractionAction" value="PressButton" />
        <Property name="InteractionType" value="GcInteractionType.xml">
          <Property name="InteractionType" value="Teleporter_Base" />
        </Property>
        <Property name="UseIntermediateUI" value="False" />
        <Property name="Renderer" value="TkModelRendererData.xml">
          <Property name="Camera" value="TkModelRendererCameraData.xml">
            <Property name="Distance" value="5.4" />
            <Property name="Offset" value="Vector3f.xml">
              <Property name="x" value="0.8" />
              <Property name="y" value="1.3" />
              <Property name="z" value="-0.5" />
            </Property>
            <Property name="Roll" value="0" />
            <Property name="Pitch" value="9.400002" />
            <Property name="Rotate" value="-4" />
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
            <Property name="Distance" value="2.8" />
            <Property name="Offset" value="Vector3f.xml">
              <Property name="x" value="0.05" />
              <Property name="y" value="1.75" />
              <Property name="z" value="0" />
            </Property>
            <Property name="Roll" value="0" />
            <Property name="Pitch" value="0.16" />
            <Property name="Rotate" value="5" />
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
          <Property name="UsePlayerCameraInHmd" value="False" />
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
        <Property name="RepeatInteraction" value="True" />
        <Property name="UseInteractCamera" value="True" />
        <Property name="BlendToCameraTime" value="1.5" />
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
        <Property name="TriggerAction" value="" />
        <Property name="TriggerActionOnPrepare" value="" />
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
        <Property name="UsePersonalPersistentBuffer" value="False" />
        <Property name="InWorldUIScaler" value="0.6" />
        <Property name="InWorldUIMinDistOverride" value="0" />
        <Property name="InWorldUIMinDistOverrideV2" value="0" />
        <Property name="InWorldUIForcedOffset" value="0.2" />
        <Property name="InWorldUIForcedOffsetV2" value="2.6" />
        <Property name="InWorldUIUseCameraUp" value="False" />
        <Property name="StartMissionOnUse" value="" />
        <Property name="AllowMissionUnderwater" value="True" />
        <Property name="UseUnlockedInteractionIfMaintDone" value="False" />
      </Property>
      <Property name="Linked" value="" />
    </Property>]]
    return result
end
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] = "Portable(Tele)Porter.pak",
["MOD_AUTHOR"] = "Aristotale",
["LUA_AUTHOR"]    = "Aristotale, Babscoole",
["NMS_VERSION"]   = "5.25",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BUILDBEACON"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"RegionLimit", "0"},
                                {"PlanetLimit", "0"},
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/BEACON/ENTITIES/BEACON.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = {"Components", "LinkableNMSTemplate.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ADD = teleportInteraction(),
                        }
                    }
                },
            }
        }
    }
}

