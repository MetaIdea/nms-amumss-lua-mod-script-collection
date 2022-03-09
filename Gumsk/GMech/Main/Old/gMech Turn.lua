Author = "Gumsk,Devilin Pixy,Jasondude"
ModName = "gMech"
ModNameSub = "Turn"
BaseDescription = "Mech modifications, faster animations, higher speed, infinite mechjets"
GameVersion = "370"
ModVersion = "a"
FileSource2 = "GCVEHICLEGLOBALS.GLOBAL.MBIN"

--GCVEHICLEGLOBALS Mech
	MechTurnSpeed								= 0.6		--1.5
	MechJetpackTurnSpeed						= 0.8		--3

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {

	{["MBIN_FILE_SOURCE"]	= FileSource2,
	["EXML_CHANGE_TABLE"]	= {
		{["VALUE_CHANGE_TABLE"] = {
			{"MechTurnSpeed",MechTurnSpeed},
			{"MechJetpackTurnSpeed",MechJetpackTurnSpeed},
		}},
	}},

}}}}