--------------------------------------------------------------
local desc = [[
  Increase number of attackers in bounty and pirate missions
  Reduce number of planet flybys and outpost visits
  Increase enemy and NPC ships total health
]]------------------------------------------------------------

local general_spawn_counters = {
	{id='FlybySpawns',					pr='Count',		x=0,		y=2},
	{id='FlybySpawns',					pr='Spread',	x=30,		y=70},
	{id='FlybySpawns',					pr='StartTime',	x=0,		y=4},
	{id='FlybySpawns',					pr='MinRange',	r=200},
	{id='FlybySpawns',					pr='Offset',	r=240},
	{id='OutpostSpawns',				pr='Count',		x=-1,		y=-1},
	{id='PirateSpawns',					pr='Spread',	x=0,		y=40},
	{id='PirateSpawns',					pr='Count',		x=0,		y=1},
	{id='PlanetaryPirateFlybySpawns',	pr='Count',		x=0,		y=1},
	{id='PlanetaryPirateFlybySpawns',	pr='StartTime',	x=0,		y=3},
	{id='PlanetaryPirateRaidSpawns',	pr='Count',		x=0,		y=1},
	{id='PlanetaryPirateRaidSpawns',	pr='StartTime',	x=0,		y=3},
	{id='PirateBattleSpawns',			pr='Count',		x=0,		y=1},
	{id='FrigateFlybySpawns',			pr='MinRange',	r=800},
	{id='FrigateFlybySpawns',			pr='Count',		x=0,		y=1},
}
function general_spawn_counters:Get(v)
	local T = {}
	T[1] = {
		REPLACE_TYPE 			= 'All',
		MATH_OPERATION 			= '+',
		PRECEDING_FIRST			= true,
		PRECEDING_KEY_WORDS		= v.id
	}
	if v.x then
		T[1].SPECIAL_KEY_WORDS	= {v.pr, 'Vector2f.xml'}
		T[1].VALUE_CHANGE_TABLE	= {{'x', v.x}, {'y', v.y}}
	else
		T[1].VALUE_CHANGE_TABLE	= {{v.pr, v.r}}
	end
	return T
end

local bounty_spawn_count = {
	props = 		{'Count',	'Spread',	'StartTime'},
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
	{'PP_BOUNTY',		1, 2,	0, 35,		0, 2},
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
	{'PIRATE_EASY', 	1.1,	1.2,	'PIRATELOOT_EASY'},
	{'PIRATE',		 	1.2,	1.2,	'PIRATELOOT'},
	{'PIRATE_HARD',	 	1.3,	0.9,	'PIRATELOOT_HARD'},
	{'POLICE',			1.1,	1,		'POLICELOOT'},
	{'TRADER',			1.2,	1},
	{'TRADER_ESCORT',	1.1,	0.9},
	{'RAID_BUILDING', 	1.1,	1.2,	'RAIDLOOT'},
	{'RAID_DOGFIGHT',	1.2,	1.2,	'RAIDLOOT'},
	{'PLANET_FLYBY',	1.3,	2,		'PIRATELOOT_EASY'},
	{'SQUADRON_C',		1.3,	1.5},
	{'SQUADRON_B',		1.3,	1.5},
	{'SQUADRON_A',		1.3,	1.5},
	{'SQUADRON_S',		1.3,	1.5},
}
function ai_attacker:Get(x)
	local T = {}
	if x[4] then
		table.insert(T, {
			PRECEDING_FIRST		= true,
			PRECEDING_KEY_WORDS = 'Definitions',
			SPECIAL_KEY_WORDS	= {'Id', x[1]},
			VALUE_CHANGE_TABLE	= { {'Reward', x[4]} }
		})
	end
	table.insert(T, {
		PRECEDING_FIRST		= true,
		PRECEDING_KEY_WORDS = 'Definitions',
		MATH_OPERATION 		= '*',
		INTEGER_TO_FLOAT	= 'Preserve',
		SPECIAL_KEY_WORDS	= {'Id', x[1]},
		VALUE_CHANGE_TABLE	= {
			{'Health',				x[2]},
			{'LevelledExtraHealth',	x[3]}
		}
	})
	return T
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in ipairs(tbl) do
		for _,w in ipairs(tbl:Get(v)) do table.insert(T, w) end
	end
	return T
end

local source_exp_spawn_table = 'METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META ship spawns & health.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
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
