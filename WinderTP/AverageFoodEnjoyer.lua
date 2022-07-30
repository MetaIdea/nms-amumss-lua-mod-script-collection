ROOT_PATH = [[CUSTOMMODELS\WINDER\WINDER_CHUGJUG\]]

CHUG_PARTICLE = {	{	["EMIT_RATE"]			=	"120",
						["EMIT_LIFE"]			=	"0",
						["EMIT_MIDLIFE"]		=	"0.7",
						["EMIT_SPREAD"]			=	"90",
						["EMIT_S_MIN"]			=	"0",
						["EMIT_DIRECTION_X"]	=	"0",
						["EMIT_DIRECTION_Y"]	=	"12",
						["EMIT_DIRECTION_Z"]	=	"0.4",
						["EMIT_GRAVITY"]		=	"-100",
						["PART_SPEED_MIN"]		=	"0.3",
						["PART_SPEED_MAX"]		=	"0.6",
						["EMIT_DAMPING"]		=	"0.5",
						["PART_MAX_NO"]			=	"1200",
						["PART_LIFE_MIN"]		=	"1",
						["PART_LIFE_MAX"]		=	"1.5",
						["PART_ROTATION"]		=	"360",
						["PART_VELOCITY"]		=	"0",
						["PART_SIZE_A"]			=	"0.2",
						["PART_SIZE_B"]			=	"0.3",
						["PART_SIZE_C"]			=	"0.25",
						["PART_COLOUR_R"]		=	"0.643",
						["PART_COLOUR_G"]		=	"0.925",
						["PART_COLOUR_B"]		=	"0.996",
						["PART_ALPHA"]			=	"0.5",
						["PART_COLOUR_R_END"]	=	"0.803",
						["PART_COLOUR_G_END"]	=	"1.0",
						["PART_COLOUR_B_END"]	=	"0.996",
						["PART_ALPHA_END"]		=	"0",
						["PART_H"]				=	"0.0075",
						["PART_S"]				=	"0.005",
						["PART_V"]				=	"0.07",
					},
					{	["EMIT_RATE"]			=	"35",
						["EMIT_LIFE"]			=	"0",
						["EMIT_MIDLIFE"]		=	"0.7",
						["EMIT_SPREAD"]			=	"165",
						["EMIT_S_MIN"]			=	"45",
						["EMIT_DIRECTION_X"]	=	"0",
						["EMIT_DIRECTION_Y"]	=	"12",
						["EMIT_DIRECTION_Z"]	=	"0.4",
						["EMIT_GRAVITY"]		=	"-100",
						["PART_SPEED_MIN"]		=	"0.4",
						["PART_SPEED_MAX"]		=	"0.8",
						["EMIT_DAMPING"]		=	"0.5",
						["PART_MAX_NO"]			=	"500",
						["PART_LIFE_MIN"]		=	"0.1",
						["PART_LIFE_MAX"]		=	"1",
						["PART_ROTATION"]		=	"360",
						["PART_VELOCITY"]		=	"0",
						["PART_SIZE_A"]			=	"0.1",
						["PART_SIZE_B"]			=	"0.12",
						["PART_SIZE_C"]			=	"0.1",
						["PART_COLOUR_R"]		=	"0.643",
						["PART_COLOUR_G"]		=	"0.925",
						["PART_COLOUR_B"]		=	"0.996",
						["PART_ALPHA"]			=	"0.2",
						["PART_COLOUR_R_END"]	=	"0.803",
						["PART_COLOUR_G_END"]	=	"1.0",
						["PART_COLOUR_B_END"]	=	"0.996",
						["PART_ALPHA_END"]		=	"0.2",
						["PART_H"]				=	"0.0075",
						["PART_S"]				=	"0.005",
						["PART_V"]				=	"0.07",
					}
				}
