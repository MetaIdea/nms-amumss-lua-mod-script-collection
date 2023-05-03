Author = "Gumsk"	-- Edited by Xen0nex	(temporary fix to BOUNTYLASER3 typo), edited again by youngneil1 to reduce the environmental/no oxy damage
ModName = "GExos Challenge, NML edit"
ModNameSub = "gDamageX, NML edit"
BaseDescription = "Reduce the environmental/no oxy damage"
GameVersion = "423"
ModVersion = "a"

FileSource = "METADATA\REALITY\TABLES\DAMAGETABLE.MBIN"
FileSource2 = "GCPLAYERGLOBALS.GLOBAL.MBIN"

--Global damage multipliers to quickly adjust all damage values within a particular category, on top of any individual adjustments below
Starships =					1				--Damage from starships / freighters
Flora =						1				--Damage from all kinds of Hazardous Flora
Fauna =						1				--Damage from all kinds of Hazardous Fauna / Creatures
Robots =					1				--Damage from planetary Sentinels, turrets/drones in Derelict Freighters (Sentinel starships/freighters covered by "Starships")
Other =						1				--Damage from most other damage sources such as environmental hazards, falling, starship impact, pirate building raids, etc.


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {

{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {

	

	{["SPECIAL_KEY_WORDS"] = {"Id","ENERGY"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 17*Other}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","EXTREMEHEATDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 17 *Other}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","NOOXYDAMAGE"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 17*Other}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","EXTREMECOLDDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 17*Other}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","TOXICGASDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 17*Other}}}, --default 28

	{["SPECIAL_KEY_WORDS"] = {"Id","RADIATIONDMG"},
	["VALUE_CHANGE_TABLE"] = {	
		{"Damage", 17*Other}}}, --default 28

	

}},

{
["MBIN_FILE_SOURCE"] = FileSource2,
["EXML_CHANGE_TABLE"] = {

	

	{
	--["SPECIAL_KEY_WORDS"] = {"Id","ENERGY"},
	["VALUE_CHANGE_TABLE"] = {	
		{"DamageRepairFactor", "0,1"}}
		
	}, --default 28

	

	

}},

}}}}