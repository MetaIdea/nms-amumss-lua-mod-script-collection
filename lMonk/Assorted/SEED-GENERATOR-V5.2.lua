--[[--------------------------------------------------
  SEED GENERATOR by Mjjstral - v5.2 updated by lMonk
------------------------------------------------------
  Set the desired number of seeds you want generated
  for each model (0 skips the unwanted)
----------------------------------------------------]]
local seed_counter = {
	Fighter		= 0,
	Dropship	= 0,
	Scientific	= 0,
	Shuttle		= 0,
	Royal		= 1000,
	Bioship		= 0,
	Sailship	= 0,
	Freighter	= 0,
	Capital		= 0,
	Multitool	= 0,
	Royaltool	= 0
}

------------------------------------------------------
--- CODE below(!)
------------------------------------------------------

local function GetInventorySlots(inv)
	if not inv then return '' end
	local slots = '<Property name="Slots">'
	for _,i in ipairs(inv) do
		if i.amount then i.amount = 1000 end
		slots = slots..[[
			<Property value="GcInventoryElement.xml">
				<Property name="Type" value="GcInventoryType.xml">
					<Property name="InventoryType" value="Technology"/>
				</Property>
				<Property name="Id" value="]]..i.id..[["/>
				<Property name="Amount" value="]]..(i.amount or -1)..[["/>
				<Property name="MaxAmount" value="]]..(i.amount or 100)..[["/>
				<Property name="FullyInstalled" value="True"/>
				<Property name="Index" value="GcInventoryIndex.xml">
					<Property name="X" value="-1"/>
					<Property name="Y" value="-1"/>
				</Property>
			</Property>]]
	end
	return slots..'</Property>'
end

local function RewardShip(seed, item)
	return [[
	<Property value="GcRewardTableItem.xml">
		<Property name="PercentageChance" value="1"/>
		<Property name="Reward" value="GcRewardSpecificShip.xml">
			<Property name="ShipResource" value="GcResourceElement.xml">
				<Property name="Filename" value="]]..item.path..[["/>
				<Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="]]..tonumber(seed)..[["/>
					<Property name="UseSeedValue" value="True"/>
				</Property>
			</Property>
			<Property name="ShipLayout" value="GcInventoryLayout.xml">
				<Property name="Slots" value="18"/>
				<Property name="Seed" value="GcSeed.xml">
					<Property name="UseSeedValue" value="True"/>
				</Property>
				<Property name="Level" value="1"/>
			</Property>
			<Property name="ShipInventory" value="GcInventoryContainer.xml">
				]]..GetInventorySlots(item.inv or nil)..[[
				<Property name="ValidSlotIndices"/>
				<Property name="Class" value="GcInventoryClass.xml">
					<Property name="InventoryClass" value="A"/>
				</Property>
			</Property>
			<Property name="ShipType" value="GcSpaceshipClasses.xml">
				<Property name="ShipClass" value="]]..item.class..[["/>
			</Property>
			<Property name="NameOverride" value="]]..seed..[["/>
			<Property name="IsGift" value="True"/>
			<Property name="IsRewardShip" value="True"/>
		</Property>
	</Property>]]
end

local function RewardTool (seed, item)
	return [[
	<Property value="GcRewardTableItem.xml">
		<Property name="PercentageChance" value="1"/>
		<Property name="Reward" value="GcRewardSpecificWeapon.xml">
			<Property name="WeaponResource" value="GcExactResource.xml">
				<Property name="Filename" value="]]..item.path..[["/>
				<Property name="GenerationSeed" value="GcSeed.xml">
					<Property name="Seed" value="]]..tonumber(seed)..[["/>
					<Property name="UseSeedValue" value="True"/>
				</Property>
			</Property>
			<Property name="WeaponLayout" value="GcInventoryLayout.xml">
				<Property name="Slots" value="12"/>
				<Property name="Seed" value="GcSeed.xml">
					<Property name="Seed" value="]]..tonumber(seed)..[["/>
					<Property name="UseSeedValue" value="True"/>
				</Property>
				<Property name="Level" value="1"/>
			</Property>
			<Property name="WeaponInventory" value="GcInventoryContainer.xml">
				]]..GetInventorySlots(item.inv)..[[
				<Property name="ValidSlotIndices"/>
				<Property name="Class" value="GcInventoryClass.xml">
					<Property name="InventoryClass" value="A"/>
				</Property>
			</Property>
			<Property name="WeaponType" value="GcWeaponClasses.xml">
				<Property name="WeaponStatClass" value="Pistol"/>
			</Property>
			<Property name="NameOverride" value="]]..seed..[["/>
			<Property name="IsGift" value="True"/>
			<Property name="IsRewardWeapon" value="True"/>
		</Property>
	</Property>]]
end

