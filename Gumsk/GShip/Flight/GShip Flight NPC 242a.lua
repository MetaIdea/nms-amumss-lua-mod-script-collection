Author 			= "Gumsk"
ModName 		= "GFlight"
ModNameSub 		= "AI"
BaseDescription	= "Adjustments to AI ship behavior"
GameVersionA	= "2"
GameVersionB 	= "4"
GameVersionC 	= "2"
ModVersion 		= "a"
FileSource 		= "GCAISPACESHIPGLOBALS.GLOBAL.MBIN"

--General
	Unknown0x0 = 3500										--3500 ; 
	Unknown0x974 = 30000									--3000 ;
	NPCsFillPads = "True"									--False ; Ideally, a boolean to determine if NPCs will land on all landing pads, leaving no empty spaces. In reality, either 0 NPCs (False) land at bases or 1 NPC (True) does.
	DockMinTime = 45										--20 ; The minimum amount of time NPCs will stay on a landing pad, in seconds.
	DockMaxTime = 85										--60 ; The maximum amount of time NPCs will stay on a landing pad, in seconds.
	MaxNumActiveTraders = 15								--15 ; 
	MaxNumActiveTradersRadius = 10000						--10000 ; 
	TradeRouteSeekOutpostRange = 5000						--5000 ; 
	TradeRouteMaxNum = 15									--15 ; 
	DockingWaitDistance = 50								--10 ; 
	
	MinAggroDamage = 100									--100 ; 
	AttackShipsFollowLeader = "False"						--False ; 
	FreightersSamePalette = "True"							--True ;
	
--Crashed Ships
	CrashedShipMinNonBrokenSlots = 3						--3 ; 
	CrashedShipBrokenSlotChance = 0.75						--0.75 ; 
	CrashedShipBrokenTechChance = 0.7						--0.7 ; 
	CrashedShipRepairSlotCostIncreaseFactor = 1.3			--1.3 ; 
	CrashedShipGeneralCostDiscount = 0.7					--0.7 ; 
	CrashedShipTechSlotsCostDiscount = 0.1					--0.1 ; 

--Pirates
	ShipAlertPirateRange = 10000							--10000 ; 
		PirateMinSpeed = 60									--60 ; 
		PirateMaxSpeed = 110								--110 ; 
		PirateBoostSpeed = 1200								--1200 ; 
		PirateForce = 50									--50 ; 
		PirateMinSpeedForce = 5								--5 ; 
		PirateTurnMin = 0.5									--0.5 ; 
		PirateTurnMax = 1.0									--1.0 ; 
		PirateDirectionBrake = 1.5							--1.5 ; 
		PiratePlanetMinSpeed = 30							--30 ; 
		PiratePlanetMaxSpeed = 60							--60 ; 
		PiratePlanetBoostSpeed = 200						--200 ; 
		PiratePlanetForce = 40								--40 ; 
		PiratePlanetTurnMin = 0.5							--0.5 ; 
		PiratePlanetTurnMax = 3								--3 ; 
		PiratePlanetDirectionBrake = 1.2					--1.2 ; 
		PirateFalloff = 0.8									--0.8 ; 
		PirateRoll = 1										--1 ; 
		PirateMinHeight = 30								--30 ; 
		PirateAvoidTime = 3									--3 ; 
		PirateHovering = "False"							--False ;
	PirateExtraDamage = 1.5									--1.5 ;
	
--Police
		PoliceMinSpeed = 60									--60 ; 
		PoliceMaxSpeed = 110								--110 ; 
		PoliceBoostSpeed = 2000								--2000 ; 
		PoliceForce = 50									--50 ; 
		PoliceMinSpeedForce = 5								--5 ; 
		PoliceTurnMin = 0.5									--0.5 ; 
		PoliceTurnMax = 1.0									--1.0 ; 
		PoliceDirectionBrake = 1.5							--1.5 ; 
		PolicePlanetMinSpeed = 30							--30 ; 
		PolicePlanetMaxSpeed = 60							--60 ; 
		PolicePlanetBoostSpeed = 200						--200 ; 
		PolicePlanetForce = 40								--40 ; 
		PolicePlanetTurnMin = 0.5							--0.5 ; 
		PolicePlanetTurnMax = 3								--3 ; 
		PolicePlanetDirectionBrake = 1.2					--1.2 ; 
		PoliceFalloff = 0.8									--0.8 ; 
		PoliceRoll = 1										--1 ; 
		PoliceMinHeight = 30								--30 ; 
		PoliceAvoidTime = 3									--3 ; 
		PoliceHovering = "False"							--False ;
	
--Trader
		TraderAttackMinSpeed = 80							--80 ; 
		TraderAttackMaxSpeed = 90							--90 ; 
		TraderAttackBoostSpeed = 300						--300 ; 
		TraderAttackForce = 50								--50 ; 
		TraderAttackMinSpeedForce = 5						--5 ; 
		TraderAttackTurnMin = 0.5							--0.5 ; 
		TraderAttackTurnMax = 1.8							--1.8 ; 
		TraderAttackDirectionBrake = 1.2					--1.2 ; 
		TraderAttackPlanetMinSpeed = 30						--30 ; 
		TraderAttackPlanetMaxSpeed = 80						--80 ; 
		TraderAttackPlanetBoostSpeed = 200					--200 ; 
		TraderAttackPlanetForce = 40						--40 ; 
		TraderAttackPlanetTurnMin = 0.5						--0.5 ; 
		TraderAttackPlanetTurnMax = 3						--3 ; 
		TraderAttackPlanetDirectionBrake = 1.2				--1.2 ; 
		TraderAttackFalloff = 0.8							--0.8 ; 
		TraderAttackRoll = 1								--1 ; 
		TraderAttackMinHeight = 15							--15 ; 
		TraderAttackAvoidTime = 3							--3 ; 
		TraderAttackHovering = "False"						--False ;
	TraderAtTime = 2										--2 . 
	TraderAtTimeBack = 3									--3 . 

