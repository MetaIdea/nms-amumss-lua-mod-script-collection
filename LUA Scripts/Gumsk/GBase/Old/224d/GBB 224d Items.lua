NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "GBB 224d Items.pak",
["MOD_DESCRIPTION"]	= "Removes restrictions on base building items",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "2.24",
["MODIFICATIONS"]	=
{{
["PAK_FILE_SOURCE"] = "",
["MBIN_CHANGE_TABLE"] = 
{{
["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN",
["EXML_CHANGE_TABLE"] = 
{
	{
	["PRECEDING_KEY_WORDS"] = {""},
	["REPLACE_TYPE"] = "ALL",
	["VALUE_CHANGE_TABLE"] =
	{
		{"BuildableOnPlanet","True"},
		{"BuildableOnPlanetBase","True"},
		{"BuildableOnFreighter","True"},
		{"BuildableOnSpaceBase","True"},
		{"BuildableUnderwater","True"},
		{"BuildableAboveWater","True"},
		{"PlanetBaseLimit",0},
		{"RegionLimit",0},
		{"PlanetLimit",0},
		{"FreighterBaseLimit",0},
		{"CheckPlaceholderCollision","False"},
		{"CanPlaceOnItself","True"},
		{"CanRotate3D","True"},
		{"CanScale","True"},
		{"CanChangeColour","True"},
		{"CanChangeMaterial","True"},
		{"RemovesAttachedDecoration","False"},
	},
	},

	{
	["SPECIAL_KEY_WORDS"] = {"ID","U_SILO_S"},
	["VALUE_CHANGE_TABLE"] =
	{
		{"Storage",9999999},
	},
	},

	{
	["SPECIAL_KEY_WORDS"] = {"ID","U_SOLAR_S"},
	["VALUE_CHANGE_TABLE"] =
	{
		{"CanPickUp","True"},
		{"Rate",100},
		{"Storage",50000},
	},
	},

	{
	["SPECIAL_KEY_WORDS"] = {"ID","U_BATTERY_S"},
	["VALUE_CHANGE_TABLE"] =
	{
		{"Storage",250000},
	},
	},
	
--MESSAGEMODULE
	
},}},}}}