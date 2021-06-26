Author = "Gumsk"
ModName = "GExos Epic"
ModNameSub = "GUser No HUD"
BaseDescription = "GCUserSettings Changes - No HUD and base complexity"
GameVersion = "322"
ModVersion = "a"
FileSource = "METADATA\ENGINESETTINGS\GCUSERSETTINGSDATA.MBIN"

--General
	HUDHidden = "False"						--False ; 
	BaseComplexityLimitsEnabled = "False"	--True ; 

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
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
		{"BaseComplexityLimitsEnabled",BaseComplexityLimitsEnabled}}},
}}}}}}