---------------------------------------------------------
local desc = [[
  LOD levels increase
  Clouds size gradient decrease, cloud movement reduced
]]-------------------------------------------------------

-- local function GetLodAdjust(x)
	-- local exml = '<Property name='LODAdjust'>'
	-- for _,v in ipairs(x) do
		-- exml = exml..'<Property value=''..v..''/>'
	-- end
	-- return exml..'</Property>'
-- end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC ENVIRONMENT.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCENVIRONMENTGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
			--- v4 solution ---
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				PRECEDING_KEY_WORDS = 'LODAdjust',
				SECTION_ACTIVE		= -3,
				VALUE_CHANGE_TABLE 	= {
					{'Ignore',		1},
					{'Ignore',		1.5},
					{'Ignore',		2},
					{'Ignore',		2.5},
					{'Ignore',		3},
				}
			},
			{
			--- v4 solution ---
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'Force',
				PRECEDING_KEY_WORDS = 'LODAdjust',
				SECTION_ACTIVE		= -4,
				VALUE_CHANGE_TABLE 	= {
					{'Ignore',		1},
					{'Ignore',		2},
					{'Ignore',		2.5},
					{'Ignore',		3},
					{'Ignore',		4},
				}
			},
			-- {
				-- PRECEDING_KEY_WORDS = 'LODAdjust',
				-- SECTION_ACTIVE		= 3,
				-- REMOVE				= 'Section'
			-- },
			-- {
				-- PRECEDING_KEY_WORDS = 'TkLODSettingsData.xml',
				-- SECTION_ACTIVE		= 3,
				-- ADD					= GetLodAdjust({1, 1, 1.5, 2, 3})
			-- },
			-- {
				-- PRECEDING_KEY_WORDS = 'LODAdjust',
				-- SECTION_ACTIVE		= 4,
				-- REMOVE				= 'Section'
			-- },
			-- {
				-- PRECEDING_KEY_WORDS = 'TkLODSettingsData.xml',
				-- SECTION_ACTIVE		= 4,
				-- ADD					= GetLodAdjust({2, 2, 2.5, 3, 4})
			-- },
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				VALUE_CHANGE_TABLE 	= {
					{'TerrainFadeTime',				-1.2},	-- 2
					{'TerrainFadeTimeInShip',		-1.6},	-- 2
					{'CreatureFadeTime',			-1.1},	-- 1.5
					{'FloraFadeTimeMin',			-0.3},	-- 0.6
					{'FloraFadeTimeMax',			-1.65},	-- 2.25
					{'AnimationScale',				-30},	-- 50 (clouds speed)
					{'IndoorsLightingPlanetMax',	0.58},	-- 0.42
					{'IndoorsLightingFreighterMax',	9},		-- 1
				}
			},
			{
				INTEGER_TO_FLOAT	= 'Force',
				PRECEDING_KEY_WORDS = 'IndoorAmbientColour',
				VALUE_CHANGE_TABLE 	= {
					{'R',			1},
					{'G',			1},
					{'B',			1},
					{'A',			0.1}
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = 'WindOffset',
				VALUE_CHANGE_TABLE 	= {
					{'x',			-0.1},	-- 0.5
					{'y',			-0.1}	-- 0.5
				}
			}
		}
	}
}}}}