local item_inventory = {
	normal_ship = {
		{id='HYPERDRIVE',		amount=true},
		{id='LAUNCHER',			amount=true},
		{id='SHIPSHIELD',		amount=true},
		{id='SHIPJUMP1',		amount=true},
		{id='PHOTONIX_CORE'},
		{id='SHIPGUN1'},
	},
	bio_ship = {
		{id='WARP_ALIEN',		amount=true},
		{id='LAUNCHER_ALIEN',	amount=true},
		{id='SHIELD_ALIEN',		amount=true},
		{id='SHIPJUMP_ALIEN',	amount=true},
		{id='SHIPLAS_ALIEN'},
		{id='SHIPGUN_ALIEN'},
	},
	sail_ship = {
		{id='HYPERDRIVE',		amount=true},
		{id='LAUNCHER',			amount=true},
		{id='SHIPSHIELD',		amount=true},
		{id='SHIPJUMP1',		amount=true},
		{id='SOLAR_SAIL'},
		{id='SHIPGUN1'},
	},
	freighter = {
		{id='F_HYPERDRIVE',		amount=true},
		{id='F_HDRIVEBOOST1'},
	},
	weapon = {
		{id='LASER',			amount=true},
		{id='BOLT'},
		{id='SCAN1'},
		{id='SCANBINOC1'}
	}
}

local seed_model = {
	Fighter = {
		path	= 'MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN',
		icon	= 'SPECIALSHOP/SPECIAL.TWITCH.SHIP08.DDS',
		inv		= item_inventory.normal_ship,
		class	= 'Fighter',
		reward	= RewardShip
	},
	Dropship = {
		path	= 'MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN',
		icon	= 'SPECIALSHOP/SPECIAL.TWITCH.SHIP04.DDS',
		inv		= item_inventory.normal_ship,
		class	= 'Dropship',
		reward	= RewardShip
	},
	Scientific = {
		path	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN',
		icon	= 'SPECIALSHOP/SPECIAL.TWITCH.SHIP01.DDS',
		inv		= item_inventory.normal_ship,
		class	= 'Scientific',
		reward	= RewardShip
	},
	Shuttle = {
		path	= 'MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN',
		icon	= 'SPECIALSHOP/SPECIAL.TWITCH.SHIP05.DDS',
		inv		= item_inventory.normal_ship,
		class	= 'Shuttle',
		reward	= RewardShip
	},
	Royal = {
		path	= 'MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN',
		icon	= 'SPECIALSHOP/SPECIAL.EXPEDITION.SHIP01.DDS',
		inv		= item_inventory.normal_ship,
		class	= 'Royal',
		reward	= RewardShip
	},
	Bioship = {
		path	= 'MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN',
		icon	= 'SPECIALSHOP/SPECIAL.INFESTEDPLANT03.DDS',
		inv		= item_inventory.bio_ship,
		class	= 'Alien',
		reward	= RewardShip
	},
	Sailship = {
		path	= 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN',
		icon	= 'SPECIALSHOP/SPECIAL1.S_SAIL_2.DDS',
		inv		= item_inventory.sail_ship,
		class	= 'Sail',
		reward	= RewardShip
	},
	Freighter = {
		path	= 'MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTER_PROC.SCENE.MBIN',
		icon	= 'QUICKMENU/BUILDINGS.CRASHEDFREIGHTER.DDS',
		inv		= item_inventory.freighter,
		class	= 'Freighter',
		reward	= RewardTool
	},
	Capital = {
		path	= 'MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CAPITALFREIGHTER_PROC.SCENE.MBIN',
		icon	= 'QUICKMENU/BUILDINGS.CRASHEDFREIGHTER.DDS',
		inv		= item_inventory.freighter,
		class	= 'Freighter',
		reward	= RewardTool
	},
	Multitool =	{
		path	= 'MODELS/COMMON/WEAPONS/MULTITOOL/MULTITOOL.SCENE.MBIN',
		icon	= 'SPECIALSHOP/SPECIAL.TWITCH.GUN02.DDS',
		inv		= item_inventory.weapon,
		reward	= RewardTool
	},
	Royaltool = {
		path	= 'MODELS/COMMON/WEAPONS/MULTITOOL/ROYALMULTITOOL.SCENE.MBIN',
		icon	= 'SPECIALSHOP/SPECIAL1.EXPEDITION.PETCUSTOM05.DDS',
		inv		= item_inventory.weapon,
		reward	= RewardTool
	}
}

local function GenRewardTableEntry(reward_id, sub_entry, choice_type)
	return [[
	<Property value="GcGenericRewardTableEntry.xml">
		<Property name="Id" value="]]..reward_id..[[" />
		<Property name="List" value="GcRewardTableItemList.xml">
			<Property name="RewardChoice" value="]]..(choice_type or 'SelectAlways')..[[" />
			<Property name="List">
				]]..sub_entry..[[
			</Property>
		</Property>
	</Property>]]
