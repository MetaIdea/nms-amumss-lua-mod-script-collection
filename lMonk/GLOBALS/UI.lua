------------------------------------------------------------
local mod_desc = [[
  Faster clicks and keys presses; Reduces cursor size
  Minor tweaks to menu vehicle/tool/freighter model angles
]]----------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME 			= '__GC UI.pak',
	MOD_AUTHOR				= 'lMonk',
	NMS_VERSION				= '4.52',
	MOD_DESCRIPTION			= mod_desc,
	GLOBAL_INTEGER_TO_FLOAT = 'Force',
	MODIFICATIONS 			= {{
	MBIN_CHANGE_TABLE		= {
	{
		MBIN_FILE_SOURCE	= 'GCUIGLOBALS.GLOBAL.MBIN',
		EXML_CHANGE_TABLE	= {
			{
				VALUE_CHANGE_TABLE 	= {
					{'MilestoneStingDisplayTime',				1.5},	-- 6
					{'StageStingDisplayTime',					1.5},	-- 6
					{'StackSizeRateChangeRate',					2},		-- 1.25			800
					{'StackSizeChangeMinRate',					1},		-- 2
					{'StackSizeChangeMaxRate',					180},	-- 60
					{'WantedDetectMinTimeout',					3},		-- 5			1400
					{'MaxNumMessageBeaconIcons',				0}, 	-- 10
					{'TakeoffFuelMessageTime',					1.5},	-- 5
					{'HUDMarkerDistanceOrTimeDistance',			32000},	-- 1250
					{'RefinerPadStartTime',						0.25},	-- 1			2318
					{'FreighterLeaderIconDistance',				7000},	-- 10000
					{'ShipOverheatSwitchMessageTime',			0},		-- 1.6
					{'HUDDisplayTime',							4},		-- 6
					{'HideExtremePlanetNotifications',			true},	--				3383
					{'NotificationsResourceExtractHintCount',	500},	-- 1500
					{'NotificationStaminaHintDistanceWalked',	2000},	-- 10000
					{'NotificationInteractHintStartTime',		99999},	-- 1800
					{'NotificationBuildHintStartTime',			99999},	-- 31
					{'NotificationJetpackTime',					99999},	-- 1.3
					{'NotificationShieldTime',					99999},	-- 3.5
					{'NotificationShipBoostMinTime',			-1},	-- 5
					{'NotificationShipBoostTime',				99999},	-- 15.5
					{'NotificationShipBoostTimeVR',				99999},	-- 30
					{'NotificationShipJumpMinTime',				-1},	-- 2
					{'NotificationShipJumpReminderTime',		99999},	-- 300
					{'NotificationMinVisibleTime',				0.5},	-- 3
					{'NotificationScanTime',					300},	-- 600
					{'NotificationScanTimeCutoff',				6000},	-- 20000
					{'NotificationShipJumpReminderTutorial',	99999},	-- 10
					{'NotificationShipBoostReminderTime',		99999},	-- 300
					{'NotificationShipBoostReminderTimeTutorial',99999},-- 10
					{'NotificationUrgentMessageTime',			12},	-- 22
					{'NotificationMissionHintTime',				11},	-- 21
					{'NotificationMissionHintTimeCritical',		35},	-- 60
					{'NotificationMissionHintTimeSecondary',	7},		-- 15
					{'MessageNotificationTime',					6}, 	-- 12	??
					{'FrontendConfirmTimeMouseMultiplier',		2},		-- 0.5			5527
					{'FrontendConfirmTimeFast',					0.25},	-- 0.35
					{'FrontendTouchConfirmTimeFastMultiplier',	1.2},	-- 0
					{'FrontendConfirmTime',						0.2},	-- 0.7
					{'FrontendConfirmTimeSlow',					1.2},	-- 1.6
					{'FrontendCursorSize',						10},	-- 24
					{'FrontendCursorWidth',						4}, 	-- 9
					{'TargetParallaxMouseMultiplier',			0}, 	-- 0.36			6266
					{'TargetParallaxMaintenancePageMultiplier',	0}, 	-- 0.1
					{'DiscoverPlanetTotalTime',					4}, 	-- 10			6274
					{'DiscoverPlanetMessageWait',				0}, 	-- 1
					{'DiscoverPlanetMessageTime',				2}, 	-- 7
					{'TextChatMaxDisplayTime',					18},	-- 60
					{'TextChatStayBigAfterTextInput',			7}, 	-- 15
				}
			},
			{
				SPECIAL_KEY_WORDS	 = {
					{'RefinerParallax',			'Vector2f.xml'},
					{'ModelViewWorldParallax',	'Vector2f.xml'},
					{'NGuiModelParallax',		'Vector2f.xml'},
					{'NGuiShipInteractParallax','Vector2f.xml'},
					{'InteractionWorldParallax','Vector2f.xml'}
				},
				VALUE_CHANGE_TABLE 	= {
					{'x', 			0},
					{'y', 			0}
				}
			},
			{
				PRECEDING_KEY_WORDS = {'ModelViews', 'ModelViews', 'Suit'},
				VALUE_CHANGE_TABLE 	= {
					{'LightPitch',	60},
					{'LightRotate',	0}
				}
			},
			{
				PRECEDING_KEY_WORDS = {'ModelViews', 'ModelViews', 'Weapon'},
				VALUE_CHANGE_TABLE 	= {
					{'Distance',	3.2},	-- 2.4
					{'x',			-0.6},	-- -0.4
					{'y',			0.06},	-- 0.02
					{'z',			0.0},	-- 0.1
					{'LightPitch',	30},
					{'LightRotate',	-30},
					{'FocusType',	'ResourceBoundingHeight'}
				}
			},
			{
				PRECEDING_KEY_WORDS = {'ModelViews', 'ModelViews', 'Ship'},
				VALUE_CHANGE_TABLE 	= {
					{'Distance',	0.44},	-- 1.3
					{'x',			-0.21},	-- -0.3
					{'y',			0.035},	-- 0.077
					{'z',			0.6},	-- 0
					{'Pitch',		20},	-- 0
					{'Rotate',		-40},	-- -45
					{'LightPitch',	35},
					{'LightRotate',	315}
				}
			},
			{
				PRECEDING_KEY_WORDS = {'ModelViews', 'ModelViews', 'Vehicle'},
				VALUE_CHANGE_TABLE 	= {
					{'x',			-3.5},
					{'y',			0.06},
					{'Pitch',		5},
					{'Rotate',		-43},
					{'LightPitch',	30},
					{'LightRotate',	290}
				}
			},
			{
				PRECEDING_KEY_WORDS = {'ModelViews', 'ModelViews', 'TradeCompareShips'},
				VALUE_CHANGE_TABLE 	= {
					{'y',			-0.015},
					{'Pitch',		15},
					{'Rotate',		-15},
					{'Fov',			10}
				}
			},
			{
				PRECEDING_KEY_WORDS = {'ModelViews', 'ModelViews', 'Freighter'},
				VALUE_CHANGE_TABLE 	= {
					{'x',			-0.05},
					{'z',			-0.05},
					{'Pitch',		15},
					{'LightPitch',	35},
					{'LightRotate',	250}
				}
			}
		}
	}
}}}}
