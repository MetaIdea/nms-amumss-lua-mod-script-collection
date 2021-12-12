--------------------------------------------------------------
local desc = [[
  Increase number of attackers in bounty and pirate missions
  Reduce number of planet flybys and outpost visits
  Increase enemy and NPC ships total health
]]------------------------------------------------------------

local Bounty_Spawn_Count = {
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
}
function Bounty_Spawn_Count:Get(x)
	return {
		MATH_OPERATION 		= '+',
		SPECIAL_KEY_WORDS	= {'Id',x[1]},
		SECTION_ACTIVE		= 1,
		PRECEDING_KEY_WORDS	= 'Count',
		VALUE_CHANGE_TABLE	= { {'x', x[2]}, {'y', x[3]} }
	}
end

local Pirate_Spawn_Count = {
	{{'FlybySpawns',	'Spread'},			12, 14},
	{{'FlybySpawns',	'Count'},			-1, -1},
	{{'OutpostSpawns',	'Spread'},			12, 14},
	{{'OutpostSpawns',	'Count'},			-1, -1},
	{{'PirateSpawns',	'Count'},			0,  2},
	{{'PirateSpawns',	'Count', 'Count'},	1,  1},
	{{'PirateBattleSpawns', 'Count'},		0,  2}
}
function Pirate_Spawn_Count:Get(x)
	return {
		MATH_OPERATION 		= '+',
		PRECEDING_KEY_WORDS	= x[1],
		VALUE_CHANGE_TABLE	= { {'x', x[2]}, {'y', x[3]} }
	}
end

local Ship_Stats = {
	{'PIRATE_FREIGHT',	'MEDIUM',	5},		-- 3600
	{'AI_EASY',			'MEDIUM',	3},		-- 6200
	{'AI_MEDIUM',		'HARD',		3},		-- 8000
	{'AI_HARD',			'HARD',		1.8},	-- 14000
	{'AI_SOLO',			'SOLO',		1.8},	-- 30000
	{'PIRATE',			'MEDIUM',	3.6},	-- 6200
	{'POLICE',			'HARD',		2.5},	-- 14000
	{'TRADE_EASY',		'MEDIUM',	3.2},	-- 6000
	{'TRADE_MED',		'HARD',		3},		-- 8000
	{'TRADE_HARD',		'HARD',		2},		-- 14000
	{'BOUNTY',			'HARD',		2},		-- 20000
	multi = true
}
function Ship_Stats:Get(x)
	return {{
		SPECIAL_KEY_WORDS	= {'Id', x[1]},
		SECTION_ACTIVE		= 1,
		VALUE_CHANGE_TABLE	= { {'Behaviour', x[2]} }
	},{
		MATH_OPERATION 		= '*',
		INTEGER_TO_FLOAT	= 'PRESERVE',
		SPECIAL_KEY_WORDS	= {'Id', x[1]},
		SECTION_ACTIVE		= 1,
		VALUE_CHANGE_TABLE	= { {'Health', x[3]} }
	}}
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	if tbl.multi or false then
		for _,v in ipairs(tbl) do
			for _,w in ipairs( tbl:Get(v) ) do table.insert(T, w) end
		end
	else
		for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	end
	return T
end

local Source_Exp_Spawn_Table = 'METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META ship spawns & health.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_META ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
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
