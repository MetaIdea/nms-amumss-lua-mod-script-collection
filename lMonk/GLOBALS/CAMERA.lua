-------------------------------------------
local desc = [[
  camera POV tweaks for vehicles and ships
  Remove auto-centering; photo-mode tweaks
  Decrease camera shake for various events
]]-----------------------------------------

local pilot_cam_follows = {
---	PRECEDING_KEY				offsetX	offsetY	offsetZ	backMin	backMax	upMin	upMax	lookStick
	{'CharacterRideCamMedium',	2.2,	0.6,	1,		0.6,	0.6,	0.6,	0.8},
	{'CharacterRideCamLarge',	2.2,	0.6,	1,		0.6,	0.6,	0.6,	0.8},
	{'CharacterRideCamHuge',	2.8,	1,		1.2,	-8,		-6,		1,		1.4},
	{'BuggyFollowCam',			0,		-0.2,	-0.7,	1,		2,		1,		1},
	{'SubmarineFollowCam',		0,		3.3,	-2.5,	5,		5,		3,		4},
	{'BikeFollowCam',			0,		0.01,	-0.4,	0,		2,		0.2,	0},
	{'WheeledBikeFollowCam',	0,		0.4,	-0.7,	0,		-7,		0,		1},
	{'TruckFollowCam',			0,		2.6,	-2,		4,		4,		2.5,	2.25},
	{'MechFollowCam',			0.3,	1.9,	0,		5,		3,		1.1,	1},
	{'MechCombatCam',			-2.3,	2.4,	0,		5,		3,		1.1,	1},
	{'MechJetpackCam',			0.4,	0.85,	0,		5,		3,		0.5,	1.5},
	{'SpaceshipFollowCam',		0,		2.8,	-3.2,	-1.4,	0,		1.8,	0,		255},
	{'DropshipFollowCam',		0,		2.4,	-3.8,	0.2,	0,		2.2,	1.2,	255},
	{'ShuttleFollowCam',		0,		0.2,	-1,		1,		1,		1,		0,		255},
	{'RoyalShipFollowCam',		0,		1.4,	-8,		5,		5,		1,		1,		255},
	{'SailShipFollowCam',		0,		1.2,	-8,		8,		6,		0.8,	0,		255},
	{'ScienceShipFollowCam',	0,		2.4,	-2,		5,		4,		2.2,	1.2,	255},
	{'AlienShipFollowCam',		0,		-0.2,	-4,		0,		0,		-0.2,	-2,		255}
}
function pilot_cam_follows:Get(x)
	return {
		MATH_OPERATION 		= '+',
		INTEGER_TO_FLOAT	= 'Force',
		PRECEDING_KEY_WORDS = x[1],
		VALUE_CHANGE_TABLE 	= {
			{'OffsetX',				x[2]},
			{'OffsetY',				x[3]},
			{'OffsetZFlat',			x[4]},
			{'BackMinDistance',		x[5]},
			{'BackMaxDistance',		x[6]},
			{'UpMinDistance',		x[7]},
			{'UpMaxDistance',		x[8]},
			{'LookStickLimitAngle',	x[9] or 0}
		}
	}
end

local shake_strength_mult = {
	{'LAND',			1, 		0.5},	-- 1	0.01
	{'WALKERWALK',		1, 		0.5},	-- 1	0.03
	{'DOCKINGSHAKE', 	8,		0.4},	-- 1	0.01
	{'WARP_FRT_ATMOS',	4,		0.33},	-- 0.6	0.01
	{'WARP_FRG_ATMOS',	4,		0.33},	-- 0.6	0.01
	{'LARGECREATUREWA', 2, 		0.6},	-- 1	0.02
	{'RUNNING',			1, 		0.8},	-- 2000	30
	{'FLYBY',			10,		0.6},	-- 100	2
	{'VENTBUILDUP',		2, 		0.8},	-- 5	0.05
	{'VENTEXPLODE',		2, 		0.6},	-- 1	0.3
	{'EXTRACTOR',		4,		0.2},	-- 8	0.3
	{'MECHTITANFALL',	1, 		0.35},	-- 1	0.03
	{'MECHLAND',		1, 		0.35},	-- 1	0.03
	{'SANDWORMEMERGE',	2, 		0.5},	-- 1.5	0.06
	{'SANDWORMSHAKE',	2, 		0.8},	-- 1.5	0.004
	{'WORMGRNDEMERGE',	2, 		0.5},	-- 1.5	0.06
	{'WORMGRNDROAR',	2, 		0.8},	-- 1.5	0.004
}
function shake_strength_mult:Get(x)
	return {
		MATH_OPERATION 		= '*',
		INTEGER_TO_FLOAT	= 'Force',
		SPECIAL_KEY_WORDS	= {'Name', x[1]},
		VALUE_CHANGE_TABLE 	= {
			{'StrengthScale', x[2]},
			{'ShakeStrength', x[3]},
		}
	}
