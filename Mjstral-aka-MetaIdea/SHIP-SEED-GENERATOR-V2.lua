NUMBER_OF_SHIP_SEEDS =
{
	["FIGHTER"]		=	10,
	["DROPSHIP"] 	=	10,
	["SCIENTIFIC"]	= 	10,
	["SHUTTLE"]		=   10,
	["EXOTIC"]		=   10
}

SHIP_SEED_LIST = --Add your own seeds here. If you only want own seeds set the numbers above to 0.
{
["FIGHTER"] =
{
"-4266666232903262234", --HORIZOSHIP
"-8174559354674307366", --ALPHAVSHIP
}, 
["DROPSHIP"] =
{
--add your DROPSHIP seeds here
},
["SCIENTIFIC"] =
{
--add your SCIENTIFIC seeds here
},
["SHUTTLE"] =
{
--add your SHUTTLE seeds here
}, 
["EXOTIC"] =
{
--add your EXOTIC seeds here
}
}


SEPERATE_CATEGORIES_RANDOM_SHIP_BUTTON = true
RANDOM_SHIP_BUTTON = false
ENABLE_USER_SHIP_SEEDS = false
STANDARD_SHIP_LIST = false



----------------------------------------------------
--CODINGS-------------------------------------------
----------------------------------------------------

SHIP_TYPE = { "FIGHTER", "DROPSHIP", "SCIENTIFIC", "SHUTTLE", "EXOTIC" }

SHIP_TYPE_PATH = 
{
	["FIGHTER"]="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN",
	["DROPSHIP"]="MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN",
	["SCIENTIFIC"]="MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN",
	["SHUTTLE"]="MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN",
	["EXOTIC"]="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN"
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

-------------CUSTOM SHIP-------------------------------

CUSTOM_GENERICREWARD_ALL = ""

function CreateCustomShipRewardEntry(REWARD_ID, SHIP_SEED, SHIPTYPE)
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
			  <Property name="Reward" value="GcRewardSpecificShip.xml">
				<Property name="ShipResource" value="GcResourceElement.xml">
				  <Property name="Filename" value="]] .. SHIPTYPE .. [[" />
				  <Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="]] .. SHIP_SEED .. [[" />
					<Property name="UseSeedValue" value="True" />
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
				  <Property name="Width" value="0" />
				  <Property name="Height" value="0" />
				  <Property name="IsCool" value="False" />
				  <Property name="Version" value="0" />
				</Property>
			  </Property>
            <Property name="LabelID" value="" />
          </Property>
        </Property>
      </Property>
    </Property> 
]]
return GENERIC_REWARD_ENTRY
end


function CreateCustomShipRewardSubEntry(SHIP_SEED, SHIPTYPE, LABEL_ID)
local GENERIC_REWARD_SUB_ENTRY =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
			  <Property name="Reward" value="GcRewardSpecificShip.xml">
				<Property name="ShipResource" value="GcResourceElement.xml">
				  <Property name="Filename" value="]] .. SHIPTYPE .. [[" />
				  <Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="]] .. SHIP_SEED .. [[" />
					<Property name="UseSeedValue" value="True" />
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
				  <Property name="Version" value="0" />
				</Property>
			  </Property>
            <Property name="LabelID" value="]] .. LABEL_ID .. [[" />
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

NUMBER_OF_SHIP_SEEDS_DEFAULT =
{
	["FIGHTER"]		=	105,
	["DROPSHIP"] 	=	105,
	["SCIENTIFIC"]	= 	105,
	["SHUTTLE"]		=   105,
	["EXOTIC"]		=   105
}

CUSTOM_SHIP_SEED_LIST_DEFAULT =
{
	["FIGHTER"] =
	{
		"-4266666232903262234", --HORIZOSHIP
		"-8174559354674307366" 	--ALPHAVSHIP
		
	}, 
	["DROPSHIP"] =
	{
	
	},
	["SCIENTIFIC"] =
	{
		
	},
	["SHUTTLE"] =
	{
		
	}, 
	["EXOTIC"] =
	{
		
	}
}

ACTION_TRIGGER_HARD_LIMIT 	= 528 --32(32+1)/2
ACTION_TRIGGER_LIMIT 	= 32

ACTION_TRIGGER_SEGMENTS = {}
ACTION_TRIGGER_SEGMENT_COUNT = 1
SHIP_REWARD_COUNT_LIMIT_REF = 1

