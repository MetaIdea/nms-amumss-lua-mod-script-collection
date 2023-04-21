Author = "youngneil1"			-- originally Gumsk, strongly and masterfully edited by Xen0nex for PtSD, again edited by youngneil1 to just disable building teleporters and do nothing esle
ModName = "No Mans Land"			--Based on gBase by Gumsk
ModNameSub = "No own teleporters"
BaseDescription = "Disable building teleporters "
GameVersion = "420"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"



--yn1: changed to false as default
TeleportersBuildable = "False"	--"True"		Set this to "False" to disable the player from constructing Teleporters in bases or freighters. (You can still use Station Teleporters to teleport to your base or freighter)



NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {

	
	{["SPECIAL_KEY_WORDS"] = {"ID","TELEPORTER"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"BuildableOnFreighter", "False"},
		{"BuildableOnSpaceBase", "False"},
		{"ShowInBuildMenu", TeleportersBuildable},					--True, now False
		}},	
	{["SPECIAL_KEY_WORDS"] = {"ID","TELEPORTER_F"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"BuildableOnFreighter", "False"},
		{"BuildableOnPlanetBase", "False"},
		{"BuildableOnSpaceBase", "False"},
		{"ShowInBuildMenu", TeleportersBuildable},					--True, now False
		}},
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_ROOM_TELEPO"},
	["VALUE_CHANGE_TABLE"] = {
		{"ShowInBuildMenu", TeleportersBuildable},					--True, now False
		}},
	
},},
	
},}}}