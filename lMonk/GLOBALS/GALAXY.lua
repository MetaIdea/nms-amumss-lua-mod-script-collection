------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
------------------------------------------------------
local mod_desc = [[
  Change solar system to faster moving & more varied
  Restore galaxy map black hole icon to the original
]]----------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__GC GALAXY.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.52',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'GCGALAXYGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'FinalTransitionMaxSpeed',	400},	-- 350
				}
			},
			{
				PRECEDING_KEY_WORDS = {'SolarSystemParameters', 'PlanetParameters'},
				VALUE_CHANGE_TABLE 	= {
					{'FirstOrbitRadiusMin',		140},	-- 120
					{'FirstOrbitRadiusMax',		200},	-- 160
					{'OrbitRadiusOffsetMin',	60},	-- 50
					{'OrbitRadiusOffsetMax',	80},	-- 70
					{'OrbitRotationSpeedMin',	1.5},	-- 1
					{'OrbitRotationSpeedMax',	4},		-- 2.5
					{'OrbitLineWidth',			0.55}	-- 0.5
				}
			},
			{
				PRECEDING_KEY_WORDS = {'SolarSystemParameters', 'MoonParameters'},
				VALUE_CHANGE_TABLE 	= {
					{'FirstOrbitRadiusMin',		13},	-- 15
					{'FirstOrbitRadiusMax',		22},	-- 20
					{'OrbitRadiusOffsetMin',	13},	-- 15
					{'OrbitRadiusOffsetMax',	36},	-- 35
					{'OrbitRotationSpeedMin',	3},		-- 2
					{'OrbitRotationSpeedMax',	7},		-- 5
					{'OrbitLineWidth',			0.35}	-- 0.3
				}
			},
			{
				PRECEDING_KEY_WORDS = {'BaseStarDefaultColours', 'ColourByStarType', 'Yellow'},
				VALUE_CHANGE_TABLE	= ColorFromHex('4dfac905')
			},
			{
				PRECEDING_KEY_WORDS = {'BaseStarDefaultColours', 'ColourByStarType', 'Green'},
				VALUE_CHANGE_TABLE	= ColorFromHex('8025bd03')
			},
			{
				PRECEDING_KEY_WORDS = {'BaseStarDefaultColours', 'ColourByStarType', 'Blue'},
				VALUE_CHANGE_TABLE	= ColorFromHex('801852f5')
			},
			{
				PRECEDING_KEY_WORDS = {'BaseStarDefaultColours', 'ColourByStarType', 'Red'},
				VALUE_CHANGE_TABLE	= ColorFromHex('80fc2933')
			}
		}
	}
}}}}