end

local function BuildExmlChangeTable(tbl)
	local T = {}
	for _,v in ipairs(tbl) do table.insert(T, tbl:Get(v)) end
	return T
end

source_global_camera = 'GCCAMERAGLOBALS.GLOBAL.MBIN'

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC CAMERA.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MOD_DESCRIPTION		= desc,
	AMUMSS_SUPPRESS_MSG	= 'MULTIPLE_STATEMENTS',
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= source_global_camera,
		EXML_CHANGE_TABLE	= {
			{
				REPLACE_TYPE 		= 'All',
				VALUE_CHANGE_TABLE 	= {
					{'CenterStartTime',		42},
					{'VertRotationMin',		-80},
					{'VertRotationMax',		80},
					{'Time',				0}, -- disable charting arial view
					{'PauseTime',			0},
					{'TimeBack',			0},
				}
			},
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'Force',
				VALUE_CHANGE_TABLE 	= {
					{'VehicleExitFlashTime',			-0.3},	-- 0.8
					{'VehicleExitFlashStrength',		-0.3},	-- 0.8
					{'BinocularFlashTime',				-0.12},	-- 0.24
					{'BinocularFlashStrength',			-0.5},	-- 0.9
					{'MechCameraArmShootOffsetY',		1},		-- 1
					{'InteractionHeadHeightDefault',	-0.15},	-- 1.65
					{'PhotoModeVelocitySmoothTime',		1},		-- 0.5
					{'PhotoModeMoveSpeed',				3},		-- 11
					{'PhotoModeTurnSpeed',				-38},	-- 60
					{'PhotoModeMaxDistance',			1000},	-- 150
					{'PhotoModeMaxDistanceSpace',		5000},	-- 200
					{'PhotoModeRollSpeed',				-10},	-- 45
					{'BuildingModeMaxDistance',			1600},	-- 60
					{'MechCamSpringStrengthMin',		-0.5},	-- 0.6
					{'MechCamSpringStrengthMax',		-0.5},	-- 0.6
					{'ModelViewMouseRotateSpeed',		-0.4},	-- 1.6	-- inventory models
					{'ModelViewMouseRotateSnapStrength',-0.56},	-- 0.94
					{'BobAmountAbandFreighter',			-0.02},	-- 0.1
					{'FirstPersonCamHeight',			-0.06},	-- 0.85
				}
			},
			{
				REPLACE_TYPE 		= 'All',
				MATH_OPERATION 		= '+',
				VALUE_CHANGE_TABLE 	= {
					{'OffsetYStartBias',	5.8},	-- 3.5	-- Warp tunnel POV
					{'OffsetZStartBias',	60},	-- 15 50
				}
			},
			{
				INTEGER_TO_FLOAT	= 'Force',
				PRECEDING_KEY_WORDS = 'VehicleExitFlashColour',
				VALUE_CHANGE_TABLE 	= {
					{'R',			0.08},
					{'G',			0.08},
					{'B',			0.16},
					{'A',			0.5}
				}
			}
		}
	},
	{
		MBIN_FILE_SOURCE	= source_global_camera,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(pilot_cam_follows)
	},
	{
		MBIN_FILE_SOURCE	= source_global_camera,
		EXML_CHANGE_TABLE	= BuildExmlChangeTable(shake_strength_mult)
	}
}}}}
