NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "cleanHUD_5V.pak", 
["MOD_AUTHOR"]				= "hilightnotes",
["LUA_AUTHOR"]				= "Vasiliy",
["NMS_VERSION"]				= "3.75",
["MOD_DESCRIPTION"]			= "This mod is a part of CLEAN_HUD mod. Removes icons. Same as 5b with CHANGES. VR options same are as in 5b. Lo2k's script excluded.",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCUIGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
					
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LoadingTravelDistance",	"6250"}, -- Loading screen max distance warp travel. Probably effects laucnh time.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LoadingScreenTravelSpeed",	"25"}, -- Loading screen travel speed. Makes more beatiful for me. Probably effects laucnh time.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShipHUDMarkerHideDistance",	"99999"}, -- Removes ship icon.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PetHUDMarkerExtraFollowInfoDistance",	"80"}, -- Removes pet marker?
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PetHUDMarkerHideDistance",	"0"}, -- Removes pet marker?
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PetHUDMarkerHideDistanceShort",	"0"}, -- Removes pet marker?
							}		
						},
										
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CompassCentre",	""}, -- Removes compass. Needs CompassIconSize in GCBUILDINGGLOBALS.GLOBAL.MBIN set to 0 to work. NEW
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShowVRDistanceWarning",	"False"}, -- Removes smth in VR.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HandScreenNearActivateDistance",	"0.8"}, -- Changes smth in VR.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HandButtonRadius",	"0.1"}, -- Changes smth in VR.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HandButtonRadiusTouch",	"3.5"}, -- Changes smth in VR.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HandButtonRadiusTouchNear",	"0.5"}, -- Changes smth in VR.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HandButtonRadiusTouchNearActive",	"0.2"}, -- Changes smth in VR.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HandButtonPostClickTime",	"0.3"}, -- Changes smth in VR.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HandButtonPushDistance",	"0.01"}, -- Changes smth in VR.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HandButtonNearDistance",	"0.01"}, -- Changes smth in VR.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HandButtonClickTime",	"0.05"}, -- Changes smth in VR.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HandButtonTouchReturnTime",	"0.1"}, -- Changes smth in VR.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"QuickMenuEnableSwipe",	"True"}, -- ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"QuickMenuSwipeHeightMin",	"50"}, -- ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BuildMenuItemNextNavAnimTime",	"0.3"}, -- ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BuildMenuItemNextNavAnimWait",	"0.2"}, -- ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"QuickMenuScreenWidth",	"768"}, -- ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HandControlPointMargin",	"45"}, -- ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HandControlPointActiveMargin",	"170"}, -- ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CrosshairScaleHmd",	"1.5"}, --  WEAPON Crosshair ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TakeoffFuelMessageTime",	"0"}, --  TaTake off Fuel Message Time. Set to "0" to remove it.
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseBuildingPartsGridPopupDelay",	"0.2"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RepairTechRepairedWaitTime1",	"1.2"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RepairTechRepairedMessageTime",	"1.2"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShipOverheatSwitchMessageTime",	"0"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MissionStartEndTime",	"3.5"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MissionStartEndOSDTime",	"4.5"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MissionStartEndOSDTimeProcedural",	"3"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShowOnscreenPredatorMarkers",	"False"}, --  Predator markers
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CrosshairInterceptCentreBaseSize",	"0"}, --  ???
							}		
						},
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"MissionMarkerSize",	"48"}, --  ???
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LargeSpaceIconSize",	"48"}, --  ???
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"SmallSpaceIconSize",	"36"}, --  ???
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PetHoverIconSize",	"0"}, --  ???
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"PetIconSize",	"0"}, --  ???
							-- }		
						-- },
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TrackTypeIconSize",	"48"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HUDPlayerTrackArrowTextOffset",	"5"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HUDPlayerTrackArrowTextHeight",	"16"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HUDPlayerTrackArrowScreenBorder",	"25"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HUDPlayerTrackArrowSizeMin",	"0"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HUDPlayerTrackArrowSizeMax",	"0"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HUDPlayerTrackArrowArrowSize",	"0.3"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"HideExtremePlanetNotifications",	"True"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NotificationCantFireTime",	"0"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NotificationMessageCycleTime",	"999999"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NotificationMissionHintTime",	"999999"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"NotificationMissionHintTimeSecondary",	"999999"}, --  ???
							}		
						},
						
						{	
							["INTEGER_TO_FLOAT"] 	= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TextChatMaxDisplayTime",	"30"}, --  ???
							}		
						}
						
						
						
						-- SCREEN HAZARDS BLOCK
						--======================================================================================================================================
      -- <Property name="Value" value="TEXTURES/EFFECTS/FULLSCREEN/HAZARDS/HOT.REFRACTION.DDS" />
    -- </Property>
    -- <Property value="NMSString0x80.xml">
      -- <Property name="Value" value="TEXTURES/EFFECTS/FULLSCREEN/HAZARDS/COLD.REFRACTION.DDS" />
    -- </Property>
    -- <Property value="NMSString0x80.xml">
      -- <Property name="Value" value="TEXTURES/EFFECTS/FULLSCREEN/HAZARDS/TOXIC.REFRACTION.DDS" />
    -- </Property>
    -- <Property value="NMSString0x80.xml">
      -- <Property name="Value" value="TEXTURES/EFFECTS/FULLSCREEN/HAZARDS/HOT.REFRACTION.DDS" />
						--======================================================================================================================================
						
						
						
						-- STRANGE BLOCK
						--======================================================================================================================================
-- Original
  -- <Property name="FrontendConfirmT
  -- imeSlow" value="1.6" />
  
 -- Modded, 5b
  -- <Property name="FrontendConfirmTimeSlow" value="1.2" />
						--======================================================================================================================================
						
						
						
						-- COMPASS REMOVAL PART EXPERIMENTS
						--======================================================================================================================================
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"HUDMarkerCompassPrimaryIndicatorOffset",	""}, -- Removes compass? NEW
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"CompassDistanceScaleMin",	"99999"}, -- Removes compass? NEW
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"CompassDistanceScaleRange",	"0"}, -- Removes compass? NEW
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"CompassDistanceScale",	"0"}, -- Removes compass?
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"CompassLineOffset",	"0"}, -- Removes compass? NEW
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"CompassScreenWidth",	"0"}, -- Removes compass? NEW
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"CompassHeight",	"0"}, -- Removes compass? NEW
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"CompassWidth",	"0"}, -- Removes compass? NEW
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"CompassScreenWidth",	"0"}, -- Removes compass? NEW
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"CompassScreenHeight",	"0"}, -- Removes compass? NEW
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"CompassLineNumNotches",	"0"}, -- Removes compass? NEW
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"CompassCurve",	""}, -- Removes compass? NEW
							-- }		
						-- },
						
						-- {	
							-- ["INTEGER_TO_FLOAT"] 	= "",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"CompassAngleFade",	"0"}, -- Removes compass? NEW
							-- }		
						-- }
						--======================================================================================================================================
						
					}
				}
			}
		}
	}	
}