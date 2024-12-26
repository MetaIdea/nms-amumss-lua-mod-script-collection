--[[--------------------------------------------------
  SEED GENERATOR by lMonk (Original by Mjjstral)
------------------------------------------------------
  Set the desired number of seeds you want generated
  for each model (0 skips the unwanted)
----------------------------------------------------]]
local seed_counter = {
	Fighter		= 0,
	Dropship	= 0,
	Scientific	= 0,
	Shuttle		= 0,
	Royal		= 0,
	Bioship		= 0,
	Sailship	= 2,
	Freighter	= 0,
	Capital		= 0,
	Multitool	= 0,
	Royaltool	= 0
}

------------------------------------------------------
--- CODE below(!)
------------------------------------------------------

local function GetInventorySlots(tech)
	if not tech then return '' end
	local slots = ''
	for _,ti in ipairs(tech) do
		slots = slots..[[
			<Property value="GcInventoryElement.xml">
				<Property name="Type" value="GcInventoryType.xml">
					<Property name="InventoryType" value="Technology"/>
				</Property>
				<Property name="Id" value="]]..ti.id..[["/>
				<Property name="Amount" value="]]..(ti.amount and 1000 or -1)..[["/>
				<Property name="MaxAmount" value="]]..(ti.amount and 1000 or 100)..[["/>
				<Property name="FullyInstalled" value="True"/>
				<Property name="Index" value="GcInventoryIndex.xml">
					<Property name="X" value="-1"/>
					<Property name="Y" value="-1"/>
				</Property>
			</Property>]]
	end
	return '<Property name="Slots">'..slots..'</Property>'
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
				<Property name="Slots" value="36"/>
			</Property>
			<Property name="ShipInventory" value="GcInventoryContainer.xml">
				]]..GetInventorySlots(item.tech or nil)..[[
				<Property name="Class" value="GcInventoryClass.xml">
					<Property name="InventoryClass" value="A"/>
				</Property>
			</Property>
			<Property name="ShipType" value="GcSpaceshipClasses.xml">
				<Property name="ShipClass" value="]]..(item.class or '')..[["/>
			</Property>
			<Property name="NameOverride" value="]]..seed..[["/>
		</Property>
	</Property>]]
end

local function RewardTool(seed, item)
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
				<Property name="Slots" value="24"/>
			</Property>
			<Property name="WeaponInventory" value="GcInventoryContainer.xml">
				]]..GetInventorySlots(item.tech)..[[
				<Property name="Class" value="GcInventoryClass.xml">
					<Property name="InventoryClass" value="A"/>
				</Property>
			</Property>
			<Property name="WeaponType" value="GcWeaponClasses.xml">
				<Property name="WeaponStatClass" value="]]..(item.class or '')..[["/>
			</Property>
			<Property name="NameOverride" value="]]..seed..[["/>
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
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.TWITCH.SHIP08.DDS',
		tech	= item_inventory.normal_ship,
		class	= 'Fighter',
		reward	= RewardShip
	},
	Dropship = {
		path	= 'MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.TWITCH.SHIP04.DDS',
		tech	= item_inventory.normal_ship,
		class	= 'Dropship',
		reward	= RewardShip
	},
	Scientific = {
		path	= 'MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.TWITCH.SHIP01.DDS',
		tech	= item_inventory.normal_ship,
		class	= 'Scientific',
		reward	= RewardShip
	},
	Shuttle = {
		path	= 'MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.TWITCH.SHIP05.DDS',
		tech	= item_inventory.normal_ship,
		class	= 'Shuttle',
		reward	= RewardShip
	},
	Royal = {
		path	= 'MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.EXPEDITION.SHIP01.DDS',
		tech	= item_inventory.normal_ship,
		class	= 'Royal',
		reward	= RewardShip
	},
	Bioship = {
		path	= 'MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.INFESTEDPLANT03.DDS',
		tech	= item_inventory.bio_ship,
		class	= 'Alien',
		reward	= RewardShip
	},
	Sailship = {
		path	= 'MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL1.S_SAIL_2.DDS',
		tech	= item_inventory.sail_ship,
		class	= 'Sail',
		reward	= RewardShip
	},
	Freighter = {
		path	= 'MODELS/COMMON/SPACECRAFT/INDUSTRIAL/FREIGHTER_PROC.SCENE.MBIN',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/BUILDINGS.CRASHEDFREIGHTER.DDS',
		tech	= item_inventory.freighter,
		class	= 'Rifle', -- 'PlayerFreighter',
		reward	= RewardTool
	},
	Capital = {
		path	= 'MODELS/COMMON/SPACECRAFT/INDUSTRIAL/CAPITALFREIGHTER_PROC.SCENE.MBIN',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/BUILDINGS.CRASHEDFREIGHTER.DDS',
		tech	= item_inventory.freighter,
		class	= 'Rifle', -- 'PlayerFreighter',
		reward	= RewardTool
	},
	Multitool =	{
		path	= 'MODELS/COMMON/WEAPONS/MULTITOOL/MULTITOOL.SCENE.MBIN',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.TWITCH.GUN02.DDS',
		tech	= item_inventory.weapon,
		class	= 'Rifle',
		reward	= RewardTool
	},
	Royaltool = {
		path	= 'MODELS/COMMON/WEAPONS/MULTITOOL/ROYALMULTITOOL.SCENE.MBIN',
		icon	= 'TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL1.EXPEDITION.PETCUSTOM05.DDS',
		tech	= item_inventory.weapon,
		class	= 'Royal',
		reward	= RewardTool
	}
}