OVER_MAT_PATH = [[MODELS\EFFECTS\BLOOD\FIENDDEATH\EMITTERS\FBLOODSPLATEMITTER.MATERIAL.MBIN]]
PARTICLE_PATH = {	
					{	["EXML"]	= "CHUGJUG_MAIN.PARTICLE",
						["MBIN"]	= "",
					},
					{	["EXML"]	= "CHUGJUG_SIDE.PARTICLE",
						["MBIN"]	= "",
					}
				}	
CHUG_MODEL = 	{	["EXML"]	= "CHUGJUG_STREAM.SCENE",
					["MBIN"]	= "",
				}

--making file paths
				
CHUG_MODEL["MBIN"] = ROOT_PATH .. CHUG_MODEL["EXML"] .. ".MBIN"
CHUG_MODEL["EXML"] = ROOT_PATH .. CHUG_MODEL["EXML"] .. ".EXML"
for i=1, #PARTICLE_PATH, 1 do
PARTICLE_PATH[i]["MBIN"] = ROOT_PATH .. PARTICLE_PATH[i]["EXML"] .. ".MBIN"
PARTICLE_PATH[i]["EXML"] = ROOT_PATH .. PARTICLE_PATH[i]["EXML"] .. ".EXML"
end


--config var going into exmls
EMOTE_ACTION =	{
					{	["NAME"] 		= "Eat Food",
						["ACTION"]		= "EAT_SOME_FOOD",
						["ICON"] 		= "TEXTURES\UI\FRONTEND\ICONS\COOKINGPRODUCTS\PRODUCT.BREAD.DDS",
						["CHAT_MSG"] 	= "%NAME% is enjoying sustenance",
						["CHAT_NAME"] 	= "False",
						["INTO"]		= "GET_FOOD",
						["ANIM_FILE"]	= [[MODELS\COMMON\PLAYER\PLAYERCHARACTER\ANIMS\INTERACTION\GATHER\0H_INTERACT_GATHER_LOOP.ANIM.MBIN]],
						["ANIM_FILE_INTO"]	= [[MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/INTERACTION/GATHER/0H_INTERACT_GATHER_INTO.ANIM.MBIN]],
						["REWARD_ID"] 	= {"HAZARDSMALL"}
					},
					{	["NAME"] 		= "Chug Jug",
						["ACTION"]		= "DRINK_SOME_TEA",
						["ICON"] 		= "TEXTURES\UI\FRONTEND\ICONS\PRODUCTS\PRODUCT.GEL1.DDS",
						["CHAT_MSG"] 	= "%NAME% is enjoying sustenance",
						["CHAT_NAME"] 	= "False",
						["INTO"]		= "",
						["ANIM_FILE"]	= [[MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/INTERACTION/GENERAL/0H_INTER_HAPPY_03.ANIM.MBIN]],
						["ANIM_FILE_INTO"]	= [[]],
						["REWARD_ID"] 	= {"DE_FOOD_HEALTH", "SHIELDSMALL"}
					},
				}				

REFERENCES = 
{
	["LEFT"] = 	{
					["NAME"]		= "Food_LeftHand",
					["JOINT"]		= "player01_l_hand_socket_AuxSHJnt",
					["SCENEGRAPH"] 	= "CUSTOMMODELS\WINDER\WINDER_MC_BREAD\WINDER_MC_BREAD.SCENE.MBIN",
					["TransX"]		= "-0.03",
					["TransY"]		= "0.02",
					["TransZ"]		= "0.042133",
					["RotX"]		= "0",
					["RotY"]		= "0",
					["RotZ"]		= "0",
					["Scale"]		= "2",
				},
	["RIGHT"] = {
					["NAME"]		= "Food_RightHand",
					["JOINT"]		= "player01_r_hand_socket_AuxSHJnt",
					["SCENEGRAPH"] 	= "CUSTOMMODELS\WINDER\WINDER_RS_CUP\WINDER_RS_CUP.SCENE.MBIN",
					["TransX"]		= "-0.03",
					["TransY"]		= "0.02",
					["TransZ"]		= "0.042133",
					["RotX"]		= "-147.63",
					["RotY"]		= "0",
					["RotZ"]		= "20",
					["Scale"]		= "1.5",
				},	
	["CHUG"] = 	{
					["NAME"]		= "Food_ChugJug",
					["JOINT"]		= "player01_r_hand_socket_AuxSHJnt",
					["SCENEGRAPH"] 	= "CUSTOMMODELS\WINDER\WINDER_CHUGJUG\WINDER_CHUGJUG.SCENE.MBIN",
					["TransX"]		= "-0.38",
					["TransY"]		= "0.08",
					["TransZ"]		= "-0.3",
					-- ["TransX"]		= "0.06",
					-- ["TransY"]		= "-0.03",
					-- ["TransZ"]		= "-0.47",
					["RotX"]		= "-120",
					["RotY"]		= "0",
					["RotZ"]		= "-125",
					-- ["RotZ"]		= "180",
					["Scale"]		= "1",
				},					
}

