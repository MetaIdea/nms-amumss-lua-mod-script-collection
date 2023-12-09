Author = "Gumsk,Devilin Pixy,Jasondude"		--Edited by Xen0nex
ModName = "GMechX"
--ModNameSub = "+ReducedFuelX"
BaseDescription = "Mech modifications, faster animations, higher speed, infinite mechjets"
GameVersion = "441"
ModVersion = "a"
FileSource1 = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\ENTITIES\MECH.ENTITY.MBIN"
FileSource2 = "GCVEHICLEGLOBALS.GLOBAL.MBIN"

--MECH ENTITY Animation Speeds
	FastWalkSpeed								= 1.1		--1			(1.2)
	WalkSpeed									= 1.1		--0.8		(1.4)

--GCVEHICLEGLOBALS Mech
	MechContrailAlpha							= 0.6		--0.6
	MechPlayerGroundTurnSpeed					= 0.5		--0.5
	MechJetpackTurnSpeed						= 1			--3			(0.8)
	MechWalkToRunTimeIdle						= 0.8		--2
	MechWalkToRunTimeSkid						= 0.1		--0.2
	MechLandBrake								= 6			--4			(8)
	MechJetpackLandTime							= 0.4		--0.6		(0.2)
	
	MechJetpackForce							= 75		--70	[80]
	MechJetpackMaxSpeed							= 40		--20	[25]
	MechJetpackMaxUpSpeed						= 40		--20	[25]
	MechJetpackUpForce							= 125		--100	[110]
	MechJetpackIgnitionForce					= 120		--120	[110]
	MechJetpackIgnitionTime						= 0.4		--0.4
	MechJetpackDrainRate						= 0.5		--0.5
	
	MechJetpackFillRate							= 0.21		--0.5		(Slower Jetpack refilling)

	MechHeadlightIntensity						= 10		--8	
	MechTopSpeedForward							= 4			--2			(5)
	MechTopSpeedReverse							= 15		--15  ; No effect
	
	DamageTechNumHitsRequired					= 30		--20
	
--[[
--GCVEHICLEGLOBALS Reduced Fuel rates for vehicles
	VehicleFuelRate = "0.4"									--0.4
	VehicleFuelRateSurvival = "0.8"							--0.8
	VehicleBoostFuelRate = "2"								--2
	VehicleBoostFuelRateSurvival = "4"						--4
]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {

	{["MBIN_FILE_SOURCE"]	= FileSource1,
	["EXML_CHANGE_TABLE"]	= {
		{["SPECIAL_KEY_WORDS"] = {"Anim", "FASTWALK"},
			["INTEGER_TO_FLOAT"] = "FORCE",
			["VALUE_CHANGE_TABLE"] = {
				{"Speed", FastWalkSpeed}
		}},
		{["SPECIAL_KEY_WORDS"] = {"Anim", "WALK"},
			["INTEGER_TO_FLOAT"] = "FORCE",
			["VALUE_CHANGE_TABLE"] = {
				{"Speed", WalkSpeed}
		}},
	}},

	{["MBIN_FILE_SOURCE"]	= FileSource2,
	["EXML_CHANGE_TABLE"]	= {
		{["INTEGER_TO_FLOAT"] = "FORCE",
		["VALUE_CHANGE_TABLE"] = {
			{"MechContrailAlpha",MechContrailAlpha},
			{"MechPlayerGroundTurnSpeed",MechPlayerGroundTurnSpeed},	
			{"MechJetpackTurnSpeed",MechJetpackTurnSpeed},
			{"MechWalkToRunTimeIdle",MechWalkToRunTimeIdle},
			{"MechWalkToRunTimeSkid",MechWalkToRunTimeSkid},
			{"MechLandBrake",MechLandBrake},
			{"MechJetpackLandTime",MechJetpackLandTime},
			{"MechJetpackForce",MechJetpackForce},
			{"MechJetpackMaxSpeed",MechJetpackMaxSpeed},
			{"MechJetpackMaxUpSpeed",MechJetpackMaxUpSpeed},
			{"MechJetpackUpForce",MechJetpackUpForce},
			{"MechJetpackIgnitionForce",MechJetpackIgnitionForce},
			{"MechJetpackIgnitionTime",MechJetpackIgnitionTime},
			{"MechJetpackDrainRate",MechJetpackDrainRate},
			{"MechJetpackFillRate",MechJetpackFillRate},
			{"DamageTechNumHitsRequired",DamageTechNumHitsRequired},
			--[[{"VehicleFuelRate", VehicleFuelRate},
			{"VehicleFuelRateSurvival", VehicleFuelRateSurvival},
			{"VehicleBoostFuelRate", VehicleBoostFuelRate},
			{"VehicleBoostFuelRateSurvival", VehicleBoostFuelRateSurvival}]]
		}},
		{["SPECIAL_KEY_WORDS"] = {"Name","MECH"},
			["INTEGER_TO_FLOAT"] = "FORCE",
			["VALUE_CHANGE_TABLE"] = {
				{"TopSpeedForward",MechTopSpeedForward},
				{"TopSpeedReverse",MechTopSpeedReverse},
				{"HeadlightIntensity",MechHeadlightIntensity},
		}},
	}},

}}}}