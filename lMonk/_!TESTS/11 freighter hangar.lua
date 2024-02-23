dofile('LIB/lua_2_exml.lua')
dofile('LIB/scene_tools.lua')
-------------------------------------------------------

local function HangarChanges(T)
	local changes = {
		{k='NPC_01',			tx=-9.507,	ty=-3.355,	tz=-28.34},
		{k='NPC_03',			tx=-8.337,	ty=-3.355,	tz=-28.03},
		{k='NPC_04',			tx=39.3,	ty=-7.75,	tz=65.4,	ry=135},
		{k='NPC_06',			tx=-21.92,	ty=-4.2,	tz=5.5},
		{k='NPC_07',			tx=-57.8,	ty=8.1,		tz=57.14,	ry=270},
		{k='RefHangarCrane2',	tx=41.88,				tz=61.2},
		{k='RefHangarCrane',	tx=-3.43,				tz=60.7},
		{k='RefHangarCrane1',	tx=-41.96,				tz=60.9},
		{k='Container',			tx=-53.5,	ty=-7.4,	tz=67.25,	rx=0,	ry=7,	rz=0,	sx=1.2,	sy=1.14,	sz=1.1},
		{k='RefPallet15',		tx=-51.95,	ty=-7.48,	tz=66.7,	rx=0,	ry=0,	rz=0,	sx=2,	sy=1,		sz=2.6},
		{k='RefPallet30',		tx=7.79,	ty=-5.72,	tz=66.7,	rx=0,	ry=0,	rz=-58.5,sx=2.6,sy=2.4,		sz=2.8},
		{k='RefLargeCrate23',	tx=6.8,		ty=-7.4,	tz=65.5,	rx=0,	ry=180,	rz=0,	sx=1.8,	sy=1.8,		sz=1.8},
		{k='RefLargeCrate28',	tx=6.8,		ty=-7.4,	tz=67.7,	rx=0,	ry=0,	rz=0,	sx=1.8,	sy=1.8,		sz=1.8},
		{k='RefLargeCrate103',	tx=4.85,	ty=-7.4,	tz=65.8,	rx=0,	ry=0,	rz=0,	sx=1.8,	sy=1.8,		sz=1.8},
		{k='NPC_02',					del=true},
		{k='pointLight70',				del=true},
		{k='pointLight7501',			del=true},
		{k='REFFreighterHangerMistVFX',	del=true}
	}
	local inx = #T+1
	T[inx] = {
		SKW		= {},
		REMOVE	= 'Section'
	}
	for _,node in ipairs(changes) do
		if node.del then
			T[inx].SKW[#T[inx].SKW+1] = {'Name', node.k}
		else
			T[#T+1] = {
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
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '___TEST 11 freighter hangar.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.52',
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONA.SCENE.MBIN',
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONB.SCENE.MBIN'
			}
		}
	},
	{
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
	{
		MBIN_FILE_SOURCE	= {
			{
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONA.SCENE.MBIN',
				'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN',
				'REMOVE'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				SPECIAL_KEY_WORDS 	= {
					{'Name', 'RefBarrier'},
					{'Name', 'RefBarrier1'},
					{'Name', 'RefBarrier2'},
					{'Name', 'SUB1HangarFloorSectionA'},
					{'Name', 'SUB2HangarFloorSectionA'},
					{'Name', 'SUB3HangarFloorSectionA'},
				},
				REMOVE				= 'Section'
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARINTERIOR.SCENE.MBIN',
		EXML_CHANGE_TABLE	= (
			function()
				local T = {}
				HangarChanges(T)

				T[#T+1] = {
					SPECIAL_KEY_WORDS 	= {
						{'Name', 'lightorange1', 'Name', 'INTENSITY'},
						{'Name', 'pointLight8', 'Name', 'INTENSITY'}
					},
					VALUE_CHANGE_TABLE 	= {
						{'Value',		35000}  -- 20000
					}
				}
				T[#T+1] = {
					SPECIAL_KEY_WORDS 	= {
						{'Name', 'lightorange1', 'Name', 'COL_R'},
						{'Name', 'pointLight8', 'Name', 'COL_R'}
					},
					VALUE_CHANGE_TABLE	= {
						{'Value',		0.3}
					}
				}
				T[#T+1] = {
					SPECIAL_KEY_WORDS 	= {
						{'Name', 'lightorange1', 'Name', 'COL_G'},
						{'Name', 'pointLight8', 'Name', 'COL_G'}
					},
					VALUE_CHANGE_TABLE	= {
						{'Value',		0.5}
					}
				}
				T[#T+1] = {
					SPECIAL_KEY_WORDS 	= {
						{'Name', 'lightorange1', 'Name', 'COL_B'},
						{'Name', 'pointLight8', 'Name', 'COL_B'}
					},
					VALUE_CHANGE_TABLE	= {
						{'Value',		0.6}
					}
				}
				T[#T+1] = {
					PRECEDING_KEY_WORDS = 'Children',
					ADD					= ToExml({
						[1] = ScNode('RefCrossing1B1', 'REFERENCE', {
							ScTransform({tx=-45.35, ty=-7.341775, tz=66.73, ry=180}),
							ScAttributes({
								{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN'}
							})
						}),
						[2] = ScNode('RefCrossing1B2', 'REFERENCE', {
							ScTransform({tx=0, ty=-7.341775, tz=66.73}),
							ScAttributes({
								{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONC.SCENE.MBIN'}
							})
						}),
						[3] = ScNode('RefCrossing1B3', 'REFERENCE', {
							ScTransform({tx=45.35, ty=-7.341775, tz=66.73, ry=180}),
							ScAttributes({
								{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/HANGARFLOORSECTIONB.SCENE.MBIN'}
							})
						}),
						[4] = ScNode('RefFuelTankB4', 'REFERENCE', {
							ScTransform({tx=35.53, ty=-7.34, tz=72.55, ry=180}),
							ScAttributes({
								{'SCENEGRAPH', 'MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPROPS/FUELPOD.SCENE.MBIN'}
							})
						}),
						---	left stairs light (copied from Relight)
						[5] = ScLight({name='pointLight125z',tx=-16.6657, ty=14.0848, tz=-30,8617}),
						[6] = ScLight({name='pointLight125b',tx=-22.6657, ty=11.0848, tz=-25,8617, rx=-135, fov=180, g=0.851, b=0.745}),
						[7] = ScLight({name='pointLight125c',tx=-22.6657, ty=8.0848, tz=-20,8617, g=0.851, b=0.745}),
						[8] = ScLight({name='pointLight125d',tx=-22.6657, ty=5.3848, tz=-15,8617, g=0.851, b=0.745}),
						[9] = ScLight({name='pointLight125e',tx=-22.6657, ty=2.6848, tz=-10,3617, g=0.851, b=0.745}),
						[10] = ScLight({name='pointLight125f',tx=-22.6657, ty=0.0, tz=-4,36167, g=0.851, b=0.745}),
						---	right stairs light (copied from Relight)
						[11] = ScLight({name='pointLight70z',tx=16.6657, ty=14.0848, tz=-30,8617}),
						[12] = ScLight({name='pointLight70b',tx=22.6657, ty=11.0848, tz=-25,8617, rx=-135, fov=180, g=0.851, b=0.745}),
						[13] = ScLight({name='pointLight70c',tx=22.6657, ty=8.0848, tz=-20,8617, g=0.851, b=0.745}),
						[14] = ScLight({name='pointLight70d',tx=22.6657, ty=5.3848, tz=-15,8617, g=0.851, b=0.745}),
						[15] = ScLight({name='pointLight70e',tx=22.6657, ty=2.6848, tz=-10,3617, g=0.851, b=0.745}),
						[16] = ScLight({name='pointLight70f',tx=22.6657, ty=0.0, tz=-4,36167, g=0.851, b=0.745}),
						[17] = ScLight({name='pointLight8b',tx=8.0, ty=12.128, tz=48.882, i=27000, r=0.947, g=0.59, b=0.306}),
						[18] = ScLight({name='pointLight8b',tx=0.0, ty=12.128, tz=48.882, i=27000, r=0.947, g=0.59, b=0.306})
					})
				}
				return T
			end
		)()
	}
}}}}
