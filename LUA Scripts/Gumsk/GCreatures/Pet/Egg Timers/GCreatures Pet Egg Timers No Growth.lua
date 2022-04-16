Author = "Gumsk"
ModName = "gCreatures Pet Egg Timers"
ModNameSub = "No Growth"
BaseDescription = "Reduces pet egg timers"
GameVersion = "382"
ModVersion = "a"
FileSource1 = "GCCREATUREGLOBALS.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {
	{["VALUE_CHANGE_TABLE"] = {
		--{"PetGrowthTime", 1},				--
		{"PetIncubationTime", 1},			--
		{"PetEggLayingInterval", 1},		--
		{"PetEggFirstEggDelay", 1},			--
		{"CanAlwaysLayEgg", "True"},		--False
	}},
}},

}}}}