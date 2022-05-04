---------------------------------------------------------
local desc = [[
  Increase hit damage all around - player, enemies & NPC
]]-------------------------------------------------------

local Player_Damage = {
	{'BASICDAMAGE',		2},		-- 1
	{'LASERDAMAGE',		2},		-- 3
	{'AISHIPGUN',		1.5},	-- 14
	{'POLICEGUN',		1.5},	-- 16
	{'POLICELASER',		1.5},	-- 16
	{'BOUNTYGUN1',		1.5},	-- 16
	{'BOUNTYGUN2',		1.5},	-- 16
	{'BOUNTYGUN3',		1.5},	-- 16
	{'BOUNTYLASER1',	1.25},	-- 20
	{'FREIGHTERGUN',	2},		-- 20
	{'FREIGHTERLASER',	2},		-- 20
	{'SHIPLASER',		2},		-- 15
	{'ROBOTGUNDMG',		2},		-- 2
	{'ROBOTBIGGUN',		1.5},	-- 6
	{'WALKERLASER',		1.4},	-- 5
	{'MINIDRONE_DMG',	1.5},	-- 6
	{'MPGUN',			0.5},	-- 4
	{'MPSHIPGUN',		0.2},	-- 25
	{'MPSHIPSHOTGUN',	0.2},	-- 90
	{'MPSHIPMINIGUN',	0.2},	-- 17.5
	{'MPSHIPPLASMAGUN',	0.2},	-- 125
	{'MPSHIPROCKET',	0.1},
}
function Player_Damage:Get(x)
	return {
		INTEGER_TO_FLOAT	= 'PRESERVE',
		MATH_OPERATION 		= '*',
		SPECIAL_KEY_WORDS	= {'Id', x[1]},
		VALUE_CHANGE_TABLE	= { {'Damage', x[2]} }
	}
end

local Projectile_Damage = {
	{'AISHIPGUN',		1.5},	-- 15
	{'TRADERGUN',		1.2},	-- 40
	{'POLICEGUN',		1.5},	-- 15
	{'FREIGHTGUN',		10},	-- 15
	{'COP_FREIGHTGUN',	1.1},	-- 300
	{'BASE_TURRET_M',	1.6},	-- 200
	{'BASE_TURRET_L',	2.2},	-- 100
	{'AI_SHIP',			5},		-- 9
	{'AI_FREIGHTER',	5},		-- 15
	{'COP_FREIGHTER',	13},	-- 15
	{'ROBOTGUN',		10},	-- 1
	{'ROBOTGUNWEAK',	10},	-- 1
	{'ROBOTBIGGUN',		20},	-- 1
	{'ROBOT_WALKER',	20},	-- 1
	{'MINIROBOTGUN',	10},	-- 1
}
function Projectile_Damage:Get(x)
	return {
		INTEGER_TO_FLOAT	= 'PRESERVE',
		MATH_OPERATION 		= '*',
		SPECIAL_KEY_WORDS	= {'Id', x[1]},
		VALUE_CHANGE_TABLE	= { {'DefaultDamage', x[2]} }
	}
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE DAMAGE+PROJECTILE.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/DAMAGETABLE.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Player_Damage)
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/PROJECTILES/PROJECTILETABLE.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Projectile_Damage)
	}
}}}}
