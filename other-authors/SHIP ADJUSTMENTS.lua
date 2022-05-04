Author = "HauntedKobra"
ModName = "SHIP ADJUSTMENTS"
BaseDescription = "Adjusts speeds and adds hover and cruise control to ships"
GameVersion = "3.89"
ModVersion = "a"
FileSource = "GCSPACESHIPGLOBALS.GLOBAL.MBIN"

-- GCSPACESHIPGLOBALS EDITS
LandingMaxSpeed                              =   "120"    --Original "8
LandingMargin                                =   "0.4"    --Original "1.4"
PulseDriveStationApproachSlowdownRangeMin    =   "400"    --Original "1000"
PulseDriveStationApproachSlowdownRange       =   "1500"   --Original "5000"
WarpInRange                                  =   "3500"   --Original "10000"
WarpInRangeFreighter                         =   "2000"   --Original "5000"
WarpOutRange                                 =   "100"    --Original "1000"
WarpInRangeNexus                             =   "1500"   --Original "5000"
PulseDrivePlanetApproachHeight               =   "2000"   --Original "6000"
HoverTakeoffHeight                           =   "60"     --Original "90"
HoverAlignTime                               =   "0.3"    --Original "0.7"
HoverSpeedFactor                             =   "0"      --Original "20"
HoverMinSpeed                                =   "0"      --Original "1"
HoverLandManeuvreTimeMin                     =   "0.3"    --Original "0.7"
HoverLandManeuvreTimeMax                     =   "1"      --Original "1.2" 
-- CONTROL EDITS
ThrustForce              = "70"       --Original "40"
MaxSpeed                 = "360"      --Original "180"
MinSpeed                 = "0"        --Original "20"
BoostMaxSpeed            = "2000"     --Original "1200"
ReverseBrake             = "5"        --Original "0.5"
ShipPlanetBrakeMaxHeight = "2000"     --Original "5000"
Falloff                  = "0"        --Original "0.5"
ThrustForceLight         = "80"       --Original "50"
ThrustForceHeavy         = "50"       --Original "40"
BoostMaxSpeed2           = "2600"     --Original (ControlLight "1300")(ControlHeavy "1100")
--ControlBonusC EDITS
ThrustForceMaxC  = "50" --Original "30"
ThrustForceMinC  = "0"  --Original "-5"
MaxSpeedMaxC     = "10" --Original "-5"
MaxSpeedMinC    = "0"  --Original "5"
--ControlBonusB EDITS
ThrustForceMaxB  = "75" --Original "60"
MaxSpeedMaxB     = "20" --Original "5"
MaxSpeedMinB     = "5"  --Original "0"
--ControlBonusA EDITS
ThrustForceMaxA   = "150" --original "100"
MaxSpeedMaxA      = "30"  --Original "20"
MaxSpeedMinA      = "10"  --Original "3"
BoostMaxSpeedMinA = "10"  --Original "5"
--ControlBonusS EDITS
ThrustForceMaxS   = "300" --Original "250"
ThrustForceMinS   = "75"  --Original "50"
MaxSpeedMaxS      = "75"  --Original "30"
MaxSpeedMinS       = "25"  --Original "15"
BoostMaxSpeedMaxS = "30"  --Original "15"
BoostMaxSpeedMinS = "15"  --Original "5"


