NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BackpackToggle.pak",
["MOD_VERSION"]				= "1.1",
["MOD_AUTHOR"]				= "Mjjstral",
["MOD_DESCRIPTION"]			= "Turn on and off your backpack, toggleable in the quick action menu (gestures tab)",
["NMS_VERSION"]				= "2.0+",
["MODIFICATIONS"] 			= 
	{	
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
          <Property name="Anim" value="TOGGLE_BACKPACK" />
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
                <Property value="GcPlayAnimAction.xml">
                  <Property name="Anim" value="TOGGLE_BACKPACK" />
                </Property>
              </Property>
            </Property>		  
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="TOGGLE_BACKPACK" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>		  
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="Backpack" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />				  
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="_Chest_Vanilla" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="_Chest_Astro" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="_Chest_Gek" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="_Chest_Fourth" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="True" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Toggle" />
                  <Property name="Name" value="_Chest_Vykeen" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="True" />
                  <Property name="IncludeChildPhysics" value="True" />
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
      <Property name="Title" value="Toggle Backpack" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="TOGGLE_BACKPACK" />
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
      <Property name="AnimationName" value="TOGGLE_BACKPACK" />
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
		}
	}
}