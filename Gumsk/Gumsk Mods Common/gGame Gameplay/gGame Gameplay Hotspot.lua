ModName = "gGame Gameplay"
ModNameSub = "Hotspot"
GameVersion = "5.2.9.0"
ModVersion = "a"

--[[ Files Modified:
METADATA\SIMULATION\SCANNING\SCANDATATABLE.MBIN
GCGAMEPLAYGLOBALS.GLOBAL.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	MOD_DESCRIPTION	= "Various modifications to gameplay globals",
	MOD_AUTHOR		= "Gumsk",
	LUA_AUTHOR		= "Gumsk",
	NMS_VERSION		= GameVersion,
	GLOBAL_INTEGER_TO_FLOAT = "FORCE",
	MODIFICATIONS	= {
		{
			MBIN_CHANGE_TABLE = {
			--Scanning
				{
					MBIN_FILE_SOURCE = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					EXML_CHANGE_TABLE = {
						{
							VALUE_CHANGE_TABLE = {
								{"SurveyMaxDistance",2000},						      	--400; How far away the scanner can detect hotspots, in u. Maximum is about 1300, but over 1000 is unreliable.
								{"SurveySonarMinPulseSpeed",-2.4},			  		--0.4; Frequency for sweeps or pings of the hotspot scanner. Lower is slower.
							},
						},
					},
				},
			}
		}
	}
}