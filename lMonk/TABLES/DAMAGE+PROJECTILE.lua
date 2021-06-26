--[[┎────────────────────────────────────────────────────────────
	┃ Increase enemy and NPC damage
────┸────────────────────────────────────────────────────────--]]
Player_Damage = {
	dat = {
		{'BASICDAMAGE',		2},		-- 1
		{'LASERDAMAGE',		2.2},	-- 5
		{'AISHIPGUN',		3},		-- 14
		{'POLICEGUN',		4},		-- 16
		{'BOUNTYGUN1',		4},		-- 16
		{'BOUNTYGUN2',		4},		-- 16
		{'BOUNTYGUN3',		4},		-- 16
		{'FREIGHTERGUN',	4},		-- 20
		{'FREIGHTERLASER',	4},		-- 20
		{'SHIPLASER',		3},		-- 15
		{'ROBOTGUNDMG',		2.5},	-- 2
		{'ROBOTBIGGUN',		2},		-- 8
		{'WALKERLASER',		2.4},	-- 5
		{'MINIDRONE_DMG',	3},		-- 6
	},
	Get = function(x)
		return {
			MATH_OPERATION 		= '*',
			SPECIAL_KEY_WORDS	= {'Id', x[1]},
			VALUE_CHANGE_TABLE	= { {'Damage', x[2]} }
		}
	end
}

Projectile_Damage = {
	dat = {
		{'AISHIPGUN',		12},	-- 15
		{'TRADERGUN',		4},		-- 40
		{'POLICEGUN',		12},	-- 15
		{'BOUNTYGUN1',		1.6},	-- 200
		{'BOUNTYGUN2',		1.6},	-- 400
		{'BOUNTYGUN3',		1.6},	-- 800
		{'FREIGHTGUN',		14},	-- 15
		{'COP_FREIGHTGUN',	2.2},	-- 300
		{'BASE_TURRET_M',	1.6},	-- 200
		{'BASE_TURRET_L',	2.2},	-- 100
		{'AI_SHIP',			16},	-- 9
		{'AI_FREIGHTER',	14},	-- 15
		{'COP_FREIGHTER',	22},	-- 15
		{'ROBOTGUN',		5},		-- 1
		{'ROBOTBIGGUN',		16},	-- 1
		{'ROBOT_WALKER',	12},	-- 1
		{'MINIROBOTGUN',	18},	-- 1
	},
	Get = function(x)
		return {
			MATH_OPERATION 		= '*',
			SPECIAL_KEY_WORDS	= {'Id', x[1]},
			VALUE_CHANGE_TABLE	= { {'Damage', x[2]} }
		}
	end
}

local function BuildExmlChangeTable(tbl)
	local T = {}
	for i = 1, #tbl.dat do table.insert(T, tbl.Get(tbl.dat[i])) end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE DAMAGE+PROJECTILE.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_TABLES ~@~collection.pak',
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
