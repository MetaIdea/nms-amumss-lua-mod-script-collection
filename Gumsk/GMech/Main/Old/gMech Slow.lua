Author = "Gumsk,Devilin Pixy,Jasondude"
ModName = "gMech"
ModNameSub = "Slow"
BaseDescription = "Mech modifications, faster animations, higher speed, infinite mechjets"
GameVersion = "370"
ModVersion = "a"
FileSource1 = "MODELS\COMMON\VEHICLES\MECH_SUIT\MECH_SUIT\ENTITIES\MECH.ENTITY.MBIN"
FileSource2 = "GCVEHICLEGLOBALS.GLOBAL.MBIN"

--MECH ENTITY Animation Speeds
	FastWalkSpeed								= 1.1		--1
	WalkSpeed									= 1.1		--0.8

--GCVEHICLEGLOBALS Mech
	MechContrailAlpha							= 0.6		--0.6
	MechTurnSpeed								= 0.6		--1.5
	MechJetpackTurnSpeed						= 0.8		--3
	MechWalkToRunTimeIdle						= 1			--2
	MechWalkToRunTimeSkid						= 0.1		--0.2
	MechLandBrake								= 4			--4
	MechJetpackLandTime							= 0.4		--0.6
	MechJetpackDrainRate						= 0			--0.5
	
	MechTopSpeedForward							= 3.5		--2
	MechTopSpeedReverse							= 8			--15 ; No effect, doesn't have reverse


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {

	{["MBIN_FILE_SOURCE"]	= FileSource1,
	["EXML_CHANGE_TABLE"]	= {
		{["SPECIAL_KEY_WORDS"] = {"Anim", "FASTWALK"},
			["VALUE_CHANGE_TABLE"] = {
				{"Speed", FastWalkSpeed}
		}},
		{["SPECIAL_KEY_WORDS"] = {"Anim", "WALK"},
			["VALUE_CHANGE_TABLE"] = {
				{"Speed", WalkSpeed}
		}},
	}},

	{["MBIN_FILE_SOURCE"]	= FileSource2,
	["EXML_CHANGE_TABLE"]	= {
		{["VALUE_CHANGE_TABLE"] = {
			{"MechContrailAlpha",MechContrailAlpha},
			{"MechTurnSpeed",MechTurnSpeed},
			{"MechJetpackTurnSpeed",MechJetpackTurnSpeed},
			{"MechWalkToRunTimeIdle",MechWalkToRunTimeIdle},
			{"MechWalkToRunTimeSkid",MechWalkToRunTimeSkid},
			{"MechLandBrake",MechLandBrake},
			{"MechJetpackLandTime",MechJetpackLandTime},
			{"MechJetpackDrainRate",MechJetpackDrainRate},
		}},
		{["SPECIAL_KEY_WORDS"] = {"Name","MECH"},
			["VALUE_CHANGE_TABLE"] = {
				{"TopSpeedForward",MechTopSpeedForward},
				{"TopSpeedReverse",MechTopSpeedReverse},
		}},
	}},

}}}}