---- NMS_MOD_DEFINITION_CONTAINER ----
NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName..".pak",
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
		{"LandingMaxSpeed", LandingMaxSpeed},
		{"LandingMargin", LandingMargin},
		{"PulseDriveStationApproachSlowdownRangeMin", PulseDriveStationApproachSlowdownRangeMin},
		{"PulseDriveStationApproachSlowdownRange", PulseDriveStationApproachSlowdownRange},
		{"WarpInRange", WarpInRange},
		{"WarpInRangeFreighter", WarpInRangeFreighter},
		{"WarpOutRange", WarpOutRange},
		{"WarpInRangeNexus",WarpInRangeNexus},
		{"PulseDrivePlanetApproachHeight", PulseDrivePlanetApproachHeight},
		{"HoverTakeoffHeight", HoverTakeoffHeight},
		{"HoverAlignTime", HoverAlignTime},
		{"HoverSpeedFactor", HoverSpeedFactor},
		{"HoverMinSpeed", HoverMinSpeed},
		{"HoverLandManeuvreTimeMin", HoverLandManeuvreTimeMin},
		{"HoverLandManeuvreTimeMax",HoverLandManeuvreTimeMax},
		},
	},
}},

{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{
    ["PRECEDING_KEY_WORDS"] = {"Control","PlanetEngine"},
	["VALUE_CHANGE_TABLE"] = {
	{"ThrustForce", ThrustForce},
	{"MaxSpeed", MaxSpeed},
	{"MinSpeed", MinSpeed},
	{"BoostMaxSpeed", BoostMaxSpeed},
	{"ReverseBrake", ReverseBrake},
	{"ShipPlanetbrakeMaxHeight", ShipPlanetBrakeMaxHeight},
	{"Falloff", Falloff},
		},
	},
}},
{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{
	["PRECEDING_KEY_WORDS"] = {"ControlLight","PlanetEngine"},
	["VALUE_CHANGE_TABLE"] = {
		{"ThrustForce", ThrustForceLight},
		{"MaxSpeed", MaxSpeed},
		{"MinSpeed", MinSpeed},
		{"BoostMaxSpeed", BoostMaxSpeed2},
		{"ShipPlanetBrakeMaxHeight", ShipPlanetBrakeMaxHeight},
		{"ReverseBrake", ReverseBrake},
		{"Falloff", Falloff},
		},
	},
}},
{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{
	["PRECEDING_KEY_WORDS"] = {"ControlHeavy","PlanetEngine"},
	["VALUE_CHANGE_TABLE"] = {
		{"ThrustForce", ThrustForceHeavy},
		{"MaxSpeed", MaxSpeed},
		{"MinSpeed", MinSpeed},
		{"BoostMaxSpeed", BoostMaxSpeed2},
		{"ShipPlanetBrakeMaxHeight", ShipPlanetBrakeMaxHeight},
		{"ReverseBrake", ReverseBrake},
		{"Falloff", Falloff},
    	},
	},
}},
{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{
	["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
	["VALUE_CHANGE_TABLE"] = {
		{"ThrustForceMax", ThrustForceMaxC},
		{"ThrustForceMin", ThrustForceMinC},
		{"MaxSpeedMax", MaxSpeedMaxC},
		{"MaxSpeedMin", MaxSpeedMinC},
	    },
	},
}},
{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{
	["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
	["VALUE_CHANGE_TABLE"] = {
		{"ThrustForceMax", ThrustForceMaxB},
		{"MaxSpeedMax", MaxSpeedMaxB},
		{"MaxSpeedMin", MaxSpeedMinB},
		},
	},
}},
{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{
	["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
	["VALUE_CHANGE_TABLE"] = {
		{"ThrustForceMax", ThrustForceMaxA},
		{"MaxSpeedMax", MaxSpeedMaxA},
		{"MaxSpeedMin", MaxSpeedMinA},
		{"BoostMaxSpeedMin", BoostMaxSpeedMinA},
		},
	},
}},
{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{
    ["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
	["VALUE_CHANGE_TABLE"] = {
		{"ThrustForceMax", ThrustForceMaxS},
		{"ThrustForceMin", ThrustForceMinS},
		{"MaxSpeedMax", MaxSpeedMaxS},
		{"MaxSpeedMin", MaxSpeedMinS},
		{"BoostMaxSpeedMax", BoostMaxSpeedMaxS},
		{"BoostMaxSpeedMin", BoostMaxSpeedMinS},
		},
	},
}},

}}}}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE