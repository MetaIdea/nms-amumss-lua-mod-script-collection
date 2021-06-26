Author = "Gumsk"
ModName = "GSentinels"
ModNameSub = "Passive"
BaseDescription = "Passive Sentinels"
GameVersion = "342"
ModVersion = "a"
FileSource1 = "GCROBOTGLOBALS.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {{
		["MBIN_FILE_SOURCE"] = FileSource1,
		["EXML_CHANGE_TABLE"] = {
			{
				["VALUE_CHANGE_TABLE"] = {
					{"DroneCrimeWitnessLimit", 9999},				--3
					{"DroneCrimeWitnessInvestigateDistance", 0},	--30
					{"DroneCrimeProximityMultiplier", 0},			--3
					{"DisableDronePerception", "True"},				--False
					{"DroneAggressiveInvestigateAttackTime", 9999},	--2
				},
			},
		}
}}}}}