------------------------------------------------------------------
local mod_desc = [[
  Disable all multiplayer damage
  Reduce damage to creatures from mining laser
  !(doesn't work) Reduce self-inflicted damage from vehicle gun
  proper icon for the mech inventory
  More items at shops
  Higher substance amount at shops
]]----------------------------------------------------------------

local ECT = {
	{
		SPECIAL_KEY_WORDS	= {'Id', 'MP_ONFOOT',	'DamageType', 'VehicleGun'},
		SECTION_UP			= 1,
		SECTION_SAVE_TO		= 'gc_damage_multiplier'
	},
	{
		SECTION_EDIT 		= 'gc_damage_multiplier',
		INTEGER_TO_FLOAT	= 'Force',
		VALUE_CHANGE_TABLE 	= {
			{'Multiplier',	0}
		}
	},
	{
		SPECIAL_KEY_WORDS	= {'Id', 'SELF_VEHICLE'},
		PRECEDING_KEY_WORDS = 'Multipliers',
		CREATE_HOS			= true,
		SECTION_ADD_NAMED 	= 'gc_damage_multiplier'
	},
	{
		SECTION_EDIT 		= 'gc_damage_multiplier',
		VALUE_CHANGE_TABLE 	= {
			{'DamageType',	'Explosion'}
		}
	},
	{
		SPECIAL_KEY_WORDS	= {'Id', 'SELF_VEHICLE'},
		PRECEDING_KEY_WORDS = 'Multipliers',
		SECTION_ADD_NAMED 	= 'gc_damage_multiplier'
	},
	{
		REPLACE_TYPE 		= 'All',
		SPECIAL_KEY_WORDS	= {
			{'Id', 'MP_ONFOOT'},
			{'Id', 'MP_SHIP'},
			{'Id', 'MP_VEHICLE'}
		},
		VALUE_CHANGE_TABLE 	= {
			{'Multiplier',	0}
		}
	},
	{
		SPECIAL_KEY_WORDS	= {'TransferMech', 'TkTextureResource.xml'},
		VALUE_CHANGE_TABLE 	= {
			{'Filename',	'TEXTURES/UI/FRONTEND/ICONS/CATEGORIES/INVCAT.MECH.DDS'}
		}
	},
	{
		REPLACE_TYPE 		= 'All',
		MATH_OPERATION 		= '*',
		INTEGER_TO_FLOAT	= 'Preserve',
		PRECEDING_KEY_WORDS = 'TradeSettings',
		VALUE_CHANGE_TABLE 	= {
			{'MinItemsForSale',	1.5},
			{'MaxItemsForSale',	2}
		}
	},
	{
		REPLACE_TYPE 		= 'All',
		MATH_OPERATION 		= '*',
		INTEGER_TO_FLOAT	= 'Preserve',
		PRECEDING_KEY_WORDS = 'MinAmountOfSubstanceAvailable',
		VALUE_CHANGE_TABLE 	= {
			{'Ignore',		1.5},
			{'Ignore',		2.5},
			{'Ignore',		3},
			{'Ignore',		2}
		}
	},
	{
		REPLACE_TYPE 		= 'All',
		MATH_OPERATION 		= '*',
		INTEGER_TO_FLOAT	= 'Preserve',
		PRECEDING_KEY_WORDS = 'MaxAmountOfSubstanceAvailable',
		VALUE_CHANGE_TABLE 	= {
			{'Ignore',		1.5},
			{'Ignore',		2.5},
			{'Ignore',		3},
			{'Ignore',		2}
		}
	}
}
for _,dmg in ipairs({
	{id='DOOR',				dt='Laser',			ml=0.15},
	{id='DEPOT',			dt='Laser',			ml=0.01},
	{id='CREATURE',			dt='Laser',			ml=0.1},
	{id='ROBOT',			dt='VehicleLaser',	ml=0.4},
	{id='FIEND',			dt='Laser',			ml=0.1},
	{id='SELF_ONFOOT',		dt='Cannon',		ml=0.01},
	{id='SELF_ONFOOT',		dt='Explosion',		ml=0.02},
}) do
	ECT[#ECT+1] = {
		INTEGER_TO_FLOAT	= 'Force',
		SECTION_UP			= 1,
		SPECIAL_KEY_WORDS	= {'Id', dmg.id, 'DamageType', dmg.dt},
		VALUE_CHANGE_TABLE	= {
			{'Multiplier',	dmg.ml}
		}
	}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META default reality.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/DEFAULTREALITY.MBIN',
		EXML_CHANGE_TABLE	= ECT
	}
}}}}
