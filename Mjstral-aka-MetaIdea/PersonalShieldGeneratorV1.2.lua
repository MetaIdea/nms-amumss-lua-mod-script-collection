--Personal Shield Generator by Mjjstral Version 1.2

BACKPACK_TOGGLE							= true
ENABLE_ABOVE_HEAD_TOGGLE 				= false    --for VR
CREATURE_ATTRACTOR_EXTRA_EFFECT 		= false
REQUIRE_TECH_AND_FUEL					= false   --currently not available

CREATURE_DISTRACTOR_EXTRA_EFFECT 		= true    --default on, scares creatures only when getting shoot
ACTION_LOOP_HEALTH_AND_SHIELD_REFILL 	= false   --buggy and needs to edit Ui globals to avoid message spam

ENABLE_SHIELD_COLLSION 					= false   --currently not available

SHIELD_SENTINEL_ATTACK_TEST				= false

SHIELD_COLLISION = 
[[
		<Property value="TkSceneNodeData.xml">
		  <Property name="Name" value="OFF" />
		  <Property name="NameHash" value="0" />
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
			  <Property name="AltID" value="" />
			  <Property name="Value" value="Sphere" />
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
			  <Property name="Name" value="RADIUS" />
			  <Property name="AltID" value="" />
			  <Property name="Value" value="8" />
			</Property>
		  </Property>
		  <Property name="Children" />
		</Property>	
]]

TOGGLER_PHYSICS_COMPONENT =
[[
    <Property value="TkPhysicsComponentData.xml">
      <Property name="Data" value="TkPhysicsData.xml">
        <Property name="Mass" value="0" />
        <Property name="Friction" value="0.5" />
        <Property name="RollingFriction" value="0.2" />
        <Property name="AngularDamping" value="0.2" />
        <Property name="LinearDamping" value="0.1" />
        <Property name="Gravity" value="20" />
      </Property>
      <Property name="VolumeTriggerType" value="TkVolumeTriggerType.xml">
        <Property name="VolumeTriggerType" value="Open" />
      </Property>
      <Property name="SurfaceProperties" value="None" />
      <Property name="TriggerVolume" value="False" />
      <Property name="Climbable" value="False" />
      <Property name="IgnoreModelOwner" value="False" />
      <Property name="NoVehicleCollide" value="True" />
      <Property name="NoPlayerCollide" value="True" />
      <Property name="CameraInvisible" value="False" />
      <Property name="InvisibleForInteraction" value="False" />
      <Property name="AllowTeleporter" value="True" />
      <Property name="BlockTeleporter" value="False" />
    </Property>	
<!--     <Property value="GcVehicleComponentData.xml">
      <Property name="Class" value="GcVehicleType.xml">
        <Property name="VehicleType" value="Truck" />
      </Property>
      <Property name="VehicleType" value="TRUCK" />
      <Property name="Cockpit" value="MODELS/COMMON/VEHICLES/ROVER/ROVERCOCKPIT.SCENE.MBIN" />
      <Property name="MaxHeadTurn" value="30" />
      <Property name="MaxHeadPitchUp" value="25" />
      <Property name="MaxHeadPitchDown" value="15" />
      <Property name="FoVFixedDistance" value="1" />
      <Property name="BaseHealth" value="6" />
      <Property name="WheelModel" value="TkModelResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property> -->
]]

ACTIVATION_ACTION_SETTINGS =
[[
                  <Property name="IncludePhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
]]

PLAYER_CHARACTER_REF =
[[
	<Property value="TkSceneNodeData.xml">
	<Property name="Name" value="SHIELD" />
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
		  <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\SHIELD.SCENE.MBIN" />
		</Property>			
	  </Property>
	  <Property name="Children">
		<Property value="TkSceneNodeData.xml">
		  <Property name="Name" value="ShieldCollision" />
		  <Property name="NameHash" value="0" />
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
			  <Property name="AltID" value="" />
			  <Property name="Value" value="Sphere" />
			</Property>
			<Property value="TkSceneNodeAttributeData.xml">
			  <Property name="Name" value="RADIUS" />
			  <Property name="AltID" value="" />
			  <Property name="Value" value="7" />
			</Property>
		  </Property>
		  <Property name="Children" />
		</Property>	   
	  </Property> 
	</Property> 	
]]


ANIM_ENTRY =
[[
		<Property value="TkAnimationData.xml">
			<Property name="Anim" value="SHIELD_TOGGLE" />
		  <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/0H_EMOTE_MIND_BLOWN.ANIM.MBIN" />
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
			<Property name="RootMotionEnabled" value="True" />
			<Property name="BlockPlayerMovement" value="False" />
			<Property name="BlockPlayerWeapon" value="Unblocked" />
		  </Property>
		</Property>		
]]

ANIM_ENTRY_BACKPACK_TOGGLE =
[[
		<Property value="TkAnimationData.xml">
			<Property name="Anim" value="BACKPACK_TOGGLE" />
		  <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/0H_EMOTE_MIND_BLOWN.ANIM.MBIN" />
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
			<Property name="RootMotionEnabled" value="True" />
			<Property name="BlockPlayerMovement" value="False" />
			<Property name="BlockPlayerWeapon" value="Unblocked" />
		  </Property>
		</Property>	
]]


QUICK_ACTION_BUTTON =
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Shield" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="SHIELD_TOGGLE" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/STATS/STATS.SUIT.PROTECTION.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="LoopAnimUntilMov" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Shield" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="SHIELD_TOGGLE" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/STATS/STATS.SUIT.PROTECTION.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="LoopAnimUntilMov" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
    </Property>	
]]

QUICK_ACTION_BUTTON_BACKPACK_TOGGLE =
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Toggle Backpack" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="BACKPACK_TOGGLE" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/COMPONENTS/CHARCUSTOMISE/BACKPACK.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="LoopAnimUntilMov" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Toggle Backpack" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="BACKPACK_TOGGLE" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/COMPONENTS/CHARCUSTOMISE/BACKPACK.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="LoopAnimUntilMov" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
    </Property>
]]

if BACKPACK_TOGGLE then 
	QUICK_ACTION_BUTTON = QUICK_ACTION_BUTTON .. QUICK_ACTION_BUTTON_BACKPACK_TOGGLE 
	ANIM_ENTRY = ANIM_ENTRY .. ANIM_ENTRY_BACKPACK_TOGGLE
end

COLLISION_ACTIVATION =
[[
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="ShieldCollision" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>	
]]

COLLISION_DEACTIVATION =
[[
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="ShieldCollision" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>	
]]

COLLISION_ACTIVATION_ACTION = ""
COLLISION_DEACTIVATION_ACTION = ""
if ENABLE_SHIELD_COLLSION then COLLISION_ACTIVATION_ACTION = COLLISION_ACTIVATION end
if ENABLE_SHIELD_COLLSION then COLLISION_DEACTIVATION_ACTION = COLLISION_DEACTIVATION end

ABOVE_HEAD_TOGGLE_ACTIVATION =
[[
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="ON" />
                  <Property name="SceneToAdd" value="" />
]] .. ACTIVATION_ACTION_SETTINGS .. [[
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="OFF" />
                  <Property name="SceneToAdd" value="" />
]] .. ACTIVATION_ACTION_SETTINGS .. [[
                </Property>		
]]

ABOVE_HEAD_TOGGLE_DEACTIVATION =
[[
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="ON" />
                  <Property name="SceneToAdd" value="" />
]] .. ACTIVATION_ACTION_SETTINGS .. [[
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="OFF" />
                  <Property name="SceneToAdd" value="" />
]] .. ACTIVATION_ACTION_SETTINGS .. [[
                </Property>		
]]

ABOVE_HEAD_TOGGLE_ACTIVATION_ACTION = ""
ABOVE_HEAD_TOGGLE_DEACTIVATION_ACTION = ""
if ENABLE_ABOVE_HEAD_TOGGLE then
	ABOVE_HEAD_TOGGLE_DEACTIVATION_ACTION = ABOVE_HEAD_TOGGLE_DEACTIVATION_ACTION
	ABOVE_HEAD_TOGGLE_ACTIVATION_ACTION = ABOVE_HEAD_TOGGLE_ACTIVATION_ACTION
end

CREATURE_DISTRACTOR_COMPONENT =
[[
                <Property value="GcScareCreaturesAction.xml">
                  <Property name="HearRadius" value="10" />
                  <Property name="FleeRadius" value="10" />
                </Property>
]]

CREATURE_ATTRACTOR_COMPONENT =
[[
    <Property value="GcCreatureAttractorComponentData.xml">
      <Property name="Universal" value="True" />
      <Property name="Static" value="False" />
      <Property name="ArrivalDist" value="13" />
      <Property name="AttractorType" value="Food" />
    </Property>
]]

EXTRA_COMPONENT_1 = ""
if CREATURE_ATTRACTOR_EXTRA_EFFECT then EXTRA_COMPONENT_1 = CREATURE_ATTRACTOR_COMPONENT end
EXTRA_COMPONENT_2 = ""
if CREATURE_DISTRACTOR_EXTRA_EFFECT then EXTRA_COMPONENT_2 = CREATURE_DISTRACTOR_COMPONENT end


