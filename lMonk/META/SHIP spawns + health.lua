--------------------------------------------------------------
local desc = [[
  Increase number of attackers in bounty and pirate missions
  Reduce number of planet flybys and outpost visits
  Increase enemy and NPC ships total health
]]------------------------------------------------------------

local general_spawn_counters = {
	{'FlybySpawns',					'Count',		0,		4},
	{'FlybySpawns',					'Spread',		30,		70},
	{'FlybySpawns',					'StartTime',	0,		4},
	{'FlybySpawns',					'MinRange',		200},
	{'FlybySpawns',					'Offset',		240},
	{'OutpostSpawns',				'Count',		-1,		-1},
	{'PirateSpawns',				'Spread',		0,		40},
	{'PirateSpawns',				'Count',		0,		2},
	{'PlanetaryPirateFlybySpawns',	'Count',		0,		1},
	{'PlanetaryPirateFlybySpawns',	'StartTime',	0,		3},
	{'PlanetaryPirateRaidSpawns',	'Count',		0,		1},
	{'PlanetaryPirateRaidSpawns',	'StartTime',	0,		3},
	{'PirateBattleSpawns',			'Count',		0,		2},
	{'FrigateFlybySpawns',			'MinRange',		800},
	{'FrigateFlybySpawns',			'Count',		0,		1},
}
function general_spawn_counters:Get(x)
	T = {
		REPLACE_TYPE 			= 'All',
		MATH_OPERATION 			= '+',
		PRECEDING_FIRST			= true,
		PRECEDING_KEY_WORDS		= x[1]
	}
	if x[4] then
		T.SPECIAL_KEY_WORDS		= {x[2], 'Vector2f.xml'}			
		T.VALUE_CHANGE_TABLE	= {{'x', x[3]}, {'y', x[4]}}
	else
		T.VALUE_CHANGE_TABLE	= {{x[2], x[3]}}
	end
	return T
end

local bounty_spawn_count = {
	multi = true,
	props = {			'Count','Spread',	'StartTime'},
	{'BOUNTY1',			0, 2,	0, 30,		0, 2},
	{'BOUNTY2',			0, 2,	0, 35,		0, 2},
	{'BOUNTY3',			1, 1,	0, 40,		0, 3},
	{'EASYBOUNTY1',		0, 1,	0, 30,		0, 2},
	{'EASYBOUNTY2',		0, 1,	0, 30,		0, 2},
	{'MEDBOUNTY1',		0, 1,	0, 30,		0, 2},
	{'MEDBOUNTY2',		1, 1,	0, 40,		0, 2},
	{'HARDBOUNTY1',		1, 2,	0, 35,		0, 3},
	{'HARDBOUNTY2',		1, 2,	0, 40,		0, 3},
	{'WEAPGUY_BOUNTY',	0, 2,	0, 30,		0, 2},
	{'PIRATE_SQUAD',	0, 1,	0, 80,		0, 3},
	{'PP_BOUNTY',		1, 3,	0, 35,		0, 2},
}
function bounty_spawn_count:Get(x)
	local T = {}
	for i=2, 6, 2 do
		table.insert(T, {
			MATH_OPERATION 		= '+',
			SPECIAL_KEY_WORDS	= {'Id', x[1]},
			PRECEDING_KEY_WORDS	= self.props[i/2],
			VALUE_CHANGE_TABLE	= { {'x', x[i]}, {'y', x[i+1]} }
		})
	end
	return T
end

local ai_attacker = {
	{'PIRATE_EASY', 	'PIRATELOOT_EASY',	1.2},
	{'PIRATE',		 	'PIRATELOOT',		1.4},
	{'PIRATE_HARD',	 	'PIRATELOOT_HARD',	1.6},
	{'RAID_BUILDING', 	'RAIDLOOT',			1.2},
	{'RAID_DOGFIGHT',	'RAIDLOOT',			1.5},
	{'POLICE',			'POLICELOOT',		1},
	{'PLANET_FLYBY',	'PIRATELOOT_EASY',	1.8},
	multi = true
}
function ai_attacker:Get(x)
	return {{
		PRECEDING_FIRST		= true,
		PRECEDING_KEY_WORDS = 'Definitions',
		SPECIAL_KEY_WORDS	= {'Id', x[1]},
		VALUE_CHANGE_TABLE	= { {'Reward', x[2]} }
	},{
		PRECEDING_FIRST		= true,
		PRECEDING_KEY_WORDS = 'Definitions',
		MATH_OPERATION 		= '*',
		INTEGER_TO_FLOAT	= 'Preserve',
		SPECIAL_KEY_WORDS	= {'Id', x[1]},
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

local source_exp_spawn_table = 'METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META ship spawns & health.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	-- {
		-- MBIN_FILE_SOURCE	= source_exp_spawn_table,
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {'Id', 'BIO_FRIG'},
				-- VALUE_CHANGE_TABLE	= {
					-- {'SpawnChance', 90}
				-- }
			-- }
		-- }
	-- },
	{
		MBIN_FILE_SOURCE	= source_exp_spawn_table,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(bounty_spawn_count)
	},
	{
		MBIN_FILE_SOURCE	= source_exp_spawn_table,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(general_spawn_counters)
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SPACE/AISPACESHIPATTACKDATATABLE.MBIN',
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(ai_attacker)
	}
}}}}
