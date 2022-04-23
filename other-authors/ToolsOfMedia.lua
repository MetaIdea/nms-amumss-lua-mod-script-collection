-- Don't forget to manually change the version of the mod in MOD_FILENAME as well as any other changes you want to do to the script


TEXT_TO_ADD =
[[
     <Property name="Anim" value="0H_DEATH_LP_01" />
      <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/DEATH/0H_DEATH_FALL_BACK.ANIM.MBIN" />
      <Property name="AnimType" value="Loop" />
      <Property name="FrameStart" value="220" />
      <Property name="FrameEnd" value="220" />
      <Property name="StartNode" value="" />
      <Property name="ExtraStartNodes" />
      <Property name="Priority" value="0" />
      <Property name="OffsetMin" value="0" />
      <Property name="OffsetMax" value="0" />
      <Property name="Delay" value="0" />
      <Property name="Speed" value="1" />
      <Property name="ActionStartFrame" value="0" />
      <Property name="ActionFrame" value="-1" />
      <Property name="CreatureSize" value="AllSizes" />
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
      <Property name="Anim" value="0H_DEATH_BACK_LP" />
      <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/DEATH/0H_DEATH_FALL_BACK.ANIM.MBIN" />
      <Property name="AnimType" value="Loop" />
      <Property name="FrameStart" value="132" />
      <Property name="FrameEnd" value="133" />
      <Property name="StartNode" value="" />
      <Property name="ExtraStartNodes" />
      <Property name="Priority" value="0" />
      <Property name="OffsetMin" value="0" />
      <Property name="OffsetMax" value="0" />
      <Property name="Delay" value="0" />
      <Property name="Speed" value="1" />
      <Property name="ActionStartFrame" value="0" />
      <Property name="ActionFrame" value="-1" />
      <Property name="CreatureSize" value="AllSizes" />
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
      <Property name="Anim" value="0H_DEATH_FWD_LP_" />
      <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/DEATH/0H_DEATH_FALL_BACK.ANIM.MBIN" />
      <Property name="AnimType" value="Loop" />
      <Property name="FrameStart" value="161" />
      <Property name="FrameEnd" value="162" />
      <Property name="StartNode" value="" />
      <Property name="ExtraStartNodes" />
      <Property name="Priority" value="0" />
      <Property name="OffsetMin" value="0" />
      <Property name="OffsetMax" value="0" />
      <Property name="Delay" value="0" />
      <Property name="Speed" value="1" />
      <Property name="ActionStartFrame" value="0" />
      <Property name="ActionFrame" value="-1" />
      <Property name="CreatureSize" value="AllSizes" />
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
      <Property name="Anim" value="0H_INTER_SD_LP_" />
      <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/INTERACTIONS/GENERAL/0H_INTER_SHUTDOWN_LOOP.ANIM.MBIN" />
      <Property name="AnimType" value="Loop" />
      <Property name="FrameStart" value="10" />
      <Property name="FrameEnd" value="11" />
      <Property name="StartNode" value="" />
      <Property name="ExtraStartNodes" />
      <Property name="Priority" value="0" />
      <Property name="OffsetMin" value="0" />
      <Property name="OffsetMax" value="0" />
      <Property name="Delay" value="0" />
      <Property name="Speed" value="1" />
      <Property name="ActionStartFrame" value="0" />
      <Property name="ActionFrame" value="-1" />
      <Property name="CreatureSize" value="AllSizes" />
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
]]
TEXT_TO_ADD_2 =
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Fake Death" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_DEATH" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/WIKI/COMBATHEADER.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="0H_DEATH_LP_01" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Death Forward" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_DEATH_FALL_F" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/WIKI/COMBATHEADER.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="0H_DEATH_FWD_LP_" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Death Back" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_DEATH_FALL_B" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/WIKI/COMBATHEADER.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="0H_DEATH_BACK_LP" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="PANIC!" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_FALL_PANIC" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/DECAL.VISUAL5.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="PANIC!" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_FALL_PANIC" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/DECAL.VISUAL5.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 1" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_01" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 1" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_01" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 2" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_02" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 2" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_02" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 3" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_03" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 3" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_03" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 4" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_04" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 4" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_04" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 5" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_05" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 5" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_05" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 6" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_06" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 6" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_06" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 7" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_07" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 7" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_07" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 8" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_08" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 8" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_08" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 9" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_09" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Happy 9" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_HAPPY_09" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Angry 1" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_ANGRY_01" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/NEGATIVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Angry 1" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_ANGRY_01" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/NEGATIVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Angry 2" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_ANGRY_02" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/NEGATIVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Angry 2" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_ANGRY_02" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/NEGATIVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Angry 3" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_ANGRY_03" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/NEGATIVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Angry 3" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_ANGRY_03" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/NEGATIVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Angry 4" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_ANGRY_04" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/NEGATIVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Angry 4" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_ANGRY_04" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/NEGATIVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Angry 5" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_ANGRY_05" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/NEGATIVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Angry 5" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_ANGRY_05" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/NEGATIVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 1" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_01" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 1" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_01" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 2" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_02" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 2" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_02" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 3" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_03" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 3" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_03" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 4" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_04" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 4" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_04" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 5" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_05" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 5" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_05" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 6" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_06" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 6" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_06" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 7" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_07" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 7" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_07" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 8" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_08" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Greet 9" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_GREET_09" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="React 1" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_INT_RT_03" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="React 2" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_INT_RT_04" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="React 3" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_INT_RT_01_LP" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="React 4" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_INT_RT_02_LP" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Ships Arrive" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_SHIP_ARRIVE" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Ships Leave" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_SHIP_LEAVE" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Chatter 1" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_CHATTER_01" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Chatter 2" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_CHATTER_02" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Chatter 3" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_CHATTER_03" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Chatter 4" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_CHATTER_04" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Chatter 5" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_CHATTER_05" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Chatter 6" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_CHATTER_06" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Chatter 7" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_CHATTER_07" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Chatter 8" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_CHATTER_08" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Chatter 9" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_CHATTER_09" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Chatter 10" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_CHATTER_10" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Chatter 11" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_CHATTER_11" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Chatter 12" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_CHATTER_12" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Chatter 13" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_CHATTER_13" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Chatter 14" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_CHATTER_14" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Listen 1" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_LISTEN_01" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Listen 2" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_LISTEN_02" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Listen 3" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_LISTEN_03" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Listen 4" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_LISTEN_04" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Listen 5" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_LISTEN_05" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Listen 6" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_LISTEN_06" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Listen 7" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_LISTEN_07" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Listen 8" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_LISTEN_08" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Listen 9" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_LISTEN_09" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Listen 10" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_LISTEN_10" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Listen 11" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_LISTEN_11" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Listen 12" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_LISTEN_12" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Neutral 1" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_NEUTRAL_01" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Neutral 2" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_NEUTRAL_02" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Neutral 3" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_NEUTRAL_03" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Neutral 4" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_NEUTRAL_04" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Sniff" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_INT_SNIFF_01" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Korvax Shutdown" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_IN_SHTDWN_IN" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="0H_INTER_SD_LP_" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Korvax Startup" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_IN_SHTDWN_OT" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Slide" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_SLIDE_F" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WONDER.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Land Float" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_SWIM_IDLE" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WONDER.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="0H_SWIM_IDLE" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Land Swim" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_SWIM_F" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WONDER.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Walk" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_WALK_F" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WONDER.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Run" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_JOG_F" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WONDER.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Interact With Console" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_INT_CNSL_IN" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/POINT.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="0H_INT_CNSL_LP" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="Gather" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="0H_INT_GATH_IN" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/POINT.DDS" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="0H_INT_GATH_LP" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
	]]
TEXT_TO_REPLACE =
[[
    <Property value="GcCustomisationPreset.xml">
      <Property name="Name" value="ASTRO_DEFAULT" />
      <Property name="Data" value="GcCharacterCustomisationData.xml">
        <Property name="DescriptorGroups">
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRONAUT_BASE" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="TORSO_ASTRO" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ARMOUR_FOURTH" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="GLOVES_VANILLA" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="LEGS_ASTRO" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="BOOTS_VANILLA" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRO_HEAD_9" />
          </Property>
        </Property>
        <Property name="Colours">
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.233" />
              <Property name="G" value="0.291" />
              <Property name="B" value="0.403" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.456" />
              <Property name="G" value="0.79" />
              <Property name="B" value="0.73" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.233" />
              <Property name="G" value="0.291" />
              <Property name="B" value="0.403" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0" />
              <Property name="G" value="0" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.233" />
              <Property name="G" value="0.291" />
              <Property name="B" value="0.403" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.233" />
              <Property name="G" value="0.291" />
              <Property name="B" value="0.403" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.233" />
              <Property name="G" value="0.291" />
              <Property name="B" value="0.403" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0" />
              <Property name="G" value="0" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0" />
              <Property name="G" value="0" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.233" />
              <Property name="G" value="0.291" />
              <Property name="B" value="0.403" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.233" />
              <Property name="G" value="0.291" />
              <Property name="B" value="0.403" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.233" />
              <Property name="G" value="0.291" />
              <Property name="B" value="0.403" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
        </Property>
        <Property name="TextureOptions">
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="GLOVES_VANILLA" />
            <Property name="TextureOptionName" value="1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="ARMOUR_FOURTH" />
            <Property name="TextureOptionName" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BOOTS_VANILLA" />
            <Property name="TextureOptionName" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="TORSO_ASTRO" />
            <Property name="TextureOptionName" value="TORSO_2" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="LEGS_ASTRO" />
            <Property name="TextureOptionName" value="LEGS_2" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="HEAD_ASTRO" />
            <Property name="TextureOptionName" value="HELMET_0" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BACKPACK" />
            <Property name="TextureOptionName" value="BACKPACK_1" />
          </Property>
        </Property>
        <Property name="BoneScales">
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="GEKBODY" />
            <Property name="Scale" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="HEADPOSE" />
            <Property name="Scale" value="0.3" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="BODYSHAPE" />
            <Property name="Scale" value="0.5" />
          </Property>
        </Property>
        <Property name="Scale" value="1" />
      </Property>
    </Property>
    <Property value="GcCustomisationPreset.xml">
      <Property name="Name" value="ASTRO_0" />
      <Property name="Data" value="GcCharacterCustomisationData.xml">
        <Property name="DescriptorGroups">
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRONAUT_BASE" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRO_HEAD_0" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="TORSO_VANILLA" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ARMOUR_ASTRO" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="GLOVES_ASTRO" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="LEGS_VANILLA" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="BOOTS_VANILLA" />
          </Property>
        </Property>
        <Property name="Colours">
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.456" />
              <Property name="G" value="0.79" />
              <Property name="B" value="0.73" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0" />
              <Property name="G" value="0" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.297" />
              <Property name="G" value="0.297" />
              <Property name="B" value="0.297" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.233" />
              <Property name="G" value="0.291" />
              <Property name="B" value="0.403" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
        </Property>
        <Property name="TextureOptions">
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="ARMOUR_ASTRO" />
            <Property name="TextureOptionName" value="CHESTARMOUR_2" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BOOTS_VANILLA" />
            <Property name="TextureOptionName" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="HEAD_ASTRO" />
            <Property name="TextureOptionName" value="HELMET_0" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BACKPACK" />
            <Property name="TextureOptionName" value="BACKPACK_2" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="LEGS_VANILLA" />
            <Property name="TextureOptionName" value="1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="GLOVES_ASTRO" />
            <Property name="TextureOptionName" value="GLOVES_2" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="TORSO_VANILLA" />
            <Property name="TextureOptionName" value="0" />
          </Property>
        </Property>
        <Property name="BoneScales">
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="GEKBODY" />
            <Property name="Scale" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="HEADPOSE" />
            <Property name="Scale" value="0.3" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="BODYSHAPE" />
            <Property name="Scale" value="0" />
          </Property>
        </Property>
        <Property name="Scale" value="1" />
      </Property>
    </Property>
    <Property value="GcCustomisationPreset.xml">
      <Property name="Name" value="ASTRO_1" />
      <Property name="Data" value="GcCharacterCustomisationData.xml">
        <Property name="DescriptorGroups">
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRONAUT_BASE" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRO_HEAD_2" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="GLOVES_VANILLA" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="LEGS_VANILLA" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="TORSO_GEK" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ARMOUR_ASTRO" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="BOOTS_GEK" />
          </Property>
        </Property>
        <Property name="Colours">
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.456" />
              <Property name="G" value="0.79" />
              <Property name="B" value="0.73" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.753" />
              <Property name="G" value="0.616" />
              <Property name="B" value="0.441" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.753" />
              <Property name="G" value="0.616" />
              <Property name="B" value="0.441" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.233" />
              <Property name="G" value="0.291" />
              <Property name="B" value="0.403" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.54" />
              <Property name="G" value="0.368" />
              <Property name="B" value="0.279" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.54" />
              <Property name="G" value="0.368" />
              <Property name="B" value="0.279" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.54" />
              <Property name="G" value="0.368" />
              <Property name="B" value="0.279" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.753" />
              <Property name="G" value="0.616" />
              <Property name="B" value="0.441" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.667" />
              <Property name="G" value="0.667" />
              <Property name="B" value="0.667" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.297" />
              <Property name="G" value="0.297" />
              <Property name="B" value="0.297" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.753" />
              <Property name="G" value="0.616" />
              <Property name="B" value="0.441" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.753" />
              <Property name="G" value="0.616" />
              <Property name="B" value="0.441" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0" />
              <Property name="G" value="0" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.753" />
              <Property name="G" value="0.616" />
              <Property name="B" value="0.441" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.87" />
              <Property name="G" value="0.404" />
              <Property name="B" value="0.404" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0" />
              <Property name="G" value="0" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.753" />
              <Property name="G" value="0.616" />
              <Property name="B" value="0.441" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.233" />
              <Property name="G" value="0.291" />
              <Property name="B" value="0.403" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.54" />
              <Property name="G" value="0.368" />
              <Property name="B" value="0.279" />
              <Property name="A" value="1" />
            </Property>
          </Property>
        </Property>
        <Property name="TextureOptions">
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="GLOVES_VANILLA" />
            <Property name="TextureOptionName" value="1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="HEAD_ASTRO" />
            <Property name="TextureOptionName" value="HELMET_1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="LEGS_VANILLA" />
            <Property name="TextureOptionName" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="ARMOUR_ASTRO" />
            <Property name="TextureOptionName" value="CHESTARMOUR_2" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="TORSO_GEK" />
            <Property name="TextureOptionName" value="4" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BOOTS_GEK" />
            <Property name="TextureOptionName" value="1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BACKPACK" />
            <Property name="TextureOptionName" value="BACKPACK_3" />
          </Property>
        </Property>
        <Property name="BoneScales">
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="GEKBODY" />
            <Property name="Scale" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="HEADPOSE" />
            <Property name="Scale" value="0.3" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="BODYSHAPE" />
            <Property name="Scale" value="0.5" />
          </Property>
        </Property>
        <Property name="Scale" value="1" />
      </Property>
    </Property>
    <Property value="GcCustomisationPreset.xml">
      <Property name="Name" value="ASTRO_2" />
      <Property name="Data" value="GcCharacterCustomisationData.xml">
        <Property name="DescriptorGroups">
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRONAUT_BASE" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRO_HEAD_0" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="TORSO_GEK" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ARMOUR_ASTRO" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="LEGS_VANILLA" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="BOOTS_VANILLA" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="GLOVES_ASTRO" />
          </Property>
        </Property>
        <Property name="Colours">
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.236" />
              <Property name="G" value="0.566" />
              <Property name="B" value="0.87" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.236" />
              <Property name="G" value="0.566" />
              <Property name="B" value="0.87" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.236" />
              <Property name="G" value="0.566" />
              <Property name="B" value="0.87" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.236" />
              <Property name="G" value="0.566" />
              <Property name="B" value="0.87" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.236" />
              <Property name="G" value="0.566" />
              <Property name="B" value="0.87" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.236" />
              <Property name="G" value="0.566" />
              <Property name="B" value="0.87" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.236" />
              <Property name="G" value="0.566" />
              <Property name="B" value="0.87" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.236" />
              <Property name="G" value="0.566" />
              <Property name="B" value="0.87" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.236" />
              <Property name="G" value="0.566" />
              <Property name="B" value="0.87" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.54" />
              <Property name="G" value="0.368" />
              <Property name="B" value="0.279" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
        </Property>
        <Property name="TextureOptions">
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="HEAD_ASTRO" />
            <Property name="TextureOptionName" value="HELMET_4" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="ARMOUR_ASTRO" />
            <Property name="TextureOptionName" value="CHESTARMOUR_2" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BOOTS_VANILLA" />
            <Property name="TextureOptionName" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="TORSO_GEK" />
            <Property name="TextureOptionName" value="5" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="LEGS_VANILLA" />
            <Property name="TextureOptionName" value="1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BACKPACK" />
            <Property name="TextureOptionName" value="BACKPACK_2" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="GLOVES_ASTRO" />
            <Property name="TextureOptionName" value="GLOVES_2" />
          </Property>
        </Property>
        <Property name="BoneScales">
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="GEKBODY" />
            <Property name="Scale" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="HEADPOSE" />
            <Property name="Scale" value="0.3" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="BODYSHAPE" />
            <Property name="Scale" value="0.5" />
          </Property>
        </Property>
        <Property name="Scale" value="1" />
      </Property>
    </Property>
    <Property value="GcCustomisationPreset.xml">
      <Property name="Name" value="ASTRO_3" />
      <Property name="Data" value="GcCharacterCustomisationData.xml">
        <Property name="DescriptorGroups">
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRONAUT_BASE" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRO_HEAD_0" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="GLOVES_ASTRO" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="TORSO_ASTRO" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ARMOUR_ASTRO" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="BOOTS_VANILLA" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="LEGS_ASTRO" />
          </Property>
        </Property>
        <Property name="Colours">
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
        </Property>
        <Property name="TextureOptions">
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="ARMOUR_ASTRO" />
            <Property name="TextureOptionName" value="CHESTARMOUR_2" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="GLOVES_ASTRO" />
            <Property name="TextureOptionName" value="GLOVES_2" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BOOTS_VANILLA" />
            <Property name="TextureOptionName" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="TORSO_ASTRO" />
            <Property name="TextureOptionName" value="TORSO_4" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="HEAD_ASTRO" />
            <Property name="TextureOptionName" value="HELMET_4" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BACKPACK" />
            <Property name="TextureOptionName" value="BACKPACK_4" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="LEGS_ASTRO" />
            <Property name="TextureOptionName" value="LEGS_3" />
          </Property>
        </Property>
        <Property name="BoneScales">
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="GEKBODY" />
            <Property name="Scale" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="HEADPOSE" />
            <Property name="Scale" value="0.3" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="BODYSHAPE" />
            <Property name="Scale" value="0" />
          </Property>
        </Property>
        <Property name="Scale" value="1" />
      </Property>
    </Property>
    <Property value="GcCustomisationPreset.xml">
      <Property name="Name" value="ASTRO_4" />
      <Property name="Data" value="GcCharacterCustomisationData.xml">
        <Property name="DescriptorGroups">
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRONAUT_BASE" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRO_HEAD_0" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ARMOUR_VYK" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="LEGS_VYK" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="GLOVES_VYK" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="TORSO_VYK" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="BOOTS_VYK" />
          </Property>
        </Property>
        <Property name="Colours">
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.319" />
              <Property name="G" value="0.737" />
              <Property name="B" value="0.496" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.753" />
              <Property name="G" value="0.616" />
              <Property name="B" value="0.441" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="1" />
              <Property name="B" value="1" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.243" />
              <Property name="G" value="0.48" />
              <Property name="B" value="0.342" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.243" />
              <Property name="G" value="0.48" />
              <Property name="B" value="0.342" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0" />
              <Property name="G" value="0" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.753" />
              <Property name="G" value="0.616" />
              <Property name="B" value="0.441" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.243" />
              <Property name="G" value="0.48" />
              <Property name="B" value="0.342" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.243" />
              <Property name="G" value="0.48" />
              <Property name="B" value="0.342" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.243" />
              <Property name="G" value="0.48" />
              <Property name="B" value="0.342" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.243" />
              <Property name="G" value="0.48" />
              <Property name="B" value="0.342" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.243" />
              <Property name="G" value="0.48" />
              <Property name="B" value="0.342" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.243" />
              <Property name="G" value="0.48" />
              <Property name="B" value="0.342" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
        </Property>
        <Property name="TextureOptions">
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BOOTS_VYK" />
            <Property name="TextureOptionName" value="1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="TORSO_VYK" />
            <Property name="TextureOptionName" value="1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="LEGS_VYK" />
            <Property name="TextureOptionName" value="1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="HEAD_ASTRO" />
            <Property name="TextureOptionName" value="HELMET_4" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="ARMOUR_VYK" />
            <Property name="TextureOptionName" value="1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BACKPACK" />
            <Property name="TextureOptionName" value="BACKPACK_2" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="GLOVES_VYK" />
            <Property name="TextureOptionName" value="1" />
          </Property>
        </Property>
        <Property name="BoneScales">
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="GEKBODY" />
            <Property name="Scale" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="HEADPOSE" />
            <Property name="Scale" value="0.3" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="BODYSHAPE" />
            <Property name="Scale" value="1" />
          </Property>
        </Property>
        <Property name="Scale" value="1" />
      </Property>
    </Property>
    <Property value="GcCustomisationPreset.xml">
      <Property name="Name" value="ASTRO_5" />
      <Property name="Data" value="GcCharacterCustomisationData.xml">
        <Property name="DescriptorGroups">
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRONAUT_BASE" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="TORSO_FOURTH" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRO_HEAD_0" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ARMOUR_FOURTH" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="GLOVES_VANILLA" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="LEGS_ASTRO" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="BOOTS_VANILLA" />
          </Property>
        </Property>
        <Property name="Colours">
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.456" />
              <Property name="G" value="0.79" />
              <Property name="B" value="0.73" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.456" />
              <Property name="G" value="0.79" />
              <Property name="B" value="0.73" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.456" />
              <Property name="G" value="0.79" />
              <Property name="B" value="0.73" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.456" />
              <Property name="G" value="0.79" />
              <Property name="B" value="0.73" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.456" />
              <Property name="G" value="0.79" />
              <Property name="B" value="0.73" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.319" />
              <Property name="G" value="0.737" />
              <Property name="B" value="0.496" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.456" />
              <Property name="G" value="0.79" />
              <Property name="B" value="0.73" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.456" />
              <Property name="G" value="0.79" />
              <Property name="B" value="0.73" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.456" />
              <Property name="G" value="0.79" />
              <Property name="B" value="0.73" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.456" />
              <Property name="G" value="0.79" />
              <Property name="B" value="0.73" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.456" />
              <Property name="G" value="0.79" />
              <Property name="B" value="0.73" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.456" />
              <Property name="G" value="0.79" />
              <Property name="B" value="0.73" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.243" />
              <Property name="G" value="0.48" />
              <Property name="B" value="0.342" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="1" />
              <Property name="G" value="0.52" />
              <Property name="B" value="0" />
              <Property name="A" value="1" />
            </Property>
          </Property>
        </Property>
        <Property name="TextureOptions">
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="ARMOUR_FOURTH" />
            <Property name="TextureOptionName" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="TORSO_FOURTH" />
            <Property name="TextureOptionName" value="1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="HEAD_ASTRO" />
            <Property name="TextureOptionName" value="HELMET_1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BOOTS_VANILLA" />
            <Property name="TextureOptionName" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="LEGS_ASTRO" />
            <Property name="TextureOptionName" value="LEGS_2" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BACKPACK" />
            <Property name="TextureOptionName" value="BACKPACK_3" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="GLOVES_VANILLA" />
            <Property name="TextureOptionName" value="1" />
          </Property>
        </Property>
        <Property name="BoneScales">
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="GEKBODY" />
            <Property name="Scale" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="HEADPOSE" />
            <Property name="Scale" value="0.3" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="BODYSHAPE" />
            <Property name="Scale" value="0.5" />
          </Property>
        </Property>
        <Property name="Scale" value="1" />
      </Property>
    </Property>
    <Property value="GcCustomisationPreset.xml">
      <Property name="Name" value="ASTRO_6" />
      <Property name="Data" value="GcCharacterCustomisationData.xml">
        <Property name="DescriptorGroups">
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ASTRONAUT_BASE" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="LEGS_VYK" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="BOOTS_VYK" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="REG_HEAD_BIOME1" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="TORSO_VYK" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="ARMOUR_FOURTH" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="GLOVES_VYK" />
          </Property>
          <Property value="NMSString0x10.xml">
            <Property name="Value" value="BACKPACK_RETRO" />
          </Property>
        </Property>
        <Property name="Colours">
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.54" />
              <Property name="G" value="0.368" />
              <Property name="B" value="0.279" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.95" />
              <Property name="G" value="0.817" />
              <Property name="B" value="0.395" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Head" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.233" />
              <Property name="G" value="0.291" />
              <Property name="B" value="0.403" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.54" />
              <Property name="G" value="0.368" />
              <Property name="B" value="0.279" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Torso" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.667" />
              <Property name="G" value="0.667" />
              <Property name="B" value="0.667" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.243" />
              <Property name="G" value="0.48" />
              <Property name="B" value="0.342" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Chest_Armour" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.297" />
              <Property name="G" value="0.297" />
              <Property name="B" value="0.297" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.54" />
              <Property name="G" value="0.368" />
              <Property name="B" value="0.279" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Backpack" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.297" />
              <Property name="G" value="0.297" />
              <Property name="B" value="0.297" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.54" />
              <Property name="G" value="0.368" />
              <Property name="B" value="0.279" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Hands" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.297" />
              <Property name="G" value="0.297" />
              <Property name="B" value="0.297" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.54" />
              <Property name="G" value="0.368" />
              <Property name="B" value="0.279" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Legs" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.368" />
              <Property name="B" value="0.279" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Primary" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.297" />
              <Property name="G" value="0.297" />
              <Property name="B" value="0.297" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative1" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.54" />
              <Property name="G" value="0.368" />
              <Property name="B" value="0.279" />
              <Property name="A" value="1" />
            </Property>
          </Property>
          <Property value="GcCharacterCustomisationColourData.xml">
            <Property name="Palette" value="TkPaletteTexture.xml">
              <Property name="Palette" value="Custom_Feet" />
              <Property name="ColourAlt" value="Alternative2" />
            </Property>
            <Property name="Colour" value="Colour.xml">
              <Property name="R" value="0.503" />
              <Property name="G" value="0.225" />
              <Property name="B" value="0.225" />
              <Property name="A" value="1" />
            </Property>
          </Property>
        </Property>
        <Property name="TextureOptions">
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BACKPACK" />
            <Property name="TextureOptionName" value="BACKPACK_4" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="LEGS_VYK" />
            <Property name="TextureOptionName" value="1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="TORSO_VYK" />
            <Property name="TextureOptionName" value="1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="BOOTS_VYK" />
            <Property name="TextureOptionName" value="1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="GLOVES_VYK" />
            <Property name="TextureOptionName" value="1" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="HEAD_SPECIAL2" />
            <Property name="TextureOptionName" value="HELMET_2" />
          </Property>
          <Property value="GcCharacterCustomisationTextureOptionData.xml">
            <Property name="TextureOptionGroupName" value="ARMOUR_FOURTH" />
            <Property name="TextureOptionName" value="0" />
          </Property>
        </Property>
        <Property name="BoneScales">
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="GEKBODY" />
            <Property name="Scale" value="0" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="HEADPOSE" />
            <Property name="Scale" value="0.3" />
          </Property>
          <Property value="GcCharacterCustomisationBoneScaleData.xml">
            <Property name="BoneName" value="BODYSHAPE" />
            <Property name="Scale" value="1" />
          </Property>
        </Property>
        <Property name="Scale" value="1" />
      </Property>
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]             = "___ToolsOfMedia_8.5.pak",
["MOD_AUTHOR"]               = "TheFibs",
["NMS_VERSION"]              = "8234313",
["ADD_FILES"] = {
	{
		["FILE_DESTINATION"] 		= "TEXTURES/UI/LOADING/HGLOGOBLACKBGSMALL.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "HGLOGOBLACKBGSMALL.DDS",
	},
	
	{
		["FILE_DESTINATION"] 		= "TEXTURES/UI/LOADING/MIDDLEWAREPAIR.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "MIDDLEWAREPAIR.DDS",
	},
	
	{
		["FILE_DESTINATION"] 		= "TEXTURES/UI/LOADING/NMSTITLE.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "NMSTITLE.DDS",
	},

	{
		["FILE_DESTINATION"] 		= "TEXTURES/UI/FRONTEND/BACKGROUNDS/SELECTGAME.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "SELECTGAME.DDS",
	},

    {
		["FILE_DESTINATION"] 		= "TEXTURES/UI/FRONTEND/BACKGROUNDS/SELECTMULTI.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "SELECTMULTI.DDS",
    },
	
    {
		["FILE_DESTINATION"] 		= "TEXTURES/UI/FRONTEND/BACKGROUNDS/BACKGROUND.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "BACKGROUND.DDS",
    },
	
    {
		["FILE_DESTINATION"] 		= "TEXTURES/UI/FRONTEND/BACKGROUNDS/OPTIONSBG.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "OPTIONSBG.DDS",
    },
	
    {
		["FILE_DESTINATION"] 		= "TEXTURES/UI/FRONTEND/BACKGROUNDS/SPLASHSCREEN.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "SPLASHSCREEN.DDS",
    },
	
    {
		["FILE_DESTINATION"] 		= "TEXTURES/UI/FRONTEND/BACKGROUNDS/STARTBG.DDS",
		["EXTERNAL_FILE_SOURCE"] 	= "STARTBG.DDS",
    }
	},


["MODIFICATIONS"]            =
 
            {
		    



			
			{
		    ["MBIN_CHANGE_TABLE"] =
            
		    {
			  
			  
			  
			  
			  {
			  ["MBIN_FILE_SOURCE"]          = "GCDEBUGOPTIONS.GLOBAL.MBIN",
			  ["EXML_CHANGE_TABLE"]         = 
			 {
			   {
			   	["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GodMode",									 "True"}, 	-- Original "False"
								{"TakeNoDamage",							 "True"}, 	-- Original "False"
								{"AlwaysHaveFocus",							 "True"}, 	-- Original "False"
								{"MapWarpCheckIgnoreFuel",					 "True"}, 	-- Original "False"
								{"MapWarpCheckIgnoreDrive",					 "True"}, 	-- Original "False"
								{"EverythingIsFree",						 "True"}, 	-- Original "False"
								{"EverythingIsKnown",                         "True"},   -- Original "False"
								{"InfiniteStamina",							 "True"}, 	-- Original "False"
								{"DisableHazards",							 "True"}, 	-- Original "False"
								{"SkipTutorial",							 "True"}, 	-- Original "False"
								{"DisableStorms",							 "True"}, 	-- Original "False"
								{"AlwaysAllowFreighterInventoryAccess",		 "True"}, 	-- Original "False"
								--{"SpawnRobots",							    "False"} 	-- Original "True"			   			   			   			   			   			   			   
			   }
			 }

            }			
              },
			
			{
              ["MBIN_FILE_SOURCE"]          = "GCCAMERAGLOBALS.GLOBAL.MBIN",
			  ["EXML_CHANGE_TABLE"]         = 
              {
			  {
			  ["PRECEDING_KEY_WORDS"] = "",
			  ["REPLACE_TYPE"]        = "ALL",
			  ["VALUE_CHANGE_TABLE"] 	= 
							{
			   			   	{"CenterStartTime",									 "600"},
							{"PhotoModeMaxDistance",							 "300"}, 	-- Original "150"
							{"PhotoModeMaxDistanceSpace",						 "400"}, 	-- Original "200"
							{"PhotoModeCollisionRadius",						 "0"}, 	-- Original "0.5"
							
			   }
			  
			  }
			  }

            },
			  
			
			 {
			 ["MBIN_FILE_SOURCE"]          = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
			  ["EXML_CHANGE_TABLE"]        = 
			    
			{
			   
			   {
			   	["PRECEDING_KEY_WORDS"] = "",
				["INTEGER_TO_FLOAT"]    = "FORCE",		
			    ["VALUE_CHANGE_TABLE"] 	= 
				  
				   {
				   	{"PainTime",								  "0.1"}	-- Original "1.5"	
				   }
							
				},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScan",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",							      "500"}, 	-- Original "200"	
								{"ChargeTime",								    "2"}	-- Original "30"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ToolScanHardMode",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",							      "500"}, 	-- Original "150"	
								{"ChargeTime",								    "2"}	-- Original "90"							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ShipScan",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",							    "20000"}, 	-- Original "10000"	
								{"ChargeTime",								    "1"}	-- Original "10"							
							}
						}
				
			 }
						
			   },
			   
			   {
			   		["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
			   		["EXML_CHANGE_TABLE"] 	= 
			   		{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GroundWalkForceMultiplier",				   "40"},   -- Original "22"
								{"GroundWalkSpeed",							  "2.4"}, 	-- Original "4.4"
								{"GroundRunSpeed", 							   "9"}, 	-- Original "8"
								{"GroundWalkSpeedLowG",						   "2"}, 	-- Original "1.6"
								{"GroundRunSpeedLowG", 						   "5"}, 	-- Original "3.5"
								{"JetpackUnderwaterDrainRate", 					"0"}, 	-- Original "0.4"
								{"JetpackUnderwaterFillRate", 				  "100"}, 	-- Original "1"
								{"UnderwaterMaxSpeed", 						   "16"}, 	-- Original "4"
								{"UnderwaterForce", 						   "30"}, 	-- Original "15"
								{"UnderwaterMaxJetpackSpeed", 				   "20"}, 	-- Original "8"
								{"UnderwaterJetpackForce", 					   "75"}, 	-- Original "25"
								{"UnderwaterMaxJetpackEscapeSpeed", 		   "80"}, 	-- Original "8"
								{"UnderwaterJetpackEscapeForce", 			   "70"}, 	-- Original "20"
								{"RespawnOnPadRadius", 						   "15"}, 	-- Original "25"
								{"DefaultHealthPips", 						   "20"}, 	-- Original "3"
								{"MaxHealthPips", 							   "20"}, 	-- Original "9"
								{"HealthRechargeMinTimeSinceDamage", 		 "0.01"}, 	-- Original "10"
								{"HealthPipRechargeRate", 					 "2000"}, 	-- Original "200"
								{"PlayerTransferRange", 					 "2000"}, 	-- Original "20"
								{"HardModeEnergyDischargeRateLow", 				"0"}, 	-- Original "0.08"
								{"HardModeEnergyDischargeRateMedium", 			"0"}, 	-- Original "0.8"
								{"HardModeEnergyDischargeRateHigh", 			"0"}, 	-- Original "2.2"
								{"EnergyDischargeRateLow", 						"0"}, 	-- Original "0.02"
								{"EnergyDischargeRateMedium", 					"0"}, 	-- Original "0.25"
								{"EnergyDischargeRateHigh", 					"0"}, 	-- Original "0.9"
								{"EnergyDischargeRateFloatingInSpace", 			"0"}, 	-- Original "30"
								{"EnergyPainRate", 								"0"}, 	-- Original "20"
								{"SolarRegenFactor", 						  "100"}, 	-- Original "0.01"
								{"FreeJetpackRange", 			 			"99999"}, 	-- Original "3"
								{"FreeJetpackRangePrime",		 			"99999"}, 	-- Original "5"
								{"FreeJetpackRangeNonTerrain", 				"99999"}, 	-- Original "1.1"
								{"JetpackDrainHorizontalFactor", 				"0"}, 	-- Original "2.5"
								{"RocketBootsJetpackMinLevel", 			  "-999999"}, 	-- Original "2.5"
								{"RocketBootsBoostTankDrainSpeed", 				"0"}, 	-- Original "6"
								{"RocketBootsDriftTankDrainSpeed", 				"0"}, 	-- Original "1"
								{"RocketBootsBoostOnTime", 						"3"}, 	-- Original "0.2"
								{"RocketBootsMaxSpeed", 					   "30"}, 	-- Original "20"
								{"JetpackMinLevel", 					  "-999999"}, 	-- Original "0.5"
								{"JetpackMaxSpeed", 						   "60"}, 	-- Original "5"
								{"JetpackMaxUpSpeed", 						   "50"}, 	-- Original "30"
								{"JetpackIgnitionTime", 				     "0.04"}, 	-- Original "0.4"
								{"JetpackMinIgnitionTime", 					 "0.02"}, 	-- Original "0.2"
								{"JetpackFillRate", 						  "100"}, 	-- Original "0.5"
								{"JetpackFillRateHardMode", 				  "100"}, 	-- Original "0.2"
								{"JetpackFillRateMidair", 					  "100"}, 	-- Original "0.25"
								{"JetpackFillRateSpaceStationMultiplier", 	  "100"}, 	-- Original "5"
								{"JetpackFillRateFleetMultiplier", 			  "100"}, 	-- Original "5"
								{"JetpackFillRateNexusMultiplier", 			  "100"}, 	-- Original "20"
								{"JetpackUpForceDeadPlanetExtra", 			   "20"}, 	-- Original "10"
								{"JetpackForceDeadPlanetExtra", 			   "30"}, 	-- Original "15"
								{"DamageRepairFactor", 						  "100"}, 	-- Original "0.5"
								{"NormalModeHazardTimeMultiplier", 			  "100"}, 	-- Original "0.9"
								{"NormalModeHazardRechargeUnderground", 	   "10"}, 	-- Original "1.5"
								{"InventoryDamage", 					    "False"}, 	-- Original "True"
								{"NeverPreyedOn", 				   		     "True"}, 	-- Original "False"
								{"LuckyWithTech", 				   		     "True"}, 	-- Original "False"
								{"WoundDamageLimit", 						"0.001"}, 	-- Original "75"
								{"WoundDamageLimitShip", 					"0.001"}, 	-- Original "150"
								{"WoundDamageDecayTime", 					"0.001"}, 	-- Original "20"
								{"ShieldRechargeMinTimeSinceDamage", 		 "0.01"}, 	-- Original "30"
								{"StaminaRate", 							"0.001"}, 	-- Original "0.1"
								{"StaminaRecoveryRate", 					  "999"}, 	-- Original "0.1"
								{"StaminaRecoveredFactor", 					 "0.01"}, 	-- Original "0.5"
								{"LaserShakeMin", 						     "0.01"}, 	-- Original "0.5"
								{"LaserShakeMax", 							 "0.01"}, 	-- Original "2"											
								{"ExplodeShakeMaxDist", 					   "20"}, 	-- Original "60"
								{"DamageRateWhenUnderNoGravity", 			 "0.01"}, 	-- Original "10"
								{"ReloadTapButtonSpeedIncrease", 			 "1000"}, 	-- Original "1"
								{"ShieldRestoreSpeed", 						   "98"}, 	-- Original "0.2"
								{"ShieldRestoreDelay", 					     "0.01"}, 	-- Original "10"
								{"UseEnergy", 						  		"False"}, 	-- Original "True"
								{"AnimWalkSpeed", 							  "1.4"}, 	-- Original "1.5"
								{"AnimRunSpeed", 						  	  "3.8"}, 	-- Original "4"
								{"AnimWalktoRunSpeed", 						    "4"}, 	-- Original "4.5"
							
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "JetpackTankTimes",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"4",							  			  "999997"} 	-- Original "4"						
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "JetpackTankTimes",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"6",							  			  "999998"} 	-- Original	"6"					
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "JetpackTankTimes",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"8",							              "999999"} 	-- Original "8"								
							}
						}
					}
				},
			
			      
			      {
				    
					["MBIN_FILE_SOURCE"]    = "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
				  			["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
							    {"MinTimeBetweenStormsLow",				  "9999999"}, 	-- Original "900"
								{"MaxTimeBetweenStormsLow",				  "9999999"}, 	-- Original "2400"
								{"MinTimeBetweenStormsHigh",			  "9999999"}, 	-- Original "120"
								{"MaxTimeBetweenStormsHigh",			  "9999999"}, 	-- Original "620"
								{"MinTimeBetweenStormsExtremeFallback",	  "9999999"}, 	-- Original "240"
								{"MaxTimeBetweenStormsExtremeFallback",	  "9999999"}, 	-- Original "620"
								{"MinStormLengthLow",	  			            "1"}, 	-- Original "120"
								{"MaxStormLengthLow",	  					    "1"}, 	-- Original "180"
								{"MinStormLengthHigh",	  						"1"}, 	-- Original "150"
								{"MaxStormLengthHigh",	  						"1"}, 	-- Original "320"
								{"HeavyAirScale",	  						    "0"}, 	-- Original "1"
                                {"MinNightFade",						     "0.62"}, 	-- Original "0.62"
								{"MaxNightFade",							 "0.68"} 	-- Original "0.68"
							}
						}
				  	}
				  
				  
				  },
			      
				  {
				  ["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HitAsteroidDamage", 						    "0"},  -- Original "10000"
								{"MiniWarpShakeStrength", 						"1"},  -- Original "2"
								{"MiniWarpFuelTime", 						  "0.1"},  -- Original "0.5"
								{"MiniWarpChargeTime", 						  "0.1"},  -- Original "2"
								{"MiniWarpSpeed", 						   "100000"},  -- Original "30000"
								{"MiniWarpCooldownTime", 					  "0.1"},  -- Original "2"
							
							}				  				  				  				  				  				  				  				  
				  
				        }
	                  
         			    
                    }	
               
             },

            
			
			
			{			 
			["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\ANIMS\CHARACTER.ANIMCOMPONENT.DATA.MBIN",
					["EXML_CHANGE_TABLE"] 	=
                    { {
						
					
							["SPECIAL_KEY_WORDS"]   =  {"Anim" , "1H_SAD_LP_01"},
							["LINE_OFFSET"] 		= "+26",		
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
							{"IGNORE",	"IGNORE"}
							},
							["ADD"]              = TEXT_TO_ADD,
					
					},					
			    {
							["SPECIAL_KEY_WORDS"] = { "Anim","0H_DEATH_FALL_F" },
							["PRECEDING_KEY_WORDS"] = "FrameStart" ,
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
							{"FrameEnd","162"}
							}
			
					
			    },					
			
			        {
							["SPECIAL_KEY_WORDS"] = { "Anim","0H_DEATH_FALL_B" },
							["PRECEDING_KEY_WORDS"] = "FrameStart" ,
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
							{"FrameEnd","133"}
							}
			
					
			        }					
			
			
			}
			
			
			},
			
			
			{
			                ["MBIN_FILE_SOURCE"] = "METADATA\UI\EMOTEMENU.MBIN" ,
			                ["EXML_CHANGE_TABLE"] =
			                {
							{
			                ["SPECIAL_KEY_WORDS"] = {"PetCommandTitle", "UI_EMOTE_OVER_HERE_PET"},
							["LINE_OFFSET"] 		= "+4",							
							["INTEGER_TO_FLOAT"] = "FORCE",	
							["VALUE_CHANGE_TABLE"] 	= 
							{
							{"IGNORE",	"IGNORE"}
							},
							["ADD"]              = TEXT_TO_ADD_2,
			                }
			                }
			},
			             
			 {
						["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\PLAYERDATA\CHARACTERCUSTOMISATIONPRESETCUSTOMISATIONSDATA.MBIN",
	                    ["EXML_CHANGE_TABLE"] = 
						{
		                
						{
						["SPECIAL_KEY_WORDS"]   = {"Name","ASTRO_DEFAULT"},
					    ["REMOVE"]              = "SECTION",
						},
						
						{
						["SPECIAL_KEY_WORDS"]   = {"Name","ASTRO_0"},						
						["REMOVE"]              = "SECTION",
						},
						
						{
						["SPECIAL_KEY_WORDS"]   = {"Name","ASTRO_1"},						
						["REMOVE"]              = "SECTION",
						},
						
						{
						["SPECIAL_KEY_WORDS"]   = {"Name","ASTRO_2"},						
						["REMOVE"]              = "SECTION",
						},
						
						{
						["SPECIAL_KEY_WORDS"]   = {"Name","ASTRO_3"},
						["REMOVE"]              = "SECTION",
						},
						
						{
						["SPECIAL_KEY_WORDS"]   = {"Name","ASTRO_4"},
		                ["REMOVE"]              = "SECTION",
						},
						
						{
						["SPECIAL_KEY_WORDS"]   = {"Name","ASTRO_5"},						
						["REMOVE"]              = "SECTION",
						},
						
						{
						["SPECIAL_KEY_WORDS"]   = {"Name","ASTRO_6"},						
						["REMOVE"]              = "SECTION",
						},
						
						{
						["SPECIAL_KEY_WORDS"]   = {"Name", "START_04"},
						["REPLACE_TYPE"]        = "ADDAFTERSECTION",
						["ADD"]                 = TEXT_TO_REPLACE,
						},
			
			            }
			    },

			{
			["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERHAZARDS.MBIN",
			["EXML_CHANGE_TABLE"] =
			{
			{
			["REPLACE_TYPE"]        = "ALL",
			["VALUE_CHANGE_TABLE"] 	= 
							{
							{"MaxHazardsOfThisTypeActive",	"0"}
							},
			},
			
			
			
			
			
			}
			},
			
			{
			["MBIN_FILE_SOURCE"] = "LANGUAGE\NMS_LOC4_ENGLISH.MBIN",
			["EXML_CHANGE_TABLE"] =
			{
			{
			["SPECIAL_KEY_WORDS"]   = {"Id","CUSTOMISATION_PRESETS"},
			["VALUE_CHANGE_TABLE"] 	= 
							{{"Value",	"1-Preck, 2-Ness, 3-Tom, 4-Cautious, 5-Command"}},
			},
			{
			["SPECIAL_KEY_WORDS"]   = {"Id","UI_NMS"},
			["VALUE_CHANGE_TABLE"] 	= 
							{{"Value",	"NO MAN'S SKY + G.A.M.E. TOOLS OF MEDIA"}},
			},
			
			
			
			
			}
			},
			
			{
			["MBIN_FILE_SOURCE"] = "LANGUAGE\NMS_LOC5_ENGLISH.MBIN",
			["EXML_CHANGE_TABLE"] =
			{
			{
			["SPECIAL_KEY_WORDS"]   = {"Id","UI_OUTFITS_HEADER"},
			["VALUE_CHANGE_TABLE"] 	= 
							{{"Value",	"6-Tank, 7-Girly, 8-Koroll, 9-Prison Preck, 10-Garrie"}},
			},
			
			
			
			
			}
			},
			
			
			
			
			}
            },
}
}



--SPECIAL THANKS TO GUMSK AND WINDERTP FOR TOLERATING THAT WALLY FIBS
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE



