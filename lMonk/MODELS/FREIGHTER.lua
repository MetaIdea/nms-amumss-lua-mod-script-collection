-------------------------------------------------------------
dofile('LIB/lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
-------------------------------------------------------------
local mod_desc = [[
  - Full system scan activated from the bridge terminal
  - Hangar room and landing pad lights changed to near-white
  - Hangar missing back floor crossing sections restored
  - Cranes moved to the back
  - Hangar and bridge loitering NPC repositioned
]]-----------------------------------------------------------

local ECT = { {
	SKW		= {},
	REMOVE	= 'Section'
} }
for _,node in ipairs({
	{k='NPC_01',			tx=-9.507,	ty=-3.35,	tz=-28.34},
	{k='NPC_02',			tx=-56,		ty=-7.34,	tz=62.5,	ry=-150},
	{k='NPC_03',			tx=-8.337,	ty=-3.35,	tz=-28.03},
	{k='NPC_04',			tx=38.4,	ty=-7.34,	tz=69.35,	ry=35},
	{k='NPC_06',			tx=-21.92,	ty=-4.18,	tz=5.5},
	{k='NPC_07',			tx=-57.8,	ty=8.12,	tz=57.14,	ry=270},
	{k='RefHangarCrane2',	tx=41.88,				tz=61.2},
	{k='RefHangarCrane',	tx=-3.43,				tz=59.5},
	{k='RefHangarCrane1',	tx=-41.96,				tz=60.9},
	{k='RefPallet54',		tx=-52.35,	ty=-7.48,	tz=66.7,				sx=2.6,	sy=1,		sz=2.6},
	{k='MonitorDesk',		tx=-55.5,	ty=-7.35,	tz=63.2,	ry=305},
	{k='RefFuelTank2',		tx=35.53,	ty=-7.34,	tz=72.55,	ry=180},
	{k='RefPallet30',		tx=7.79,	ty=-5.72,	tz=66.7,	rz=-58.5,	sx=2.6,	sy=2.4,		sz=2.8},
	{k='MidCeiling201',								tz=33.2,									sz=1.25},
	{k='pointLight70',				del=true},
	{k='pointLight7501',			del=true},
	{k='REFFreighterHangerMistVFX',	del=true}
}) do
	if node.del then
		ECT[1].SKW[#ECT[1].SKW+1] = {'Name', node.k}
	else
		ECT[#ECT+1] = {
			SPECIAL_KEY_WORDS	= {'Name', node.k},
			VALUE_CHANGE_TABLE	= {
				{'TransX',	node.tx or 'IGNORE'},
				{'TransY',	node.ty or 'IGNORE'},
				{'TransZ',	node.tz or 'IGNORE'},
				{'RotX',	node.rx or 'IGNORE'},
				{'RotY',	node.ry or 'IGNORE'},
				{'RotZ',	node.rz or 'IGNORE'},
				{'ScaleX',	node.sx or 'IGNORE'},
				{'ScaleY',	node.sy or 'IGNORE'},
				{'ScaleZ',	node.sz or 'IGNORE'}
			}
		}
	end
end
for _,atr in ipairs({
	{a='INTENSITY',	v=35000},
	{a='COL_R',		v=0.3},
	{a='COL_G',		v=0.5},
	{a='COL_B',		v=0.6}
}) do
	ECT[#ECT+1] = {
		SPECIAL_KEY_WORDS 	= {
			{'Name', 'lightorange1', 'Name', atr.a},
			{'Name', 'pointLight8', 'Name', atr.a}
		},
		VALUE_CHANGE_TABLE	= {
			{'Value',	atr.v}
		}
	}
end
ECT[#ECT+1] = {
	PRECEDING_KEY_WORDS = 'Children',
	ADD					= ToExml({
		ScNode('1RefCrossingB1',	'REFERENCE', {
			ScTransform({tx=-45.35, ty=-7.341775, tz=66.73, ry=180}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrossingB2',	'REFERENCE', {
			ScTransform({tx=0, ty=-7.341775, tz=66.73}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrossingB3',	'REFERENCE', {
			ScTransform({tx=45.35, ty=-7.341775, tz=66.73, ry=180}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONB.SCENE.MBIN'}
			})
		}),
		ScNode('1RefMonitorShip1',	'REFERENCE', {
			ScTransform({tx=20.2, ty=-4, tz=16.2, rx=0, ry=-42, rz=180, sx=0.55, sy=0.55, sz=0.55}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/ROOFMONITOR/ROOFMONITOR.SCENE.MBIN'}
			}),
			ScChildren({
				ScNode('ColShipSalvage1', 'COLLISION', {
					ScTransform({ty=-3}),
					ScAttributes({
						{'TYPE',	'Sphere'},
						{'RADIUS',	0.2}
					}),
					ScChildren({
						ScNode('LocShipSalvage1', 'LOCATOR', {
							ScTransform(),
							ScAttributes({
								{'ATTACHMENT', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/ENTITIES/SHIP_SALVAGE.ENTITY.MBIN'}
							})
						})
					})
				})
			})
		}),
		ScNode('1RefMonitorShip2',	'REFERENCE', {
			ScTransform({tx=-20.2, ty=-4, tz=16.2, rx=0, ry=42, rz=180, sx=0.55, sy=0.55, sz=0.55}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/ROOFMONITOR/ROOFMONITOR.SCENE.MBIN'}
			}),
			ScChildren({
				ScNode('ColShipSalvage2', 'COLLISION', {
					ScTransform({ty=-3}),
					ScAttributes({
						{'TYPE',	'Sphere'},
						{'RADIUS',	0.2}
					}),
					ScChildren({
						ScNode('LocShipSalvage2', 'LOCATOR', {
							ScTransform(),
							ScAttributes({
								{'ATTACHMENT', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/ENTITIES/SHIP_SALVAGE.ENTITY.MBIN'}
							})
						})
					})
				})
			})
		}),
		ScNode('1RefCrateMilk01',	'REFERENCE', {
			ScTransform({tx=5.1, ty=-7.33, tz=65.54, ry=86, sx=2.7, sy=1.8, sz=2.7}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/MILKCRATE.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateNexus1',	'REFERENCE', {
			ScTransform({tx=6.8, ty=-7.4, tz=65.5, ry=90, sx=1.4, sy=1.4, sz=1.4}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/SPACE/NEXUS/PARTS/PROPS/CRATE.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateNexus2',	'REFERENCE', {
			ScTransform({tx=6.8, ty=-7.4, tz=67.8, sx=1.4, sy=1.4, sz=1.4}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/SPACE/NEXUS/PARTS/PROPS/CRATE.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateNexus3',	'REFERENCE', {
			ScTransform({tx=5.05, ty=-7.33, tz=67.15, ry=3, sx=0.8, sy=0.8, sz=0.8}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/SPACE/NEXUS/PARTS/PROPS/CRATE.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateNexus4',	'REFERENCE', {
			ScTransform({tx=5.05, ty=-7.33, tz=68.5, ry=87, sx=0.8, sy=0.8, sz=0.8}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/SPACE/NEXUS/PARTS/PROPS/CRATE.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateNexus5',	'REFERENCE', {
			ScTransform({tx=-53.8, ty=-7.33, tz=64.2, ry=13, sx=0.9, sy=0.9, sz=0.9}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/SPACE/NEXUS/PARTS/PROPS/CRATE.SCENE.MBIN'}
			})
		}),
		ScNode('1RefScreenSilo',	'REFERENCE', {
			ScTransform({tx=-55.32, ty=-5.82, tz=63.46, ry=35.1, sx=0.36, sy=0.6, sz=0.4}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PROPS/WALLMONITORS/WALLMONITORA.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCoveredSilos',	'REFERENCE', {
			ScTransform({tx=-54, ty=-7.33, tz=66.8, ry=-90, sx=0.75, sy=0.75, sz=0.75}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/SPACE/SPACESTATION/MODULARPARTS/DOCK/PIRATES/COVEREDSILOS.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateMould01',	'REFERENCE', {
			ScTransform({tx=-52.8, ty=-3.65, tz=65.65, rx=10, ry=-85, rz=180, sx=1.4}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/CRATE1.SCENE.MBIN'}
			})
		}),
		ScNode('1RefCrateMould02',	'REFERENCE', {
			ScTransform({tx=-52.7, ty=-3.6, tz=67.7, rx=-10, ry=85, rz=175, sx=1.4}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BAZAAR/CRATE1.SCENE.MBIN'}
			})
		}),
		ScNode('1RefBuilderHand',	'REFERENCE', {
			ScTransform({tx=-39.85, ty=-7.64, tz=-22.3, rx=-2, ry=-65, rz=180, sx=1.4, sy=1.4, sz=1.4}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/COMMON/ROBOTS/ROBOTHAND.SCENE.MBIN'}
			})
		}),
		ScNode('1RefBuilderHead',	'REFERENCE', {
			ScTransform({tx=-39.8, ty=-7.64, tz=-21.6, rx=50, ry=160, rz=0, sx=1.1, sy=1.1, sz=1.1}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/DECORATION/BUILDERHEAD.SCENE.MBIN'}
			})
		}),
		ScNode('1RefGeometPlant01',	'REFERENCE', {
			ScTransform({tx=37, ty=-7.72, tz=68.3, ry=-20, rz=20, sx=0.24, sy=0.24, sz=0.24}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/MEDGEO_NONE.SCENE.MBIN'}
			})
		}),
		ScNode('1RefMetalStruct01',	'REFERENCE', {
			ScTransform({tx=11.8, ty=9.5, tz=22.7, sx=0.3, sy=0.3, sz=0.3}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1FLOAT.SCENE.MBIN'}
			})
		}),
		ScNode('1RefWirecell01',	'REFERENCE', {
			ScTransform({tx=-67, ty=14, tz=-18.2, sx=0.6, sy=0.6, sz=0.6}),
			ScAttributes({
				{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/FOLIAGE/WIRECUBE.SCENE.MBIN'}
			})
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

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__MODEL ferighter.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.52',
	AMUMSS_SUPPRESS_MSG		= 'MIXED_TABLE',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{--	|freighter hangar|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= ECT
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
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'CielingDrape_Trader'},
					{'Name', 'CielingDrape_Trader1'},
				--	lights (copied from Relight)
					{'Name', 'Lightpath08'},
					{'Name', 'pointLight124'},
					{'Name', 'pointLight59'},
					{'Name', 'pointLight60'},
					{'Name', 'pointLight61'},
					{'Name', 'pointLight62'},
					{'Name', 'SmallLight'},
					{'Name', 'SmallLight1'}
				},
				REMOVE				= 'Section'
			},
			{--	lights (copied from Relight)
				SPECIAL_KEY_WORDS 	= {'Name', 'Lights'},
				PRECEDING_KEY_WORDS = 'Children',
				ADD					= ToExml(
					ScLight({
					--	(copied from Relight)
						{name='pointLight59',tx=0.0, ty=7.0, tz=0.0, i=80000, r=0.95, g=1.0, b=1.0},
						{name='pointLight60',tx=0.0, ty=2.0, tz=0.0, i=30000, r=1.0, g=0.67, b=0.361},
						{name='pointLight61',tx=0.0, ty=5.8, tz=-11.22, rx=-90, fov =180, i=32000, r=1.0, g=0.905, b=0.685},
						{name='pointLight62',tx=0.0, ty=8.58, tz=14.08, i=40000, r=0.6, g=0.8, b=1.0},
						-- Tractor beam blue light
						{name='SpaceLight0',tx=0.0, ty=-1.0, tz=-21, i=80000, r=0.3, g=0.7, b=1.0},
						{name='SpaceLight1',tx=-13.0, ty=-1.0, tz=-18, i=80000, r=0.3, g=0.7, b=1.0},
						{name='SpaceLight2',tx=13.0, ty=-1.0, tz=-18, i=80000, r=0.3, g=0.7, b=1.0},
						{name='SpaceLight3',tx=0.0, ty=7.0, tz=-21, i=60000, r=0.3, g=0.7, b=1.0},
						{name='SpaceLight4',tx=-13.0, ty=7.0, tz=-18, i=60000, r=0.3, g=0.7, b=1.0},
						{name='SpaceLight5',tx=13.0, ty=7.0, tz=-18, i=60000, r=0.3, g=0.7, b=1.0},
						-- White roof0 neons - left side
						{name='NeonLeft1',tx=-5.0, ty=4.5, tz=-12.4, i=15000},
						{name='NeonLeft2',tx=-12.7, ty=4.5, tz=-5.2, i=15000},
						{name='NeonLeft3',tx=-12.7, ty=4.5, tz=5.2, i=15000},
						{name='NeonLeft4',tx=-5.0, ty=4.5, tz=12.4, i=15000},
						-- White roof0 neons - right side
						{name='NeonRight1',tx=5.0, ty=4.5, tz=-12.4, i=15000},
						{name='NeonRight2',tx=12.7, ty=4.5, tz=-5.2, i=15000},
						{name='NeonRight3',tx=12.7, ty=4.5, tz=5.2, i=15000},
						{name='NeonRight4',tx=5.0, ty=4.5, tz=12.4, i=15000},
						-- White Floor Lights - left side
						{name='Floor0Left1',tx=-5.42, ty=1.97, tz=-13.06, i=4000},
						{name='Floor0Left2',tx=-13.06, ty=1.97, tz=-5.42, i=4000},
						{name='Floor0Left3',tx=-13.06, ty=1.97, tz=5.42, i=4000},
						{name='Floor0Left4',tx=-5.42, ty=1.97, tz=13.06, i=4000},
						-- White Floor Lights - right side
						{name='Floor0Right1',tx=5.42, ty=1.97, tz=-13.06, i=4000},
						{name='Floor0Right2',tx=13.06, ty=1.97, tz=-5.42, i=4000},
						{name='Floor0Right3',tx=13.06, ty=1.97, tz=5.42, i=4000},
						{name='Floor0Right4',tx=5.42, ty=1.97, tz=13.06, i=4000},
						-- White Floor Lights - left side
						{name='Floor1Left1',tx=-6.42, ty=5.97, tz=-15.5, i=4000},
						{name='Floor1Left2',tx=-15.5, ty=5.97, tz=-6.42, i=4000},
						{name='Floor1Left3',tx=-15.5, ty=5.97, tz=6.42, i=4000},
						{name='Floor1Left4',tx=-6.42, ty=5.97, tz=15.5, i=4000},
						-- White Floor Lights - right side
						{name='Floor1Right1',tx=6.42, ty=5.97, tz=-15.5, i=4000},
						{name='Floor1Right2',tx=15.5, ty=5.97, tz=-6.42, i=4000},
						{name='Floor1Right3',tx=15.5, ty=5.97, tz=6.42, i=4000},
						{name='Floor1Right4',tx=6.42, ty=5.97, tz=15.5, i=4000}
					})
				)
			},
			{-- gaps fixes
				PRECEDING_KEY_WORDS = 'Children',
				ADD					= ToExml({
					ScNode('1RefCubeFill01',	'REFERENCE', {
						ScTransform({tx=11.847, ty=0.23, tz=-4.3, rx=0, ry=90, rz=90, sx=0.8, sy=1.2, sz=1.2}),
						ScAttributes({
							{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/CUBESOLID.SCENE.MBIN'}
						})
					}),
					ScNode('1RefCubeFill02',	'REFERENCE', {
						ScTransform({tx=3.81, ty=0.23, tz=-11.857, rx=0, ry=180, rz=90, sx=0.8, sy=1.2, sz=1.2}),
						ScAttributes({
							{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/CUBESOLID.SCENE.MBIN'}
						})
					}),
					ScNode('1RefCubeFill03',	'REFERENCE', {
						ScTransform({tx=-11.846, ty=0.23, tz=-4.2, rx=0, ry=90, rz=90, sx=0.8, sy=1.2, sz=1.2}),
						ScAttributes({
							{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/CUBESOLID.SCENE.MBIN'}
						})
					}),
					ScNode('1RefCubeFill04',	'REFERENCE', {
						ScTransform({tx=-3.8, ty=0.23, tz=-11.846, rx=0, ry=0, rz=90, sx=0.8, sy=1.2, sz=1.2}),
						ScAttributes({
							{'SCENEGRAPH', 'MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/CUBESOLID.SCENE.MBIN'}
						})
					}),
				})
			},
		}
	},
	{--	activate |system scan from bridge| terminal
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINAL.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'Base'},
				PRECEDING_KEY_WORDS = 'Children',
				ADD 				= ToExml({
					[1] = ScNode(
						'SystemScanner', 'LOCATOR', {
							ScTransform({ty=1.8, sx=0.2, sz=0.2}),
							ScAttributes({
								{'ATTACHMENT', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINAL.INTERACTION.ENTITY.MBIN'}
							}),
							ScChildren({
								ScNode(
									'SysScanCol', 'COLLISION', {
										ScTransform(),
										ScAttributes({
											{'TYPE',	'Sphere'},
											{'RADIUS',	1}
										})
									}
								)
							})
						}
					)
				})
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
				ADD 				= ToExml(ScLight({
					{name='left',  fov=100, tx=16,  ty=10, rx=-22, ry=90,  f='l', fr=1.2,		c='FFF5F7FA'},
					{name='right', fov=100, tx=-16, ty=10, rx=-22, ry=-90, f='l', fr=1.2,		c='FFF5F7FA'},
					{name='ne',	i=44000, fov=120, tx=4.8,	ty=0.25, tz=4.8,  rx=30, ry=45,		c='FFF5F7FA'},
					{name='nw',	i=44000, fov=120, tx=-4.8,	ty=0.25, tz=4.8,  rx=30, ry=-45,	c='FFF5F7FA'},
					{name='se',	i=44000, fov=120, tx=4.8,	ty=0.25, tz=-4.8, rx=30, ry=135,	c='FFF5F7FA'},
					{name='sw',	i=44000, fov=120, tx=-4.8,	ty=0.25, tz=-4.8, rx=30, ry=-135,	c='FFF5F7FA'}
				}))
			}
		}
	},
	{--	remove |hangar teleporter monitor|
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/TELEPORTER/TELEPORTER.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS	= {'Name', 'RefWallMonitor'},
				REMOVE				= 'Section'
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
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'RefBarrier'},
					{'Name', 'RefBarrier1'},
					{'Name', 'RefBarrier2'}
				},
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
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'RefBarrier'},
					{'Name', 'RefBarrier1'},
					{'Name', 'RefBarrier2'},
					{'Name', 'SUB1HangarFloorSectionA'},
					{'Name', 'SUB2HangarFloorSectionA'},
					{'Name', 'SUB3HangarFloorSectionA'}
				},
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
	}
}}},
	ADD_FILES	= {
		{--	bridge system-scanner entity
			FILE_DESTINATION = 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/BRIDGETERMINAL.INTERACTION.ENTITY.EXML',
			FILE_CONTENT	 = FileWrapping({
				META = {'template','TkAttachmentData'},
				Components = {
					META = {'name','Components'},
					Simple = {
						META = {'value','GcSimpleInteractionComponentData.xml'},
						SimpleInteractionType = 'SuperDoopaScanner',
						Size = {
							META	= {'Size','GcSizeIndicator.xml'},
							SizeIndicator	= 'Medium',
						},
						TriggerAction	= 'INACTIVE',
						HideContents	= true,
						Name			= 'UI_SCAN_ROOM_LABEL',
						ScanType		= 'BINOC_INTERACTABLE'
					},
					-- component stub
					value = 'TkPhysicsComponentData.xml'
				}
			})
		},
		{--	hangar ship salvage terminal entity
			FILE_DESTINATION = 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/ENTITIES/SHIP_SALVAGE.ENTITY.EXML',
			FILE_CONTENT	 = FileWrapping({
				META = {'template','TkAttachmentData'},
				Components = {
					META = {'name','Components'},
					Simple	= {
						META = {'value','GcSimpleInteractionComponentData.xml'},
						Name = 'UI_SALVAGE_TITLE'
					},
					Interaction	= {
						META = {'value','GcInteractionComponentData.xml'},
						InteractionAction	= 'PressButton',
						InteractionType		= {
							META = {'InteractionType','GcInteractionType.xml'},
							InteractionType	= 'StoryUtility'
						},
						AttractDistanceSq	= 3,
						InteractAngle		= 360,
						InteractDistance	= 3,
						PuzzleMissionOverrideTable = {
							META = {'name','PuzzleMissionOverrideTable'},
							Puzzle	= {
								META = {'value','GcAlienPuzzleMissionOverride.xml'},
								Mission		= 'EXPLORE_LOG', -- must be a real mission id
								Puzzle		= 'SHIP_SALVAGE'
							}
						}
					},
					value = 'TkPhysicsComponentData.xml'
				}
			})
		}
	}
}
