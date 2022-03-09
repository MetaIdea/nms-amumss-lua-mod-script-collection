Author = "Gumsk"
ModName = "gCreatures Sandworms"
ModNameSub = "No"
BaseDescription = "No Sandworms"
GameVersion = "382"
ModVersion = "a"
FileSource1 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN"
FileSource2 = "GCCREATUREGLOBALS.MBIN"

SandwormPresenceChance = 0
SandWormSpawnChanceMin = 0		--0.01
SandWormSpawnChanceMax = 0		--0.2

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
	{["PRECEDING_KEY_WORDS"] = {"SandwormPresenceChance"},
		["VALUE_CHANGE_TABLE"] = {
			{"Lush", SandwormPresenceChance},			--0.1
			{"Toxic", SandwormPresenceChance},			--0.25
			{"Scorched", SandwormPresenceChance},		--0.25
			{"Radioactive", SandwormPresenceChance},	--0.25
			{"Frozen", SandwormPresenceChance},			--0.05
			{"Barren", SandwormPresenceChance},			--0.25
			{"Dead", SandwormPresenceChance},			--0.3
			{"Weird", SandwormPresenceChance},			--0
			{"Red", SandwormPresenceChance},			--0.5
			{"Green", SandwormPresenceChance},			--0.5
			{"Blue", SandwormPresenceChance},			--0.5
			{"Test", SandwormPresenceChance},			--0
			{"Swamp", SandwormPresenceChance},			--0.4
			{"Lava", SandwormPresenceChance},			--0.25
			{"Waterworld", SandwormPresenceChance},		--0
			--{"All", 0}								--0
	}},
}},

{
["MBIN_FILE_SOURCE"] = FileSource2,
["EXML_CHANGE_TABLE"] = {
	{["PRECEDING_KEY_WORDS"] = {""},
		["VALUE_CHANGE_TABLE"] = {
			{"SandWormSpawnChanceMin", SandWormSpawnChanceMin},
			{"SandWormSpawnChanceMax", SandWormSpawnChanceMax},
	}},
}},

}}}}