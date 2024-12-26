-------------------------------------------------------------
dofile('LIB/_lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
-------------------------------------------------------------
local mod_desc = [[
  - Full system scan activated from the bridge terminal
  - Hangar room and landing pad lights changed to near-white
  - Hangar missing back floor crossing sections restored
  - Cranes moved to the back
  - Hangar and bridge loitering NPC repositioned
]]-----------------------------------------------------------

local hgr_ect = { {SKW={}, REMOVE='Section'} }
for node, form in pairs({
	NPC_01			= {tx=-9.507,	ty=-3.35,	tz=-28.34},
	NPC_02			= {tx=-56,		ty=-7.34,	tz=62.5,	ry=-150},
	NPC_03			= {tx=-8.337,	ty=-3.35,	tz=-28.03},
	NPC_04			= {tx=38.4,		ty=-7.34,	tz=69.35,	ry=35},
	NPC_06			= {tx=-21.92,	ty=-4.18,	tz=5.5},
	NPC_07			= {tx=-57.8,	ty=8.12,	tz=57.14,	ry=270},
	RefHangarCrane2	= {tx=41.88,				tz=61.2},
	RefHangarCrane	= {tx=-3.43,				tz=59.5},
	RefHangarCrane1	= {tx=-41.96,				tz=60.9},
	MonitorDesk		= {tx=-55.5,	ty=-7.35,	tz=63.2,	ry=305},
	RefFuelTank2	= {tx=35.53,	ty=-7.34,	tz=72.55,	ry=180},
	RefLargeCrate103= {tx=-22.65,	ty=-4.31,	tz=17.17,	rx=180,		sx=4.1},		-- teleoprt R
	RefLargeCrate113= {tx=22.65,	ty=-4.315,	tz=17.17,	rx=180,		sx=4.1},		-- teleoprt L
	RefLargeCrate10	= {tx=7,		ty=-7.35,	tz=66.8,	rx=180,		sx=4.3,	sz=4.3},-- cross gap M
	RefLargeCrate6	= {tx=-52.35,	ty=-7.35,	tz=66.8,	rx=180,		sx=4.3,	sz=4.3},-- cross gap R
	RefPallet30		= {tx=7.79,		ty=-5.72,	tz=66.7,	rz=-58.5,	sx=2.6,	sy=2.4,	sz=2.8},
	MidCeiling201	= {							tz=33.2,								sz=1.25},
	pointLight70				= {del=true},
	pointLight7501				= {del=true},
	REFFreighterHangerMistVFX	= {del=true}
}) do
	if form.del then
		hgr_ect[1].SKW[#hgr_ect[1].SKW+1] = {'Name', node}
	else
		hgr_ect[#hgr_ect+1] = {
			SPECIAL_KEY_WORDS	= {'Name', node},
			VALUE_CHANGE_TABLE	= {
				{'TransX',	form.tx or 'IGNORE'},
				{'TransY',	form.ty or 'IGNORE'},
				{'TransZ',	form.tz or 'IGNORE'},
				{'RotX',	form.rx or 'IGNORE'},
				{'RotY',	form.ry or 'IGNORE'},
				{'RotZ',	form.rz or 'IGNORE'},
				{'ScaleX',	form.sx or 'IGNORE'},
				{'ScaleY',	form.sy or 'IGNORE'},
				{'ScaleZ',	form.sz or 'IGNORE'}
			}
		}
	end
end
for atr, val in pairs({
	INTENSITY	= 35000,
	COL_R		= 0.3,
	COL_G		= 0.5,
	COL_B		= 0.6
}) do
	hgr_ect[#hgr_ect+1] = {
		SPECIAL_KEY_WORDS 	= {
			{'Name', 'lightorange1', 'Name', atr},
			{'Name', 'pointLight8', 'Name', atr}
		},
		VALUE_CHANGE_TABLE	= {
			{'Value', val}
		}
	}
end
hgr_ect[#hgr_ect+1] = {
	PRECEDING_KEY_WORDS = 'Children',
	ADD					= ToExml({
		ScNode({
			{
				name	= '1RefBarrelBaz1',
				ntype	= 'REFERENCE',
				form	= {tx=8.18, ty=-7.02, tz=66.4, rx=270, sx=0.9, sy=1.4, sz=0.9},
				attr	= {
					SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/BARREL1.SCENE.MBIN'
				}
			},
			{
				name	= '1RefCrossingB1',
				ntype	= 'REFERENCE',
				form	= {tx=-45.35, ty=-7.341775, tz=66.73, ry=180},
				attr	= {
					SCENEGRAPH = 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN'
				}
			},
			{
				name	= '1RefCrossingB2',
				ntype	= 'REFERENCE',
				form	= {tx=0, ty=-7.341775, tz=66.73},
				attr	= {
					SCENEGRAPH = 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN'
				}
			},
			{
				name	= '1RefCrossingB3',
				ntype	= 'REFERENCE',
				form	= {tx=45.35, ty=-7.341775, tz=66.73, ry=180},
				attr	= {
					SCENEGRAPH = 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONB.SCENE.MBIN'
				}
			},
			{
				name	= '1RefCrateMilk01',
				ntype	= 'REFERENCE',
				form	= {tx=5.06, ty=-7.33, tz=65.54, ry=86, sx=2.7, sy=1.8, sz=2.7},
				attr	= {
					SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/MILKCRATE.SCENE.MBIN'
				}
			},
			{
				name	= '1RefCrateHazBig1',
				ntype	= 'REFERENCE',
				form	= {tx=6.74, ty=-7.34, tz=66.5, ry=90, sx=1.7, sy=1.4, sz=1.6},
				attr	= {
					SCENEGRAPH = 'MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/PROPS/CRATEHAZARDOUS.SCENE.MBIN'
				}
			},
			{
				name	= '1RefCrateTypeb1',
				ntype	= 'REFERENCE',
				form	= {tx=5.06, ty=-7.33, tz=67.1, ry=3, sx=0.9, sy=0.9, sz=0.9},
				attr	= {
					SCENEGRAPH = 'MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/PROPS/CRATE.SCENE.MBIN'
				}
			},
			{
				name	= '1RefCrateTypeb2',
				ntype	= 'REFERENCE',
				form	= {tx=5.2, ty=-7.33, tz=68.2, ry=87, sx=0.9, sy=0.9, sz=0.9},
				attr	= {
					SCENEGRAPH = 'MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/PROPS/CRATE.SCENE.MBIN'
				}
			},
			{
				name	= '1RefCrateHazBig2',
				ntype	= 'REFERENCE',
				form	= {tx=-53.3, ty=-6.67, tz=64.1, ry=13, rz=90, sx=0.57, sy=0.9, sz=0.9},
				attr	= {
					SCENEGRAPH = 'MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/PROPS/CRATEHAZARDOUS.SCENE.MBIN'
				}
			},
			{
				name	= '1RefScreenSilo',
				ntype	= 'REFERENCE',
				form	= {tx=-55.32, ty=-5.82, tz=63.46, ry=35.1, sx=0.36, sy=0.6, sz=0.4},
				attr	= {
					SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/WALLMONITORS/WALLMONITORA.SCENE.MBIN'
				}
			},
			{
				name	= '1RefCoveredSilos',
				ntype	= 'REFERENCE',
				form	= {tx=-54, ty=-7.33, tz=66.8, ry=-90, sx=0.75, sy=0.75, sz=0.75},
				attr	= {
					SCENEGRAPH = 'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/COVEREDSILOS.SCENE.MBIN'
				}
			},
			{
				name	= '1RefCrateMould01',
				ntype	= 'REFERENCE',
				form	= {tx=-52.8, ty=-3.65, tz=65.65, rx=10, ry=-85, rz=180, sx=1.4},
				attr	= {
					SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/CRATE1.SCENE.MBIN'
				}
			},
			{
				name	= '1RefCrateMould02',
				ntype	= 'REFERENCE',
				form	= {tx=-52.7, ty=-3.6, tz=67.7, rx=-10, ry=85, rz=175, sx=1.4},
				attr	= {
					SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/CRATE1.SCENE.MBIN'
				}
			},
			{
				name	= '1RefBuilderHand',
				ntype	= 'REFERENCE',
				form	= {tx=-39.85, ty=-7.64, tz=-22.3, rx=-2, ry=-65, rz=180, sx=1.4, sy=1.4, sz=1.4},
				attr	= {
					SCENEGRAPH = 'MODELS/COMMON/ROBOTS/ROBOTHAND.SCENE.MBIN'
				}
			},
			{
				name	= '1RefBuilderHead',
				ntype	= 'REFERENCE',
				form	= {tx=-39.8, ty=-7.64, tz=-21.6, rx=50, ry=160, rz=0, sx=1.1, sy=1.1, sz=1.1},
				attr	= {
					SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BUILDERHEAD.SCENE.MBIN'
				}
			},
			{
				name	= '1RefGeometPlant01',
				ntype	= 'REFERENCE',
				form	= {tx=37, ty=-7.72, tz=68.3, ry=-20, rz=20, sx=0.24, sy=0.24, sz=0.24},
				attr	= {
					SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEO_NONE.SCENE.MBIN'
				}
			},
			{
				name	= '1RefMetalStruct01',
				ntype	= 'REFERENCE',
				form	= {tx=11.8, ty=9.5, tz=22.7, sx=0.3, sy=0.3, sz=0.3},
				attr	= {
					SCENEGRAPH = 'MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT.SCENE.MBIN'
				}
			},
			{
				name	= '1RefWirecell01',
				ntype	= 'REFERENCE',
				form	= {tx=-67, ty=14, tz=-18.2, sx=0.6, sy=0.6, sz=0.6},
				attr	= {
					SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WIRECUBE.SCENE.MBIN'
				}
			}
		}),
		ScLight({
			--	left stairs light (copied from Relight)
			{name='pointLight125d',	c='FFFACFA8',	tx=-22.666,	ty=5.3848,	tz=-15,8617, g=0.851, b=0.745},
			{name='pointLight125e',	c='FFFACFA8',	tx=-22.666,	ty=2.6848,	tz=-10,3617, g=0.851, b=0.745},
			{name='pointLight125f',	c='FFFACFA8',	tx=-22.666,	ty=0.0,		tz=-4,36167, g=0.851, b=0.745},
			{name='pointLight125z',	c='FFFACFA8',	tx=-16.666,	ty=14.0848,	tz=-30,8617},
			{name='pointLight125b',	c='FFFACFA8',	tx=-22.666,	ty=11.0848,	tz=-25,8617, g=0.851, b=0.745, rx=-135, fov=180},
			{name='pointLight125c',	c='FFFACFA8',	tx=-22.666,	ty=8.0848,	tz=-20,8617, g=0.851, b=0.745},
			--	right stairs light (copied from Relight)
			{name='pointLight70d',	c='FFFACFA8',	tx=22.666,	ty=5.3848,	tz=-15,8617, g=0.851, b=0.745},
			{name='pointLight70e',	c='FFFACFA8',	tx=22.666,	ty=2.6848,	tz=-10,3617, g=0.851, b=0.745},
			{name='pointLight70f',	c='FFFACFA8',	tx=22.666,	ty=0.0,		tz=-4,36167, g=0.851, b=0.745},
			{name='pointLight8b',	c='FFFACFA8',	tx=8.0,		ty=12.128,	tz=48.882,   g=0.59,  b=0.306, i=27000, r=0.947},
			{name='pointLight8b',	c='FFFACFA8',	tx=0.0,		ty=12.128,	tz=48.882,   g=0.59,  b=0.306, i=27000, r=0.947},
			{name='pointLight70z',	c='FFFACFA8',	tx=16.666,	ty=14.0848,	tz=-30,8617},
			{name='pointLight70b',	c='FFFACFA8',	tx=22.666,	ty=11.0848,	tz=-25,8617, g=0.851, b=0.745, rx=-135, fov=180},
			{name='pointLight70c',	c='FFFACFA8',	tx=22.666,	ty=8.0848,	tz=-20,8617, g=0.851, b=0.745}
		})
	})
}

local function AddPrx(prx, T)
	for i=1, #T do T[i] = {prx, T[i]} end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__MODEL ferighter interior.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '5.29',
	AMUMSS_SUPPRESS_MSG		= 'MULTIPLE_STATEMENTS,MIXED_TABLE',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{--	|freighter hangar|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= hgr_ect
	},
	{--	|bridge lighting and tweaks|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'Name', 'NPC_1'},
				VALUE_CHANGE_TABLE	= {
					{'TransX',		-14},
					{'TransY',		5.79},
					{'TransZ',		-1},
					{'RotY', 		105}
				}
			},
			{
				SPECIAL_KEY_WORDS 	= {'Name', 'NPC_6'},
				VALUE_CHANGE_TABLE	= {
					{'TransX',		14.2},
					{'TransY',		5.79},
					{'TransZ',		0},
					{'RotY', 		-110}
				}
			},
			{-- teleporter gaps fix
				PRECEDING_KEY_WORDS = 'Children',
				ADD					= AddSceneNodes({
					{
						name	= '1RefBoxTeleport_1',
						ntype	= 'REFERENCE',
						form	= {tx=9.497, ty=-0.738, tz=-3.95, sx=0.3, sy=9, sz=1},
						attr	= {
							SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/STORAGEBOXES/STORAGEBOXB.SCENE.MBIN'
						}
					},
					{
						name	= '1RefBoxTeleport_2',
						ntype	= 'REFERENCE',
						form	= {tx=-9.497, ty=-0.738, tz=-3.98, sx=0.3, sy=9, sz=1},
						attr	= {
							SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/STORAGEBOXES/STORAGEBOXB.SCENE.MBIN'
						}
					},
					{
						name	= '1RefBoxTeleport_3',
						ntype	= 'REFERENCE',
						form	= {tx=-4.0, ty=-0.735, tz=-9.497, sx=1, sy=9, sz=0.3},
						attr	= {
							SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/STORAGEBOXES/STORAGEBOXB.SCENE.MBIN'
						}
					},
					{
						name	= '1RefBoxTeleport_4',
						ntype	= 'REFERENCE',
						form	= {tx=4.0, ty=-0.739, tz=-9.55, sx=1, sy=9, sz=0.3},
						attr	= {
							SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/STORAGEBOXES/STORAGEBOXB.SCENE.MBIN'
						}
					}
				})
			},
			{
				SPECIAL_KEY_WORDS 	= AddPrx('Name', {
					'LargeCrate',
					'LargeCrate11',
					'LargeCrate20',
					'LargeCrate30',
					'CielingDrape_Trader',
					'CielingDrape_Trader1',
					-- lights (copied from Relight)
					'Lightpath08',
					'pointLight124',
					'pointLight59',
					'pointLight60',
					'pointLight61',
					'pointLight62',
					'SmallLight',
					'SmallLight1',
				}),
				REMOVE				= 'Section'
			},
			{--	lights (copied from Relight)
				PRECEDING_KEY_WORDS = 'Children',
				ADD					= AddLightNodes({
				--	(copied from Relight)
					{name='pointLight59', tx=0.0,    ty=7.0,  tz=0.0,    i=80000, r=0.95, g=1.0,  b=1.0},
					{name='pointLight60', tx=0.0,    ty=2.0,  tz=0.0,    i=30000, r=1.0,  g=0.67, b=0.361},
					{name='pointLight61', tx=0.0,    ty=5.8,  tz=-11.22, i=32000, r=1.0,  g=0.9,  b=0.685, rx=-90, fov =180},
					{name='pointLight62', tx=0.0,    ty=8.58, tz=14.08,  i=40000, r=0.6,  g=0.8,  b=1.0},
					-- Tractor beam blue light
					{name='SpaceLight0',  tx=0.0,    ty=-1.0, tz=-21,    i=80000, r=0.3,  g=0.7,  b=1.0},
					{name='SpaceLight1',  tx=-13.0,  ty=-1.0, tz=-18,    i=80000, r=0.3,  g=0.7,  b=1.0},
					{name='SpaceLight2',  tx=13.0,   ty=-1.0, tz=-18,    i=80000, r=0.3,  g=0.7,  b=1.0},
					{name='SpaceLight3',  tx=0.0,    ty=7.0,  tz=-21,    i=60000, r=0.3,  g=0.7,  b=1.0},
					{name='SpaceLight4',  tx=-13.0,  ty=7.0,  tz=-18,    i=60000, r=0.3,  g=0.7,  b=1.0},
					{name='SpaceLight5',  tx=13.0,   ty=7.0,  tz=-18,    i=60000, r=0.3,  g=0.7,  b=1.0},
					-- White roof0 neons - left side
					{name='NeonLeft1',    tx=-5.0,   ty=4.5,  tz=-12.4,  i=15000},
					{name='NeonLeft2',    tx=-12.7,  ty=4.5,  tz=-5.2,   i=15000},
					{name='NeonLeft3',    tx=-12.7,  ty=4.5,  tz=5.2,    i=15000},
					{name='NeonLeft4',    tx=-5.0,   ty=4.5,  tz=12.4,   i=15000},
					-- White roof0 neons - right side
					{name='NeonRight1',   tx=5.0,    ty=4.5,  tz=-12.4,  i=15000},
					{name='NeonRight2',   tx=12.7,   ty=4.5,  tz=-5.2,   i=15000},
					{name='NeonRight3',   tx=12.7,   ty=4.5,  tz=5.2,    i=15000},
					{name='NeonRight4',   tx=5.0,    ty=4.5,  tz=12.4,   i=15000},
					-- White Floor Lights - left side
					{name='Floor0Left1',  tx=-5.42,  ty=1.97, tz=-13.06, i=4000},
					{name='Floor0Left2',  tx=-13.06, ty=1.97, tz=-5.42,  i=4000},
					{name='Floor0Left3',  tx=-13.06, ty=1.97, tz=5.42,   i=4000},
					{name='Floor0Left4',  tx=-5.42,  ty=1.97, tz=13.06,  i=4000},
					-- White Floor Lights - right side
					{name='Floor0Right1', tx=5.42,   ty=1.97, tz=-13.06, i=4000},
					{name='Floor0Right2', tx=13.06,  ty=1.97, tz=-5.42,  i=4000},
					{name='Floor0Right3', tx=13.06,  ty=1.97, tz=5.42,   i=4000},
					{name='Floor0Right4', tx=5.42,   ty=1.97, tz=13.06,  i=4000},
					-- White Floor Lights - left side
					{name='Floor1Left1',  tx=-6.42,  ty=5.97, tz=-15.5,  i=4000},
					{name='Floor1Left2',  tx=-15.5,  ty=5.97, tz=-6.42,  i=4000},
					{name='Floor1Left3',  tx=-15.5,  ty=5.97, tz=6.42,   i=4000},
					{name='Floor1Left4',  tx=-6.42,  ty=5.97, tz=15.5,   i=4000},
					-- White Floor Lights - right side
					{name='Floor1Right1', tx=6.42,   ty=5.97, tz=-15.5,  i=4000},
					{name='Floor1Right2', tx=15.5,   ty=5.97, tz=-6.42,  i=4000},
					{name='Floor1Right3', tx=15.5,   ty=5.97, tz=6.42,   i=4000},
					{name='Floor1Right4', tx=6.42,   ty=5.97, tz=15.5,   i=4000}
				})
			}
		}
	},
	{--	activate |system scan from bridge| terminal
		MBIN_FILE_SOURCE	= {
			'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINAL.SCENE.MBIN',
			'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINALPIRATE.SCENE.MBIN'
		},
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Base'},
				PRECEDING_KEY_WORDS = 'Children',
				ADD 				= AddSceneNodes({
					name	= 'SystemScanner',
					ntype	= 'LOCATOR',
					form	= {ty=1.8, sx=0.2, sz=0.2},
					attr	= {
						ATTACHMENT = 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINAL.INTERACTION.ENTITY.MBIN'
					},
					child	= {
						name	= 'SysScanCol',
						ntype	= 'COLLISION',
						attr	= {
							TYPE	= 'Sphere',
							RADIUS	= 1
						}
					}
				})
			}
		}
	},
	{--	system scan entity
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FREIGHTERBASE/ROOMS/SCANROOM/PARTS/FLOOR0/ENTITIES/SCANROOMINTERACTION.ENTITY.MBIN',
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINAL.INTERACTION.ENTITY.MBIN',
				'REMOVE'
			}
		}
	},
	{--	system scan entity
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINAL.INTERACTION.ENTITY.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Template', 'GcMaintenanceComponentData.xml'},
				REMOVE				= 'Section'
			}
		}
	},
	{--	|freighter landing pad lights|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/INDUSTRIAL/ACCESSORIES/LANDINGPAD_HANGAR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE		= 'All',
				SPECIAL_KEY_WORDS	= {'Type', 'LIGHT'},
				REMOVE				= 'Section'
			},
			{
				SPECIAL_KEY_WORDS	= {'Name', 'OrangeLights'},
				ADD_OPTION			= 'AddAfterSection',
				ADD 				= AddLightNodes({
					{name='left',  fov=100, tx=16,  ty=10, rx=-22, ry=90,  f='l', fr=1.2,		c='FFF5F7FA'},
					{name='right', fov=100, tx=-16, ty=10, rx=-22, ry=-90, f='l', fr=1.2,		c='FFF5F7FA'},
					{name='ne',	i=44000, fov=120, tx=4.8,	ty=0.25, tz=4.8,  rx=30, ry=45,		c='FFF5F7FA'},
					{name='nw',	i=44000, fov=120, tx=-4.8,	ty=0.25, tz=4.8,  rx=30, ry=-45,	c='FFF5F7FA'},
					{name='se',	i=44000, fov=120, tx=4.8,	ty=0.25, tz=-4.8, rx=30, ry=135,	c='FFF5F7FA'},
					{name='sw',	i=44000, fov=120, tx=-4.8,	ty=0.25, tz=-4.8, rx=30, ry=-135,	c='FFF5F7FA'}
				})
			}
		}
	},
	{--	add |hangar ship outfitting|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/TELEPORTER/TELEPORTER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefWallMonitor'},
				REMOVE				= 'Section'
			},
			{
				PRECEDING_KEY_WORDS = 'Children',
				ADD					= AddSceneNodes({
					name	= '1RefMonitorShip',
					ntype	= 'REFERENCE',
					form	= {tx=2.55, ty=0.12, tz=5.4, ry=135, rz=180, sx=0.55, sy=0.55, sz=0.55},
					attr	= {
						SCENEGRAPH = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/ROOFMONITOR/ROOFMONITOR.SCENE.MBIN'
					},
					child	= {
						name	= 'ColShipSalvage1',
						ntype	= 'COLLISION',
						form	= {ty=-3},
						attr	= {
							TYPE	= 'Sphere',
							RADIUS	= 0.2
						},
						child	= {
							name	= 'LocShipSalvage1',
							ntype	= 'LOCATOR',
							attr	= {
								ATTACHMENT = 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/OBJECTSPAWNER/ENTITIES/SHIPSALVAGETERMINAL.ENTITY.MBIN'
							}
						}
					}
				})
			}
		}
	},
	{--	|freighter extend buildable| area
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'BaseBuildingArea'},
				VALUE_CHANGE_TABLE	= {
					{'TransZ',		-28.6235},
					{'ScaleX',		1.3},
					{'ScaleZ',		1.3}
				}

			}
		}
	},
	{--	floor section 1
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONA.SCENE.MBIN',
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONB.SCENE.MBIN'
			}
		}
	},
	{--	floor section 1 - remove parts
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONB.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= AddPrx('Name', {
					'RefBarrier',
					'RefBarrier1',
					'RefBarrier2'
				}),
				REMOVE				= 'Section'
			}
		}
	},
	{--	floor section 2
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONA.SCENE.MBIN',
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{--	floor section 2 - remove parts
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= AddPrx('Name', {
					'RefBarrier',
					'RefBarrier1',
					'RefBarrier2',
					'SUB1HangarFloorSectionA',
					'SUB2HangarFloorSectionA',
					'SUB3HangarFloorSectionA'
				}),
				REMOVE				= 'Section'
			}
		}
	},
	{--	geometric plant
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEOMETRIC.SCENE.MBIN',
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEO_NONE.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{--	inactive geometric plant
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEO_NONE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'Name', 'ATTACHMENT'},
				REMOVE				= 'Section'
			}
		}
	},
	{--	wirecell cube
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WEIRDCUBE.SCENE.MBIN',
				'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WIRECUBE.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{--	inactive wirecell cube
		MBIN_FILE_SOURCE	= 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WIRECUBE.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {'Name', 'CuboidSmallLOD0', 'Name', 'ATTACHMENT'},
				VALUE_CHANGE_TABLE	= {
					{'value', 'MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT/ENTITIES/SHAPE1FLOAT.ENTITY.MBIN'}
				}
			}
		}
	},
}}}}
