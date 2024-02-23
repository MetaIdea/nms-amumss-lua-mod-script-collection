-------------------------------------------
local mod_desc = [[
  camera POV tweaks for vehicles and ships
  Remove auto-centering; photo-mode tweaks
]]-----------------------------------------

local ECT = {}
for cam, prop in pairs({
---	PRECEDING_KEY			offsetX		offsetY		offsetZ		backMin		backMax		upMin		upMax	lookStick
	CharacterRideCamMedium	={0	+2.2,	0	+0.6,	0	+1,		10	+0.6,	15	+0.6,	0	+0.6,	0	+0.8,	0	},
	CharacterRideCamLarge	={0	+2.2,	0	+0.6,	0	+1,		18	+0.6,	25	+0.6,	0	+0.6,	0	+0.8,	0	},
	CharacterRideCamHuge	={0	+2.8,	0	+1,		0	+1.2,	38	-8,		50	-6,		0	+1,		0	+1.4,	0	},
	BuggyFollowCam			={0,		3.5	-0.2,	0	-0.7,	15	+1,		22.5 +2,	-3	+1,		-3	+1,		0	},
	SubmarineFollowCam		={0,		0	+3.3,	0	-2.5,	15.7 +5.5,	24.7 +5.5,	0	+3,		0	+4,		0	},
	BikeFollowCam			={0,		1.5	+0.02,	0	-0.4,	16.5,		21	+2,		1	+0.2,	4.5,		0	},
	WheeledBikeFollowCam	={0,		0.2	+0.4,	0	-0.7,	15.25,		31.5 -7,	0,			0	+1,		0	},
	TruckFollowCam			={0,		2.1	+2.6,	3.3	-2,		12	+4,		27	+4,		-1.5 +2.5,	-2 +2,		0	},
	MechFollowCam			={2.2 +0.3,	-0.5 +1.9,	0,			6.5	+5,		14	+3,		-1	+1.1,	0	+1,		0	},
	MechCombatCam			={5	-2.2,	-1	+2.4,	0,			6.5	+5,		14	+3,		-1	+1.1,	0	+1,		0	},
	MechJetpackCam			={1	+0.4,	-0.8 +0.8,	0,			8	+5,		20	+3,		0	+0.5,	0	+1.5,	0	},
	SpaceshipFollowCam		={0,		-0.8 +2.6,	3	-3.2,	20	-1.4,	50,			2	+1.8,	10,			254	},
	DropshipFollowCam		={0,		-1.5 +2.4,	4	-3.8,	18	+0.2,	40,			2	+2.2,	10	+1.2,	254	},
	ShuttleFollowCam		={0,		2.2	+0.2,	3	-1,		22	+1,		45	+1,		2	+1,		10,			254	},
	RoyalShipFollowCam		={0,		1.2	+1.4,	8	-8,		10	+5,		40	+5,		2	+1,		10	+1,		254	},
	SailShipFollowCam		={0,		1.2	+1.2,	8	-7,		10	+6,		40	+6,		2	+0.8,	10,			254	},
	ScienceShipFollowCam	={0,		1	+2.4,	6.5	-2,		15	+5,		35	+4,		2	+2.2,	10	+1.2,	254	},
	AlienShipFollowCam		={0,		1	+0.1,	6	-4,		12	+2,		30,			2	+0.1,	10	+0.5,	254	},
	RobotShipFollowCam		={0,		-1.5+0.8,	4,			18,			40,			2	+0.2,	10,			254	}
}) do
	ECT[#ECT+1] = {
		INTEGER_TO_FLOAT	= 'Force',
		PRECEDING_KEY_WORDS = cam,
		VALUE_CHANGE_TABLE 	= {
			{'OffsetX',				prop[1]},
			{'OffsetY',				prop[2]},
			{'OffsetZFlat',			prop[3]},
			{'BackMinDistance',		prop[4]},
			{'BackMaxDistance',		prop[5]},
			{'UpMinDistance',		prop[6]},
			{'UpMaxDistance',		prop[7]},
			{'LookStickLimitAngle',	prop[8]}
		}
	}
end

ECT[#ECT+1] = {
	REPLACE_TYPE 		= 'All',
	VALUE_CHANGE_TABLE 	= {
		{'CenterStartTime',		42},
		{'VertRotationMin',		-80},
		{'VertRotationMax',		80},
		{'Time',				0}, -- disable charting arial view
		{'PauseTime',			0},
		{'TimeBack',			0},
	}
}
ECT[#ECT+1] = {
	INTEGER_TO_FLOAT	= 'Force',
	VALUE_CHANGE_TABLE 	= {
		{'VehicleExitFlashTime',			0.5	},	-- 0.8		361
		{'VehicleExitFlashStrength',		0.5	},	-- 0.8
		{'BinocularFlashTime',				0.12},	-- 0.24
		{'BinocularFlashStrength',			0.4	},	-- 0.9
		{'MechCameraArmShootOffsetY',		2	},	-- 1
		{'InteractionHeadHeightDefault',	1.5	},	-- 1.65		3313
		{'PhotoModeVelocitySmoothTime',		1.5	},	-- 0.5
		{'PhotoModeMoveSpeed',				14	},	-- 11
		{'PhotoModeTurnSpeed',				22	},	-- 60
		{'PhotoModeMaxDistance',			1200},	-- 150
		{'PhotoModeMaxDistanceSpace',		5500},	-- 200
		{'PhotoModeRollSpeed',				35	},	-- 45
		{'BuildingModeMaxDistance',			1500},	-- 60
		{'MechCamSpringStrengthMin',		0.1	},	-- 0.6
		{'MechCamSpringStrengthMax',		0.1	},	-- 0.6
		{'ModelViewMouseRotateSpeed',		1.2	},	-- 1.6	-- inventory models
		{'ModelViewMouseRotateSnapStrength',0.38},	-- 0.94
		{'BobAmountAbandFreighter',			0.08},	-- 0.1		6129
		{'FirstPersonCamHeight',			0.79},	-- 0.85
	}
}
ECT[#ECT+1] = {
	REPLACE_TYPE 		= 'All',
	MATH_OPERATION 		= '+',
	VALUE_CHANGE_TABLE 	= {
		{'OffsetYStartBias',	6},		-- 3.5	-- Warp tunnel POV
		{'OffsetZStartBias',	60},	-- 15 50
	}
}
ECT[#ECT+1] = {
	INTEGER_TO_FLOAT	= 'Force',
	PRECEDING_KEY_WORDS = 'VehicleExitFlashColour',
	VALUE_CHANGE_TABLE 	= {
		{'R',			0.08},
		{'G',			0.08},
		{'B',			0.16},
		{'A',			0.5}
	}
}

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC CAMERA.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= '4.52',
	MOD_DESCRIPTION		= mod_desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCCAMERAGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= ECT
	}
}}}}
