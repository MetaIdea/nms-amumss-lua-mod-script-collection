Author = "Gumsk"
ModName = "gShip Type Frequency"
ModNameSub = "Exotic Common"
BaseDescription = "Changes frequency of ships spawning in the wild"
GameVersion = "450"
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
							["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings","CivilianClassWeightings"},
							["VALUE_CHANGE_TABLE"] = {
								{"Freighter","0"},
								{"Dropship","100"},
								{"Fighter","50"},
								{"Scientific","50"},
								{"Shuttle","100"},
								{"PlayerFreighter","0"},
								{"Royal","100"},
								{"Alien","0"},
								{"Sail","0"},
								{"Robot","0"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings","CivilianClassWeightings","CivilianClassWeightings"},
							["VALUE_CHANGE_TABLE"] = {
								{"Freighter","0"},
								{"Dropship","50"},
								{"Fighter","100"},
								{"Scientific","50"},
								{"Shuttle","100"},
								{"PlayerFreighter","0"},
								{"Royal","100"},
								{"Alien","0"},
								{"Sail","0"},
								{"Robot","0"},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings","CivilianClassWeightings","CivilianClassWeightings","CivilianClassWeightings"},
							["VALUE_CHANGE_TABLE"] = {
								{"Freighter","0"},
								{"Dropship","50"},
								{"Fighter","50"},
								{"Scientific","100"},
								{"Shuttle","100"},
								{"PlayerFreighter","0"},
								{"Royal","100"},
								{"Alien","0"},
								{"Sail","0"},
								{"Robot","0"},
							},
						},
					}
				}
			}
		}
	}
}