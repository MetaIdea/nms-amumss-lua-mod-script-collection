Author = "Gumsk"
ModName = "GUser"
ModNameSub = "NoHUD"
BaseDescription = "GCUserSettings Changes - No HUD and base complexity"
GameVersion = "320"
ModVersion = "a"
FileSource = "METADATA\ENGINESETTINGS\GCUSERSETTINGSDATA.MBIN"

--General
	HUDHidden = "True"						--False ; 
	BaseComplexityLimitsEnabled = "False"	--True ; 

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{["PRECEDING_KEY_WORDS"] = "",
	["VALUE_CHANGE_TABLE"] = {
		{"HUDHidden", HUDHidden},
	-- {["PRECEDING_KEY_WORDS"] = "BeaconTransition",
	-- ["VALUE_CHANGE_TABLE"] = {
		-- {"Time",BeaconTime},
		-- {"AerialViewMode",BeaconView},
		{"BaseComplexityLimitsEnabled",BaseComplexityLimitsEnabled}}},
}}}}}}