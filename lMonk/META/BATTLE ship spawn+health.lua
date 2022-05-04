--------------------------------------------------------------
local desc = [[
  Increase number of attackers in bounty and pirate missions
  Reduce number of planet flybys and outpost visits
  Increase enemy and NPC ships total health
]]------------------------------------------------------------

local Bounty_Spawn_Count = {
	{'BOUNTY1',			0, 2},
	{'BOUNTY2',			0, 2},
	{'BOUNTY3',			0, 2},
	{'EASYBOUNTY1',		0, 1},
	{'EASYBOUNTY2',		0, 1},
	{'MEDBOUNTY1',		1, 2},
	{'MEDBOUNTY2',		1, 2},
	{'HARDBOUNTY1',		1, 3},
	{'HARDBOUNTY2',		1, 3},
	{'WEAPGUY_BOUNTY',	1, 2},
	{'PIRATE_SQUAD',	0, 2},
	{'PP_BOUNTY',		1, 3}
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
	{{'FlybySpawns',				'Count'},						0,		-1},
	{{'OutpostSpawns',				'Count'},						0,		-1},
	{{'PirateSpawns',				'Count'},						0,		2},
	{{'PirateSpawns',				'Count', 'Count'},				1,		1},
	{{'PlanetaryPirateFlybySpawns',	'Count'},						0,		2},
	{{'PlanetaryPirateRaidSpawns',	'Count'},						0,		2},
	{{'PirateBattleSpawns',			'Count'},						0,		2},
	{{'FrigateFlybySpawns',			'Count'},						-1,		0},
	{{'FrigateFlybySpawns',			'Count', 'Count'},				-1,		-3},
	{{'FrigateFlybySpawns',			'Count', 'Count', 'Count'},		-1,		-3},
	{{'FrigateFlybySpawns',			'Spread'},						400,	400},
	{{'FrigateFlybySpawns',			'Spread', 'Spread'},			200,	200},
	{{'FrigateFlybySpawns',			'Spread', 'Spread', 'Spread'},	200,	200},
}
function Pirate_Spawn_Count:Get(x)
	return {
		MATH_OPERATION 		= '+',
		PRECEDING_KEY_WORDS	= x[1],
		VALUE_CHANGE_TABLE	= { {'x', x[2]}, {'y', x[3]} }
	}
end

local AI_Attacker = {
	{'PIRATE_EASY', 	'PIRATELOOT_EASY',	1.2},
	{'PIRATE',		 	'PIRATELOOT',		1.4},
	{'PIRATE_HARD',	 	'PIRATELOOT_HARD',	1.6},
	{'RAID_BUILDING', 	'RAIDLOOT',			1.2},
	{'RAID_DOGFIGHT',	'RAIDLOOT',			1.5},
	{'POLICE',			'POLICELOOT',		1},
	{'PLANET_FLYBY',	'PIRATELOOT_EASY',	1.8},
	multi = true
}
function AI_Attacker:Get(x)
	return {{
		PRECEDING_FIRST		= true,
		PRECEDING_KEY_WORDS = 'Definitions',
		SPECIAL_KEY_WORDS	= {'Id', x[1]},
		VALUE_CHANGE_TABLE	= { {'Reward', x[2]} }
	},{
		PRECEDING_FIRST		= true,
		PRECEDING_KEY_WORDS = 'Definitions',
		MATH_OPERATION 		= '*',
		INTEGER_TO_FLOAT	= 'PRESERVE',
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

local Source_Exp_Spawn_Table = 'METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META ship spawns & health.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.89,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= Source_Exp_Spawn_Table,
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'ALL',
				PRECEDING_KEY_WORDS	= 'FrigateFlybySpawns',
				VALUE_CHANGE_TABLE	= {
					{'MinRange',	1100},
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
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(AI_Attacker)
	}
}}}}
