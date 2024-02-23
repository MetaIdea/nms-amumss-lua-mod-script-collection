--------------------------------------------------------------
local mod_desc = [[
  Increase number of attackers in bounty and pirate missions
  Reduce number of planet flybys and outpost visits
  Increase enemy and NPC ships total health
]]------------------------------------------------------------

local ECT_EX = {}
-- general flyby and pirate spawns
for _,spn in ipairs({
	{id='FlybySpawns',					pr='Count',		x=0,	y=2},
	{id='FlybySpawns',					pr='Spread',	x=30,	y=70},
	{id='FlybySpawns',					pr='StartTime',	x=0,	y=4},
	{id='FlybySpawns',					pr='MinRange',	r=200},
	{id='FlybySpawns',					pr='Offset',	r=240},
	{id='OutpostSpawns',				pr='Count',		x=-1,	y=-1},
	{id='PirateSpawns',					pr='Spread',	x=0,	y=40},
	{id='PirateSpawns',					pr='Count',		x=0,	y=1},
	{id='PlanetaryPirateFlybySpawns',	pr='Count',		x=0,	y=1},
	{id='PlanetaryPirateFlybySpawns',	pr='StartTime',	x=0,	y=3},
	{id='PlanetaryPirateRaidSpawns',	pr='Count',		x=0,	y=1},
	{id='PlanetaryPirateRaidSpawns',	pr='StartTime',	x=0,	y=3},
	{id='PirateBattleSpawns',			pr='Count',		x=0,	y=1},
	{id='FrigateFlybySpawns',			pr='MinRange',	r=800},
	{id='FrigateFlybySpawns',			pr='Count',		x=0,	y=1},
}) do
	local inx = #ECT_EX+1
	ECT_EX[inx] = {
		REPLACE_TYPE 			= 'All',
		MATH_OPERATION 			= '+',
		PRECEDING_FIRST			= true,
		PRECEDING_KEY_WORDS		= spn.id
	}
	if spn.x then
		ECT_EX[inx].SPECIAL_KEY_WORDS	= {spn.pr, 'Vector2f.xml'}
		ECT_EX[inx].VALUE_CHANGE_TABLE	= {{'x', spn.x}, {'y', spn.y}}
	else
		ECT_EX[inx].VALUE_CHANGE_TABLE	= {{spn.pr, spn.r}}
	end
end

-- bounty missions spawns
local bounty_prop = {'Count', 'Spread',	'StartTime'}
for _,bty in ipairs({
	{'BOUNTY1',			0, 2,	0, 30,	0, 2},
	{'BOUNTY2',			0, 2,	0, 35,	0, 2},
	{'BOUNTY3',			1, 1,	0, 40,	0, 3},
	{'EASYBOUNTY1',		0, 1,	0, 30,	0, 2},
	{'EASYBOUNTY2',		0, 1,	0, 30,	0, 2},
	{'MEDBOUNTY1',		0, 1,	0, 30,	0, 2},
	{'MEDBOUNTY2',		1, 1,	0, 40,	0, 2},
	{'HARDBOUNTY1',		1, 2,	0, 35,	0, 3},
	{'HARDBOUNTY2',		1, 2,	0, 40,	0, 3},
	{'WEAPGUY_BOUNTY',	0, 2,	0, 30,	0, 2},
	{'PIRATE_SQUAD',	0, 1,	0, 80,	0, 3},
	{'PP_BOUNTY',		1, 2,	0, 35,	0, 2},
}) do
	for i=2, 6, 2 do
		ECT_EX[#ECT_EX+1] = {
			MATH_OPERATION 		= '+',
			SPECIAL_KEY_WORDS	= {'Id', bty[1]},
			PRECEDING_KEY_WORDS	= bounty_prop[i/2],
			VALUE_CHANGE_TABLE	= {
				{'x',			bty[i]},
				{'y',			bty[i+1]}
			}
		}
	end
end

local ECT_AI = {}
for _,ai in ipairs({
	{id='PIRATE_EASY', 		hl=1.1,		eh=1.2,		rw='PIRATELOOT_EASY'},
	{id='PIRATE',		 	hl=1.2,		eh=1.2,		rw='PIRATELOOT'},
	{id='PIRATE_HARD',	 	hl=1.2,		eh=0.9,		rw='PIRATELOOT_HARD'},
	{id='POLICE',			hl=1.1,		eh=1,		rw='POLICELOOT'},
	{id='TRADER',			hl=1.2,		eh=1},
	{id='TRADER_ESCORT',	hl=1.1,		eh=0.9},
	{id='RAID_BUILDING', 	hl=1.1,		eh=1,		rw='RAIDLOOT'},
	{id='RAID_DOGFIGHT',	hl=1.1,		eh=1,		rw='RAIDLOOT'},
	{id='PLANET_FLYBY',		hl=1.2,		eh=2,		rw='PIRATELOOT_EASY'},
	{id='SQUADRON_C',		hl=1.2,		eh=1.1},
	{id='SQUADRON_B',		hl=1.2,		eh=1.1},
	{id='SQUADRON_A',		hl=1.2,		eh=1.1},
	{id='SQUADRON_S',		hl=1.2,		eh=1.1},
	{id='SQUADRON_S',		hl=1.2,		eh=1.1},
	{id='WEAK',				hl=1600,	rd=9},
	{id='STRONG',						rd=9},
	{id='FAST',							rd=4},
	{id='FAST_STRONG',					rd=6},
}) do
	if ai.rw then
		ECT_AI[#ECT_AI+1] = {
			PRECEDING_FIRST		= true,
			PRECEDING_KEY_WORDS = 'Definitions',
			SPECIAL_KEY_WORDS	= {'Id', ai.id},
			VALUE_CHANGE_TABLE	= {
				{'Reward',		ai.rw}
			}
		}
	end
	if ai.eh then
		ECT_AI[#ECT_AI+1] = {
			PRECEDING_FIRST		= true,
			PRECEDING_KEY_WORDS = 'Definitions',
			MATH_OPERATION 		= '*',
			INTEGER_TO_FLOAT	= 'Preserve',
			SPECIAL_KEY_WORDS	= {'Id', ai.id},
			VALUE_CHANGE_TABLE	= {
				{'Health',				ai.hl},
				{'LevelledExtraHealth',	ai.eh}
			}
		}
	end
	if ai.rd then
		ECT_AI[#ECT_AI+1] = {
			PRECEDING_FIRST		= true,
			PRECEDING_KEY_WORDS = 'ShieldTable',
			SPECIAL_KEY_WORDS	= {'Id', ai.id},
			VALUE_CHANGE_TABLE	= {
				{'RechargeDelayTime',	ai.rd},
				{'Health',				ai.hl or 'IGNORE'}
			}
		}
	end
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__META ship spawns & health.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	-- {
		-- MBIN_FILE_SOURCE	= source_exp_spawn_table,
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- -- SPECIAL_KEY_WORDS	= {'Id', 'BIO_FRIG'},
				-- SPECIAL_KEY_WORDS	= {'Id', 'RELIC_GATE'},
				-- VALUE_CHANGE_TABLE	= {
					-- {'SpawnChance', 120}
				-- }
			-- }
		-- }
	-- },
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN',
		EXML_CHANGE_TABLE	= ECT_EX
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SPACE/AISPACESHIPATTACKDATATABLE.MBIN',
		EXML_CHANGE_TABLE	= ECT_AI
	}
}}}}
