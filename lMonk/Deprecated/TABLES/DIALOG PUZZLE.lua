-----------------------------------------------------------------------------------------
local desc = [[
  Replace freighter battles reward for each race, requires(!) additions in rewards table
  attach the test reward to the construction recipe analyzer <Cancel> menu
  Keep chef talking - don't close dialog after each interaction
]]---------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE DIALOG PUZZLE.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.08',
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_MATCH			= 'FREIGHTER_SAVED',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Warriors'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERSAVE_W'}
				}
			},
			{
				VALUE_MATCH			= 'FREIGHTER_SAVED',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Explorers'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERSAVE_E'}
				}
			},
			{
				VALUE_MATCH			= 'FREIGHTER_SAVED',
				SPECIAL_KEY_WORDS	= {'Id', '?FREIGHTER', 'AlienRace', 'Traders'},
				SECTION_UP			= 1,
				VALUE_CHANGE_TABLE 	= {
					{'Value',		'FREIGHTERSAVE_T'}
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Value', 'R_CHEF_JUDGE'},
				SECTION_UP			= 2,
				VALUE_CHANGE_TABLE 	= {
					{'KeepOpen',	true}
				}
			},
			-- {
				-- SPECIAL_KEY_WORDS	= {'Id', '?BLUEPRINT_ANALYSER', 'Name', 'ALL_REQUEST_LEAVE'},
				-- PRECEDING_KEY_WORDS	= 'Rewards',
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Value',		'TEST_REWARD_09'}
				-- }
			-- }
		}
	}
}}}}
