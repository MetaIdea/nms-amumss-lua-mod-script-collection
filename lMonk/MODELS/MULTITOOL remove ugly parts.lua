--[[┎───────────────────────────────────────────────
	┃ remove unwanted parts from mmultitool
	┃ scale multitool apperance
────┸───────────────────────────────────────────--]]
NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL remove multitool ugly parts.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '3.53',
	MOD_BATCHNAME		= '_MODELS ~@~collection.pak',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/WEAPONS/MULTITOOL/MULTITOOL.DESCRIPTOR.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Mag1Clip_1'}, -- no magazine
				REMOVE				= 'SECTION'
			},
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', '_LSAcc3_1'}, -- ?
				-- REMOVE				= 'SECTION'
			-- },
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', '_LSideAcc_6'}, -- ?
				-- REMOVE				= 'SECTION'
			-- },
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Screen_1'}, -- 1=tilted 2=flap 3=rounded
				REMOVE				= 'SECTION'
			},
			-- {
			-- 	SPECIAL_KEY_WORDS	= {'Name', '_ToolStock_1'}, -- none (or a metal clasp)
			-- 	REMOVE				= 'SECTION'
			-- },
			{
				SPECIAL_KEY_WORDS	= {'Name', '_ToolStock_2'}, -- solid long narrow square stock
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_ToolStock_3'}, -- cylinder or small half disk
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_ToolStock_4'}, -- rectangular stock
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_ToolStock_5'}, -- square block
				REMOVE				= 'SECTION'
			},
			-- {
			-- 	SPECIAL_KEY_WORDS	= {'Name', '_ToolStock_6'}, -- half circle curve
			-- 	REMOVE				= 'SECTION'
			-- },
			{
				SPECIAL_KEY_WORDS	= {'Name', '_G1Acc_1'}, -- grip 1 strap
				REMOVE				= 'SECTION'
			},
			-- {
			-- 	SPECIAL_KEY_WORDS	= {'Name', '_TS1A_2'}, -- stock 1 strap
			-- 	REMOVE				= 'SECTION'
			-- },
			-- {
			-- 	SPECIAL_KEY_WORDS	= {'Name', '_TS2Acc_1'}, -- stock 2 strap
			-- 	REMOVE				= 'SECTION'
			-- },
			-- {
			-- 	SPECIAL_KEY_WORDS	= {'Name', '_TS4A_4'}, -- stock 4 strap
			-- 	REMOVE				= 'SECTION'
			-- },
			{
				SPECIAL_KEY_WORDS	= {'Name', '_TS6A_2'}, -- stock 6 strap
				REMOVE				= 'SECTION'
			},
		}
	}
}}}}
