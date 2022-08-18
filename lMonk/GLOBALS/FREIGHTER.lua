--------------------------------------
local desc = [[
  limit the freighter base NPC crowd
]]------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC FREIGHTER.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCFREIGHTERBASEGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'MaxTotalNPCCount',			-12},	-- 24
					{'NPCStartSpawnDelayTime',		2},		-- 3
					{'NPCSpawnIntervalTime',		2},		-- 0.1
					{'MinTotalRoomsRequiredPerNPC', 1},		-- 2
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = 'MaxTotalCapacityOfNPCTypes',
				VALUE_CHANGE_TABLE 	= {
					{'SquadronPilot',				-1},	-- 4
					{'FrigateCaptain',				-2},	-- 4
					{'WorkerBio',					-3},	-- 6
					{'WorkerTech',					-3},	-- 6
					{'WorkerIndustry',				-3},	-- 6
				}
			}
		}
	}
}}}}