local function GenRewardTableEntry(reward_id, sub_entry)
	return [[
	<Property value="GcGenericRewardTableEntry.xml">
		<Property name="Id" value="]]..reward_id..[["/>
		<Property name="List" value="GcRewardTableItemList.xml">
			<Property name="RewardChoice" value="SelectAlways"/>
			<Property name="List">]]..sub_entry..[[</Property>
		</Property>
	</Property>]]
end

local function TriggerActionComponent(reward_id)
	return {
		PRECEDING_KEY_WORDS	= 'GcTriggerActionComponentData.xml',
		ADD_OPTION			= 'ADDAfterSection',
		ADD 				= [[
			<Property value="GcTriggerActionComponentData.xml">
				<Property name="States">
					<Property value="GcActionTriggerState.xml">
						<Property name="StateID" value="BOOT"/>
						<Property name="Triggers">
							<Property value="GcActionTrigger.xml">
								<Property name="Event" value="GcAnimFrameEvent.xml">
									<Property name="Anim" value="]]..reward_id..[["/>
								</Property>
								<Property name="Action">
									<Property value="GcGoToStateAction.xml">
										<Property name="State" value="REWARD"/>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
					<Property value="GcActionTriggerState.xml">
						<Property name="StateID" value="REWARD"/>
						<Property name="Triggers">
							<Property value="GcActionTrigger.xml">
								<Property name="Event" value="GcStateTimeEvent.xml">
									<Property name="Seconds" value="0"/>
								</Property>
								<Property name="Action">
									<Property value="GcRewardAction.xml">
										<Property name="Reward" value="]]..reward_id..[["/>
									</Property>
									<Property value="GcGoToStateAction.xml">
										<Property name="State" value="BOOT"/>
									</Property>
								</Property>
							</Property>
						</Property>
					</Property>
				</Property>
			</Property>]]
	}
end

local function AnimationEntry(anim_id)
	return {
		{
			SPECIAL_KEY_WORDS	= {'Anim', '0H_TURN_L'},
			SEC_SAVE_TO			= 'tk_animation_data'
		},
		{
			SEC_EDIT 			= 'tk_animation_data',
			VALUE_CHANGE_TABLE 	= {
				{'Anim', anim_id},
				{'Filename', 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/EMOTES/NULL.ANIM.MBIN'}
			}
		},
		{
			SPECIAL_KEY_WORDS	= {'Anim', '0H_GREET_MOB_04', 'Filename', 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/INTERACTION/GENERAL/0H_INTER_GREET_07.ANIM.MBIN'},
			ADD_OPTION			= 'ADDAfterSection',
			SEC_ADD_NAMED		 	= 'tk_animation_data'
		}
	}
end

local function PlayerEmoteEntry(anim_id, icon)
	return {
		{
			SPECIAL_KEY_WORDS	= {'Title', 'EMOTE_WAVE'},
			SEC_SAVE_TO			= 'gc_player_emote'
		},
		{
			SEC_EDIT 			= 'gc_player_emote',
			VALUE_CHANGE_TABLE 	= {
				{'Title',					anim_id},
				{'AnimationName',			anim_id},
				{'Filename',				icon},
				{'MoveToCancel',			false},
				{'AvailableUnderwater',		true}
			}
		},
		{
			PRECEDING_KEY_WORDS = 'Emotes',
			SEC_ADD_NAMED		 	= 'gc_player_emote'
		},
		{
			SEC_EDIT 			= 'gc_player_emote',
			VALUE_CHANGE_TABLE 	= {
				{'AvailableUnderwater',		false}
			}
		},
		{
			PRECEDING_KEY_WORDS = 'Emotes',
			SEC_ADD_NAMED		 	= 'gc_player_emote'
		}
	}
end

local function GenerateSeed()
	return string.format('0x%X%X', math.random(0xFFFFFFFF), math.random(0xFFFFFFFF))
end

-- MAIN tables
local t_emotes, t_rewards, t_player_char = {}, {}, {}
math.randomseed(os.time())
for model, mdata in pairs(seed_model) do
	local model_rewards = {}
	if seed_counter[model] > 0 then
		print(string.format('*** Generating %s %s seeds...', seed_counter[model], model))
		for _=1, seed_counter[model] do
			table.insert(model_rewards, mdata.reward(GenerateSeed(), mdata))
		end
		mdata.rewardId = 'R_'..model
		table.insert(t_rewards,	GenRewardTableEntry(mdata.rewardId, table.concat(model_rewards)))
		for _,emt in pairs(PlayerEmoteEntry(mdata.rewardId, mdata.icon)) do table.insert(t_emotes, emt) end
		table.insert(t_player_char,TriggerActionComponent(mdata.rewardId))
		for _,anm in pairs(AnimationEntry(mdata.rewardId)) do table.insert(t_player_char, anm) end
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__SEED-GENERATOR-v5.6.pak',
	MOD_AUTHOR			= 'lMonk (original by Mjjstral)',
	MOD_DESCRIPTION		= 'Adds random seed buttons to the quick action emote menu',
	NMS_VERSION			= '4.0+',
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= t_player_char
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/UI/EMOTEMENU.MBIN',
		EXML_CHANGE_TABLE	= t_emotes
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'GenericTable',
				ADD 				= table.concat(t_rewards)
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