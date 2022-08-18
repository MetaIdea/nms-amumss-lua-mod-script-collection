--------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '___TEST 5 freighter bridge.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Type', 'COLLISION'},
				REMOVE				= 'Section'
			},
			-- {
				-- REPLACE_TYPE 		= 'All / AllFollowing / Raw',
				-- WHERE_IN_SUBSECTION	= {
					-- {'name', 'Count'}
				-- },
				-- -- v4 alias: VCT
				-- VALUE_CHANGE_TABLE 	= {
					-- {'VertRotation',	80},
					-- -- blank icon
					-- {'Filename', 'TEXTURES/UI/HUD/ICONS/SCANNING/SCAN.DDS'}
				-- }
			-- },
			-- {
				-- -- v4 alias: PKW
				-- PRECEDING_KEY_WORDS = 'VehicleExitFlashColour',
				-- SECTION_ACTIVE		= {3, 5, 8},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'OffsetZFlat',	0.7},
				-- }
			-- },
			-- {
				-- PRECEDING_FIRST		= true,
				-- -- v4 alias: SKW
				-- SPECIAL_KEY_WORDS	= {'ID', 'CHECKPOINT', 'BaseTerrainEditShape', 'Cube'},
				-- SECTION_UP			= 1,
				-- ADD_OPTION			= 'AddAfterSection / ReplaceAtLine / AddAfterLine',
				-- ADD 				= TextHere
			-- },
			-- {
				-- VALUE_MATCH_TYPE 	= 'NUMBER',
				-- MATH_OPERATION 		= '+',
				-- VALUE_MATCH			= 0.8,
				-- VALUE_MATCH_OPTIONS = '>',
				-- INTEGER_TO_FLOAT	= 'Force',
				-- PRECEDING_KEY_WORDS	= {'StatsType', 'GcMaintenanceComponentData.xml'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'A',			0.5}
				-- }
			-- },
			-- {
				-- MATH_OPERATION 		= '$-',
				-- INTEGER_TO_FLOAT	= 'Preserve',
				-- SPECIAL_KEY_WORDS	= {'Name', 'BUGGY'},
				-- LINE_OFFSET			= 2,
				-- VALUE_CHANGE_TABLE 	= {
					-- {'OffsetZFlat',	0.7}
				-- }
			-- },
		}
	}
}}}}
