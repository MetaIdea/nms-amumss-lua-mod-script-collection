SHIP_SCENES = {
	[[CUSTOMMODELS\WINDER\WINDER_XWING_NEW\WINDER_XWING.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_AWING\AWING.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_YWING\WINDER_YWING.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_FALCON\WINDER_FALCON.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_TIE_F\WINDER_TIE_F.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_TIE_I\WINDER_TIE_I.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_TIE_B\WINDER_TIE_B.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_NABOO_SF\WINDER_NABOO_SF.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_TRABANT_FLY\WINDER_TRABANT.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_VIPERIV\WINDER_VIPERIV.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_UFO_1\WINDER_UFO_1.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_ARC170\WINDER_ARC170.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_SPACERV\WINDER_SPACERV.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_TARDIS\WINDER_TARDIS.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_KANARA\WINDER_KANARA.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_DVERGR\WINDER_DVERGR.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_DEATHROW\WINDER_DEATHROW.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_MAXD\WINDER_MAXD.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_FLYINGFOX\WINDER_FLYINGFOX.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_BUCKR\WINDER_BUCKR.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_PEXPRESS\PEXPRESS.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_PELICAN\WINDER_PELICAN.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_DISCOVERY\WINDER_DISCOVERY.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_SPITFIRE\WINDER_SPITFIRE.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_BF109\WINDER_BF109.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_MIG15\WINDER_MIG15.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_BF110\WINDER_BF110.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_RATCHET\WINDER_RATCHET.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_LOBSTER\WINDER_LOBSTER.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_TRON1\WINDER_TRON1.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_TRON2\WINDER_TRON2.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_SCHWALBE\WINDER_SCHWALBE.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_EKRAN\WINDER_EKRAN.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_B17\WINDER_B17.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_KRAIER\WINDER_KRAIER.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_ZERO\WINDER_ZERO.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_F16\WINDER_F16.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_MIG23\WINDER_MIG23.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_SU15\WINDER_SU15.SCENE.MBIN]],
	[[CUSTOMMODELS\WINDER\WINDER_SPEEDBOAT\WINDER_SPEEDBOAT.SCENE.MBIN]],
	
	----[[MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIP.SCENE.MBIN]],
	----[[MODELS\COMMON\SPACECRAFT\DRONE\DRONESHIP.SCENE.MBIN]],
}

GENERIC_ANIMATION_FILE = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN" 
BUTTON_ICON = "TEXTURES/UI/FRONTEND/COMPONENTS/STAR.DDS"

ANIM_TEMPLATE_ALL = ""
QUICK_ACTION_BUTTON_ALL = ""
ACTION_TRIGGER_COMPONENT = ""
ACTION_TRIGGER_ALL = ""
CUSTOM_GENERICREWARD_ALL = ""

function CreateCustomShipRewardSubEntry(SEED_TYPE_SCENE_PATH, NAME, SHIP_SEED)
local GENERIC_REWARD_SUB_ENTRY =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			  <Property name="Reward" value="GcRewardSpecificShip.xml">
				<Property name="ShipResource" value="GcResourceElement.xml">
				  <Property name="Filename" value="]] .. SEED_TYPE_SCENE_PATH .. [[" />
				  <Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="0" />
					<Property name="UseSeedValue" value="False" />
				  </Property>
				  <Property name="AltId" value="" />
				  <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
					<Property name="Samplers" />
				  </Property>
				</Property>
				<Property name="ShipLayout" value="GcInventoryLayout.xml">
				  <Property name="Slots" value="48" />
				  <Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="1" />
					<Property name="UseSeedValue" value="True" />
				  </Property>
				  <Property name="Level" value="1" />
				</Property>
				<Property name="ShipInventory" value="GcInventoryContainer.xml">
				  <Property name="Slots">
					<Property value="GcInventoryElement.xml">
					  <Property name="Type" value="GcInventoryType.xml">
						<Property name="InventoryType" value="Technology" />
					  </Property>
					  <Property name="Id" value="LAUNCHER" />
					  <Property name="Amount" value="0" />
					  <Property name="MaxAmount" value="300" />
					  <Property name="DamageFactor" value="0" />
					  <Property name="FullyInstalled" value="True" />
					  <Property name="Index" value="GcInventoryIndex.xml">
						<Property name="X" value="-1" />
						<Property name="Y" value="-1" />
					  </Property>
					</Property>
					<Property value="GcInventoryElement.xml">
					  <Property name="Type" value="GcInventoryType.xml">
						<Property name="InventoryType" value="Technology" />
					  </Property>
					  <Property name="Id" value="SHIPJUMP1" />
					  <Property name="Amount" value="0" />
					  <Property name="MaxAmount" value="100" />
					  <Property name="DamageFactor" value="0" />
					  <Property name="FullyInstalled" value="True" />
					  <Property name="Index" value="GcInventoryIndex.xml">
						<Property name="X" value="-1" />
						<Property name="Y" value="-1" />
					  </Property>
					</Property>
					<Property value="GcInventoryElement.xml">
					  <Property name="Type" value="GcInventoryType.xml">
						<Property name="InventoryType" value="Technology" />
					  </Property>
					  <Property name="Id" value="SHIPSHIELD" />
					  <Property name="Amount" value="200" />
					  <Property name="MaxAmount" value="200" />
					  <Property name="DamageFactor" value="0" />
					  <Property name="FullyInstalled" value="True" />
					  <Property name="Index" value="GcInventoryIndex.xml">
						<Property name="X" value="-1" />
						<Property name="Y" value="-1" />
					  </Property>
					</Property>
					<Property value="GcInventoryElement.xml">
					  <Property name="Type" value="GcInventoryType.xml">
						<Property name="InventoryType" value="Technology" />
					  </Property>
					  <Property name="Id" value="SHIPGUN1" />
					  <Property name="Amount" value="1000" />
					  <Property name="MaxAmount" value="1000" />
					  <Property name="DamageFactor" value="0" />
					  <Property name="FullyInstalled" value="True" />
					  <Property name="Index" value="GcInventoryIndex.xml">
						<Property name="X" value="-1" />
						<Property name="Y" value="-1" />
					  </Property>
					</Property>
					<Property value="GcInventoryElement.xml">
					  <Property name="Type" value="GcInventoryType.xml">
						<Property name="InventoryType" value="Technology" />
					  </Property>
					  <Property name="Id" value="HYPERDRIVE" />
					  <Property name="Amount" value="24" />
					  <Property name="MaxAmount" value="120" />
					  <Property name="DamageFactor" value="0" />
					  <Property name="FullyInstalled" value="True" />
					  <Property name="Index" value="GcInventoryIndex.xml">
						<Property name="X" value="-1" />
						<Property name="Y" value="-1" />
					  </Property>
					</Property>
					<Property value="GcInventoryElement.xml">
					  <Property name="Type" value="GcInventoryType.xml">
						<Property name="InventoryType" value="Technology" />
					  </Property>
					  <Property name="Id" value="SHIPLAS1" />
					  <Property name="Amount" value="1000" />
					  <Property name="MaxAmount" value="1000" />
					  <Property name="DamageFactor" value="0" />
					  <Property name="FullyInstalled" value="True" />
					  <Property name="Index" value="GcInventoryIndex.xml">
						<Property name="X" value="-1" />
						<Property name="Y" value="-1" />
					  </Property>
					</Property>
				  </Property>
				  <Property name="ValidSlotIndices" />
				  <Property name="Class" value="GcInventoryClass.xml">
					<Property name="InventoryClass" value="S" />
				  </Property>
				  <Property name="SubstanceMaxStorageMultiplier" value="0" />
				  <Property name="ProductMaxStorageMultiplier" value="0" />
				  <Property name="BaseStatValues" />
				  <Property name="SpecialSlots" />
				  <Property name="Width" value="8" />
				  <Property name="Height" value="3" />
				  <Property name="IsCool" value="False" />
				  <Property name="Name" value="]] .. NAME .. [[" />
				  <Property name="Version" value="0" />
				</Property>
			  </Property>
            <Property name="LabelID" value="" />
          </Property>
]]
return GENERIC_REWARD_SUB_ENTRY
end

function CreateCustomShipRewardMainEntry(REWARD_ID, SUB_ENTRY, TYPE) 
local GENERIC_REWARD_MAIN_ENTRY =
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="]] .. REWARD_ID .. [[" />
      <Property name="Common" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="]] .. TYPE .. [[" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
]] .. SUB_ENTRY .. [[
        </Property>
      </Property>
    </Property> 
]]
return GENERIC_REWARD_MAIN_ENTRY
end

--------------------------------------------------------------------------


function CreateAnimEntry(ANIM_ID)
ANIM_TEMPLATE =
[[
		<Property value="TkAnimationData.xml">
			<Property name="Anim" value="]] .. ANIM_ID .. [[" />
		  <Property name="Filename" value="]] .. GENERIC_ANIMATION_FILE .. [[" />
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
return ANIM_TEMPLATE
end

function CreateActionTriggerRewardEntry(ANIM_ID, REWARD)
ACTION_TRIGGER_ENTRY =
[[
            <Property value="GcActionTrigger.xml">
              <Property name="Trigger" value="GcAnimFrameEvent.xml">
                <Property name="Anim" value="]] .. ANIM_ID .. [[" />
                <Property name="FrameStart" value="0" />
                <Property name="StartFromEnd" value="False" />
              </Property>			  
              <Property name="Action">
                <Property value="GcRewardAction.xml">
                  <Property name="Reward" value="]] .. REWARD .. [[" />
                </Property>		
              </Property>
            </Property>			
]]
return ACTION_TRIGGER_ENTRY
end

function CreateActionTriggerComponent(ACTION_TRIGGER_LIST_)
local ACTION_TRIGGER_COMPONENT =
[[
    <Property value="GcTriggerActionComponentData.xml">
      <Property name="HideModel" value="False" />
      <Property name="StartInactive" value="False" />
      <Property name="States">
        <Property value="GcActionTriggerState.xml">
          <Property name="StateID" value="BOOT" />
          <Property name="Triggers">
]] .. ACTION_TRIGGER_LIST_ .. [[
          </Property>
        </Property>
      </Property>
      <Property name="Persistent" value="False" />
      <Property name="PersistentState" value="" />
      <Property name="ResetShotTimeOnStateChange" value="False" />
      <Property name="LinkStateToBaseGrid" value="False" />
    </Property>
]]
return ACTION_TRIGGER_COMPONENT
end

function CreateQuickActionMenuEntry(BUTTON_TITLE, ANIM_ID, ICON)
QUICK_ACTION_BUTTON_TEMPLATE =
[[
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. BUTTON_TITLE .. [[" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. ICON .. [[" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
    <Property value="GcPlayerEmote.xml">
      <Property name="Title" value="]] .. BUTTON_TITLE .. [[" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="False" />
      <Property name="AnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="Icon" value="TkTextureResource.xml">
        <Property name="Filename" value="]] .. ICON .. [[" />
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="False" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="MoveToCancel" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="]] .. ANIM_ID .. [[" />
      <Property name="IsPetCommand" value="False" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource.xml">
        <Property name="Filename" value="" />
      </Property>
    </Property>
]]
return QUICK_ACTION_BUTTON_TEMPLATE
end

function GetName(SCENEPATH)
	local start = string.len(string.gsub(SCENEPATH, "(.*)\\.*$","%1")) + 2
	local ending = string.find(SCENEPATH, [[.SCENE]]) - 1
	if not (ending > 0) then ending = string.find(SCENEPATH, [[.MBIN]]) - 1 end
	return string.sub(SCENEPATH, start, ending)
end

function CreateShipRewardList()
	for i=1,#SHIP_SCENES,1 do
		local ShipName = GetName(SHIP_SCENES[i])
		SUB_REWARD_ENTRY = ""
		SUB_REWARD_ENTRY = SUB_REWARD_ENTRY .. CreateCustomShipRewardSubEntry(SHIP_SCENES[i], ShipName, "0x0")
		QUICK_ACTION_BUTTON_ALL = QUICK_ACTION_BUTTON_ALL .. CreateQuickActionMenuEntry(ShipName, ShipName, BUTTON_ICON)	
		ANIM_TEMPLATE_ALL = ANIM_TEMPLATE_ALL .. CreateAnimEntry(ShipName)
		ACTION_TRIGGER_COMPONENT = ACTION_TRIGGER_COMPONENT .. CreateActionTriggerComponent(CreateActionTriggerRewardEntry(ShipName, ShipName))	
		CUSTOM_GENERICREWARD_ALL = CUSTOM_GENERICREWARD_ALL .. CreateCustomShipRewardMainEntry(ShipName, SUB_REWARD_ENTRY, "Select")
		print(SHIP_SCENES[i] .. " NAME: " .. ShipName)
	end
end

CreateShipRewardList()

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ShipsOfMoarQuickActions.pak",
["MOD_AUTHOR"]				= "Original author WinderTP, recreation/update by Kibbles and Gumsk, lua script by Mjjstral, NMSSDK by monkeyman192, ",
["MOD_DESCRIPTION"]			= "Adds 40 new unique ships, aquirable via quick action emote menu ship exchange action",
["NMS_VERSION"]				= "3.21+",
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
							["SPECIAL_KEY_WORDS"]   = {"Anim","EMOTE_CALL_PET"}, 
							["LINE_OFFSET"] 		= "+0",
							["REPLACE_TYPE"]        = "ADDAFTERSECTION",
							["ADD"] 				= ANIM_TEMPLATE_ALL
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
							["ADD"] 				= QUICK_ACTION_BUTTON_ALL
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"GenericTable"}, 
							["LINE_OFFSET"] 		= "+0",
							["ADD"] 				= CUSTOM_GENERICREWARD_ALL
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

