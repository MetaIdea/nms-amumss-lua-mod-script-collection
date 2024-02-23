-----------------------------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/puzzle_entry.lua')
-----------------------------------------------------------------------------------------
local mod_desc = [[
  Replace freighter battles reward for each race, requires(!) additions in rewards table
  attach the test reward to the construction recipe analyzer <Cancel> menu
  Keep chef talking - don't close dialog after each interaction
]]---------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__TABLE DIALOG PUZZLE.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA/REALITY/TABLES/NMS_DIALOG_GCALIENPUZZLETABLE.MBIN',
		EXML_CHANGE_TABLE	= {

-- SHIP_SALVAGE
-- WEAPON_SALVAGE


-- mutlitool upgrade station >> 1 install slot / 2 purchase new slot / 3 upgrade class
-- UI_WEAPON_UPGRADE_LABEL >> UI_WEAP_UPGRADE_INV_OPTB / UI_WEAP_UPGRADE_INV_OPTA ?? UI_WEAPON_UPGRADE_OPT_A / UI_SALVAGE_CLASS_OPT

-- UI_SALVAGE_MT_TITLE >> UI_COST_SALVAGE_WORTH
-- multi-tool decommissioning >> 1 claim scrap worth ## units

			-- {
				-- SPECIAL_KEY_WORDS	= {'Text', 'UI_WEAP_UPGRADE_CLASS_RES'},
				-- SECTION_SAVE_TO		= 'gc_alien_puzzle_option'
			-- },
			-- {
				-- SECTION_EDIT 		= 'gc_alien_puzzle_option',
				-- SPECIAL_KEY_WORDS	= {'Name', 'RADIUS'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Value',		1},
				-- }
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Text', 'UI_WEAP_UPGRADE_CLASS_RES'},
				-- ADD_OPTION			= 'AddAfterSection',
				-- SECTION_ADD_NAMED 	= 'gc_alien_puzzle_option',
			-- },
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
			}
		}
	}
}}}}
