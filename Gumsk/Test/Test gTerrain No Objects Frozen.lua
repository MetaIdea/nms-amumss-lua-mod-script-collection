Author = "Gumsk"
ModName = "gTerrain"
ModNameSub = "No Objects Frozen"
BaseDescription = ""
GameVersion = "408"
ModVersion = "a"

--[[ Files Modified:
METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIOME.MBIN
METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQBIOME.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = {
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIOME.MBIN",
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MAIN"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","PLANT"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LEVELONEOBJECTS"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","CRYSTALS"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","HAZPLANTS"},
							["REMOVE"] = "SECTION",
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\ALLWILDFULL.MBIN",	--Sweetroot, Heptawheat, Pulpy Roots
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FROZEN.MBIN",			--Frostvine
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FROZENWILD.MBIN",		--Frozen Tubers
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\PLANTLARGECROP.MBIN",	--Sodium clumps, Oxygen clumps
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/FLOATINGPROPS.MBIN",	--Floating Crystals?
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"GcObjectSpawnData.xml"},
							["REPLACE_TYPE"] = "ALL",
							["REMOVE"] = "SECTION",
						},
					},
				},
			}
		}
	}
}