--Outposts
		OutpostLandingMinSpeed = 80							--80 ; 
		OutpostLandingMaxSpeed = 80							--80 ; 
		OutpostLandingBoostSpeed = 1000						--1000 ; 
		OutpostLandingForce = 300							--300 ; 
		OutpostLandingMinSpeedForce = 5						--5 ; 
		OutpostLandingTurnMin = 1.0							--1.0 ; 
		OutpostLandingTurnMax = 1.0							--1.0 ; 
		OutpostLandingDirectionBrake = 10					--10 ; 
		OutpostLandingPlanetMinSpeed = 10					--30 ; 
		OutpostLandingPlanetMaxSpeed = 200					--80 ; 
		OutpostLandingPlanetBoostSpeed = 200				--200 ; 
		OutpostLandingPlanetForce = 40						--40 ; 
		OutpostLandingPlanetTurnMin = 0.5					--0.5 ; 
		OutpostLandingPlanetTurnMax = 3						--3 ; 
		OutpostLandingPlanetDirectionBrake = 1.2			--1.2 ; 
		OutpostLandingFalloff = 0.8							--0.8 ; 
		OutpostLandingRoll = 2								--2 ; 
		OutpostLandingMinHeight = 15						--15 ; 
		OutpostLandingAvoidTime = 0							--0 ; 
		OutpostLandingHovering = "False"					--False ;
	OutpostLandingNoiseFreq = 0.010001						--0.010001 ; 
	OutpostLandingNoiseAmp = 20								--20 ; 
	OutpostLandingNoiseOffset = 110							--110 ; 
	OutpostDockUpAlignMaxAngleFirstPerson = 90				--90 ; 
	OutpostDockUpAlignMaxAngle = 30							--30 ; 
	OutpostDockMaxApproachSpeed = 800						--400 ; 
	OutpostDockOverspeedBrake = 200							--80 ; 
	OutpostDockGetToApproachForce = 2						--2 ; 
	OutpostDockGetToApproachBrakeForce = 5					--5 ; 
	OutpostDockGetToApproachExtraBrakeForce = 15			--15 ; 
	OutpostDockApproachSpeedForce = 5						--5 ; 
	OutpostDockApproachDistance = 1000						--1000;
	OutpostDockApproachSpeedUpDamper = 0.3					--0.3
	OutpostDockAIGetToApproachForce = 0.5					--0.5 ; 
	OutpostDockAIGetToApproachBrakeForce = 1				--1 ; 
	OutpostDockAIApproachSpeedForce = 5						--5 ; 
	OutpostDockMaxForce = 400								--400 ; 
	OutpostDockMinTipLength = 5								--5 ; 
	OutpostDockMaxTipLength = 10							--10 ; 
	OutpostDockApproachUpAmount = 0.1						--0.1 ; 
	OutpostDockApproachRenderRadius = 0.3					--0.3 ; 
	OutpostDockApproachRenderFlickerOffset = -0.02			--(-0.02) ; 
	LandingTipAngle = 25									--25 ; 
	LandingLongTipAngle = 10								--10 ; 
	
Upgrade_Text = ""

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersionA..GameVersionB..GameVersionC..ModVersion.." "..ModNameSub..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersionA.."."..GameVersionB.."."..GameVersionC,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {{
	["PRECEDING_KEY_WORDS"] = "",
	["VALUE_CHANGE_TABLE"] =
	{
		{"FillUpOutposts", NPCsFillPads},
		{"MaxNumActiveTraders", MaxNumActiveTraders},
		{"MaxNumActiveTradersRadius",MaxNumActiveTradersRadius},
		{"TradeRouteSeekOutpostRange", TradeRouteSeekOutpostRange},
		{"TradeRouteMaxNum", TradeRouteMaxNum},
		{"DockWaitMinTime", DockMinTime},
		{"DockWaitMaxTime", DockMaxTime},
		{"DockingWaitDistance", DockingWaitDistance},
		{"OutpostLandingMinSpeed", OutpostLandingMinSpeed},
		{"OutpostLandingMaxSpeed", OutpostLandingMaxSpeed},
		{"OutpostLandingPlanetMinSpeed", OutpostLandingPlanetMinSpeed},
		{"OutpostLandingPlanetMaxSpeed", OutpostLandingPlanetMaxSpeed},
		{"OutpostDockMaxApproachSpeed", OutpostDockMaxApproachSpeed},
		{"OutpostDockOverspeedBrake", OutpostDockOverspeedBrake},
		
		{"FreightersSamePalette", FreightersSamePalette},
		-- {"Unknown0x974", Unknown0x974}
	}
}}}}}}}