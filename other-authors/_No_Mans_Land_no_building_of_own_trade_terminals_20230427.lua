Author = "youngneil1"			-- originally Gumsk, strongly and masterfully edited by Xen0nex for PtSD, again edited by youngneil1 to just disable building trade terminals and do nothing esle
ModName = "No Mans Land"			--Based on gBase by Gumsk
ModNameSub = "No own trade terminals"
BaseDescription = "Disable building trade terminals "
GameVersion = "423"
ModVersion = "a"
FileSource1 = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN"



--yn1: changed to false as default
TeleportersBuildable = "False"	--"True"		Set this to "False" to disable the player from constructing Trade Terminals in bases or freighters. (You can still use all other Trade Terminals)



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

	
	{["SPECIAL_KEY_WORDS"] = {"ID","BUILDTERMINAL"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"BuildableOnFreighter", "False"},
		{"BuildableOnSpaceBase", "False"},
		{"ShowInBuildMenu", TeleportersBuildable},					--True, now False
		}},	
	{["SPECIAL_KEY_WORDS"] = {"ID","FRE_ROOM_SHOP"},
	["VALUE_CHANGE_TABLE"] = {
		{"BuildableOnPlanet", "False"},
		{"BuildableOnPlanetWithProduct", "False"},
		{"BuildableOnFreighter", "False"},
		{"BuildableOnPlanetBase", "False"},
		{"BuildableOnSpaceBase", "False"},
		{"ShowInBuildMenu", TeleportersBuildable},					--True, now False
		}},
	
	
},},
	
},}}}