function GetQuickAction(TITLE, ANIM, ICON, UNDERWATER, CHATTEXT, CHATPREFIX, LOOP)
return [[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. TITLE .. [[" />
      <Property name="ChatText" value="]] .. CHATTEXT .. [[" />
      <Property name="ChatUsesPrefix" value="]] .. CHATPREFIX .. [[" />
      <Property name="AnimationName" value="]] .. ANIM .. [[" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. ICON .. [[" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="]] .. LOOP .. [[" />
      <Property name="CloseMenuOnSelect" value="True" />
      <Property name="MoveToCancel" value="True" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="]] .. UNDERWATER .. [[" />
      <Property name="RidingAnimationName" value="]] .. LOOP .. [[" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
]]
end

function GetTriggerAnim(ANIM, FILEPATH, ANIM_INTO, FILEPATH_INTO)
return [[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="]] .. ANIM .. [[" />
          <Property name="Filename" value="]] .. FILEPATH .. [[" />
          <Property name="AnimType" value="Loop" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="player01_spine_01SHJnt" />
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
            <Property name="BlockPlayerMovement" value="True" />
            <Property name="BlockPlayerWeapon" value="Sheathed" />
          </Property>
        </Property>
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="]] .. ANIM_INTO .. [[" />
          <Property name="Filename" value="]] .. FILEPATH_INTO .. [[" />
          <Property name="AnimType" value="OneShotBlendable" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
          <Property name="StartNode" value="player01_spine_01SHJnt" />
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
            <Property name="BlockPlayerMovement" value="True" />
            <Property name="BlockPlayerWeapon" value="Sheathed" />
          </Property>
        </Property>
]]
end

function GetTriggerAnim_NoInto(ANIM, FILEPATH)
return [[
        <Property value="TkAnimationData.xml">
          <Property name="Anim" value="]] .. ANIM .. [[" />
          <Property name="Filename" value="]] .. FILEPATH .. [[" />
          <Property name="AnimType" value="Loop" />
          <Property name="FrameStart" value="0" />
          <Property name="FrameEnd" value="0" />
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
            <Property name="BlockPlayerMovement" value="True" />
            <Property name="BlockPlayerWeapon" value="Unblocked" />
          </Property>
        </Property>
]]
end

function GetTriggerAction(ANIM, REWARD, FOOD_1, FOOD_2)
return [[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="]] .. FOOD_1 .. [[" />
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
                  <Property name="Name" value="]] .. FOOD_2 .. [[" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="NO_STARVE" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Scene" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="NO_STARVE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="]] .. ANIM .. [[" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>	
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="]] .. REWARD .. [[" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="]] .. FOOD_1 .. [[" />
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
                  <Property name="Name" value="]] .. FOOD_2 .. [[" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="STARVE" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Scene" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="STARVE" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="2.2" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="]] .. FOOD_1 .. [[" />
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
                  <Property name="Name" value="]] .. FOOD_2 .. [[" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="NO_STARVE" />
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
]]
end

function GetTriggerAction_Drink(ANIM, REWARD_1, REWARD_2, FOOD)
return [[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="0" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="]] .. FOOD .. [[" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="NO_THIRST" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Scene" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="NO_THIRST" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="]] .. ANIM .. [[" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>	
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="]] .. REWARD_1 .. [[" />
                </Property>
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="]] .. REWARD_2 .. [[" />
                </Property>
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Activate" />
                  <Property name="Name" value="]] .. FOOD .. [[" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="THIRST" />
                  <Property name="Broadcast" value="False" />
                  <Property name="BroadcastLevel" value="Scene" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="THIRST" />
          <Property name="Triggers">
            <Property value="GcActionTrigger.xml">
              <Property name="Event" value="GcStateTimeEvent.xml">
                <Property name="Seconds" value="2" />
                <Property name="RandomSeconds" value="0" />
                <Property name="UseMissionClock" value="False" />
              </Property>
              <Property name="Action">
                <Property value="GcNodeActivationAction.xml">
                  <Property name="NodeActiveState" value="Deactivate" />
                  <Property name="Name" value="]] .. FOOD .. [[" />
                  <Property name="SceneToAdd" value="" />
                  <Property name="IncludePhysics" value="False" />
                  <Property name="IncludeChildPhysics" value="False" />
                  <Property name="NotifyNPC" value="False" />
                  <Property name="UseMasterModel" value="True" />
                  <Property name="UseLocalNode" value="False" />
                  <Property name="RestartEmitters" value="False" />
                  <Property name="AffectModels" value="False" />
                </Property>
                <Property value="GcGoToStateAction.xml">
                  <Property name="State" value="NO_THIRST" />
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
]]
end

function GetParticleFile(E_RATE, E_LIFE, E_MID, E_SPREAD, E_SPREAD_MIN, E_D_X, E_D_Y, E_D_Z, E_GRAV, E_DAMP, P_MAX, P_LIFE_MIN, P_LIFE_MAX, P_ROTA, P_VELO, P_SIZE_A, P_SIZE_B, P_SIZE_C, P_R, P_G, P_B, P_A, P_R_E, P_G_E, P_B_E, P_A_E, P_H, P_S, P_V, P_SPEED_MIN, P_SPEED_MAX)
return [[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkParticleData">
  <Property name="AudioEvent" value="0" />
  <Property name="StartEnabled" value="True" />
  <Property name="Oneshot" value="False" />
  <Property name="MaxCount" value="]] .. P_MAX .. [[" />
  <Property name="BurstData" value="TkParticleBurstData.xml">
    <Property name="BurstAmount" value="TkEmitterFloatProperty.xml">
      <Property name="Authoring" value="FixedValue" />
      <Property name="FixedValue" value="0" />
      <Property name="MinRandomValue" value="0.1" />
      <Property name="MaxRandomValue" value="1" />
      <Property name="CurveVariation" value="0" />
      <Property name="CurveStartValue" value="1" />
      <Property name="CurveMidValue" value="1" />
      <Property name="CurveEndValue" value="1" />
      <Property name="CurveBlendMidpoint" value="0.5" />
      <Property name="Curve1Shape" value="TkCurveType.xml">
        <Property name="Curve" value="Linear" />
      </Property>
      <Property name="Curve2Shape" value="TkCurveType.xml">
        <Property name="Curve" value="Linear" />
      </Property>
    </Property>
    <Property name="BurstInterval" value="TkEmitterFloatProperty.xml">
      <Property name="Authoring" value="FixedValue" />
      <Property name="FixedValue" value="1" />
      <Property name="MinRandomValue" value="0.1" />
      <Property name="MaxRandomValue" value="1" />
      <Property name="CurveVariation" value="0" />
      <Property name="CurveStartValue" value="1" />
      <Property name="CurveMidValue" value="1" />
      <Property name="CurveEndValue" value="1" />
      <Property name="CurveBlendMidpoint" value="0.5" />
      <Property name="Curve1Shape" value="TkCurveType.xml">
        <Property name="Curve" value="Linear" />
      </Property>
      <Property name="Curve2Shape" value="TkCurveType.xml">
        <Property name="Curve" value="Linear" />
      </Property>
    </Property>
    <Property name="LoopCount" value="0" />
  </Property>
  <Property name="EmissionRate" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="]] .. E_RATE .. [[" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="Delay" value="0" />
  <Property name="EmitFromParticleInfo" value="TkEmitFromParticleInfo.xml">
    <Property name="OtherEmitterIndex" value="-1" />
    <Property name="EmissionRateType" value="PerParticle" />
  </Property>
  <Property name="ParticleLife" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="RandomRangeFloat" />
    <Property name="FixedValue" value="0" />
    <Property name="MinRandomValue" value="]] .. P_LIFE_MIN .. [[" />
    <Property name="MaxRandomValue" value="]] .. P_LIFE_MAX .. [[" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="EmitterLife" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="]] .. E_LIFE .. [[" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="EmitterMidLifeRatio" value="]] .. E_MID .. [[" />
  <Property name="EmitterLifeCurve1" value="TkCurveType.xml">
    <Property name="Curve" value="Linear" />
  </Property>
  <Property name="EmitterLifeCurve2" value="TkCurveType.xml">
    <Property name="Curve" value="Linear" />
  </Property>
  <Property name="EmitterSpreadAngle" value="]] .. E_SPREAD .. [[" />
  <Property name="EmitterSpreadAngleMin" value="]] .. E_SPREAD_MIN .. [[" />
  <Property name="EmitterDirection" value="Vector3f.xml">
    <Property name="x" value="]] .. E_D_X .. [[" />
    <Property name="y" value="]] .. E_D_Y .. [[" />
    <Property name="z" value="]] .. E_D_Z .. [[" />
  </Property>
  <Property name="ParticleSpeedMultiplier" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="RandomRangeFloat" />
    <Property name="FixedValue" value="1" />
    <Property name="MinRandomValue" value="]] .. P_SPEED_MIN .. [[" />
    <Property name="MaxRandomValue" value="]] .. P_SPEED_MAX .. [[" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="ParticleGravity" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="]] .. E_GRAV .. [[" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="ParticleDamping" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="]] .. E_DAMP .. [[" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="ParticleDrag" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="0" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="DragType" value="IgnoreGravity" />
  <Property name="Variation" value="1" />
  <Property name="StartOffset" value="0" />
  <Property name="SpawnOffsetType" value="Sphere" />
  <Property name="SpawnOffsetParams" value="Vector3f.xml">
    <Property name="x" value="0" />
    <Property name="y" value="0" />
    <Property name="z" value="0" />
  </Property>
  <Property name="ParticleSize" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="Curves" />
    <Property name="FixedValue" value="1" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="1" />
    <Property name="CurveStartValue" value="]] .. P_SIZE_A .. [[" />
    <Property name="CurveMidValue" value="]] .. P_SIZE_B .. [[" />
    <Property name="CurveEndValue" value="]] .. P_SIZE_C .. [[" />
    <Property name="CurveBlendMidpoint" value="0.45" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="ParticleSizeY" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="0" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="StartRotationVariation" value="360" />
  <Property name="Rotation" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="RandomRangeFloat" />
    <Property name="FixedValue" value="]] .. P_ROTA .. [[" />
    <Property name="MinRandomValue" value="-180" />
    <Property name="MaxRandomValue" value="180" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="Alignment" value="Rotation" />
  <Property name="BillboardAlignment" value="Screen" />
  <Property name="RotationPivot" value="Vector3f.xml">
    <Property name="x" value="0.5" />
    <Property name="y" value="0.5" />
    <Property name="z" value="0" />
  </Property>
  <Property name="UCoordinate" value="TkCoordinateOrientation.xml">
    <Property name="CoordinateOrientation" value="None" />
  </Property>
  <Property name="VCoordinate" value="TkCoordinateOrientation.xml">
    <Property name="CoordinateOrientation" value="None" />
  </Property>
  <Property name="VelocityInheritance" value="]] .. P_VELO .. [[" />
  <Property name="TrackEmitterPosition" value="0" />
  <Property name="RotateAroundEmitter" value="0" />
  <Property name="RotateAroundEmitterAxis" value="Vector3f.xml">
    <Property name="x" value="0" />
    <Property name="y" value="0" />
    <Property name="z" value="0" />
  </Property>
  <Property name="FlipbookPlaybackRate" value="Absolute" />
  <Property name="HueVariance" value="]] .. P_H .. [[" />
  <Property name="SaturationVariance" value="]] .. P_S .. [[" />
  <Property name="LightnessVariance" value="]] .. P_V .. [[" />
  <Property name="AlphaVariance" value="0" />
  <Property name="ColourStart" value="Colour.xml">
    <Property name="R" value="]] .. P_R .. [[" />
    <Property name="G" value="]] .. P_G .. [[" />
    <Property name="B" value="]] .. P_B .. [[" />
    <Property name="A" value="]] .. P_A .. [[" />
  </Property>
  <Property name="ColourMiddle" value="Colour.xml">
    <Property name="R" value="]] .. P_R .. [[" />
    <Property name="G" value="]] .. P_G .. [[" />
    <Property name="B" value="]] .. P_B .. [[" />
    <Property name="A" value="]] .. P_A .. [[" />
  </Property>
  <Property name="ColourEnd" value="Colour.xml">
    <Property name="R" value="]] .. P_R_E .. [[" />
    <Property name="G" value="]] .. P_G_E .. [[" />
    <Property name="B" value="]] .. P_B_E .. [[" />
    <Property name="A" value="]] .. P_A_E .. [[" />
  </Property>
  <Property name="AlphaThreshold" value="TkEmitterFloatProperty.xml">
    <Property name="Authoring" value="FixedValue" />
    <Property name="FixedValue" value="0" />
    <Property name="MinRandomValue" value="0.1" />
    <Property name="MaxRandomValue" value="1" />
    <Property name="CurveVariation" value="0" />
    <Property name="CurveStartValue" value="1" />
    <Property name="CurveMidValue" value="1" />
    <Property name="CurveEndValue" value="1" />
    <Property name="CurveBlendMidpoint" value="0.5" />
    <Property name="Curve1Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
    <Property name="Curve2Shape" value="TkCurveType.xml">
      <Property name="Curve" value="Linear" />
    </Property>
  </Property>
  <Property name="OnRefractionsDisabled" value="Hide" />
  <Property name="FadeRefractionsAtScreenEdge" value="False" />
  <Property name="UserColour" value="" />
  <Property name="MaxRenderDistance" value="0" />
  <Property name="MaxSpawnDistance" value="0" />
  <Property name="SoftFadeStrength" value="5" />
  <Property name="CameraDistanceFade" value="TkFloatRange.xml">
    <Property name="Minimum" value="0" />
    <Property name="Maximum" value="0" />
  </Property>
</Data>
]]
end

function GetSceneFile(PARTICLE_A, PARTICLE_B, MATERIAL)
return [[
<?xml version="1.0" encoding="utf-8"?>
<Data template="TkSceneNodeData">
  <Property name="Name" value="CHUGJUG_STREAM" />
  <Property name="NameHash" value="0" />
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
  <Property name="Attributes" />
  <Property name="Children">
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="]] .. PARTICLE_A .. [[" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="EMITTER" />
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
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]] .. MATERIAL .. [[" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DATA" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]] .. PARTICLE_A .. [[" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
    <Property value="TkSceneNodeData.xml">
      <Property name="Name" value="]] .. PARTICLE_B .. [[" />
      <Property name="NameHash" value="0" />
      <Property name="Type" value="EMITTER" />
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
          <Property name="Name" value="MATERIAL" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]] .. MATERIAL .. [[" />
        </Property>
        <Property value="TkSceneNodeAttributeData.xml">
          <Property name="Name" value="DATA" />
          <Property name="AltID" value="" />
          <Property name="Value" value="]] .. PARTICLE_B .. [[" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]
end

function GetFoodInHand(PARENT, NAME, REFERENCE, TRAN_X, TRAN_Y, TRAN_Z, ROT_X, ROT_Y, ROT_Z, SCALE)
return {
	["SPECIAL_KEY_WORDS"]	= {"Name", PARENT}, 
	["LINE_OFFSET"] 		= "+21",
	-- ["REPLACE_TYPE"] 		= "RAW",
	["ADD"] 	= [[
											<Property value="TkSceneNodeData.xml">
											  <Property name="Name" value="]] .. NAME .. [[" />
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
											  <Property name="Attributes" />
											  <Property name="Children">
												<Property value="TkSceneNodeData.xml">
												  <Property name="Name" value="]] .. NAME .. [[_Ref" />
												  <Property name="NameHash" value="0" />
												  <Property name="Type" value="REFERENCE" />
												  <Property name="Transform" value="TkTransformData.xml">
													<Property name="TransX" value="]] .. TRAN_X .. [[" />
													<Property name="TransY" value="]] .. TRAN_Y .. [[" />
													<Property name="TransZ" value="]] .. TRAN_Z .. [[" />
													<Property name="RotX" value="]] .. ROT_X .. [[" />
													<Property name="RotY" value="]] .. ROT_Y .. [[" />
													<Property name="RotZ" value="]] .. ROT_Z .. [[" />
													<Property name="ScaleX" value="]] .. SCALE .. [[" />
													<Property name="ScaleY" value="]] .. SCALE .. [[" />
													<Property name="ScaleZ" value="]] .. SCALE .. [[" />
												  </Property>
												  <Property name="Attributes">
													<Property value="TkSceneNodeAttributeData.xml">
													  <Property name="Name" value="SCENEGRAPH" />
													  <Property name="AltID" value="" />
													  <Property name="Value" value="]] .. REFERENCE .. [[" />
													</Property>
												  </Property>
												  <Property name="Children" />
												</Property>
											  </Property>
											</Property>]]
	
}
end

-- Adding the emote
TRIGGER_ANIM = ""
ACTIVATE_ACTION = ""
for i,j in pairs(EMOTE_ACTION) do
	-- Adding anim for triggering additional trigger actions
	if j["INTO"] ~= "" then
		ACTIVATE_ACTION = ACTIVATE_ACTION .. GetQuickAction(j["NAME"], j["INTO"], j["ICON"], "False", j["CHAT_MSG"], j["CHAT_NAME"], j["ACTION"])
		TRIGGER_ANIM = TRIGGER_ANIM .. GetTriggerAnim(j["ACTION"], j["ANIM_FILE"], j["INTO"], j["ANIM_FILE_INTO"])
	else TRIGGER_ANIM = TRIGGER_ANIM .. GetTriggerAnim_NoInto(j["ACTION"], j["ANIM_FILE"])
		 ACTIVATE_ACTION = ACTIVATE_ACTION .. GetQuickAction(j["NAME"], j["ACTION"], j["ICON"], "False", j["CHAT_MSG"], j["CHAT_NAME"], "")
	end
end

-- Adding trigger action to more activities
TRIGGER_ACTION = GetTriggerAction(EMOTE_ACTION[1]["ACTION"], EMOTE_ACTION[1]["REWARD_ID"][1], REFERENCES["LEFT"]["NAME"], REFERENCES["RIGHT"]["NAME"])
TRIGGER_ACTION = TRIGGER_ACTION .. GetTriggerAction_Drink(EMOTE_ACTION[2]["ACTION"], EMOTE_ACTION[2]["REWARD_ID"][1], EMOTE_ACTION[2]["REWARD_ID"][2], REFERENCES["CHUG"]["NAME"])

REFERENCE_INJECT = {}
for i,j in pairs(REFERENCES) do
	REFERENCE_TEMP = GetFoodInHand(j["JOINT"], j["NAME"], j["SCENEGRAPH"], j["TransX"], j["TransY"], j["TransZ"], j["RotX"], j["RotY"], j["RotZ"], j["Scale"])
	table.insert(REFERENCE_INJECT, REFERENCE_TEMP)
end

-- Making Chug Jug particles and emitters
CHUG_EMITTER_FILE = {}
for i=1, #CHUG_PARTICLE do
	CHUG_EMITTER_FILE[i] = GetParticleFile(CHUG_PARTICLE[i]["EMIT_RATE"], CHUG_PARTICLE[i]["EMIT_LIFE"], CHUG_PARTICLE[i]["EMIT_MIDLIFE"],
											CHUG_PARTICLE[i]["EMIT_SPREAD"], CHUG_PARTICLE[i]["EMIT_S_MIN"], CHUG_PARTICLE[i]["EMIT_DIRECTION_X"], CHUG_PARTICLE[i]["EMIT_DIRECTION_Y"], CHUG_PARTICLE[i]["EMIT_DIRECTION_Z"],
											CHUG_PARTICLE[i]["EMIT_GRAVITY"], CHUG_PARTICLE[i]["EMIT_DAMPING"], CHUG_PARTICLE[i]["PART_MAX_NO"],
											CHUG_PARTICLE[i]["PART_LIFE_MIN"], CHUG_PARTICLE[i]["PART_LIFE_MAX"], CHUG_PARTICLE[i]["PART_ROTATION"], CHUG_PARTICLE[i]["PART_VELOCITY"],
											CHUG_PARTICLE[i]["PART_SIZE_A"], CHUG_PARTICLE[i]["PART_SIZE_B"], CHUG_PARTICLE[i]["PART_SIZE_C"],
											CHUG_PARTICLE[i]["PART_COLOUR_R"], CHUG_PARTICLE[i]["PART_COLOUR_G"], CHUG_PARTICLE[i]["PART_COLOUR_B"], CHUG_PARTICLE[i]["PART_ALPHA"],
											CHUG_PARTICLE[i]["PART_COLOUR_R_END"], CHUG_PARTICLE[i]["PART_COLOUR_G_END"], CHUG_PARTICLE[i]["PART_COLOUR_B_END"], CHUG_PARTICLE[i]["PART_ALPHA_END"],
											CHUG_PARTICLE[i]["PART_H"], CHUG_PARTICLE[i]["PART_S"], CHUG_PARTICLE[i]["PART_V"], CHUG_PARTICLE[i]["PART_SPEED_MIN"], CHUG_PARTICLE[i]["PART_SPEED_MAX"])
end
SCENE_FILE = GetSceneFile(PARTICLE_PATH[1]["MBIN"],PARTICLE_PATH[2]["MBIN"],OVER_MAT_PATH)

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "~~~~AverageFoodEnjoyer_Addon.pak",
["MOD_BATCHNAME"]			= "~~~~AverageFoodEnjoyer_COMPATIBILITY.pak",
["MOD_AUTHOR"]				= "Winder with block pieces from Mjjstral",
["MOD_DESCRIPTION"]			= "Solving world hunger, one food at a time",
["NMS_VERSION"]				= "3.88+",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{  
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Trees"},  
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= TRIGGER_ANIM
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LodDistances"}, 
							["LINE_OFFSET"] 		= "-2",
							["ADD"] 				= TRIGGER_ACTION
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER.SCENE.MBIN",
					["EXML_CHANGE_TABLE"] 	= REFERENCE_INJECT
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/UI/EMOTEMENU.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"PetCommandTitle", "UI_EMOTE_OVER_HERE_PET"}, 
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
							["ADD"] 				= ACTIVATE_ACTION
						},
					}
				},
			}
		},
	},
["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = PARTICLE_PATH[1]["EXML"],
			["FILE_CONTENT"] 	 = 	CHUG_EMITTER_FILE[1]
		},
		{
			["FILE_DESTINATION"] = PARTICLE_PATH[2]["EXML"],
			["FILE_CONTENT"] 	 = 	CHUG_EMITTER_FILE[2]
		},
		{
			["FILE_DESTINATION"] = CHUG_MODEL["EXML"],
			["FILE_CONTENT"] 	 = SCENE_FILE
		},
	}
}