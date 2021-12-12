-----------------------------------------------------------
local desc = [[
  Activate planetray portal without cost
  Remove gunk (rusted metal) from cargo crate
  Remove space dust and plasma
  Reduce space speed lines for thrust and pulse
  shorter freighter landing tractor range
  Remove smoke and trails effect from mech and player
  Increase mech walk animation speed
  Hide lines - trader routs, HUD icons and landing lines
  Remove resource crates at portals
]]---------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__MODEL various.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_MODELS ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		-- Activate planetray |portal without cost|
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'GcMaintenanceComponentData.xml',
				REMOVE				= 'SECTION'
			}
		}
	},
	{
		-- |gunkless crates| (remove rusted metal)
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/CRATE/CRATE_LARGE_RARE/ENTITIES/CRATE_LARGE_RARE.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'CanCollectInMech', true}
				}
			},
			{
				PRECEDING_KEY_WORDS	= 'GcMaintenanceComponentData.xml',
				REMOVE				= 'SECTION'
			}
		}
	},
	{
		-- |Clean space| of dust and plasma clouds
		MBIN_FILE_SOURCE	= {
			'MODELS/EFFECTS/HEAVYAIR/SPACE/SPACE2.HEAVYAIR.MBIN',
			'MODELS/EFFECTS/HEAVYAIR/SPACE/SPACEPLASMA.HEAVYAIR.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'NumberOfParticles',	0},
					{'Radius',				0}
				}
			}
		}
	},
	{
		-- |Less speed lines|
		MBIN_FILE_SOURCE	= {
			'MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES.SPEEDLINE.MBIN',
			'MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN',
		},
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'PRESERVE',
				MATH_OPERATION 		= '*',
				VALUE_CHANGE_TABLE 	= {
					{'NumberOfParticles',	0.075},
					{'Length',				2.2},
					{'RemoveCylinderRadius',2.8}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/EFFECTS/SPEEDLINES/SPACE.SPEEDLINE.MBIN',
			'MODELS/EFFECTS/SPEEDLINES/SPACE2.SPEEDLINE.MBIN',
			'MODELS/EFFECTS/SPEEDLINES/SPACEBIG.SPEEDLINE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				INTEGER_TO_FLOAT	= 'PRESERVE',
				MATH_OPERATION 		= '*',
				VALUE_CHANGE_TABLE 	= {
					{'NumberOfParticles',	0.12}
				}
			},
			{
				INTEGER_TO_FLOAT	= 'PRESERVE',
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'RemoveCylinderRadius',42},
					{'MinVisibleSpeed',		16}
				}
			}
		}
	},
	{
		-- |shorter freighter dock beam| capture range
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/HANGARA/ENTITIES/HANGARA.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'PlayerAutoLandRange', 250}
				}
			}
		}
	},
	{
		-- |mech faster step| animation speed (adjusted for faster speed in vehicle globals)
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/VEHICLES/MECH_SUIT/MECH_SUIT/ENTITIES/MECH.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Filename','MODELS/COMMON/VEHICLES/MECH_SUIT/ANIMS/MECH_WALK.ANIM.MBIN'},
				VALUE_CHANGE_TABLE 	= {
					{'Speed',		1.18}	-- 1
				}
			},
			{
				MATH_OPERATION 		= '*',
				INTEGER_TO_FLOAT	= 'FORCE',
				SPECIAL_KEY_WORDS	= {'Filename','MODELS/COMMON/VEHICLES/MECH_SUIT/ANIMS/MECH_FASTWALK.ANIM.MBIN'},
				VALUE_CHANGE_TABLE 	= {
					{'Speed',		1.32}	-- 0.8
				}
			}
		}
	},
	-- {
		-- -- |Hide lines| - trader routs, HUD icons -& landing circle
		-- MBIN_FILE_SOURCE	= 'MODELS/EFFECTS/LINES/LINERENDERER.SCENE.MBIN',
		-- EXML_CHANGE_TABLE	= {
			-- {
				-- SPECIAL_KEY_WORDS	= {'Name', 'MAXNUMLINES'},
				-- VALUE_CHANGE_TABLE 	= {
					-- {'Value',		1}
				-- }
			-- }
		-- }
	-- },
	{
		-- |delete LINE3D| remove lines
		MBIN_FILE_SOURCE	= 'MATERIALS/LINE3D.MATERIAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS	= 'Samplers',
				REMOVE				= 'SECTION'
			}
		}
	},
	{
		-- |Remove smoke and trails| effect from mech and player
		MBIN_FILE_SOURCE	= {
			'MODELS/EFFECTS/PLAYER/JETPACKEFFECTS/BLUEJETPACKFX.SCENE.MBIN',
			'MODELS/EFFECTS/PLAYER/JETPACKEFFECTS/GREENJETPACKFX.SCENE.MBIN',
			'MODELS/EFFECTS/PLAYER/JETPACKEFFECTS/REDJETPACKFX.SCENE.MBIN',
			'MODELS/EFFECTS/PLAYER/JETPACKEFFECTS/STANDARDJETPACKFX.SCENE.MBIN',
			'MODELS/EFFECTS/PLAYER/JETPACKEFFECTS/MECHJETPACKFX.SCENE.MBIN',
			'MODELS/EFFECTS/TRAILS/PLAYER/JETPACKTRAIL.SCENE.MBIN',
			'MODELS/EFFECTS/TRAILS/MECH/MECHCONTRAIL.SCENE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				PRECEDING_KEY_WORDS = 'Children',
				REMOVE				= 'SECTION'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= {
			'MODELS/EFFECTS/TRAILS/PLAYER/JETPACKTRAIL.TRAIL.MBIN',
			'MODELS/EFFECTS/TRAILS/MECH/MECHCONTRAIL.TRAIL.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'Width',				0},
					{'Points',				0},
					{'MaxPointsPerFrame',	0},
					{'DistanceThreshold',	0},
					{'PointLife',			0}
				}
			}
		}
	},
	{
		-- |No resource crates at portal|
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Clump1'},
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Clump2'},
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Clump3'},
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Clump4'},
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Clump5'},
				REMOVE				= 'SECTION'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', '_Clump6'},
				REMOVE				= 'SECTION'
			}
		}
	}
}}}}