end

local function AnimationEntry(anim_id)
	return [[
	<Property value="TkAnimationData.xml">
		<Property name="Anim" value="]]..anim_id..[["/>
		<Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN"/>
		<Property name="AnimType" value="OneShotBlendable"/>
		<Property name="Speed" value="1"/>
		<Property name="ActionFrame" value="-1"/>
		<Property name="CreatureSize" value="AllSizes"/>
		<Property name="Active" value="True"/>
		<Property name="GameData" value="TkAnimationGameData.xml">
			<Property name="BlockPlayerWeapon" value="Unblocked"/>
		</Property>
	</Property>]]
end

local function PlayerEmoteEntry(anim_id, icon)
	return [[
	<Property value="GcPlayerEmote.xml">
		<Property name="Title" value="]]..anim_id..[[" />
		<Property name="AnimationName" value="]]..anim_id..[[" />
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/]]..icon..[[" />
		</Property>
		<Property name="AvailableUnderwater" value="True" />
	</Property>
	<Property value="GcPlayerEmote.xml">
		<Property name="Title" value="]]..anim_id..[[" />
		<Property name="AnimationName" value="]]..anim_id..[[" />
		<Property name="Icon" value="TkTextureResource.xml">
			<Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/]]..icon..[[" />
		</Property>
		<Property name="AvailableUnderwater" value="False" />
	</Property>]]
end

local function ActionTrigRewardEntry(reward_id)
	return [[
	<Property value="GcActionTrigger.xml">
		<Property name="Event" value="GcAnimFrameEvent.xml">
			<Property name="Anim" value="]]..reward_id..[[" />
		</Property>
		<Property name="Action">
			<Property value="GcRewardAction.xml">
				<Property name="Reward" value="]]..reward_id..[[" />
			</Property>
		</Property>
	</Property>]]
end

local function TriggerActComponent(triggersList)
	return [[
	<Property value="GcTriggerActionComponentData.xml">
		<Property name="States">
			<Property value="GcActionTriggerState.xml">
				<Property name="StateID" value="BOOT" />
				<Property name="Triggers">
					]]..triggersList..[[
				</Property>
			</Property>
		</Property>
	</Property>]]
end

local function GenerateSeed()
	return string.format('0x%X%X%X%X',
		math.random(0, 2^16), math.random(0, 2^16),
		math.random(0, 2^16), math.random(0, 2^16)
	)
end

-- MAIN work
local function CreateSeedRewardLists()
	-- Initialize a seed for the random generator
	math.randomseed(82398 * os.time()); math.random()
	local entries = {
		emotes	 = {},
		rewards  = {},
		anims	 = {},
		triggers = {}
	}
	for model, mdata in pairs(seed_model) do
		local T_rewards = {}
		if seed_counter[model] > 0 then
			print(string.format('Generating %s %s seeds...', seed_counter[model], model))
			for _=1, seed_counter[model] do
				table.insert(T_rewards, mdata.reward(GenerateSeed(), mdata))
			end
			mdata.rewardId = model..'_Reward'
			table.insert(entries.emotes, PlayerEmoteEntry(mdata.rewardId, mdata.icon))
			table.insert(entries.rewards, GenRewardTableEntry(mdata.rewardId, table.concat(T_rewards)))
			table.insert(entries.anims, AnimationEntry(mdata.rewardId))
			table.insert(entries.triggers, TriggerActComponent(ActionTrigRewardEntry(mdata.rewardId)))
		end
	end
	return entries
end

local new_entries = CreateSeedRewardLists()

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__SEED-GENERATOR-v5.1.pak',
	MOD_AUTHOR			= 'lMonk (original by Mjjstral)',
	MOD_DESCRIPTION		= 'Adds random seed buttons to the quick action emote menu',
	NMS_VERSION			= '3.8+',
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Filename', 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/0H_EMOTE_CALL_PET.ANIM.MBIN'},
				ADD_OPTION			= 'ADDAfterSection',
				ADD 				= table.concat(new_entries.anims)
			},
			{
				SPECIAL_KEY_WORDS	= {'StateID', 'BOOT'},
				SECTION_UP			= 2,
				ADD_OPTION			= 'ADDAfterSection',
				ADD 				= table.concat(new_entries.triggers)
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'GenericTable',
				ADD 				= table.concat(new_entries.rewards)
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/UI/EMOTEMENU.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'Emotes',
				ADD 				= table.concat(new_entries.emotes)
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/EFFECTS/ENGINES/SPEEDCOOL.ANIM.MBIN',
				'MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'FrameCount',	10}
				}
			}
		}
	}
}}}}