------------------------------------------------------
local desc = [[
  Change solar system to faster moving & more varied
  Restore galaxy map black hole icon to the original
]]----------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__GC GALAXY.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= 3.99,
	MOD_DESCRIPTION			= desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'GCGALAXYGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = {'SolarSystemParameters', 'PlanetParameters'},
				VALUE_CHANGE_TABLE 	= {
					{'FirstOrbitRadiusMin',		30},	-- 120
					{'FirstOrbitRadiusMax',		40},	-- 160
					{'OrbitRadiusOffsetMin',	12},	-- 50
					{'OrbitRadiusOffsetMax',	10},	-- 70
					{'OrbitRotationSpeedMin',	2},		-- 1
					{'OrbitRotationSpeedMax',	5.5},	-- 2.5
					{'OrbitLineWidth',			0.1}	-- 0.5
				}
			},
			{
				MATH_OPERATION 		= '+',
				PRECEDING_KEY_WORDS = {'SolarSystemParameters', 'MoonParameters'},
				VALUE_CHANGE_TABLE 	= {
					{'FirstOrbitRadiusMin',		-2},	-- 15
					{'FirstOrbitRadiusMax',		1},		-- 20
					{'OrbitRadiusOffsetMin',	-2},	-- 15
					{'OrbitRadiusOffsetMax',	1},		-- 35
					{'OrbitRotationSpeedMin',	2},		-- 2
					{'OrbitRotationSpeedMax',	3},		-- 5
					{'OrbitLineWidth',			0.03}	-- 0.3
				}
			},
			{
				PRECEDING_KEY_WORDS = {'BaseStarDefaultColours', 'ColourByStarType', 'Yellow'},
				VALUE_CHANGE_TABLE	= {
					{'R',			0.98},	-- 1
					{'G',			0.788},	-- 0.813
					{'B',			0.02},	-- 0.063
					{'A',			0.3}	-- 0.2
				}
			},
			{
				PRECEDING_KEY_WORDS = {'BaseStarDefaultColours', 'ColourByStarType', 'Green'},
				VALUE_CHANGE_TABLE	= {
					{'R',			0.144},	-- 0.245
					{'G',			0.74},	-- 0.937
					{'B',			0.01},	-- 0.073
					{'A',			0.5}	-- 0.4
				}
			},
			{
				PRECEDING_KEY_WORDS = {'BaseStarDefaultColours', 'ColourByStarType', 'Blue'},
				VALUE_CHANGE_TABLE	= {
					{'R',			0.096},	-- 0.296
					{'G',			0.321},	-- 0.17
					{'B',			0.96},	-- 1
					{'A',			0.5}	-- 0.4
				}
			},
			{
				PRECEDING_KEY_WORDS = {'BaseStarDefaultColours', 'ColourByStarType', 'Red'},
				VALUE_CHANGE_TABLE	= {
					{'R',			0.988},	-- 0.947
					{'G',			0.16},	-- 0.17
					{'B',			0.2},	-- 0.356
					{'A',			0.5}	-- 0.4
				}
			}
		}
	}
}}}}
