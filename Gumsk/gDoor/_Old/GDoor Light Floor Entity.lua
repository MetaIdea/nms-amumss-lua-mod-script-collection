<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (2.31.0)-->
<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="TkAnimationComponentData.xml">
      <Property name="Idle" value="TkAnimationData.xml">
        <Property name="Anim" value="" />
        <Property name="Filename" value="" />
        <Property name="AnimType" value="OneShot" />
        <Property name="FrameStart" value="0" />
        <Property name="FrameEnd" value="0" />
        <Property name="StartNode" value="" />
        <Property name="ExtraStartNodes" />
        <Property name="Priority" value="0" />
        <Property name="LoopOffsetMin" value="0" />
        <Property name="LoopOffsetMax" value="0" />
        <Property name="Delay" value="0" />
        <Property name="Speed" value="1" />
        <Property name="ActionFrameStart" value="0" />
        <Property name="ActionFrame" value="-1" />
        <Property name="ControlCreatureSize" value="AllSizes" />
        <Property name="Additive" value="False" />
        <Property name="Mirrored" value="False" />
        <Property name="Active" value="False" />
        <Property name="AdditiveBaseAnim" value="" />
        <Property name="AdditiveBaseFrame" value="0" />
        <Property name="GameData" value="TkAnimationGameData.xml">
          <Property name="RootMotionEnabled" value="False" />
          <Property name="BlockPlayerMovement" value="False" />
          <Property name="BlockPlayerWeapon" value="Unblocked" />
        </Property>
      </Property>
      <Property name="Anims">
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="OPEN" />
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/ANIMS/DOOR/DOOR_OPEN.ANIM.MBIN" />
          <Property name="AnimType" value="OneShot" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="LoopOffsetMin" value="0" />
          <Property name="LoopOffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionFrameStart" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="ControlCreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="CLOSE" />
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/ANIMS/DOOR/DOOR_CLOSE.ANIM.MBIN" />
          <Property name="AnimType" value="OneShot" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="" />
          <Property name="ExtraStartNodes" />
          <Property name="Priority" value="0" />
          <Property name="LoopOffsetMin" value="0" />
          <Property name="LoopOffsetMax" value="0" />
          <Property name="Delay" value="0" />
          <Property name="Speed" value="1" />
          <Property name="ActionFrameStart" value="0" />
          <Property name="ActionFrame" value="-1" />
          <Property name="ControlCreatureSize" value="AllSizes" />
          <Property name="Additive" value="False" />
          <Property name="Mirrored" value="False" />
          <Property name="Active" value="True" />
          <Property name="AdditiveBaseAnim" value="" />
          <Property name="AdditiveBaseFrame" value="0" />
          <Property name="GameData" value="TkAnimationGameData.xml">
            <Property name="RootMotionEnabled" value="False" />
            <Property name="BlockPlayerMovement" value="False" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
      </Property>
      <Property name="Trees" />
      <Property name="NetSyncAnimation" value="False" />
      <Property name="JointLODOverrides" />
    </Property>
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="NOTCONON1" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Base_Door_Open" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcPlayAnimAction.xml">
                  <Property name="Anim" value="OPEN" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="DoorClose" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="DoorOpen" />
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
	
<Property value="GcActionTrigger.xml">
		<Property name="Trigger" value="GcPlayerNearbyEvent.xml">
			<Property name="RequirePlayerAction" value="OnFoot" />
			<Property name="Distance" value="10" />
			<Property name="Angle" value="360" />
			<Property name="AnglePlayerRelative" value="False" />
			<Property name="AngleOffset" value="0" />
			<Property name="AngleReflected" value="False" />
			<Property name="AngleMinDistance" value="1" />
			<Property name="DistanceCheckType" value="Radius" />
			<Property name="Inverse" value="True" />
			<Property name="OnlyForLocalPlayer" value="False" />
			<Property name="IncludeAllPhysics" value="True" />
			<Property name="IncludeMobileNPCs" value="False" />
			<Property name="TeleporterCountsAsPlayer" value="True" />
		</Property>
		<Property name="Action">
			<Property value="GcGoToStateAction.xml">
				<Property name="State" value="CONON1" />
				<Property name="Broadcast" value="False" />
				<Property name="BroadcastLevel" value="Scene" />
			</Property>
		</Property>
	</Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="CONON1" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Base_Door_Close" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcPlayAnimAction.xml">
                  <Property name="Anim" value="CLOSE" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="DoorClose" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="DoorOpen" />
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
	
<Property value="GcActionTrigger.xml">
		<Property name="Trigger" value="GcPlayerNearbyEvent.xml">
			<Property name="RequirePlayerAction" value="OnFoot" />
			<Property name="Distance" value="10" />
			<Property name="Angle" value="360" />
			<Property name="AnglePlayerRelative" value="False" />
			<Property name="AngleOffset" value="0" />
			<Property name="AngleReflected" value="False" />
			<Property name="AngleMinDistance" value="1" />
			<Property name="DistanceCheckType" value="Radius" />
			<Property name="Inverse" value="False" />
			<Property name="OnlyForLocalPlayer" value="False" />
			<Property name="IncludeAllPhysics" value="True" />
			<Property name="IncludeMobileNPCs" value="False" />
			<Property name="TeleporterCountsAsPlayer" value="True" />
		</Property>
		<Property name="Action">
			<Property value="GcGoToStateAction.xml">
				<Property name="State" value="NOTCONON1" />
				<Property name="Broadcast" value="False" />
				<Property name="BroadcastLevel" value="Scene" />
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