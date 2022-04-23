Author          = "HauntedKobra"
ModName         = "CHARACTER ADJUSTMENTS-FAST"
BaseDescription = "Slight adjustments to character and jetpack"
GameVersion     = "3.84"
ModVersion      = "a"
FileSource      = "GCPLAYERGLOBALS.GLOBAL.MBIN"
FileSource2     = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

-- GCPLAYERGLOBALS EDITS
GroundWalkSpeed                = "8" --Original "4.4"
GroundRunSpeed                 = "10" --Original "8"
GroundWalkSpeedLowG            = "3" --Original "1.6"
GroundRunSpeedLowG             = "4" --Original "3.5"
RocketBootsImpulse             = "6" --Original "3"
RocketBootsBoostTankDrainSpeed = "1" --Original "6"
RocketBootsMaxSpeed            = "30" --Original "20"
JetpackForce                   = "40" --Original "31"
JetpackBrake                   = "5" --Original "2.2"
JetpackFillRate                = "5" --Original "0.5"
JetpackFillRateHardMode        = "2" --Original "0.2"
JetpackFillRateMidair          = "3" --Original "0.25"

--METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN EDITS
Bonus = "10" --Original "2.75" 


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
		{"GroundWalkSpeed", GroundWalkSpeed},
		{"GroundRunSpeed", GroundRunSpeed},
		{"GroundWalkSpeedLowG", GroundWalkSpeedLowG},
		{"GroundRunSpeedLowG", GroundRunSpeedLowG},
		{"RocketBootsImpulse", RocketBootsImpulse},
		{"RocketBootstankDrainSpeed", RocketBootsBoostTankDrainSpeed},
		{"RocketBootsMaxSpeed", RocketBootsMaxSpeed},
		{"JetpackForce", JetpackForce},
		{"JetpackBrake", JetpackBrake},
		{"JetpackFillRate", JetpackFillRate},
		{"JetpackFillRateHardMode", JetpackFillRateHardMode},
		{"JetpackFillRateMidair", JetpackFillRateMidair},
		},
	},
}},

{
["MBIN_FILE_SOURCE"] = FileSource2,
["EXML_CHANGE_TABLE"] = {
	{
    ["SPECIAL_KEY_WORDS"] = {"ID","JET1"},
	["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Tank"},
	["VALUE_CHANGE_TABLE"] = {
	{"Bonus", Bonus},
    {"Bonus", Bonus},         --GENERATES A NOTICE- WORKS FINE
		},
	},
}},

}}}}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE