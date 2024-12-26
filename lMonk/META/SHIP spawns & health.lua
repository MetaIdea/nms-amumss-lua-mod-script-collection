--------------------------------------------------------------
local mod_desc = [[
  Increase number of attackers in bounty and pirate missions
  Reduce number of planet flybys and outpost visits
  Increase enemy and NPC ships total health
]]------------------------------------------------------------

local ect_ex = {}
for fly, spawns in pairs({
	FlybySpawns = {
		Count		= {x=0,	y=2},
		Spread		= {x=30,y=70},
		StartTime	= {x=0,	y=4},
		MinRange	= {r=200},
		Offset		= {r=240}
	},
	OutpostSpawns = {
		Count		= {x=-1, y=-1}
	},
	PirateSpawns = {
		Spread		= {x=0, y=40},
		Count		= {x=0, y=1}
	},
	PlanetaryPirateFlybySpawns = {
		Count		= {x=0, y=1},
		StartTime	= {x=0, y=3}
	},
	PlanetaryPirateRaidSpawns = {
		Count		= {x=0,	y=1},
		StartTime	= {x=0,	y=3}
	},
	PirateBattleSpawns = {
		Count		= {x=0,	y=1},
	},
	FrigateFlybySpawns = {
		Count		= {x=0,	y=1},
		MinRange	= {r=800}
	}
}) do
	for pr,spn in pairs(spawns) do
		local T = {
			REPLACE_TYPE 			= 'All',
			MATH_OPERATION 			= '+',
			PRECEDING_FIRST			= true,
			PRECEDING_KEY_WORDS		= fly
		}
		if spn.x then
			T.SPECIAL_KEY_WORDS		= {pr, 'Vector2f.xml'}
			T.VALUE_CHANGE_TABLE	= { {'x', spn.x}, {'y', spn.y} }
		else
			T.VALUE_CHANGE_TABLE	= { {pr, spn.r} }
		end
		ect_ex[#ect_ex+1] = T
	end
end

-- bounty missions spawns
local bounty_prop	= {'Count', 'Spread',	'StartTime'}
for id, bty in pairs({
	BOUNTY1			= {{0, 2},	{0, 30},	{0, 2}},
	BOUNTY2			= {{0, 2},	{0, 35},	{0, 2}},
	BOUNTY3			= {{1, 1},	{0, 40},	{0, 3}},
	EASYBOUNTY1		= {{0, 1},	{0, 30},	{0, 2}},
	EASYBOUNTY2		= {{0, 1},	{0, 30},	{0, 2}},
	MEDBOUNTY1		= {{0, 1},	{0, 30},	{0, 2}},
	MEDBOUNTY2		= {{1, 1},	{0, 40},	{0, 2}},
	HARDBOUNTY1		= {{1, 2},	{0, 35},	{0, 3}},
	HARDBOUNTY2		= {{1, 2},	{0, 40},	{0, 3}},
	WEAPGUY_BOUNTY	= {{0, 2},	{0, 30},	{0, 2}},
	PIRATE_SQUAD	= {{0, 1},	{0, 80},	{0, 3}},
	PP_BOUNTY		= {{1, 2},	{0, 35},	{0, 2}},
}) do
	for i=1, #bounty_prop do
		ect_ex[#ect_ex+1] = {
			MATH_OPERATION 		= '+',
			SPECIAL_KEY_WORDS	= {'Id', id},
			PRECEDING_KEY_WORDS	= bounty_prop[i], -- set index ??
			VALUE_CHANGE_TABLE	= {
				{'x',		bty[i][1]},
				{'y',		bty[i][2]}
			}
		}
	end
end

local ect_ai = {}
for id, ai in pairs({
	PIRATE_EASY 	= {hl=1.1,		eh=1.2,	rw='PIRATELOOT_EASY'},
	PIRATE		 	= {hl=1.2,		eh=1.2,	rw='PIRATELOOT'},
	PIRATE_HARD	 	= {hl=1.2,		eh=0.9,	rw='PIRATELOOT_HARD'},
	POLICE			= {hl=1.1,		eh=1,	rw='POLICELOOT'},
	TRADER			= {hl=1.2,		eh=1},
	TRADER_ESCORT	= {hl=1.1,		eh=0.9},
	['RAID_.-'] 	= {hl=1.1,		eh=1,	rw='RAIDLOOT'},
	PLANET_FLYBY	= {hl=1.2,		eh=2,	rw='PIRATELOOT_EASY'},
	['SQUADRON_.-']	= {hl=1.2,		eh=1.1},
	WEAK			= {hl=1600,				rd=9},
	STRONG			= {						rd=9},
	FAST			= {						rd=4},
	FAST_STRONG		= {						rd=6},
}) do
	if ai.rw then
		ect_ai[#ect_ai+1] = {
			PRECEDING_FIRST		= true,
			PRECEDING_KEY_WORDS = 'Definitions',
			SPECIAL_KEY_WORDS	= {'Id', id},
			VALUE_CHANGE_TABLE	= {
				{'Reward',		ai.rw}
			}
		}
	end
	if ai.eh then
		ect_ai[#ect_ai+1] = {
			PRECEDING_FIRST		= true,
			PRECEDING_KEY_WORDS = 'Definitions',
			MATH_OPERATION 		= '*',
			INTEGER_TO_FLOAT	= 'Preserve',
			SPECIAL_KEY_WORDS	= {'Id', id},
			VALUE_CHANGE_TABLE	= {
				{'Health',				ai.hl},
				{'LevelledExtraHealth',	ai.eh}
			}
		}
	end
	if ai.rd then
		ect_ai[#ect_ai+1] = {
			PRECEDING_FIRST		= true,
			PRECEDING_KEY_WORDS = 'ShieldTable',
			SPECIAL_KEY_WORDS	= {'Id', id},
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
	NMS_VERSION			= '5.29',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	-- {
		-- MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN',
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
		EXML_CHANGE_TABLE	= ect_ex
	},
	{
		MBIN_FILE_SOURCE	= 'METADATA/SIMULATION/SPACE/AISPACESHIPATTACKDATATABLE.MBIN',
		EXML_CHANGE_TABLE	= ect_ai
	}
}}}}
