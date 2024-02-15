Author = "Gumsk"
ModName = "gCreatures Sandworms"
ModNameSub = "Max"
BaseDescription = "Maximum Sandworms"
GameVersion = "450"
ModVersion = "a"
FileSource1 = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN"
FileSource2 = "GCCREATUREGLOBALS.MBIN"
FileSource3 = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"

SandwormPresenceChance = 1
SandWormSpawnChanceMin = 1		--0.01
SandWormSpawnChanceMax = 1		--0.2

SandWormJumpHeight = 300		--120
SandWormJumpTime = 4			--3
SandWormMaxJumps = 2			--5
SandWormSpawnTimer = 1			--300

SpawnDelay = 10			--0
MinWorms = 2			--1
MaxWorms = 4			--1
FaceDir = "Random"		--"TowardsPlayer"
MinDist = 300			--500
MaxDist = 600			--600
--Scale = 80				--80

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {

		{
			["MBIN_FILE_SOURCE"] = FileSource1,
			["EXML_CHANGE_TABLE"] = {
				{
					["PRECEDING_KEY_WORDS"] = {"SandwormPresenceChance"},
					["INTEGER_TO_FLOAT"] = "FORCE",
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
					}
				},
			}
		},

		{
			["MBIN_FILE_SOURCE"] = FileSource2,
			["EXML_CHANGE_TABLE"] = {
				{
					["PRECEDING_KEY_WORDS"] = {""},
					["VALUE_CHANGE_TABLE"] = {
						{"SandWormJumpHeight", SandWormJumpHeight},
						{"SandWormJumpTime", SandWormJumpTime},
						{"SandWormMaxJumps", SandWormMaxJumps},
						{"SandWormSpawnTimer", SandWormSpawnTimer},
						{"SandWormSpawnChanceMin", SandWormSpawnChanceMin},
						{"SandWormSpawnChanceMax", SandWormSpawnChanceMax},
					}
				},
			}
		},

		{
			["MBIN_FILE_SOURCE"] = FileSource3,
			["EXML_CHANGE_TABLE"] = {
				{
					["VALUE_CHANGE_TABLE"] = {
						{"PerSpawnDelay", SpawnDelay},
						{"FaceDir", FaceDir},
						{"MinDist", MinDist},
						{"MaxDist", MaxDist},
					}
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Event","SANDWORM"},
					["PRECEDING_KEY_WORDS"] = {"MinNum"},
					["VALUE_CHANGE_TABLE"] = {
						{"Off",MinWorms},
						{"Slow",MinWorms},
						{"Normal",MinWorms},
						{"Fast",MinWorms},
					},
				},
				{
					["SPECIAL_KEY_WORDS"] = {"Event","SANDWORM"},
					["PRECEDING_KEY_WORDS"] = {"MaxNum"},
					["VALUE_CHANGE_TABLE"] = {
						{"Off",MaxWorms},
						{"Slow",MaxWorms},
						{"Normal",MaxWorms},
						{"Fast",MaxWorms},
					},
				},
			}
		},
	}
}
}}