ACTION_TRIGGER_COMPONENT =
[[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>		  
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="BubbleShield" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="False" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
]] .. COLLISION_DEACTIVATION_ACTION .. [[
]] .. ABOVE_HEAD_TOGGLE_DEACTIVATION .. [[
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="WAIT_FOR_ON" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>			
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DEACTIVATE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="3" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="BubbleShield" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="False" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
]] .. COLLISION_DEACTIVATION_ACTION .. [[
]] .. ABOVE_HEAD_TOGGLE_DEACTIVATION .. [[
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="WAIT_FOR_ON" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>	
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ACTIVATE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="3" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="BubbleShield" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="NotifyNPC" value="True" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
]] .. COLLISION_ACTIVATION_ACTION .. [[
]] .. ABOVE_HEAD_TOGGLE_ACTIVATION .. [[
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Anomaly_Simulation_Reveal_Open" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcCameraShakeAction.xml">
                  <Property name="Shake" value="SLOWRUMBLE" />
                  <Property name="FalloffMin" value="5" />
                  <Property name="FalloffMax" value="15" />
                </Property>
                <Property value="GcParticleAction.xml">
                  <Property name="Effect" value="ANOMALYEFFECT" />
                  <Property name="Joint" value="NPCHeadLOC" />
                  <Property name="Exact" value="True" />
                  <Property name="FindRange" value="GcBroadcastLevel.xml">
                    <Property name="GalaxyMarkerType" value="Scene" />
                  </Property>
                </Property>
                <Property value="GcParticleAction.xml">
                  <Property name="Effect" value="FLASH" />
                  <Property name="Joint" value="NPCHeadLOC" />
                  <Property name="Exact" value="True" />
                  <Property name="FindRange" value="GcBroadcastLevel.xml">
                    <Property name="GalaxyMarkerType" value="Scene" />
                  </Property>
                </Property>	
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="WAIT_FOR_OFF" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>				
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="WAIT_FOR_OFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="SHIELD_TOGGLE" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>			  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DEACTIVATE" />
                  <Property name="Broadcast" value="True" />
                  <Property name="BroadcastLevel" value="Scene" />
                </Property>			
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="WAIT_FOR_ON" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="SHIELD_TOGGLE" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>			  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ACTIVATE" />
                  <Property name="Broadcast" value="True" />
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
]]

ACTION_TRIGGER_COMPONENT_BACKPACK_TOGGLE =
[[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>		  
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="BubbleShield" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="False" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
]] .. COLLISION_DEACTIVATION_ACTION .. [[
]] .. ABOVE_HEAD_TOGGLE_DEACTIVATION .. [[
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="WAIT_FOR_ON" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>			
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DEACTIVATE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="3" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="BubbleShield" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="False" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
]] .. COLLISION_DEACTIVATION_ACTION .. [[
]] .. ABOVE_HEAD_TOGGLE_DEACTIVATION .. [[
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="WAIT_FOR_ON" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>	
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ACTIVATE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="3" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="BubbleShield" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="NotifyNPC" value="True" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
]] .. COLLISION_ACTIVATION_ACTION .. [[
]] .. ABOVE_HEAD_TOGGLE_ACTIVATION .. [[
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Anomaly_Simulation_Reveal_Open" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
                <Property value="GcCameraShakeAction.xml">
                  <Property name="Shake" value="SLOWRUMBLE" />
                  <Property name="FalloffMin" value="5" />
                  <Property name="FalloffMax" value="15" />
                </Property>
                <Property value="GcParticleAction.xml">
                  <Property name="Effect" value="ANOMALYEFFECT" />
                  <Property name="Joint" value="NPCHeadLOC" />
                  <Property name="Exact" value="True" />
                  <Property name="FindRange" value="GcBroadcastLevel.xml">
                    <Property name="GalaxyMarkerType" value="Scene" />
                  </Property>
                </Property>
                <Property value="GcParticleAction.xml">
                  <Property name="Effect" value="FLASH" />
                  <Property name="Joint" value="NPCHeadLOC" />
                  <Property name="Exact" value="True" />
                  <Property name="FindRange" value="GcBroadcastLevel.xml">
                    <Property name="GalaxyMarkerType" value="Scene" />
                  </Property>
                </Property>	
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="WAIT_FOR_OFF" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>				
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="WAIT_FOR_OFF" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="SHIELD_TOGGLE" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>			  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="DEACTIVATE" />
                  <Property name="Broadcast" value="True" />
                  <Property name="BroadcastLevel" value="Scene" />
                </Property>			
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="BACKPACK_TOGGLE" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>	
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="Backpack" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
<!--                 <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="player01_jets_AuxSHJnt" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="player01_jetcover_AuxSHJnt" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>	 -->
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="WAIT_FOR_ON" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="SHIELD_TOGGLE" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>			  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ACTIVATE" />
                  <Property name="Broadcast" value="True" />
                  <Property name="BroadcastLevel" value="Scene" />
                </Property>			
              </Property>
            </Property>
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="BACKPACK_TOGGLE" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>	
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="Backpack" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcPlayAudioAction.xml">
                  <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                  <Property name="UseOcclusion" value="False" />
                  <Property name="OcclusionRadius" value="2" />
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
]]

if BACKPACK_TOGGLE then ACTION_TRIGGER_COMPONENT = ACTION_TRIGGER_COMPONENT_BACKPACK_TOGGLE end

SHIELD_ACTION_EFFECT_COMPONENT_1 =
[[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="EmptyNode.xml" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ACTIVATE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcBeenShotEvent.xml">
                <Property name="ShotBy" value="Anything" />
                <Property name="DamageThreshold" value="1" />
                <Property name="HealthThreshold" value="10000" />
              </Property>
              <Property name="Action">
				<Property value="GcRewardAction.xml">
                  <Property name="Reward" value="HEALTHLARGE" />
                </Property>
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="SHIELDLARGE" />
                </Property>	
                <Property value="GcPainAction.xml">
                  <Property name="Damage" value="JUSTPUSH" />
                  <Property name="Radius" value="7" />
                  <Property name="RadiusBasedDamage" value="False" />
                  <Property name="AffectsPlayer" value="False" />
                  <Property name="RetriggerTime" value="1" />
                </Property>
                <Property value="GcPainAction.xml">
                  <Property name="Damage" value="MPSHIPROCKET" />
                  <Property name="Radius" value="7" />
                  <Property name="RadiusBasedDamage" value="True" />
                  <Property name="AffectsPlayer" value="False" />
                  <Property name="RetriggerTime" value="1" />
                </Property>
]] .. EXTRA_COMPONENT_2 .. [[
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DEACTIVATE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="EmptyNode.xml" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="True" />
      <Property name="LinkStateToBaseGrid" value="False" />
    </Property>
]]

SHIELD_ACTION_EFFECT_COMPONENT_2 =
[[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="EmptyNode.xml" />
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ACTIVATE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="LOOP_CHAIN_1" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Scene" />
                </Property>			
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LOOP_CHAIN_1" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0.25" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
				<Property value="GcRewardAction.xml">
                  <Property name="Reward" value="HEALTHLARGE" />
                </Property>
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="SHIELDLARGE" />
                </Property>
<!--                 <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="HAZARDLARGE" />
                </Property>	 -->	
<!--                 <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="ENERGY" />
                </Property> -->
<!--                 <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="MIXER_HEAL" />
                </Property>	 -->	
                <Property value="GcPainAction.xml">
                  <Property name="Damage" value="JUSTPUSH" />
                  <Property name="Radius" value="7" />
                  <Property name="RadiusBasedDamage" value="False" />
                  <Property name="AffectsPlayer" value="False" />
                  <Property name="RetriggerTime" value="0" />
                </Property>
                <Property value="GcPainAction.xml">
                  <Property name="Damage" value="MPSHIPROCKET" />
                  <Property name="Radius" value="7" />
                  <Property name="RadiusBasedDamage" value="True" />
                  <Property name="AffectsPlayer" value="False" />
                  <Property name="RetriggerTime" value="0" />
                </Property>
]] .. EXTRA_COMPONENT_2 .. [[
<!--                 <Property value="GcHazardAction.xml">
                  <Property name="Hazard" value="GcHazardModifiers.xml">
                    <Property name="HazardModifier" value="4" />
                  </Property>
                  <Property name="Strength" value="500" />
                  <Property name="Radius" value="15" />
                  <Property name="RadiusBasedStrength" value="False" />
                </Property> -->
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="LOOP_CHAIN_2" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Scene" />
                </Property>			
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="LOOP_CHAIN_2" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0.25" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="LOOP_CHAIN_1" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Scene" />
                </Property>			
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="DEACTIVATE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="EmptyNode.xml" />
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="INACTIVE" />
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
      <Property name="ResetShotTimeOnStateChange" value="True" />
      <Property name="LinkStateToBaseGrid" value="False" />
    </Property>
]]

UNUSED_COMPONENTS = 
[[
    <Property value="TkRotationComponentData.xml">
      <Property name="Speed" value="0.05" />
      <Property name="Axis" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="1" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
    </Property>	
    <Property value="TkNetReplicatedEntityComponentData.xml">
      <Property name="ReplicaComponentMask" />
      <Property name="ReplicationRange" value="System" />
      <Property name="SpawnType" value="Basic" />
    </Property>	
    <Property value="GcNetworkInterpolationComponentData.xml">
      <Property name="SynchroniseScale" value="Once" />
      <Property name="SupportTeleportation" value="False" />
    </Property>
	<Property value="GcColouriseComponentData.xml">
      <Property name="PrimaryColour" value="Colour.xml">
        <Property name="R" value="0.0" />
        <Property name="G" value="1.0" />
        <Property name="B" value="0.0" />
        <Property name="A" value="0" />
      </Property>
      <Property name="SecondaryColour" value="Colour.xml">
        <Property name="R" value="0.0" />
        <Property name="G" value="1.0" />
        <Property name="B" value="0.0" />
        <Property name="A" value="0" />
      </Property>
    </Property>
    <Property value="GcCreatureAttractorComponentData.xml">
      <Property name="Universal" value="True" />
      <Property name="Static" value="False" />
      <Property name="ArrivalDist" value="13" />
      <Property name="AttractorType" value="Food" />
    </Property>
]]

if ACTION_LOOP_HEALTH_AND_SHIELD_REFILL then
	ACTION_COMPONENT = SHIELD_ACTION_EFFECT_COMPONENT_2
else
	ACTION_COMPONENT = SHIELD_ACTION_EFFECT_COMPONENT_1
end

SHIELD_ENTITY =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (2.0.9)-->
<Data template="TkAttachmentData">
  <Property name="Components">
    <Property value="TkPhysicsComponentData.xml">
      <Property name="Data" value="TkPhysicsData.xml">
        <Property name="Mass" value="0" />
        <Property name="Friction" value="0.5" />
        <Property name="RollingFriction" value="0.2" />
        <Property name="AngularDamping" value="0.2" />
        <Property name="LinearDamping" value="0.1" />
        <Property name="Gravity" value="20" />
      </Property>
      <Property name="VolumeTriggerType" value="TkVolumeTriggerType.xml">
        <Property name="VolumeTriggerType" value="HazardProtection" />
      </Property>
      <Property name="SurfaceProperties" value="None" />
      <Property name="TriggerVolume" value="True" />
      <Property name="Climbable" value="False" />
      <Property name="IgnoreModelOwner" value="False" />
      <Property name="NoVehicleCollide" value="False" />
      <Property name="NoPlayerCollide" value="False" />
      <Property name="CameraInvisible" value="False" />
      <Property name="InvisibleForInteraction" value="False" />
      <Property name="AllowTeleporter" value="True" />
      <Property name="BlockTeleporter" value="False" />
    </Property>
    <Property value="GcShootableComponentData.xml">
      <Property name="Health" value="10000" />
      <Property name="AutoAimTarget" value="True" />
      <Property name="PlayerOnly" value="False" />
      <Property name="ImpactShake" value="True" />
      <Property name="ImpactShakeEffect" value="SHOOTABLESHAKE" />
      <Property name="ForceImpactType" value="GcProjectileImpactType.xml">
        <Property name="Impact" value="Shield" />
      </Property>
      <Property name="IncreaseWanted" value="0" />
      <Property name="IncreaseWantedThresholdTime" value="0" />
      <Property name="FiendCrimeType" value="GcFiendCrime.xml">
        <Property name="FiendCrime" value="None" />
      </Property>
      <Property name="FiendCrimeModifier" value="1" />
      <Property name="RepairTime" value="8" />
      <Property name="MinDamage" value="0" />
      <Property name="StaticUntilShot" value="False" />
      <Property name="IgnoreHitPush" value="True" />
      <Property name="HitEffectEnabled" value="True" />
      <Property name="HitEffectEntireModel" value="True" />
      <Property name="IsArmoured" value="False" />
      <Property name="IgnoreTerrainEditKill" value="True" />
      <Property name="NameOverride" value="" />
      <Property name="RequiredTech" value="" />
      <Property name="DamageMultiplier" value="OBJECT" />
    </Property>
    <Property value="GcDestructableComponentData.xml">
      <Property name="Explosion" value="EXPLOSION" />
      <Property name="ExplosionScale" value="1" />
      <Property name="ExplosionScaleToBounds" value="False" />
      <Property name="VehicleDestroyEffect" value="VEHICLECRASH" />
      <Property name="TriggerAction" value="DEACTIVATE" />
      <Property name="IncreaseWanted" value="0" />
      <Property name="IncreaseFiendWanted" value="False" />
      <Property name="NotifyEncounter" value="False" />
      <Property name="LootReward" value="" />
      <Property name="LootRewardAmountMin" value="0" />
      <Property name="LootRewardAmountMax" value="0" />
      <Property name="GivesSubstances" />
      <Property name="StatsToTrack" value="GcStatsEnum.xml">
        <Property name="Stat" value="None" />
      </Property>
      <Property name="GivesReward" value="" />
      <Property name="HardModeSubstanceMultiplier" value="1" />
      <Property name="RewardOverrideTable" />
      <Property name="ActivateLocatorsFromRarity" value="False" />
      <Property name="RarityLocators">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
      </Property>
      <Property name="UseSystemColorsForTexture" value="False" />
      <Property name="RemoveModel" value="False" />
      <Property name="HideModel" value="False" />
      <Property name="DestroyedModel" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
      <Property name="DestroyedModelUsesScale" value="True" />
      <Property name="DestroyForce" value="1" />
      <Property name="DestroyForceRadius" value="3" />
      <Property name="DestroyEffect" value="" />
      <Property name="DestroyEffectPoint" value="SFX" />
      <Property name="DestroyEffectTime" value="2" />
      <Property name="DestroyEffectMatrices" value="False" />
      <Property name="ShowInteract" value="True" />
      <Property name="ShowInteractRange" value="20" />
      <Property name="GrenadeSingleHit" value="True" />
    </Property>
]] .. ACTION_COMPONENT .. [[
]] .. EXTRA_COMPONENT_1 .. [[
  </Property>
  <Property name="LodDistances">
    <Property value="0" />
    <Property value="50" />
    <Property value="80" />
    <Property value="150" />
    <Property value="500" />
  </Property>
</Data>	
]]

SHIELD_COLLISION_REF = ""
if ENABLE_SHIELD_COLLSION then SHIELD_COLLISION_REF = SHIELD_COLLISION end

SHIELD_TOGGLE =
[[
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="ON" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="2" />
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
          <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\SHIELDON.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="OFF" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData.xml">
        <Property name="TransX" value="0" />
        <Property name="TransY" value="2" />
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
          <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\SHIELDOFF.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
]] .. SHIELD_COLLISION_REF .. [[	  
      </Property>
    </Property>	
]]

SHIELD_TOGGLE_ADD = ""
if ENABLE_ABOVE_HEAD_TOGGLE then SHIELD_TOGGLE_ADD = SHIELD_TOGGLE end

SHIELD_SCENE =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (2.0.9)-->
<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD" />
  <Property name="NameHash" value="1953519281" />
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
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD.GEOMETRY.MBIN" />
    </Property>
    <Property value="TkSceneNodeAttributeData.xml">
      <Property name="Name" value="NUMLODS" />
      <Property name="AltID" value="" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
   <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="BubbleShield" />
      <Property name="NameHash" value="2175858882" />
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
          <Property name="Value" value="5195" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="27072" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="AltID" value="" />
          <Property name="Value" value="5195" />
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
          <Property name="Value" value="0" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="AltID" value="" />
          <Property name="Value" value="48" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-6.468001" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-6.467999" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMINZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="-6.468003" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXX" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.468001" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXY" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.467996" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="AltID" value="" />
          <Property name="Value" value="6.468003" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="HASH" />
          <Property name="AltID" value="" />
          <Property name="Value" value="11983898666187494753" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD\SHIELD_MAT.MATERIAL.MBIN" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="MESHLINK" />
          <Property name="AltID" value="" />
          <Property name="Value" value="BubbleShieldShape" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="AltID" value="" />
          <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\SHIELD.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="BubbleShield1" />
          <Property name="NameHash" value="1077413731" />
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
              <Property name="Value" value="27072" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5196" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="7793" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="13536" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="2597" />
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
              <Property name="Value" value="48" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="96" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.468001" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.467999" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.468003" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.468001" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.467996" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.468003" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="5167344949006180630" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD\SCANLINES_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="BubbleShield1Shape" />
            </Property>
			<Property value="TkSceneNodeAttributeData.xml">
			  <Property name="Name" value="ATTACHMENT" />
			  <Property name="AltID" value="" />
			  <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\SHIELD.ENTITY.MBIN" />
			</Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="BubbleShield2" />
          <Property name="NameHash" value="1322558620" />
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
              <Property name="Value" value="42888" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="AltID" value="" />
              <Property name="Value" value="8233" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="AltID" value="" />
              <Property name="Value" value="9530" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6768" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1297" />
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
              <Property name="Value" value="144" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="AltID" value="" />
              <Property name="Value" value="176" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.468001" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMINZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="-6.468003" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXX" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.468001" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.467996" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6.468003" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="HASH" />
              <Property name="AltID" value="" />
              <Property name="Value" value="6390201444109758130" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD\GRAD_MAT.MATERIAL.MBIN" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MESHLINK" />
              <Property name="AltID" value="" />
              <Property name="Value" value="BubbleShield2Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="pointLight1" />
          <Property name="NameHash" value="4219409884" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="5" />
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
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="110000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.717800" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="MATERIAL" />
              <Property name="AltID" value="" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property value="TkSceneNodeData.xml">
          <Property name="Name" value="pointLight2" />
          <Property name="NameHash" value="230242896" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData.xml">
            <Property name="TransX" value="0" />
            <Property name="TransY" value="0.663226" />
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
              <Property name="Name" value="FOV" />
              <Property name="AltID" value="" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="FALLOFF" />
              <Property name="AltID" value="" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="INTENSITY" />
              <Property name="AltID" value="" />
              <Property name="Value" value="40000.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_R" />
              <Property name="AltID" value="" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_G" />
              <Property name="AltID" value="" />
              <Property name="Value" value="0.238700" />
            </Property>
            <Property value="TkSceneNodeAttributeData.xml">
              <Property name="Name" value="COL_B" />
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
    </Property>
]] .. SHIELD_COLLISION_REF .. [[
]] .. SHIELD_TOGGLE_ADD .. [[
  </Property>
</Data>	
]]

REQUIRED_TECH = ""
if REQUIRE_TECH_AND_FUEL then REQUIRED_TECH = "SHIELDBOOST3" end

SHIELD_OFF_ENTITY =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (2.0.9)-->
<Data template="TkAttachmentData">
  <Property name="Components">
]] .. TOGGLER_PHYSICS_COMPONENT .. [[
    <Property value="GcSimpleInteractionComponentData.xml">
      <Property name="SimpleInteractionType" value="Interact" />
      <Property name="InteractDistance" value="0" />
      <Property name="Id" value="" />
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Common" />
      </Property>
      <Property name="Size" value="GcSizeIndicator.xml">
        <Property name="SizeIndicator" value="Small" />
      </Property>
      <Property name="TriggerAction" value="DEACTIVATE" />
      <Property name="TriggerActionToggle" value="" />
      <Property name="BroadcastTriggerAction" value="True" />
      <Property name="Delay" value="0" />
      <Property name="HideContents" value="True" />
      <Property name="InteractIsCrime" value="False" />
      <Property name="InteractFiendCrimeType" value="GcFiendCrime.xml">
        <Property name="FiendCrime" value="None" />
      </Property>
      <Property name="InteractCrimeLevel" value="0" />
      <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="" />
        <Property name="AltIds" />
        <Property name="Cost" value="0" />
        <Property name="Repeat" value="False" />
        <Property name="RequiredTech" value="" />
      </Property>
      <Property name="StatToTrack" value="GcStatsEnum.xml">
        <Property name="Stat" value="None" />
      </Property>
      <Property name="StartsBuried" value="False" />
      <Property name="MustBeVisibleToInteract" value="False" />
      <Property name="NeedsStorm" value="False" />
      <Property name="Name" value="" />
      <Property name="VRInteractMessage" value="" />
      <Property name="TerminalMessage" value="" />
      <Property name="ScanType" value="BINOC_INTERACTABLE" />
      <Property name="ScanData" value="" />
      <Property name="ScanIcon" value="GcDiscoveryTypes.xml">
        <Property name="DiscoveryType" value="Unknown" />
      </Property>
      <Property name="ActivateLocatorsFromRarity" value="False" />
      <Property name="RarityLocators">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
      </Property>
      <Property name="BaseBuildingTriggerActions" />
      <Property name="RewardOverrideTable" />
      <Property name="UsePersonalPersistentBuffer" value="False" />
      <Property name="ReseedOnRewardSuccess" value="False" />
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
]]

CRIMELEVEL = "0"
CRIME = "False"
if SHIELD_SENTINEL_ATTACK_TEST then 
	CRIME = "True"
	CRIMELEVEL = "3"
end

SHIELD_ON_ENTITY =
[[
<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (2.0.9)-->
<Data template="TkAttachmentData">
  <Property name="Components">
]] .. TOGGLER_PHYSICS_COMPONENT .. [[
    <Property value="GcSimpleInteractionComponentData.xml">
      <Property name="SimpleInteractionType" value="Interact" />
      <Property name="InteractDistance" value="0" />
      <Property name="Id" value="" />
      <Property name="Rarity" value="GcRarity.xml">
        <Property name="Rarity" value="Common" />
      </Property>
      <Property name="Size" value="GcSizeIndicator.xml">
        <Property name="SizeIndicator" value="Small" />
      </Property>
      <Property name="TriggerAction" value="ACTIVATE" />
      <Property name="TriggerActionToggle" value="" />
      <Property name="BroadcastTriggerAction" value="True" />
      <Property name="Delay" value="0" />
      <Property name="HideContents" value="True" />
      <Property name="InteractIsCrime" value="]] .. CRIME .. [[" />
      <Property name="InteractFiendCrimeType" value="GcFiendCrime.xml">
        <Property name="FiendCrime" value="None" />
      </Property>
      <Property name="InteractCrimeLevel" value="]] .. CRIMELEVEL .. [[" />
      <Property name="ActivationCost" value="GcInteractionActivationCost.xml">
        <Property name="SubstanceId" value="" />
        <Property name="AltIds" />
        <Property name="Cost" value="0" />
        <Property name="Repeat" value="False" />
        <Property name="RequiredTech" value="]] .. REQUIRED_TECH .. [[" />
      </Property>
      <Property name="StatToTrack" value="GcStatsEnum.xml">
        <Property name="Stat" value="None" />
      </Property>
      <Property name="StartsBuried" value="False" />
      <Property name="MustBeVisibleToInteract" value="False" />
      <Property name="NeedsStorm" value="False" />
      <Property name="Name" value="" />
      <Property name="VRInteractMessage" value="" />
      <Property name="TerminalMessage" value="" />
      <Property name="ScanType" value="BINOC_INTERACTABLE" />
      <Property name="ScanData" value="" />
      <Property name="ScanIcon" value="GcDiscoveryTypes.xml">
        <Property name="DiscoveryType" value="Unknown" />
      </Property>
      <Property name="ActivateLocatorsFromRarity" value="False" />
      <Property name="RarityLocators">
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
        <Property value="NMSString0x10.xml">
          <Property name="Value" value="" />
        </Property>
      </Property>
      <Property name="BaseBuildingTriggerActions" />
      <Property name="RewardOverrideTable" />
      <Property name="UsePersonalPersistentBuffer" value="False" />
      <Property name="ReseedOnRewardSuccess" value="False" />
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
]]

ADD_FILES_TABLE =
{
	{
		["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\SHIELD.SCENE.EXML]],
		["FILE_CONTENT"] 	 = SHIELD_SCENE
	},
	{
		["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\SHIELD.ENTITY.EXML]],
		["FILE_CONTENT"] 	 = SHIELD_ENTITY
	},
	{
		["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\SHIELDON.ENTITY.EXML]],
		["FILE_CONTENT"] 	 = SHIELD_ON_ENTITY
	},
	{
		["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\SHIELD\SHIELDOFF.ENTITY.EXML]],
		["FILE_CONTENT"] 	 = SHIELD_OFF_ENTITY
	}
}

MOD_FILENAME_DEFAULT = "PersonalShieldGenerator.pak"
MOD_FILENAME = "PersonalShieldGenerator"
if ENABLE_ABOVE_HEAD_TOGGLE then MOD_FILENAME = MOD_FILENAME .. "-VR" end
--CREATURE_DISTRACTOR_EXTRA_EFFECT then MOD_FILENAME = MOD_FILENAME_BASE .. "-CreatureDistractor.pak" end
if CREATURE_ATTRACTOR_EXTRA_EFFECT then  MOD_FILENAME = MOD_FILENAME .. "-CreatureAttractorExtraEffect" end
if ACTION_LOOP_HEALTH_AND_SHIELD_REFILL then  MOD_FILENAME = MOD_FILENAME .. "-L" end 
MOD_FILENAME = MOD_FILENAME .. ".pak"

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= MOD_FILENAME,
["MOD_AUTHOR"]				= "Mjjstral",
["MOD_DESCRIPTION"]			= "Protection shield bubble against damages, hazards and extreme weathers toggleable in the quick action menu (gestures tab)",
["NMS_VERSION"]				= "2.0+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.4C482859.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = { "Name", "SUB9Backpack_1"},
							["LINE_OFFSET"] 		= "+128",
							["ADD"] 				= PLAYER_CHARACTER_REF
						}
					}
				}
			}
		},	
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{  
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Anims"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= ANIM_ENTRY
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"}, 
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= ACTION_TRIGGER_COMPONENT
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\EMOTEMENU.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Emotes"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= QUICK_ACTION_BUTTON
						}
					}
				}
			}
		}
	},
["ADD_FILES"] = ADD_FILES_TABLE
}

MESSAGE_LOOP_HIDE_FIX =
{
	["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
	["MBIN_CHANGE_TABLE"] 	= 
	{ 
		{
			["MBIN_FILE_SOURCE"] 	= { "GCUIGLOBALS.GLOBAL.MBIN" },
			["EXML_CHANGE_TABLE"] 	= 
			{
				{
					["REPLACE_TYPE"] 		= "ALL",
					["VALUE_CHANGE_TABLE"] 	= 
					{
						{"MessageTimeQuick","0"},	
						--{"OSDMessageQueueMin", "0"},
						--{"OSDMessageQueueMax", "0"},								
						----{"OSDMessageQueueSpeedMultiplier", "60"},		
					}
				}
			}
		}
	}
}

if ACTION_LOOP_HEALTH_AND_SHIELD_REFILL then table.insert(NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"], MESSAGE_LOOP_HIDE_FIX) end
