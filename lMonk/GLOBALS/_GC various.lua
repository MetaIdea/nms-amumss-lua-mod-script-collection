------------------------------------------------------------
local desc = [[
  disable ladder auto-grab; disable falling camera-view
  same (dark mode) warp tunnel in teleports
  lower water level to avoid invisible water at shoreline
]]----------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_GLOBALS ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		-- |GC CHARACTER|
		MBIN_FILE_SOURCE	= 'GCCHARACTERGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'LadderDistanceToAutoMount',			0},		-- 0.4
					{'LadderCooldownAfterBeforeAutoClimb',	0},		-- 0.6
					{'TimeNotOnGroundToUseFallingCamera',	88},	-- 0.2
					{'TimeFallingUntilPanic',				180},	-- 0.8
				}
			}
		}
	},
	-- {
		-- MBIN_FILE_SOURCE	= 'GCGRAPHICSGLOBALS.GLOBAL.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- VALUE_CHANGE_TABLE 	= {
					-- {'ForceUncachedTerrain', true}
				-- }
			-- }
		-- }
	-- },
	{
		-- |GC WATER|
		MBIN_FILE_SOURCE	= 'GCWATERGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'WaveHeight',	-1.7}	-- 1.5
				}
			}
		}
	}
}}}}
