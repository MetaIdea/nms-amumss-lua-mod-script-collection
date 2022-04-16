--MULTITOOL SEED GENERATOR V1 by Mjjstral (contact: @Mjjstral#1157 on discord)

NUMBER_OF_MTOOL_SEEDS =
{
	["MULTITOOL"] =	528
}

MTOOL_SEED_LIST = --Add your own seeds here. If you only want own seeds set the numbers above to 0.
{
["MULTITOOL"] =
	{
		"-3613125059207465828", --REZOSUZ65
	}
}

ENABLE_USER_MTOOL_SEEDS = true


----------------------------------------------------
--CODINGS-------------------------------------------
----------------------------------------------------

MTOOL_TYPE = { "MULTITOOL" }

MTOOL_TYPE_PATH = 
{
	["MULTITOOL"]="MODELS/COMMON/WEAPONS/MULTITOOL/MULTITOOL.SCENE.MBIN"
}

RANDOMSEED_INIT = false

function GetSeed()
	local SEED = "0x"
	local HEX = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"}
	if not RANDOMSEED_INIT then
		math.randomseed(77*49*os.time())
		math.random() math.random() math.random()
		RANDOMSEED_INIT = true
	end
	for i=1,16,1 do
		SEED = SEED .. HEX[math.random(1, #HEX)]
	end
	return SEED
end

function HexToDec(number)
	if type(number) == "number" then return number
	elseif string.find(tostring(number),"0x") then return tonumber(number)
	else return tonumber(number,16) end
end

GENERIC_ANIMATION_FILE = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/0H_EMOTE_MIND_BLOWN.ANIM.MBIN"
BUTTON_ICON = "TEXTURES/UI/HUD/MENUS/ICON.SHIP.DDS"
GENERIC_BUTTON_ICON = "TEXTURES/UI/FRONTEND/COMPONENTS/STAR.DDS"
BUTTON_ICON = GENERIC_BUTTON_ICON

ANIM_TEMPLATE_ALL = ""
QUICK_ACTION_BUTTON_ALL = ""
ACTION_TRIGGER_COMPONENT = ""
ACTION_TRIGGER_ALL = ""

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
      <Property name="LoopAnimUntilMov" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="False" />
      <Property name="RidingAnimationName" value="" />
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
      <Property name="LoopAnimUntilMov" value="" />
      <Property name="CloseMenuOnSelect" value="False" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="True" />
      <Property name="RidingAnimationName" value="" />
    </Property>	
]]
return QUICK_ACTION_BUTTON_TEMPLATE
end

-------------CUSTOM MTOOL-------------------------------

CUSTOM_GENERICREWARD_ALL = ""

function CreateCustomShipRewardEntry(REWARD_ID, MTOOL_SEED, MTOOLTYPE)
local GENERIC_REWARD_ENTRY =
[[
    <Property value="GcGenericRewardTableEntry.xml">
      <Property name="Id" value="]] .. REWARD_ID .. [[" />
      <Property name="Common" value="GcRewardTableItemList.xml">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="False" />
        <Property name="List">
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			  <Property name="Reward" value="GcRewardSpecificWeapon.xml">
				<Property name="WeaponResource" value="GcExactResource.xml">
				  <Property name="Filename" value="MODELS/COMMON/WEAPONS/MULTITOOL/MULTITOOL.SCENE.MBIN" />
				  <Property name="GenerationSeed" value="GcSeed.xml">
					<Property name="Seed" value="]] .. MTOOL_SEED .. [[" />
					<Property name="UseSeedValue" value="True" />
				  </Property>
				</Property>
				<Property name="WeaponLayout" value="GcInventoryLayout.xml">
				  <Property name="Slots" value="24" />
				  <Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="]] .. MTOOL_SEED .. [[" />
					<Property name="UseSeedValue" value="True" />
				  </Property>
				  <Property name="Level" value="4" />
				</Property>
				<Property name="WeaponInventory" value="GcInventoryContainer.xml">
				  <Property name="Slots">
					<Property value="GcInventoryElement.xml">
					  <Property name="Type" value="GcInventoryType.xml">
						<Property name="InventoryType" value="Technology" />
					  </Property>
					  <Property name="Id" value="LASER" />
					  <Property name="Amount" value="100" />
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
					  <Property name="Id" value="SCAN1" />
					  <Property name="Amount" value="1" />
					  <Property name="MaxAmount" value="1" />
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
					  <Property name="Id" value="SCANBINOC1" />
					  <Property name="Amount" value="1" />
					  <Property name="MaxAmount" value="1" />
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
					  <Property name="Id" value="BOLT" />
					  <Property name="Amount" value="100" />
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
					  <Property name="Id" value="LASER1" />
					  <Property name="Amount" value="1" />
					  <Property name="MaxAmount" value="1" />
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
				  <Property name="Width" value="0" />
				  <Property name="Height" value="0" />
				  <Property name="IsCool" value="False" />
				  <Property name="Version" value="0" />
				</Property>
				<Property name="NameOverride" value="" />
			  </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property> 
]]
return GENERIC_REWARD_ENTRY
end

ACTION_TRIGGER_HARD_LIMIT 	= 528 --32(32+1)/2
ACTION_TRIGGER_LIMIT 	= 32

ACTION_TRIGGER_SEGMENTS = {}
ACTION_TRIGGER_SEGMENT_COUNT = 1
MTOOL_REWARD_COUNT_LIMIT_REF = 1

function AddShipsRewardsToQuickActionMenu()
	print("#################### ADDING MTOOL SEEDS ########################")
	local MTOOL_REWARD_COUNT = 1
	local MTOOL_REWARD_ID = ""
	local Seed = ""
	for i=1,#MTOOL_TYPE,1 do
		if ENABLE_USER_MTOOL_SEEDS then
			for j=1,#MTOOL_SEED_LIST[MTOOL_TYPE[i]],1 do
				if MTOOL_REWARD_COUNT > ACTION_TRIGGER_HARD_LIMIT then break end
				Seed = MTOOL_SEED_LIST[MTOOL_TYPE[i]][j]
				if string.len(Seed)<16 or string.find(Seed,"0x") then Seed = HexToDec(Seed) end
				print(MTOOL_REWARD_COUNT .. "." .. MTOOL_TYPE[i] .. ": " .. Seed)
				MTOOL_REWARD_ID = "CUSTOM_MTOOL_" .. MTOOL_REWARD_COUNT
				CUSTOM_GENERICREWARD_ALL = CUSTOM_GENERICREWARD_ALL .. CreateCustomShipRewardEntry(MTOOL_REWARD_ID, Seed, MTOOL_TYPE_PATH[MTOOL_TYPE[i]])
				ANIM_TEMPLATE_ALL = ANIM_TEMPLATE_ALL .. CreateAnimEntry(MTOOL_REWARD_ID)
				ACTION_TRIGGER_ALL = ACTION_TRIGGER_ALL .. CreateActionTriggerRewardEntry(MTOOL_REWARD_ID, MTOOL_REWARD_ID)
				QUICK_ACTION_BUTTON_ALL = QUICK_ACTION_BUTTON_ALL .. CreateQuickActionMenuEntry(MTOOL_REWARD_COUNT .. "." .. string.sub(MTOOL_TYPE[i],1,7) .. ": " .. Seed, MTOOL_REWARD_ID, BUTTON_ICON)	
				if MTOOL_REWARD_COUNT_LIMIT_REF >= ACTION_TRIGGER_LIMIT then 
					table.insert(ACTION_TRIGGER_SEGMENTS, ACTION_TRIGGER_ALL) 
					ACTION_TRIGGER_ALL = ""
					ACTION_TRIGGER_LIMIT = ACTION_TRIGGER_LIMIT - 1
					MTOOL_REWARD_COUNT_LIMIT_REF = 0
				end
				MTOOL_REWARD_COUNT = MTOOL_REWARD_COUNT + 1
				MTOOL_REWARD_COUNT_LIMIT_REF = MTOOL_REWARD_COUNT_LIMIT_REF + 1
			end	
		end	
	end
	for i=1,#MTOOL_TYPE,1 do
		for j=1,NUMBER_OF_MTOOL_SEEDS[MTOOL_TYPE[i]],1 do
			if MTOOL_REWARD_COUNT > ACTION_TRIGGER_HARD_LIMIT then break end
			Seed = GetSeed()
			MTOOL_REWARD_ID = "CUSTOM_MTOOL_" .. MTOOL_REWARD_COUNT
			print(MTOOL_REWARD_COUNT .. "." .. MTOOL_TYPE[i] .. ": " .. Seed)
			CUSTOM_GENERICREWARD_ALL = CUSTOM_GENERICREWARD_ALL .. CreateCustomShipRewardEntry(MTOOL_REWARD_ID, HexToDec(Seed), MTOOL_TYPE_PATH[MTOOL_TYPE[i]])
			ANIM_TEMPLATE_ALL = ANIM_TEMPLATE_ALL .. CreateAnimEntry(MTOOL_REWARD_ID)
			ACTION_TRIGGER_ALL = ACTION_TRIGGER_ALL .. CreateActionTriggerRewardEntry(MTOOL_REWARD_ID, MTOOL_REWARD_ID)
			QUICK_ACTION_BUTTON_ALL = QUICK_ACTION_BUTTON_ALL .. CreateQuickActionMenuEntry(MTOOL_REWARD_COUNT .. "." .. string.sub(MTOOL_TYPE[i],1,7) .. ": " .. Seed, MTOOL_REWARD_ID, BUTTON_ICON)
			if MTOOL_REWARD_COUNT_LIMIT_REF >= ACTION_TRIGGER_LIMIT then 
				table.insert(ACTION_TRIGGER_SEGMENTS, ACTION_TRIGGER_ALL) 
				ACTION_TRIGGER_ALL = ""
				ACTION_TRIGGER_LIMIT = ACTION_TRIGGER_LIMIT - 1
				MTOOL_REWARD_COUNT_LIMIT_REF = 0
			end
			MTOOL_REWARD_COUNT = MTOOL_REWARD_COUNT + 1
			MTOOL_REWARD_COUNT_LIMIT_REF = MTOOL_REWARD_COUNT_LIMIT_REF + 1
		end
	end
	for i=1,#ACTION_TRIGGER_SEGMENTS,1 do
		ACTION_TRIGGER_COMPONENT = ACTION_TRIGGER_COMPONENT .. CreateActionTriggerComponent(ACTION_TRIGGER_SEGMENTS[i])	
	end
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
			<Property name="RootMotionEnabled" value="True" />
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

function FormatPath(FILEPATH)
	return string.gsub(FILEPATH, string.char(92) .. string.char(92), string.char(92))	
end

function GetObjectID(SCENEPATH)
	return string.gsub(string.match(string.match(SCENEPATH, "^.+/(.+)$"), "(.+)%.(.+)"), ".SCENE", "")
end

AddShipsRewardsToQuickActionMenu() 

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MULTITOOL-SEED-GENERATOR.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["MOD_DESCRIPTION"]			= "Adds ships to the quick action menu",
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
	}
}

