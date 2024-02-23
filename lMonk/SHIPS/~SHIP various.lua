---------------------------------------------------------
local mod_desc = [[
  - Infraknife blue projectile
  - Dark blue instead of purple stealth trail
  - Replace gold trail with time swirl (for squadrons)
  - Remove all ships contrails
  - Remove shuttle fake headlights
  - Remove orange fake light cones
  - Remove bioship slime
  - Remove cockpit eject handle glow
  - Remove grainy shader from ship's system map
]]-------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__SHIP various.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.52',
	MOD_BATCHNAME			= '_SHIPS ~@~collection.pak',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{--	|infraknife blue shot|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/PROJECTILES/SHIP_MINIGUN/SHIPMINIGUNPROJECTILEGRADIENT.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/EFFECTS/TRAILS/HOT/INFRABLUE.DDS'}
				}
			}
		}
	},
	{--	replace purple with |dark blue trail|
		MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/HOTDARKTRAIL.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Map', 'TEXTURES/EFFECTS/TRAILS/HOT/BLUEDARKER1.DDS'}
				}
			}
		}
	},
	{--	|swirl instead of gold| trail
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/TIMELOOPTRAIL.SCENE.MBIN',
				'MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/HOTGOLDTRAIL.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{--	|no foggy headlights| cone from cockpits
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/CANOPY/CANOPYA.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/CANOPY/CANOPYB.SCENE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
				REMOVE				= 'Section'
			}
		}
	},
	{--	|ship texture removal|
		MBIN_FILE_SOURCE	= {
		--- cockpits: orange fake-light cone
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/ACCESSORIES/LANDINGGEAR_BASE/HQWHITELIGHT_MAT3.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/CANOPY/CANOPYA/HQWHITELIGHT_MAT3.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/CANOPY/CANOPYB/HQWHITELIGHT_MAT2.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/COCKPIT/COCKPITACCESSORIES/COCKPITACC_F/HQWHITELIGHT_MAT2.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/COCKPIT/COCKPITACCESSORIES/COCKPITACC_E/HQWHITELIGHT_MAT3.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/COCKPIT/COCKPITBDOUBLECYLINDER/HQWHITELIGHT_MAT5.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHUTTLE/COCKPIT/COCKPITBSINGLECYLINDER/HQWHITELIGHT_MAT2.MATERIAL.MBIN',
		--- bioship: slime
			'MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC/MEMBRANE_MAT.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/NOSTRILBURSTS/MEMBRANE_MAT1.MATERIAL.MBIN',
		---	cockpit eject handle no glow
			'MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR/EJECTVFX3MAT.MATERIAL.MBIN',
			'MODELS/COMMON/SPACECRAFT/SHARED/COCKPITINTERIORS/EJECTHANDLEL/EJECTVFX3MAT.MATERIAL.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Samplers',
				REMOVE				= 'Section'
			}
		}
	},
	{--	|clean system map|
		MBIN_FILE_SOURCE	= 'MODELS/HUD/SPACEMAPHORIZON/HORZ_MAT.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'CastShadow',	false}
				}
			},
			{
				SPECIAL_KEY_WORDS	= {'MaterialFlag', '_F48_WARPED_DIFFUSE_LIGHTING'},
				VALUE_CHANGE_TABLE 	= {
					{'MaterialFlag', '_F10_NORECEIVESHADOW'}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {
					{'MaterialFlag', '_F49_DISABLE_AMBIENT'},
					{'MaterialFlag', '_F50_DISABLE_POSTPROCESS'},
					{'MaterialFlag', '_F60_ACUTE_ANGLE_FADE'},
					{'MaterialFlag', '_F29_VBCOLOUR'},
				},
				REMOVE 				= 'Section'
			},
			{
				PRECEDING_KEY_WORDS = {'Uniforms'},
				ADD					= [[
					<Property value="TkMaterialUniform.xml">
						<Property name="Name" value="gCustomParams01Vec4"/>
						<Property name="Values" value="Vector4f.xml">
							<Property name="x" value="1"/>
						</Property>
					</Property>
				]]
			}
		}
	},
	-- {--	|bioship interior| remove canopy top; canopy membrane
		-- MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/INTERIOR/CANOPYA_INTERIOR.SCENE.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS 	= {
					-- {'Name', 'LeftCeilingFront'},
					-- {'Name', 'RightCeilingFront'},
					-- {'Name', 'Shadowmesh'},
					-- {'Name', 'Membrane'}
				-- },
				-- REMOVE 				= 'Section'
			-- }
		-- }
	-- },
}}}}
