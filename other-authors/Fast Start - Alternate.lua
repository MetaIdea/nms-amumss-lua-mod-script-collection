Author = "HauntedKobra"
ModName = "FastStart-SkipTutorial-AltShipandTool-MultiFreighter"
BaseDescription = "Skip Intro and Tutorial - Alternate Ship and tool"
GameVersion = "3.84"
ModVersion = "a"
FileSource = "GCDEBUGOPTIONS.GLOBAL.MBIN"
FileSource2 = "METADATA\SIMULATION\MISSIONS\SEASONALMISSIONTABLE.MBIN"

-- GCDEBUGOPTIONS EDITS
SkipIntro = "True"           -- Original = "False"
SkipLogos = "True"           -- Original = "False"
SkipTutorial = "True"           -- Original = "False"
DisableSaveSlotSorting = "True"           -- Original = "False"
MultiplePlayerFreightersInASystem = "True"           -- Original = "False"
ForceInitialShip = "False"       -- Original = "True"
ForceInitialWeapon = "False"    -- Original = "True"


---- NMS_MOD_DEFINITION_CONTAINER ----
NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{
	["VALUE_CHANGE_TABLE"] = {
		{"SkipIntro", SkipIntro},
		{"SkipLogos", SkipLogos},
		{"SkipTutorial", SkipTutorial},
		{"DisableSaveSlotSorting", DisableSaveSlotSorting},
		{"MultiplePlayerFreightersInASystem", MultiplePlayerFreightersInASystem},
        {"ForceInitialShip", ForceInitialShip},
        {"ForceInitialWeapon", ForceInitialWeapon},
		},
	},
}},

{
["MBIN_FILE_SOURCE"] = FileSource2,
["EXML_CHANGE_TABLE"] = {
	{
    ["SPECIAL_KEY_WORDS"] = {"MissionID","SKIP_TUT"},
	["VALUE_CHANGE_TABLE"] = {
	{"AutoStart", "NotCreative"},
		},
	},
}},

}}}}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE