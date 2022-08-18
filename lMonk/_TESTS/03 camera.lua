
local cam_follows = {
	'CharacterUnarmedCam',
	'CharacterRunCam',
	'CharacterCombatCam',
	'CharacterMiningCam',
	'CharacterIndoorCam',
	'CharacterAbandCombatCam',
	'CharacterAbandCam',
	'CharacterNexusCam',
	'CharacterAirborneCam',
	'CharacterMeleeBoostCam',
	'CharacterRocketBootsCam',
	'CharacterRocketBootsChargeCam',
	'CharacterFallingCam',
	'CharacterAirborneCombatCam',
	'CharacterSpaceCam',
	'CharacterSteepSlopeCam',
	'CharacterUnderwaterCam',
	'CharacterUnderwaterCombatCam',
	'CharacterUnderwaterJetpackCam',
}

local cam_props = {
	{'MinSpeed',						4},
	{'SpeedRange',						20},
	{'OffsetX',							0},
	{'OffsetY',							0},
	{'OffsetYAlt',						0},
	{'OffsetYSlopeExtra',				0.5},
	{'OffsetZFlat',						0},
	{'BackMinDistance',					6},
	{'BackMaxDistance',					9},
	{'BackSlopeAdjust',					0},
	{'BackSlopeRotationAdjust',			0},
	{'UpMinDistance',					0},
	{'UpMaxDistance',					0},
	{'UpSlopeAdjust',					0},
	{'LeftMinDistance',					0},
	{'LeftMaxDistance',					0},
	{'OffsetYExtraMaxDistance',			0},
	{'PanNear',							-1},
	{'PanFar',							3},
	{'UpGamma',							1.5},
	{'HorizRotationAngleMaxPerFrame',	20},
	{'VertRotationSpeed',				15},
	{'VertRotationMin',					-80},
	{'VertRotationMax',					80},
	{'VertRotationOffset',				1},
	{'VertRotationOffsetMinAngle',		-150},
	{'VertRotationOffsetMaxAngle',		180},
	{'VertStartLookingDown',			false},
	{'DistSpeed',						5},
	{'DistSpeedOutsideMainRange',		5},
	{'DistStiffness',					0.2},
	{'SpringSpeed',						0.18},
	{'LockToObjectOnIdle',				false},
	{'CenterStartTime',					42},
	{'CenterBlendTime',					0.8},
	{'CenterMaxSpring',					0.66},
	{'CenterMaxSpeed',					0.1},
	{'VelocityAnticipate',				0.17},
	{'VelocityAnticipateSpringSpeed',	0.4},
	{'VertMaxSpring',					0.5},
	{'CenterStartSpeed',				1},
	{'MinClose',						0.4},
	{'MaxClose',						0.6},
	{'CloseSpring',						3},
	{'LookStickLimitAngle', 			0},
	{'EnableCollisionDetection',		true},
	{'NumLRProbes',						10},
	{'LRProbesRange',					13},
	{'LRProbesRadius',					0.3},
	{'NumUDProbes',						5},
	{'UDProbesRange',					1.5},
	{'ProbeCenterX',					0},
	{'ProbeCenterY',					-0.65},
	{'PushForwardDropoffLR',			1.6},
	{'PushForwardDropoffUD',			0.2},
	{'AvoidCollisionLRSpeed',			0.005},
	{'AvoidCollisionUDSpeed',			0.005},
	{'AvoidCollisionPushSpeed',			0.01},
	{'AvoidCollisionUDUseStickDelay',	true},
	{'AvoidCollisionLRUseStickDelay',	true},
	{'UseSpeedBasedSpring',				true},
	{'UseCustomBlendTime',				false},
	{'CustomBlendTime',					0.5},
}

local function CharactrCams()
	local T = {}
	for _,gc_cam in pairs(cam_follows) do
		table.insert(T, {
			INTEGER_TO_FLOAT	= 'Force',
			PRECEDING_KEY_WORDS = gc_cam,
			VALUE_CHANGE_TABLE 	= cam_props
		})
	end
	return T
end

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC CAMERA.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.99,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCCAMERAGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= CharactrCams()
	}
}}}}
