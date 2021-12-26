--[[-----------------------------------------
 change rewards in dialog options
-------------------------------------------]]

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 09 change rewards in dialogs.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				-- insert the test reward into the construction recipe analyser 'Cancel' menu option
				SPECIAL_KEY_WORDS	= {'Id', '?BLUEPRINT_ANALYSER', 'Name', 'ALL_REQUEST_LEAVE'},
				PRECEDING_KEY_WORDS	= 'Rewards',
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'TEST_REWARD_09'}
				}
			},
			{
				VALUE_MATCH			= 'FREIGHTERLOOT',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Warriors'},
				SECTION_UP			= 1,
				-- PRECEDING_KEY_WORDS	= 'Options',
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERLOOT_W'}
				}
			},
			{
				VALUE_MATCH			= 'FREIGHTERLOOT',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Explorers'},
				SECTION_UP			= 1,
				-- PRECEDING_KEY_WORDS	= 'Options',
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERLOOT_E'}
				}
			},
			{
				VALUE_MATCH			= 'FREIGHTERLOOT',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Traders'},
				SECTION_UP			= 1,
				-- PRECEDING_KEY_WORDS	= 'Options',
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERLOOT_T'}
				}
			}
		}
	}
}}}}

-- ALL_FREIGHTER_OPT_1==Inspect freighter
-- ALL_FREIGHTER_OPT_2==Refuse Reward
-- ALL_FREIGHTER_OPT_3==Request payment instead
-- ALL_FREIGHTER_RES_3==The captain looks at me with respect. My actions in battle clearly made an impression.
-- NPC_FREIGHTER_CAPTAIN_OPT_A_1==Offer to buy the Freighter
-- NPC_FREIGHTER_CAPTAIN_RES_A_1==It's a fine ship, and the crew will serve you well. Captain.
