Author			= "Gumsk"
ModName			= "gNPC"
ModNameSub		= "No Flyovers"
BaseDescription	= "Disables random NPC flyovers"
GameVersion		= "398"
ModVersion		= "a"

FileSource1		= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN"

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
							["PRECEDING_KEY_WORDS"] = {"FlybySpawns","Count"},
							["VALUE_CHANGE_TABLE"] = {
								{"x",0}, 	--1
								{"y",0}, 	--3
							},
						},		
					},
				},
			}
		}
	}
}