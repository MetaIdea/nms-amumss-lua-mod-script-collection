NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "CrewLocker Appearance Modifier",
["MOD_AUTHOR"]      = "Rabzoue",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "A simple change to the Desolation added CrewLocker, it will let you use the Appareance Modifier on it",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DECORATION\LOCKER2\ENTITIES\LOCKER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Components"},
              ["ADD"] =
[[
    <Property name="Components" value="GcInteractionComponentData">
      <Property name="GcInteractionComponentData">
        <Property name="InteractionAction" value="PressButton" />
        <Property name="InteractionType" value="GcInteractionType">
          <Property name="InteractionType" value="CustomiseCharacter" />
        </Property>
        <Property name="UseIntermediateUI" value="false" />
        <Property name="Renderer" value="TkModelRendererData">
          <Property name="Camera" value="TkModelRendererCameraData">
            <Property name="Distance" value="2.8" />
            <Property name="Offset">
              <Property name="X" value="0.500000" />
              <Property name="Y" value="1.300000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="Roll" value="0.000000" />
            <Property name="Pitch" value="7.520000" />
            <Property name="Rotate" value="-120.000000" />
            <Property name="LightPitch" value="30.000000" />
            <Property name="LightRotate" value="30.000000" />
            <Property name="Wander" value="TkCameraWanderData">
              <Property name="CamWander" value="false" />
              <Property name="CamWanderPhase" value="0.003000" />
              <Property name="CamWanderAmplitude" value="0.200000" />
            </Property>
          </Property>
          <Property name="Fov" value="30.000000" />
          <Property name="AspectRatio" value="1.777700" />
          <Property name="LightIntensityMultiplier" value="1.000000" />
          <Property name="HDRI" value="TEXTURES/HDRIS/DEFAULT.DDS" />
          <Property name="ThumbnailMode" value="None" />
          <Property name="FocusType" value="ResourceBounds" />
          <Property name="FocusLocator" value="" />
          <Property name="FocusOffset">
            <Property name="X" value="0.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="0.000000" />
          </Property>
          <Property name="FocusInterpTime" value="0.000000" />
          <Property name="BlendInTime" value="0.800000" />
          <Property name="BlendInOffset" value="0.000000" />
          <Property name="Anim" value="" />
          <Property name="HeightOffset" value="0.005000" />
          <Property name="UsePlayerCameraInHmd" value="true" />
          <Property name="AlignUIToCameraInHmd" value="false" />
          <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="false" />
          <Property name="LookForFocusInMasterModel" value="false" />
          <Property name="FlipRotationIfNecessary" value="false" />
        </Property>
        <Property name="RendererAlt" value="TkModelRendererData">
          <Property name="Camera" value="TkModelRendererCameraData">
            <Property name="Distance" value="2.500000" />
            <Property name="Offset">
              <Property name="X" value="0.650000" />
              <Property name="Y" value="1.750000" />
              <Property name="Z" value="0.100000" />
            </Property>
            <Property name="Roll" value="0.000000" />
            <Property name="Pitch" value="0.000000" />
            <Property name="Rotate" value="204.000000" />
            <Property name="LightPitch" value="45.000000" />
            <Property name="LightRotate" value="45.000000" />
            <Property name="Wander" value="TkCameraWanderData">
              <Property name="CamWander" value="false" />
              <Property name="CamWanderPhase" value="0.003000" />
              <Property name="CamWanderAmplitude" value="0.500000" />
            </Property>
          </Property>
          <Property name="Fov" value="30.000000" />
          <Property name="AspectRatio" value="1.777700" />
          <Property name="LightIntensityMultiplier" value="1.000000" />
          <Property name="HDRI" value="TEXTURES/HDRIS/DEFAULT.DDS" />
          <Property name="ThumbnailMode" value="None" />
          <Property name="FocusType" value="ResourceBounds" />
          <Property name="FocusLocator" value="" />
          <Property name="FocusOffset">
            <Property name="X" value="0.000000" />
            <Property name="Y" value="0.000000" />
            <Property name="Z" value="0.000000" />
          </Property>
          <Property name="FocusInterpTime" value="0.000000" />
          <Property name="BlendInTime" value="0.800000" />
          <Property name="BlendInOffset" value="0.000000" />
          <Property name="Anim" value="" />
          <Property name="HeightOffset" value="0.005000" />
          <Property name="UsePlayerCameraInHmd" value="false" />
          <Property name="AlignUIToCameraInHmd" value="false" />
          <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="false" />
          <Property name="LookForFocusInMasterModel" value="false" />
          <Property name="FlipRotationIfNecessary" value="false" />
        </Property>
        <Property name="Race" value="GcAlienRace">
          <Property name="AlienRace" value="None" />
        </Property>
        <Property name="AttractDistanceSq" value="9.000000" />
        <Property name="SecondaryMeshAlwaysVisible" value="false" />
        <Property name="RepeatInteraction" value="true" />
        <Property name="UseInteractCamera" value="true" />
        <Property name="BlendToCameraTime" value="0.500000" />
        <Property name="BlendFromCameraTime" value="-1.000000" />
        <Property name="ActivationCost" value="GcInteractionActivationCost">
          <Property name="SubstanceId" value="" />
          <Property name="AltIds" />
          <Property name="Cost" value="0" />
          <Property name="Repeat" value="false" />
          <Property name="RequiredTech" value="" />
          <Property name="UseCostID" value="" />
          <Property name="StartMissionOnCantAfford" value="" />
          <Property name="OnlyChargeDuringSeasons" />
        </Property>
        <Property name="TriggerAction" value="INACTIVE" />
        <Property name="TriggerActionOnPrepare" value="" />
        <Property name="BroadcastTriggerAction" value="false" />
        <Property name="RangeToAllowAtAnyAngle" value="0.000000" />
        <Property name="InteractMaxHeightDiff" value="0.000000" />
        <Property name="InteractAngle" value="360.000000" />
        <Property name="InteractDistance" value="3.000000" />
        <Property name="InteractInvertFace" value="false" />
        <Property name="SecondaryInteractionType" value="GcInteractionType">
          <Property name="InteractionType" value="None" />
        </Property>
        <Property name="SecondaryActivationCost" value="GcInteractionActivationCost">
          <Property name="SubstanceId" value="" />
          <Property name="AltIds" />
          <Property name="Cost" value="0" />
          <Property name="Repeat" value="false" />
          <Property name="RequiredTech" value="" />
          <Property name="UseCostID" value="" />
          <Property name="StartMissionOnCantAfford" value="" />
          <Property name="OnlyChargeDuringSeasons" />
        </Property>
        <Property name="EventRenderers">
          <Property name="EventRenderers" value="TkModelRendererData" _index="0">
            <Property name="Camera" value="TkModelRendererCameraData">
              <Property name="Distance" value="1.800000" />
              <Property name="Offset">
                <Property name="X" value="0.620000" />
                <Property name="Y" value="-0.360000" />
                <Property name="Z" value="0.000000" />
              </Property>
              <Property name="Roll" value="0.000000" />
              <Property name="Pitch" value="-1.279995" />
              <Property name="Rotate" value="230.080000" />
              <Property name="LightPitch" value="45.000000" />
              <Property name="LightRotate" value="45.000000" />
              <Property name="Wander" value="TkCameraWanderData">
                <Property name="CamWander" value="false" />
                <Property name="CamWanderPhase" value="0.003000" />
                <Property name="CamWanderAmplitude" value="0.500000" />
              </Property>
            </Property>
            <Property name="Fov" value="30.000000" />
            <Property name="AspectRatio" value="1.777700" />
            <Property name="LightIntensityMultiplier" value="1.000000" />
            <Property name="HDRI" value="TEXTURES/HDRIS/DEFAULT.DDS" />
            <Property name="ThumbnailMode" value="None" />
            <Property name="FocusType" value="ResourceBounds" />
            <Property name="FocusLocator" value="" />
            <Property name="FocusOffset">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="FocusInterpTime" value="0.000000" />
            <Property name="BlendInTime" value="0.800000" />
            <Property name="BlendInOffset" value="0.000000" />
            <Property name="Anim" value="" />
            <Property name="HeightOffset" value="0.005000" />
            <Property name="UsePlayerCameraInHmd" value="true" />
            <Property name="AlignUIToCameraInHmd" value="false" />
            <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="false" />
            <Property name="LookForFocusInMasterModel" value="false" />
            <Property name="FlipRotationIfNecessary" value="false" />
          </Property>
          <Property name="EventRenderers" value="TkModelRendererData" _index="1">
            <Property name="Camera" value="TkModelRendererCameraData">
              <Property name="Distance" value="1.600000" />
              <Property name="Offset">
                <Property name="X" value="0.460000" />
                <Property name="Y" value="0.170000" />
                <Property name="Z" value="0.000000" />
              </Property>
              <Property name="Roll" value="0.000000" />
              <Property name="Pitch" value="9.760002" />
              <Property name="Rotate" value="212.159800" />
              <Property name="LightPitch" value="45.000000" />
              <Property name="LightRotate" value="45.000000" />
              <Property name="Wander" value="TkCameraWanderData">
                <Property name="CamWander" value="false" />
                <Property name="CamWanderPhase" value="0.003000" />
                <Property name="CamWanderAmplitude" value="0.500000" />
              </Property>
            </Property>
            <Property name="Fov" value="30.000000" />
            <Property name="AspectRatio" value="1.777700" />
            <Property name="LightIntensityMultiplier" value="1.000000" />
            <Property name="HDRI" value="TEXTURES/HDRIS/DEFAULT.DDS" />
            <Property name="ThumbnailMode" value="None" />
            <Property name="FocusType" value="ResourceBounds" />
            <Property name="FocusLocator" value="" />
            <Property name="FocusOffset">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="FocusInterpTime" value="0.000000" />
            <Property name="BlendInTime" value="0.800000" />
            <Property name="BlendInOffset" value="0.000000" />
            <Property name="Anim" value="" />
            <Property name="HeightOffset" value="0.005000" />
            <Property name="UsePlayerCameraInHmd" value="true" />
            <Property name="AlignUIToCameraInHmd" value="false" />
            <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="false" />
            <Property name="LookForFocusInMasterModel" value="false" />
            <Property name="FlipRotationIfNecessary" value="false" />
          </Property>
          <Property name="EventRenderers" value="TkModelRendererData" _index="2">
            <Property name="Camera" value="TkModelRendererCameraData">
              <Property name="Distance" value="0.800000" />
              <Property name="Offset">
                <Property name="X" value="0.240000" />
                <Property name="Y" value="-0.020000" />
                <Property name="Z" value="0.000000" />
              </Property>
              <Property name="Roll" value="0.000000" />
              <Property name="Pitch" value="-4.160000" />
              <Property name="Rotate" value="-72.160040" />
              <Property name="LightPitch" value="45.000000" />
              <Property name="LightRotate" value="45.000000" />
              <Property name="Wander" value="TkCameraWanderData">
                <Property name="CamWander" value="false" />
                <Property name="CamWanderPhase" value="0.003000" />
                <Property name="CamWanderAmplitude" value="0.500000" />
              </Property>
            </Property>
            <Property name="Fov" value="30.000000" />
            <Property name="AspectRatio" value="1.777700" />
            <Property name="LightIntensityMultiplier" value="1.000000" />
            <Property name="HDRI" value="TEXTURES/HDRIS/DEFAULT.DDS" />
            <Property name="ThumbnailMode" value="None" />
            <Property name="FocusType" value="ResourceBounds" />
            <Property name="FocusLocator" value="" />
            <Property name="FocusOffset">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="FocusInterpTime" value="0.000000" />
            <Property name="BlendInTime" value="0.800000" />
            <Property name="BlendInOffset" value="0.000000" />
            <Property name="Anim" value="" />
            <Property name="HeightOffset" value="0.005000" />
            <Property name="UsePlayerCameraInHmd" value="true" />
            <Property name="AlignUIToCameraInHmd" value="false" />
            <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="false" />
            <Property name="LookForFocusInMasterModel" value="false" />
            <Property name="FlipRotationIfNecessary" value="false" />
          </Property>
          <Property name="EventRenderers" value="TkModelRendererData" _index="3">
            <Property name="Camera" value="TkModelRendererCameraData">
              <Property name="Distance" value="2.200000" />
              <Property name="Offset">
                <Property name="X" value="0.710000" />
                <Property name="Y" value="-0.310000" />
                <Property name="Z" value="0.000000" />
              </Property>
              <Property name="Roll" value="0.000000" />
              <Property name="Pitch" value="16.000000" />
              <Property name="Rotate" value="212.800000" />
              <Property name="LightPitch" value="45.000000" />
              <Property name="LightRotate" value="45.000000" />
              <Property name="Wander" value="TkCameraWanderData">
                <Property name="CamWander" value="false" />
                <Property name="CamWanderPhase" value="0.003000" />
                <Property name="CamWanderAmplitude" value="0.500000" />
              </Property>
            </Property>
            <Property name="Fov" value="30.000000" />
            <Property name="AspectRatio" value="1.777700" />
            <Property name="LightIntensityMultiplier" value="1.000000" />
            <Property name="HDRI" value="TEXTURES/HDRIS/DEFAULT.DDS" />
            <Property name="ThumbnailMode" value="None" />
            <Property name="FocusType" value="ResourceBounds" />
            <Property name="FocusLocator" value="" />
            <Property name="FocusOffset">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="FocusInterpTime" value="0.000000" />
            <Property name="BlendInTime" value="0.800000" />
            <Property name="BlendInOffset" value="0.000000" />
            <Property name="Anim" value="" />
            <Property name="HeightOffset" value="0.005000" />
            <Property name="UsePlayerCameraInHmd" value="true" />
            <Property name="AlignUIToCameraInHmd" value="false" />
            <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="false" />
            <Property name="LookForFocusInMasterModel" value="false" />
            <Property name="FlipRotationIfNecessary" value="false" />
          </Property>
          <Property name="EventRenderers" value="TkModelRendererData" _index="4">
            <Property name="Camera" value="TkModelRendererCameraData">
              <Property name="Distance" value="1.100000" />
              <Property name="Offset">
                <Property name="X" value="0.420000" />
                <Property name="Y" value="0.160000" />
                <Property name="Z" value="0.000000" />
              </Property>
              <Property name="Roll" value="0.000000" />
              <Property name="Pitch" value="10.560000" />
              <Property name="Rotate" value="-70.720030" />
              <Property name="LightPitch" value="45.000000" />
              <Property name="LightRotate" value="45.000000" />
              <Property name="Wander" value="TkCameraWanderData">
                <Property name="CamWander" value="false" />
                <Property name="CamWanderPhase" value="0.003000" />
                <Property name="CamWanderAmplitude" value="0.500000" />
              </Property>
            </Property>
            <Property name="Fov" value="30.000000" />
            <Property name="AspectRatio" value="1.777700" />
            <Property name="LightIntensityMultiplier" value="1.000000" />
            <Property name="HDRI" value="TEXTURES/HDRIS/DEFAULT.DDS" />
            <Property name="ThumbnailMode" value="None" />
            <Property name="FocusType" value="ResourceBounds" />
            <Property name="FocusLocator" value="" />
            <Property name="FocusOffset">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="FocusInterpTime" value="0.000000" />
            <Property name="BlendInTime" value="0.800000" />
            <Property name="BlendInOffset" value="0.000000" />
            <Property name="Anim" value="" />
            <Property name="HeightOffset" value="0.005000" />
            <Property name="UsePlayerCameraInHmd" value="true" />
            <Property name="AlignUIToCameraInHmd" value="false" />
            <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="false" />
            <Property name="LookForFocusInMasterModel" value="false" />
            <Property name="FlipRotationIfNecessary" value="false" />
          </Property>
          <Property name="EventRenderers" value="TkModelRendererData" _index="5">
            <Property name="Camera" value="TkModelRendererCameraData">
              <Property name="Distance" value="2.400000" />
              <Property name="Offset">
                <Property name="X" value="0.730000" />
                <Property name="Y" value="-0.250000" />
                <Property name="Z" value="0.000000" />
              </Property>
              <Property name="Roll" value="0.000000" />
              <Property name="Pitch" value="3.039996" />
              <Property name="Rotate" value="14.560040" />
              <Property name="LightPitch" value="45.000000" />
              <Property name="LightRotate" value="45.000000" />
              <Property name="Wander" value="TkCameraWanderData">
                <Property name="CamWander" value="false" />
                <Property name="CamWanderPhase" value="0.003000" />
                <Property name="CamWanderAmplitude" value="0.500000" />
              </Property>
            </Property>
            <Property name="Fov" value="30.000000" />
            <Property name="AspectRatio" value="1.777700" />
            <Property name="LightIntensityMultiplier" value="1.000000" />
            <Property name="HDRI" value="TEXTURES/HDRIS/DEFAULT.DDS" />
            <Property name="ThumbnailMode" value="None" />
            <Property name="FocusType" value="ResourceBounds" />
            <Property name="FocusLocator" value="BACKPACK" />
            <Property name="FocusOffset">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="FocusInterpTime" value="0.000000" />
            <Property name="BlendInTime" value="0.800000" />
            <Property name="BlendInOffset" value="0.000000" />
            <Property name="Anim" value="" />
            <Property name="HeightOffset" value="0.005000" />
            <Property name="UsePlayerCameraInHmd" value="true" />
            <Property name="AlignUIToCameraInHmd" value="false" />
            <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="false" />
            <Property name="LookForFocusInMasterModel" value="false" />
            <Property name="FlipRotationIfNecessary" value="false" />
          </Property>
          <Property name="EventRenderers" value="TkModelRendererData" _index="6">
            <Property name="Camera" value="TkModelRendererCameraData">
              <Property name="Distance" value="1.200000" />
              <Property name="Offset">
                <Property name="X" value="0.360000" />
                <Property name="Y" value="0.300000" />
                <Property name="Z" value="0.000000" />
              </Property>
              <Property name="Roll" value="0.000000" />
              <Property name="Pitch" value="-3.359999" />
              <Property name="Rotate" value="-160.640000" />
              <Property name="LightPitch" value="45.000000" />
              <Property name="LightRotate" value="45.000000" />
              <Property name="Wander" value="TkCameraWanderData">
                <Property name="CamWander" value="false" />
                <Property name="CamWanderPhase" value="0.003000" />
                <Property name="CamWanderAmplitude" value="0.500000" />
              </Property>
            </Property>
            <Property name="Fov" value="30.000000" />
            <Property name="AspectRatio" value="1.777700" />
            <Property name="LightIntensityMultiplier" value="1.000000" />
            <Property name="HDRI" value="TEXTURES/HDRIS/DEFAULT.DDS" />
            <Property name="ThumbnailMode" value="None" />
            <Property name="FocusType" value="ResourceBounds" />
            <Property name="FocusLocator" value="" />
            <Property name="FocusOffset">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="FocusInterpTime" value="0.000000" />
            <Property name="BlendInTime" value="0.800000" />
            <Property name="BlendInOffset" value="0.000000" />
            <Property name="Anim" value="" />
            <Property name="HeightOffset" value="0.005000" />
            <Property name="UsePlayerCameraInHmd" value="true" />
            <Property name="AlignUIToCameraInHmd" value="false" />
            <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="false" />
            <Property name="LookForFocusInMasterModel" value="false" />
            <Property name="FlipRotationIfNecessary" value="false" />
          </Property>
          <Property name="EventRenderers" value="TkModelRendererData" _index="7">
            <Property name="Camera" value="TkModelRendererCameraData">
              <Property name="Distance" value="1.300000" />
              <Property name="Offset">
                <Property name="X" value="0.470000" />
                <Property name="Y" value="-0.410000" />
                <Property name="Z" value="0.000000" />
              </Property>
              <Property name="Roll" value="0.000000" />
              <Property name="Pitch" value="2.720000" />
              <Property name="Rotate" value="214.400200" />
              <Property name="LightPitch" value="45.000000" />
              <Property name="LightRotate" value="45.000000" />
              <Property name="Wander" value="TkCameraWanderData">
                <Property name="CamWander" value="false" />
                <Property name="CamWanderPhase" value="0.003000" />
                <Property name="CamWanderAmplitude" value="0.500000" />
              </Property>
            </Property>
            <Property name="Fov" value="30.000000" />
            <Property name="AspectRatio" value="1.777700" />
            <Property name="LightIntensityMultiplier" value="1.000000" />
            <Property name="HDRI" value="TEXTURES/HDRIS/DEFAULT.DDS" />
            <Property name="ThumbnailMode" value="None" />
            <Property name="FocusType" value="ResourceBounds" />
            <Property name="FocusLocator" value="" />
            <Property name="FocusOffset">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="FocusInterpTime" value="0.000000" />
            <Property name="BlendInTime" value="0.800000" />
            <Property name="BlendInOffset" value="0.000000" />
            <Property name="Anim" value="" />
            <Property name="HeightOffset" value="0.005000" />
            <Property name="UsePlayerCameraInHmd" value="true" />
            <Property name="AlignUIToCameraInHmd" value="false" />
            <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="false" />
            <Property name="LookForFocusInMasterModel" value="false" />
            <Property name="FlipRotationIfNecessary" value="false" />
          </Property>
          <Property name="EventRenderers" value="TkModelRendererData" _index="8">
            <Property name="Camera" value="TkModelRendererCameraData">
              <Property name="Distance" value="1.400000" />
              <Property name="Offset">
                <Property name="X" value="0.440000" />
                <Property name="Y" value="-0.260000" />
                <Property name="Z" value="0.000000" />
              </Property>
              <Property name="Roll" value="0.000000" />
              <Property name="Pitch" value="-0.160004" />
              <Property name="Rotate" value="-149.599800" />
              <Property name="LightPitch" value="45.000000" />
              <Property name="LightRotate" value="45.000000" />
              <Property name="Wander" value="TkCameraWanderData">
                <Property name="CamWander" value="false" />
                <Property name="CamWanderPhase" value="0.003000" />
                <Property name="CamWanderAmplitude" value="0.500000" />
              </Property>
            </Property>
            <Property name="Fov" value="30.000000" />
            <Property name="AspectRatio" value="1.777700" />
            <Property name="LightIntensityMultiplier" value="1.000000" />
            <Property name="HDRI" value="TEXTURES/HDRIS/DEFAULT.DDS" />
            <Property name="ThumbnailMode" value="None" />
            <Property name="FocusType" value="ResourceBounds" />
            <Property name="FocusLocator" value="" />
            <Property name="FocusOffset">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="FocusInterpTime" value="0.000000" />
            <Property name="BlendInTime" value="0.800000" />
            <Property name="BlendInOffset" value="0.000000" />
            <Property name="Anim" value="" />
            <Property name="HeightOffset" value="0.005000" />
            <Property name="UsePlayerCameraInHmd" value="true" />
            <Property name="AlignUIToCameraInHmd" value="false" />
            <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="false" />
            <Property name="LookForFocusInMasterModel" value="false" />
            <Property name="FlipRotationIfNecessary" value="false" />
          </Property>
          <Property name="EventRenderers" value="TkModelRendererData" _index="9">
            <Property name="Camera" value="TkModelRendererCameraData">
              <Property name="Distance" value="1.500000" />
              <Property name="Offset">
                <Property name="X" value="0.000000" />
                <Property name="Y" value="0.000000" />
                <Property name="Z" value="0.000000" />
              </Property>
              <Property name="Roll" value="0.000000" />
              <Property name="Pitch" value="0.000000" />
              <Property name="Rotate" value="0.000000" />
              <Property name="LightPitch" value="45.000000" />
              <Property name="LightRotate" value="45.000000" />
              <Property name="Wander" value="TkCameraWanderData">
                <Property name="CamWander" value="false" />
                <Property name="CamWanderPhase" value="0.003000" />
                <Property name="CamWanderAmplitude" value="0.500000" />
              </Property>
            </Property>
            <Property name="Fov" value="30.000000" />
            <Property name="AspectRatio" value="1.777700" />
            <Property name="LightIntensityMultiplier" value="1.000000" />
            <Property name="HDRI" value="TEXTURES/HDRIS/DEFAULT.DDS" />
            <Property name="ThumbnailMode" value="None" />
            <Property name="FocusType" value="ResourceBounds" />
            <Property name="FocusLocator" value="" />
            <Property name="FocusOffset">
              <Property name="X" value="0.000000" />
              <Property name="Y" value="0.000000" />
              <Property name="Z" value="0.000000" />
            </Property>
            <Property name="FocusInterpTime" value="0.000000" />
            <Property name="BlendInTime" value="0.800000" />
            <Property name="BlendInOffset" value="0.000000" />
            <Property name="Anim" value="" />
            <Property name="HeightOffset" value="0.005000" />
            <Property name="UsePlayerCameraInHmd" value="true" />
            <Property name="AlignUIToCameraInHmd" value="false" />
            <Property name="UseSensibleCameraFocusNodeIsNowOffsetNode" value="false" />
            <Property name="LookForFocusInMasterModel" value="false" />
            <Property name="FlipRotationIfNecessary" value="false" />
          </Property>
        </Property>
        <Property name="EventRenderersAlt" />
        <Property name="EventRenderersDoF" />
        <Property name="SecondaryCameraTransitionTime" value="1.000000" />
        <Property name="DepthOfField" value="GcInteractionDof">
          <Property name="IsEnabled" value="true" />
          <Property name="UseGlobals" value="false" />
          <Property name="NearPlaneMin" value="0.500000" />
          <Property name="NearPlaneAdjust" value="0.000000" />
          <Property name="FarPlane" value="2.000000" />
          <Property name="FarFadeDistance" value="1.000000" />
        </Property>
        <Property name="PuzzleMissionOverrideTable" />
        <Property name="AdditionalOptionsOverrideTable" />
        <Property name="StoryUtilityOverrideData" value="GcStoryUtilityOverride">
          <Property name="NoInteractionUnlessOverriden" value="false" />
          <Property name="Name" value="" />
          <Property name="Reward" value="" />
          <Property name="SpecificRewardOverrideTable" />
        </Property>
        <Property name="OverrideInteriorExteriorMarker" value="No" />
        <Property name="ReseedAfterRewardSuccess" value="false" />
        <Property name="UsePersonalPersistentBuffer" value="false" />
        <Property name="InWorldUIScaler" value="0.000000" />
        <Property name="InWorldUIMinDistOverride" value="0.000000" />
        <Property name="InWorldUIMinDistOverrideV2" value="0.000000" />
        <Property name="InWorldUIForcedOffset" value="0.000000" />
        <Property name="InWorldUIForcedOffsetV2" value="0.000000" />
        <Property name="InWorldUIUseCameraUp" value="false" />
        <Property name="StartMissionOnUse" value="" />
        <Property name="AllowMissionUnderwater" value="true" />
        <Property name="OnlyAvailableInAbandonedMode" value="false" />
        <Property name="UseUnlockedInteractionIfMaintDone" value="false" />
      </Property>
    </Property>
]]
            },
          }
        },
      }
    },
  }
}