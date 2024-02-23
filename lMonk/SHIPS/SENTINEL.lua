-------------------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
-------------------------------------------------------------------------
local mod_desc = [[
  - slower wings folding anim
  - move the bobble in the sentinel cockpit to a less intrusive location
  - add side engines trails
  - remove red glow in cockpit from selected sections
  - wingB blue glow
  - remove shiny head and 3cross head pieces (replaced with others)
  - remove non-used engine exaust (3, 4, 6)
  - removes orange and purple overlays - painted sentinels only
]]-----------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__SHIP sentinel.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.52',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{--	|sentinel increase LOD|
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/WINGSB.SCENE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'LODDIST1'},
					{'Name', 'LODDIST2'},
					{'Name', 'LODDIST3'}
				},
				REMOVE = 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'NUMLODS'},
				ADD_OPTION			= 'AddAfterSection',
				ADD 				= ToExml({
					META	= {'value', 'TkSceneNodeAttributeData.xml'},
					Name	= 'ATTACHMENT',
					Value	= 'MODELS/COMMON/SPACECRAFT/SHARED/ENTITIES/SHAREDLODDISTANCES.ENTITY.MBIN'
				})
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LandingLight'},
				REMOVE 	= 'Section'
			}
		}
	},
	{--	|sentinel trail fix|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/ENGINEFLAMESSMALL.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'Name', 'Trail'},
				VALUE_CHANGE_TABLE 	= {
					{'TransY',		-0.32}
				}
			}
		}
	},
	{--	|sentinel slower anim|
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC/ENTITIES/ROOTJNT.ENTITY.MBIN',
			'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/ENGINEFLAMEBODY1/ENTITIES/DATA.ENTITY.MBIN',
			'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/ENGINEFLAMEL/ENTITIES/DATA.ENTITY.MBIN',
			'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/WINGSB/ENTITIES/ROOTJNT.ENTITY.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_FIRST		= true,
				PRECEDING_KEY_WORDS = 'TkAnimationComponentData.xml',
				SPECIAL_KEY_WORDS	= {
					{'Anim', 'LANDING'},
					{'Anim', 'TAKEOFF'}
				},
				VALUE_CHANGE_TABLE 	= {
					{'Speed',		0.624}
				}
			}
		}
	},
	{--	|sentinel cockpit|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
			--	move the bobble in the sentinel cockpit to a less intrusive location
				SPECIAL_KEY_WORDS	= {'Name', 'BobbleHeadLocator'},
				VALUE_CHANGE_TABLE 	= {
					{'TransX',		0.36},		-- -0.174405
					{'TransY',		-0.338},	-- -0.330305
					{'TransZ',		1.1419},	-- 1.159586
					{'RotY',		32.3536},	-- -32.353622
					{'ScaleX',		0.8},		-- 1
					{'ScaleY',		0.8},		-- 1
					{'ScaleZ',		0.8},		-- 1
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'lightrim'},			-- high sidewall scroll glow
					{'Name', 'WireLightsL'},		-- sidewires scrolling glow
					{'Name', 'WireLightsR'},
					{'Name', 'polySurface8398'},	-- canopy lights
					{'Name', 'Lightbase'},		 	-- map base center
					{'Name', 'MonitorL1'},			-- monitors glow
					{'Name', 'MonitorL2'},
					{'Name', 'SentinelCableL'},		-- thick cables
					{'Name', 'SentinelCableR'},
					{'Name', 'CableSpinnerL'},		-- thick cables spinning section
					{'Name', 'CableSpinnerR'}
				},
				REMOVE = 'Section'
			},
		}
	},

	{--	|sentinel side engine trails|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/ENFLAMESIDESANI.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RTbodyJNT'},
				PRECEDING_KEY_WORDS	= 'Children',
				CREATE_HOS			= true,
				ADD					= ToExml(ScNode('TrailER', 'LOCATOR', {ScTransform({tx=-3.9336, ty=-0.51785, tz=-2.3462, ry=180})}))
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'LTbodyJNT'},
				PRECEDING_KEY_WORDS	= 'Children',
				CREATE_HOS			= true,
				ADD					= ToExml(ScNode('TrailEL', 'LOCATOR', {ScTransform({tx=3.9336, ty=0.51785, tz=2.3462, ry=180})}))
			}
		}
	},

	{--	|sentinel blue lights| instead of red
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT/LIGHTSCROLLBMAT.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC/LIGHTSCROLLBMAT.MATERIAL.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/COMMON/ROBOTS/SHARED/LIGHTDETAILBLUE.DDS'}
				}
			}
		}
	},
	{--	|sentinel wingB blue glow|
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC/REDGLOW_MAT2.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/WINGSB/REDGLOW_MAT2.MATERIAL.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'gMaterialColourVec4'},
				VALUE_CHANGE_TABLE 	= {
					{'x',			0.4},
					{'y',			0.66},
					{'z',			0.8}
				}
			}
		}
	},
	{--	|sentinel cockpit eject handle glow|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/EJECTHANDLEL/EJECTVFX3MAT.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Samplers',
				REMOVE				= 'Section'
			}
		}
	},
	{--	|sentinel descriptor| remove shiny head and 3cross and non-used engines
	--	Each 2nd suffix replaces its preceding one
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC.DESCRIPTOR.MBIN',
		EXML_CHANGE_TABLE	= (
			function()
				T = {}
				for id, sfx in pairs({
					_Lights_		= { 'C', 'E', 'J', 'D', 'C1', 'D1'},	-- front heads
					_exWingsb_		= { '5sts3', 'NULL4'},					-- wing b top antenna
					_axWingss_		= { '12', '11'},						-- wing s top antenna
					_EngineFlame_	= {'3', '1', '3b', '1b', '4', '2', '4b', '2b', '6', '5', '6b', '5b'},
					_sideEngines_	= {'A2', 'NULL', 'A3', 'NULL1'},					-- wing jets with cable
					_Jets_			= {'A', 'NULL_A', 'B', 'NULL_B', 'C', 'NULL_C'},	-- back jets sides
					-- _Jet			= {'Top_A', 'Top_NULL', 'Bots_A', 'Bots_NULL'},		-- back jets top & bottom
				}) do
					for i=1, #sfx, 2 do
						T[#T+1] = {
							SPECIAL_KEY_WORDS	= {'Id', (id..sfx[i]):upper()},
							VALUE_CHANGE_TABLE 	= {
								{'Id',			(id..sfx[i+1]):upper()},
								{'Name',		id..sfx[i+1]}
							}
						}
					end
				end
				return T
			end
		)()
	},
	{--	|sentinel wings descriptor| remove the bugged non-animated antenna from top back tail wing
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/SENTINELSHIP/PARTS/WINGSB.DESCRIPTOR.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Id', '_EXTENSIONSTOP_A1', 'Id', '_ANTS_14B1'}, -- { '14b1', '15b1'}
				REMOVE				= 'Section'
			}
		}
	}
}}}}
