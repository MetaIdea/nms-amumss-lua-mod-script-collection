--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Free Suit Upgrade.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "",         --optional, for reference
  ["MOD_AUTHOR"]			= "MSO53",    --optional, for reference
  ["NMS_VERSION"]			= "3.02",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\CRYOCHAMBER\ENTITIES\CRYOCHAMBERINTERACTION.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"] = "",
							["PRECEDING_KEY_WORDS"] = "Components",
							--["LINE_OFFSET"] 		= "+1",
							["ADD"] = 
[[
    <Property value="GcMaintenanceComponentData.xml">
      <Property name="VisibleMaintenanceSlots" value="-1" />
      <Property name="AllowRepair" value="True" />
      <Property name="AllowCharge" value="False" />
      <Property name="AllowDismantle" value="False" />
      <Property name="AllowInstallTech" value="False" />
      <Property name="AllowCraftProduct" value="False" />
      <Property name="AllowTransfer" value="False" />
      <Property name="AllowMoveAndStack" value="False" />
      <Property name="AllowTransferIn" value="False" />
      <Property name="AutoCompleteOnStart" value="False" />
      <Property name="UseModelResourceRenderer" value="False" />
      <Property name="UseBoundsForIconCentre" value="True" />
      <Property name="Interactable" value="OnlyWhenNotComplete" />
      <Property name="ForceNoninteraction" value="False" />
      <Property name="CompletedTransitionDelay" value="1" />
      <Property name="ShareInteractionModelRender" value="True" />
      <Property name="ModelRenderData" value="TkModelRendererData.xml">
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
      <Property name="ModelRenderDataAlt" value="TkModelRendererData.xml">
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
      <Property name="ModelRendererResource" value="ModelNode" />
      <Property name="BroadcastLevel" value="GcBroadcastLevel.xml">
        <Property name="BroadcastLevel" value="LocalModel" />
      </Property>
      <Property name="Title" value="UI_DROPPOD_MAINT_TITLE" />
      <Property name="Description" value="UI_DROPPOD_MAINT_SUB" />
      <Property name="ActionButtonOverride" value="REPAIR" />
      <Property name="ActionDescriptionOverride" value="REPAIR_DESC" />
      <Property name="ActionWarningOverride" value="WARN_TECH_DAMAGED" />
      <Property name="InWorldUIScaler" value="0" />
      <Property name="InteractionRequiresPower" value="False" />
      <Property name="StartMissionOnUse" value="" />
    </Property>
]],
						},
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RepeatInteraction","True"}, 			-- Original "False"
								{"ReseedAfterRewardSuccess","True"},	-- Original "False"
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]  = {"MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\CRYOCHAMBERPOD\ENTITIES\CRYOCHAMBERPOD.ENTITY.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GcMaintenanceComponentData.xml","PreInstalledTech"},
							["REMOVE"] = "SECTION"
						},
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RepeatInteraction","True"}, 			-- Original "False"
								{"ReseedAfterRewardSuccess","True"},	-- Original "False"
							},
						},
					},
				},
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE