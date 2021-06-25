NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "TorchToggle.pak",
["MOD_VERSION"]				= "1.0",
["MOD_AUTHOR"]				= "Mjjstral and Lo2k",
["MOD_DESCRIPTION"]			= "Turn on and off your torch, toggleable in the quick action menu (gestures tab)",
["NMS_VERSION"]				= "2.2+",
["MODIFICATIONS"] 			= 
	{	
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TorchStrength",	"0"}
							}
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
							["ADD"] 				= 
[[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="TORCH_TOGGLE" />
          <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN" />
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
]]
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"}, 
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= 
[[
    <Property value="TkReferenceComponentData.xml">
      <Property name="Reference" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/TORCHLIGHT.SCENE.MBIN" />
      <Property name="LSystem" value="" />
    </Property>
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="TORCH_TOGGLE" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="TORCH_TOGGLE" />
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
							["ADD"] 				= 
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Torch" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="TORCH_TOGGLE" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/TORCH.DDS" />
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
      <Property name="Title" value="Torch" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="TORCH_TOGGLE" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/TORCH.DDS" />
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
						}
					}
				}
			}
		}
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\ANIMS\EMOTES\NULL.ANIM.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAnimMetadata">
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="NodeData" /> 
  <Property name="AnimFrameData">
    <Property value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
	<Property name="Translations" /> 
	<Property name="Scales" />
    </Property>  
  </Property>	
  <Property name="StillFrameData" value="TkAnimNodeFrameData.xml">
    <Property name="Rotations" />  
	<Property name="Translations" /> 
	<Property name="Scales" />	  
 </Property>
</Data>	
]]			
		},
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\TORCHLIGHT.SCENE.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\TORCHLIGHT" />
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
	  <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\TORCHLIGHT.ENTITY.MBIN" />
	</Property>
  </Property>
  <Property name="Children">
	<Property value="TkSceneNodeData.xml">
	  <Property name="Name" value="Spotlight" />
	  <Property name="NameHash" value="0" />
	  <Property name="Type" value="LIGHT" />
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
		  <Property name="Name" value="FOV" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="100" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="FALLOFF" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="linear" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="INTENSITY" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="265000" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="COL_R" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="1.0" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="COL_G" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="0.64" />
		</Property>
		<Property value="TkSceneNodeAttributeData.xml">
		  <Property name="Name" value="COL_B" />
		  <Property name="AltID" value="" />
		  <Property name="Value" value="0.36" />
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
]]			
		},
		{
			["FILE_DESTINATION"] = [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\TORCHLIGHT.ENTITY.EXML]],
			["FILE_CONTENT"] 	 = 
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="TkAttachmentData">
  <Property name="Components">
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
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ACTION" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
                </Property>			
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="ACTION" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="Spotlight" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
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
          <Property name="StateID" value="TORCH_TOGGLE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
              </Property>			  
              <Property name="Action">
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="ACTION" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Local" />
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
    <Property value="TkPhysicsComponentData.xml">
      <Property name="Data" value="TkPhysicsData.xml">
        <Property name="Mass" value="10" />
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
      <Property name="NoVehicleCollide" value="False" />
      <Property name="NoPlayerCollide" value="False" />
      <Property name="CameraInvisible" value="False" />
      <Property name="InvisibleForInteraction" value="False" />
      <Property name="AllowTeleporter" value="False" />
      <Property name="BlockTeleporter" value="False" />
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
		}
	}
}