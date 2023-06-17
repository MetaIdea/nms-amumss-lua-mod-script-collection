NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= 'ConvenientWarp.pak',
	MOD_AUTHOR			= 'InfiniteSource',
	NMS_VERSION			= '4.34',
	MOD_DESCRIPTION		= [[
							Increases the base warp distance just enough to get you close to the core ]],
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'ID', 'HYPERDRIVE'},              -- Normal ships
				PRECEDING_KEY_WORDS	= {'Ship_Hyperdrive_JumpDistance'},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus',	'700000'}  -- Original "100"
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'WARP_ALIEN'},              -- Living ships
				PRECEDING_KEY_WORDS	= {'Ship_Hyperdrive_JumpDistance'},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus',	'700000'}  -- Original "100"
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'ID', 'HYPERDRIVE_ROBO'},         -- Sentinel ships
				PRECEDING_KEY_WORDS	= {'Ship_Hyperdrive_JumpDistance'},
				SECTION_UP = 1,
				VALUE_CHANGE_TABLE 	= {
					{'Bonus',	'700000'}  -- Original "600"
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'GCGALAXYGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS		= '',
				VALUE_CHANGE_TABLE 	= {
					{'FreePanSpeedTurbo',		'275'},	--  Original 2.75
				}
			}
		}
	}
}}}}