function AddShipsRewardsToQuickActionMenu()
	print("#################### ADDING SHIP SEEDS ########################")
	local SHIP_REWARD_COUNT = 1
	local SHIP_REWARD_ID = ""
	local Seed = ""
	for i=1,#SHIP_TYPE,1 do
		if ENABLE_USER_SHIP_SEEDS then
			for j=1,#SHIP_SEED_LIST[SHIP_TYPE[i]],1 do
				if SHIP_REWARD_COUNT > ACTION_TRIGGER_HARD_LIMIT then break end
				Seed = SHIP_SEED_LIST[SHIP_TYPE[i]][j]
				Seed_ = Seed
				if string.len(Seed)<16 or string.find(Seed,"0x") then Seed = HexToDec(Seed) end
				print(SHIP_REWARD_COUNT .. "." .. SHIP_TYPE[i] .. ": " .. Seed)
				SHIP_REWARD_ID = "CUSTOM_SHIP_" .. SHIP_REWARD_COUNT
				CUSTOM_GENERICREWARD_ALL = CUSTOM_GENERICREWARD_ALL .. CreateCustomShipRewardEntry(SHIP_REWARD_ID, Seed, SHIP_TYPE_PATH[SHIP_TYPE[i]])
				ANIM_TEMPLATE_ALL = ANIM_TEMPLATE_ALL .. CreateAnimEntry(SHIP_REWARD_ID)
				ACTION_TRIGGER_ALL = ACTION_TRIGGER_ALL .. CreateActionTriggerRewardEntry(SHIP_REWARD_ID, SHIP_REWARD_ID)
				QUICK_ACTION_BUTTON_ALL = QUICK_ACTION_BUTTON_ALL .. CreateQuickActionMenuEntry(SHIP_REWARD_COUNT .. "." .. string.sub(SHIP_TYPE[i],1,7) .. ": " .. Seed_, SHIP_REWARD_ID, BUTTON_ICON)	
				if SHIP_REWARD_COUNT_LIMIT_REF >= ACTION_TRIGGER_LIMIT then 
					table.insert(ACTION_TRIGGER_SEGMENTS, ACTION_TRIGGER_ALL) 
					ACTION_TRIGGER_ALL = ""
					ACTION_TRIGGER_LIMIT = ACTION_TRIGGER_LIMIT - 1
					SHIP_REWARD_COUNT_LIMIT_REF = 0
				end
				SHIP_REWARD_COUNT = SHIP_REWARD_COUNT + 1
				SHIP_REWARD_COUNT_LIMIT_REF = SHIP_REWARD_COUNT_LIMIT_REF + 1
			end	
		end	
	end
	for i=1,#SHIP_TYPE,1 do
		for j=1,NUMBER_OF_SHIP_SEEDS[SHIP_TYPE[i]],1 do
			if SHIP_REWARD_COUNT > ACTION_TRIGGER_HARD_LIMIT then break end
			Seed = GetSeed()
			SHIP_REWARD_ID = "CUSTOM_SHIP_" .. SHIP_REWARD_COUNT
			print(SHIP_REWARD_COUNT .. "." .. SHIP_TYPE[i] .. ": " .. Seed)
			CUSTOM_GENERICREWARD_ALL = CUSTOM_GENERICREWARD_ALL .. CreateCustomShipRewardEntry(SHIP_REWARD_ID, HexToDec(Seed), SHIP_TYPE_PATH[SHIP_TYPE[i]])
			ANIM_TEMPLATE_ALL = ANIM_TEMPLATE_ALL .. CreateAnimEntry(SHIP_REWARD_ID)
			ACTION_TRIGGER_ALL = ACTION_TRIGGER_ALL .. CreateActionTriggerRewardEntry(SHIP_REWARD_ID, SHIP_REWARD_ID)
			QUICK_ACTION_BUTTON_ALL = QUICK_ACTION_BUTTON_ALL .. CreateQuickActionMenuEntry(SHIP_REWARD_COUNT .. "." .. string.sub(SHIP_TYPE[i],1,7) .. ": " .. Seed, SHIP_REWARD_ID, BUTTON_ICON)
			if SHIP_REWARD_COUNT_LIMIT_REF >= ACTION_TRIGGER_LIMIT then 
				table.insert(ACTION_TRIGGER_SEGMENTS, ACTION_TRIGGER_ALL) 
				ACTION_TRIGGER_ALL = ""
				ACTION_TRIGGER_LIMIT = ACTION_TRIGGER_LIMIT - 1
				SHIP_REWARD_COUNT_LIMIT_REF = 0
			end
			SHIP_REWARD_COUNT = SHIP_REWARD_COUNT + 1
			SHIP_REWARD_COUNT_LIMIT_REF = SHIP_REWARD_COUNT_LIMIT_REF + 1
		end
	end
	for i=1,#ACTION_TRIGGER_SEGMENTS,1 do
		ACTION_TRIGGER_COMPONENT = ACTION_TRIGGER_COMPONENT .. CreateActionTriggerComponent(ACTION_TRIGGER_SEGMENTS[i])	
	end
