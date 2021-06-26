--[[┎────────────────────────────────────────────────────────────
	┃ Increase number of attackers in bounty and pirate missions
	┃ Reduce number of planet flybys and outpost visits
	┃ Increase enemy and NPC ships total health
────┸────────────────────────────────────────────────────────--]]
Bounty_Spawn_Count = {
	dat = {
		{'BOUNTY1',			0, 1},
		{'BOUNTY2',			2, 3},
		{'BOUNTY3',			1, 2},
		{'EASYBOUNTY1',		2, 3},
		{'EASYBOUNTY2',		2, 3},
		{'MEDBOUNTY1',		3, 4},
		{'MEDBOUNTY2',		3, 4},
		{'HARDBOUNTY1',		5, 6},
		{'HARDBOUNTY2',		5, 6},
		{'WEAPGUY_BOUNTY',	5, 6},
		{'PIRATE_SQUAD',	5, 6},
		{'PP_BOUNTY',		4, 5}
	},
	Get = function(x)
		return {{
			MATH_OPERATION 		= '+',
			SPECIAL_KEY_WORDS	= {'Id',x[1]},
			PRECEDING_KEY_WORDS	= 'Count',
			VALUE_CHANGE_TABLE	= { {'x', x[2]}, {'y', x[3]} }
		}}
	end
}

Pirate_Spawn_Count = {
	dat = {
		{{'FlybySpawns',	'Spread'},			12, 14},
		{{'FlybySpawns',	'Count'},			-1, -1},
		{{'OutpostSpawns',	'Spread'},			12, 14},
		{{'OutpostSpawns',	'Count'},			-1, -1},
		{{'PirateSpawns',	'Count'},			0,  2},
		{{'PirateSpawns', 'Count', 'Count'},	1,  1},
		{{'PirateBattleSpawns', 'Count'},		0,  2}
	},
	Get = function(x)
		return {{
			MATH_OPERATION 		= '+',
			PRECEDING_KEY_WORDS	= x[1],
			VALUE_CHANGE_TABLE	= { {'x', x[2]}, {'y', x[3]} }
		}}
	end
}

Ship_Stats = {
	dat = {
		{'PIRATE_FREIGHT',	'MEDIUM',	5},		-- 3600
		{'AI_EASY',			'MEDIUM',	2.4},	-- 6200
		{'AI_MEDIUM',		'HARD',		2.4},	-- 8000
		{'AI_HARD',			'HARD',		1.8},	-- 14000
		{'AI_SOLO',			'SOLO',		1.4},	-- 30000
		{'PIRATE',			'MEDIUM',	3.2},	-- 6200
		{'POLICE',			'HARD',		2.2},	-- 14000
		{'TRADE_EASY',		'MEDIUM',	3.2},	-- 6000
		{'TRADE_MED',		'HARD',		3.0},	-- 8000
		{'TRADE_HARD',		'HARD',		1.8},	-- 14000
		{'BOUNTY',			'HARD',		1.8}	-- 20000
	},
	Get = function(x)
		return {{
			SPECIAL_KEY_WORDS	= {'Id', x[1]},
			VALUE_CHANGE_TABLE	= { {'Behaviour', x[2]} }
		},{
			MATH_OPERATION 		= '*',
			SPECIAL_KEY_WORDS	= {'Id', x[1]},
			VALUE_CHANGE_TABLE	= { {'Health', x[3]} }
		}}
	end
}

local function BuildExmlChangeTable(tbl)
	local T = {}
	for i = 1, #tbl.dat do
		local T2 = tbl.Get(tbl.dat[i])
		for j = 1, #T2 do table.insert(T, T2[j]) end
	end
	return T
end

Source_Exp_Spawn_Table = 'METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META ship spawns & health.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_META ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= Source_Exp_Spawn_Table,
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				PRECEDING_KEY_WORDS	= 'PirateBountySpawns',
				VALUE_CHANGE_TABLE	= {
					{'AttackData',	'AI_HARD'}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= Source_Exp_Spawn_Table,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Bounty_Spawn_Count)
	},
	{
		MBIN_FILE_SOURCE	= Source_Exp_Spawn_Table,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Pirate_Spawn_Count)
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SPACE/AISPACESHIPATTACKDATATABLE.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(Ship_Stats)
	}
}}}}
