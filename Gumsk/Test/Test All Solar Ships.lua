Author = "Gumsk"
ModName = "Test"
ModNameSub = "All Solar Ships"
BaseDescription = "Test"
GameVersion = "387"
ModVersion = "a"
FileSource1 = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"

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
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PirateClassShipOverrideProbability",1},				--0.1 
						{"PirateClassShipOverrideProbabilityPirateSystem",1},	--0.85 
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
					["LINE_OFFSET"] = "+1",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"IGNORE",20},
					},
				},
				{
					["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
					["LINE_OFFSET"] = "+2",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"IGNORE",20},
					},
				},
				{
					["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
					["LINE_OFFSET"] = "+3",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"IGNORE",20},
					},
				},			
				{
					["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
					["LINE_OFFSET"] = "+4",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"IGNORE",20},
					},
				},	
				
				
			}
		}
	}
}
}}