end

SUB_REWARD_ENTRY_ALL = ""

function AddShipsRewardsToQuickActionMenuButtonGiveAllShips(REWARD_TYPE)
	print("#################### ADDING SHIP SEEDS ########################")
	local SHIP_REWARD_COUNT = 1
	local SHIP_REWARD_ID = ""
	local Seed = ""
	for i=1,#SHIP_TYPE,1 do
		if ENABLE_USER_SHIP_SEEDS then
			for j=1,#SHIP_SEED_LIST[SHIP_TYPE[i]],1 do
				Seed = SHIP_SEED_LIST[SHIP_TYPE[i]][j]
				Seed_ = Seed
				if string.len(Seed)<16 or string.find(Seed,"0x") then Seed = HexToDec(Seed) end
				print(SHIP_REWARD_COUNT .. "." .. SHIP_TYPE[i] .. ": " .. Seed)
				SUB_REWARD_ENTRY_ALL = SUB_REWARD_ENTRY_ALL .. CreateCustomShipRewardSubEntry(Seed, SHIP_TYPE_PATH[SHIP_TYPE[i]], SHIP_REWARD_COUNT .. "." .. string.sub(SHIP_TYPE[i],1,7) .. ": " .. Seed_)
				SHIP_REWARD_COUNT = SHIP_REWARD_COUNT + 1
			end	
		end	
	end
	for i=1,#SHIP_TYPE,1 do
		for j=1,NUMBER_OF_SHIP_SEEDS[SHIP_TYPE[i]],1 do
			--if SHIP_REWARD_COUNT > ACTION_TRIGGER_HARD_LIMIT then break end
			Seed = GetSeed()
			SHIP_REWARD_ID = "CUSTOM_SHIP_" .. SHIP_REWARD_COUNT
			SUB_REWARD_ENTRY_ALL = SUB_REWARD_ENTRY_ALL .. CreateCustomShipRewardSubEntry(HexToDec(Seed), SHIP_TYPE_PATH[SHIP_TYPE[i]], SHIP_REWARD_COUNT .. "." .. string.sub(SHIP_TYPE[i],1,7) .. ": " .. Seed)
			print(SHIP_REWARD_COUNT .. "." .. SHIP_TYPE[i] .. ": " .. Seed)
			SHIP_REWARD_COUNT = SHIP_REWARD_COUNT + 1
		end
	end
	local ID = "SHIPS" .. REWARD_TYPE
	QUICK_ACTION_BUTTON_ALL = QUICK_ACTION_BUTTON_ALL .. CreateQuickActionMenuEntry("All Ships", ID, BUTTON_ICON)	
	ANIM_TEMPLATE_ALL = ANIM_TEMPLATE_ALL .. CreateAnimEntry(ID)
	ACTION_TRIGGER_COMPONENT = ACTION_TRIGGER_COMPONENT .. CreateActionTriggerComponent(CreateActionTriggerRewardEntry(ID, ID))	
	CUSTOM_GENERICREWARD_ALL = CreateCustomShipRewardMainEntry(ID, SUB_REWARD_ENTRY_ALL, REWARD_TYPE) 
end

function AddShipsRewardsToQuickActionMenuButtonGiveAllShipsPerType(REWARD_TYPE)
	print("#################### ADDING SHIP SEEDS ########################")
	local SHIP_REWARD_COUNT = 1
	local SHIP_REWARD_ID = ""
	local Seed = ""
	if ENABLE_USER_SHIP_SEEDS then
		SUB_REWARD_ENTRY_ALL = ""
		for i=1,#SHIP_TYPE,1 do
			for j=1,#SHIP_SEED_LIST[SHIP_TYPE[i]],1 do
				Seed = SHIP_SEED_LIST[SHIP_TYPE[i]][j]
				Seed_ = Seed
				if string.len(Seed)<16 or string.find(Seed,"0x") then Seed = HexToDec(Seed) end
				print(SHIP_REWARD_COUNT .. "." .. SHIP_TYPE[i] .. ": " .. Seed)
				SUB_REWARD_ENTRY_ALL = SUB_REWARD_ENTRY_ALL .. CreateCustomShipRewardSubEntry(Seed, SHIP_TYPE_PATH[SHIP_TYPE[i]], SHIP_REWARD_COUNT .. "." .. string.sub(SHIP_TYPE[i],1,7) .. ": " .. Seed_)
				SHIP_REWARD_COUNT = SHIP_REWARD_COUNT + 1
			end	
			local ID = SHIP_TYPE[i] .. "_REWARD"
			QUICK_ACTION_BUTTON_ALL = QUICK_ACTION_BUTTON_ALL .. CreateQuickActionMenuEntry("RANDOM " .. SHIP_TYPE[i], ID, BUTTON_ICON)	
			ANIM_TEMPLATE_ALL = ANIM_TEMPLATE_ALL .. CreateAnimEntry(ID)
			ACTION_TRIGGER_COMPONENT = ACTION_TRIGGER_COMPONENT .. CreateActionTriggerComponent(CreateActionTriggerRewardEntry(ID, ID))	
			CUSTOM_GENERICREWARD_ALL = CUSTOM_GENERICREWARD_ALL .. CreateCustomShipRewardMainEntry(ID, SUB_REWARD_ENTRY_ALL, REWARD_TYPE) 
		end	
	end
	for i=1,#SHIP_TYPE,1 do
		SUB_REWARD_ENTRY_ALL = ""
		for j=1,NUMBER_OF_SHIP_SEEDS[SHIP_TYPE[i]],1 do
			--if SHIP_REWARD_COUNT > ACTION_TRIGGER_HARD_LIMIT then break end
			Seed = GetSeed()
			SHIP_REWARD_ID = "CUSTOM_SHIP_" .. SHIP_REWARD_COUNT
			SUB_REWARD_ENTRY_ALL = SUB_REWARD_ENTRY_ALL .. CreateCustomShipRewardSubEntry(HexToDec(Seed), SHIP_TYPE_PATH[SHIP_TYPE[i]], SHIP_REWARD_COUNT .. "." .. string.sub(SHIP_TYPE[i],1,7) .. ": " .. Seed)
			print(SHIP_REWARD_COUNT .. "." .. SHIP_TYPE[i] .. ": " .. Seed)
			SHIP_REWARD_COUNT = SHIP_REWARD_COUNT + 1
		end
		local ID = SHIP_TYPE[i] .. "_REWARD"
		QUICK_ACTION_BUTTON_ALL = QUICK_ACTION_BUTTON_ALL .. CreateQuickActionMenuEntry("RANDOM " .. SHIP_TYPE[i], ID, BUTTON_ICON)	
		ANIM_TEMPLATE_ALL = ANIM_TEMPLATE_ALL .. CreateAnimEntry(ID)
		ACTION_TRIGGER_COMPONENT = ACTION_TRIGGER_COMPONENT .. CreateActionTriggerComponent(CreateActionTriggerRewardEntry(ID, ID))	
		CUSTOM_GENERICREWARD_ALL = CUSTOM_GENERICREWARD_ALL .. CreateCustomShipRewardMainEntry(ID, SUB_REWARD_ENTRY_ALL, REWARD_TYPE) 
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

function CreateSeedChatMessage(ANIM_ID, REWARD)
local CHAT_MESSAGE =
[[
<Property value="GcRewardSendChatMessage.xml">
  <Property name="StatusMessageID" value="test1" />
  <Property name="CustomText" value="test2" />
</Property>
]]
return CHAT_MESSAGE
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

REWARD_TYPE = { "GiveAll", "Select", "SelectAlways", "TryEach", "SelectSilent", "TryFirst_ThenSelectAlways", "SelectFromSuccess" }


if SEPERATE_CATEGORIES_RANDOM_SHIP_BUTTON then AddShipsRewardsToQuickActionMenuButtonGiveAllShipsPerType("Select") end
--if STANDARD_SHIP_LIST then AddShipsRewardsToQuickActionMenu() end
--if RANDOM_SHIP_BUTTON then AddShipsRewardsToQuickActionMenuButtonGiveAllShips("SelectSilent") end



NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SHIP-SEED-GENERATOR.pak",
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

