---------------------------------------------------------
local mod_desc = [[
  Increase hit damage all around - player, enemies & NPC
]]-------------------------------------------------------

local ect_pr = {}
for id, dmg in pairs({
	SQUADGUN		= 8,	-- 40
	AISHIPGUN		= 1.6,	-- 15
	TRADERGUN		= 1.2,	-- 40
	POLICEGUN		= 1.6,	-- 15
	FREIGHTGUN		= 10,	-- 15
	COP_FREIGHTGUN	= 1.1,	-- 300
	BASE_TURRET_M	= 1.6,	-- 200
	BASE_TURRET_L	= 2.2,	-- 100
	AI_SHIP			= 4,	-- 10
	AI_FREIGHTER	= 4,	-- 15
	COP_FREIGHTER	= 15,	-- 15
	ROBOTGUN		= 10,	-- 1
	ROBOTGUNWEAK	= 10,	-- 1
	ROBOTBIGGUN		= 20,	-- 1
	ROBOT_WALKER	= 20,	-- 1
	MINIROBOTGUN	= 10,	-- 1
}) do
	ect_pr[#ect_pr+1] = {
		MATH_OPERATION 		= '*',
		INTEGER_TO_FLOAT	= 'Preserve',
		SPECIAL_KEY_WORDS	= {'Id', id},
		VALUE_CHANGE_TABLE	= {
			{'DefaultDamage', dmg}
		}
	}
end

local ect_dm = {}
for id, dmg in pairs({
	BASICDAMAGE		= {ml=2},		-- 1
	LASERDAMAGE		= {ml=2},		-- 3
	AISHIPGUN		= {ml=1.5},		-- 14
	POLICEGUN		= {ml=1.5},		-- 16
	POLICELASER		= {ml=1.3},		-- 16
	['BOUNTYGU.-']	= {ml=1.5},		-- 16
	['BOUNTYL.-']	= {ml=1.1},		-- 20
	FREIGHTERGUN	= {ml=2},		-- 20
	FREIGHTERLASER	= {ml=2},		-- 20
	SHIPLASER		= {ml=2},		-- 15
	ROBOTGUNDMG		= {ml=2},		-- 2
	ROBOTBIGGUN		= {ml=1.5},		-- 6
	WALKERLASER		= {ml=1.4},		-- 5
	MINIDRONE_DMG	= {ml=1.5},		-- 6
	-- ['MP.-']		= {ml=0.001},
}) do
	ect_dm[#ect_dm+1] = {
		INTEGER_TO_FLOAT	= 'Force',
		MATH_OPERATION 		= '*',
		SPECIAL_KEY_WORDS	= {'Id', id},
		VALUE_CHANGE_TABLE	= {
			{'Damage',		dmg.ml}
		}
	}
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__REALITY DAMAGE+PROJECTILE.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/PROJECTILES/PROJECTILETABLE.MBIN',
		EXML_CHANGE_TABLE	= ect_pr
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/DAMAGETABLE.MBIN',
		EXML_CHANGE_TABLE	= ect_dm
	}
}}}}
