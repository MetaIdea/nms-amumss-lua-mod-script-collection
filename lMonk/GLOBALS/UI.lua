------------------------------------------------------------
local desc = [[
  Faster clicks and keys presses; Reduces cursor size
  Minor tweaks to menu vehicle/tool/freighter model angles
]]----------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 		= '__GC UI.pak',
	MOD_AUTHOR			= 'lMonk',
	NMS_VERSION			= 3.75,
	MOD_BATCHNAME		= '_GLOBALS ~@~collection.pak',
	MOD_DESCRIPTION		= desc,
	MODIFICATIONS 		= {{
	MBIN_CHANGE_TABLE	= {
	{
		MBIN_FILE_SOURCE	= 'GCUIGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				MATH_OPERATION 		= '+',
				INTEGER_TO_FLOAT	= 'FORCE',
				VALUE_CHANGE_TABLE 	= {
					{'StackSizeRateChangeRate',					0.75},-- 1.25
					{'StackSizeChangeMinRate',					-1},	-- 2
					{'StackSizeChangeMaxRate',					140},	-- 60
					{'WantedDetectMinTimeout',					-2},	-- 5
					{'TakeoffFuelMessageTime',					-3},	-- 5
					{'RefinerPadStartTime',						-0.75},	-- 1
					{'HUDMarkerDistanceOrTimeDistance',			29000},	-- 1250
					{'FreighterLeaderIconDistance',				-3000},	-- 10000
					{'ShipOverheatSwitchMessageWait',			-0.9},	-- 0.9
					{'ShipOverheatSwitchMessageTime',			-1.6},	-- 1.6
					{'NotificationsResourceExtractHintCount',	-1000},	-- 1500
					{'NotificationStaminaHintDistanceWalked',	-8000},	-- 10000
					{'NotificationMinVisibleTime',				-1},	-- 3
					{'NotificationInteractHintStartTime',		9999},	-- 1800
					{'NotificationBuildHintStartTime',			9999},	-- 31
					{'NotificationJetpackTime',					9999},	-- 1.3
					{'NotificationShieldTime',					9999},	-- 3.5
					{'NotificationScanTime',					-300},	-- 600
					{'NotificationScanTimeCutoff',				-14000},-- 20000

					{'NotificationShipBoostTime',				9999},	-- 15.5
					{'NotificationShipBoostTimeVR',				9999},	-- 30
					{'NotificationShipJumpMinTime',				-2},	-- 2
					{'NotificationShipJumpReminderTime',		9999},	-- 300
					{'NotificationShipJumpReminderTutorial',	9999},	-- 10
					{'NotificationShipBoostMinTime',			-5},	-- 5
					{'NotificationShipBoostReminderTime',		9999},	-- 300
					{'NotificationShipBoostReminderTimeTutorial',9999},	-- 10

					{'NotificationUrgentMessageTime',			-10},	-- 22
					{'NotificationMissionHintTime',				-10},	-- 21
					{'NotificationMissionHintTimeCritical',		-24},	-- 60
					{'NotificationMissionHintTimeSecondary',	-8},	-- 15
					{'MessageNotificationTime',					-9}, 	-- 12	??
					{'FrontendConfirmTimeMouseMultiplier',		5.5},	-- 0.5
					{'FrontendConfirmTimeFast',					-0.3},	-- 0.35
					{'FrontendConfirmTime',						-0.6},	-- 0.7
					{'FrontendConfirmTimeSlow',					-0.4},	-- 1.6
					{'FrontendConfirmSalvageTime',				-1},	-- 1.6
					{'FrontendCursorSize',						-14},	-- 24
					{'FrontendCursorWidth',						-5}, 	-- 9
					{'DiscoverPlanetTotalTime',					-6}, 	-- 10
					{'DiscoverPlanetMessageWait',				-1}, 	-- 1
					{'DiscoverPlanetMessageTime',				-4.5}, 	-- 7
					{'TextChatMaxDisplayTime',					-45},	-- 60
					{'TextChatStayBigAfterTextInput',			-10}, 	-- 15
					{'TargetParallaxMouseMultiplier',			-0.36} 	-- 0.36
				}
			},
			{
				PRECEDING_KEY_WORDS = {'ModelViews', 'ModelViews', 'Suit'},
				VALUE_CHANGE_TABLE 	= {
					{'LightPitch',		60},
					{'LightRotate',		0}
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = {'ModelViews', 'ModelViews', 'Weapon'},
				VALUE_CHANGE_TABLE 	= {
					{'Distance',		3.2},	-- 2.4
					{'x',				-0.6},	-- -0.4
					{'y',				0.06},	-- 0.02
					{'z',				0.0},	-- 0.1
					{'LightPitch',		30},
					{'LightRotate',		-30},
					{'FocusType',		'ResourceBoundingHeight'}
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = {'ModelViews', 'ModelViews', 'Ship'},
				VALUE_CHANGE_TABLE 	= {
					{'Distance',		0.44},	-- 1.3
					{'x',				-0.21},	-- -0.3
					{'y',				0.06},	-- 0.077
					{'z',				0.6},	-- 0
					{'Pitch',			20},	-- 0
					{'Rotate',			-40},	-- -45
					{'LightPitch',		35},
					{'LightRotate',		315}
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = {'ModelViews', 'ModelViews', 'Vehicle'},
				VALUE_CHANGE_TABLE 	= {
					{'x',				-3.6},
					{'y',				0.06},
					{'Pitch',			5},
					{'Rotate',			-43},
					{'LightPitch',		30},
					{'LightRotate',		290}
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = {'ModelViews', 'ModelViews', 'TradeCompareShips'},
				VALUE_CHANGE_TABLE 	= {
					{'y',				-0.015},
					{'Pitch',			15},
					{'Rotate',			-15},
					{'Fov',				10}
				}
			},
			{
				INTEGER_TO_FLOAT	= 'FORCE',
				PRECEDING_KEY_WORDS = {'ModelViews', 'ModelViews', 'Freighter'},
				VALUE_CHANGE_TABLE 	= {
					{'x',				-0.05},
					{'z',				-0.05},
					{'Pitch',			15},
					{'LightPitch',		35},
					{'LightRotate',		251}
				}
			}
		}
	}
}}}}
