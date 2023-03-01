Author = "Kronos"
ModName = "BoostingTurnDamp"
ModNameSub = ""
BaseDescription = "Flight modifications"
GameVersion = "411"
ModVersion = "a"
FileSource1 = "GCSPACESHIPGLOBALS.GLOBAL.MBIN"

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
							["PRECEDING_KEY_WORDS"] = {"Control","SpaceEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"BoostingTurnDamp", 1.0},						--0.1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control","PlanetEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"BoostingTurnDamp", 1.0},						--0.25
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control","CombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"BoostingTurnDamp", 1.0},						--0.1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control","AtmosCombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"BoostingTurnDamp", 1.0},						--0.1
							}
						},

						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight","SpaceEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"BoostingTurnDamp", 1.0},						--0.1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight","PlanetEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"BoostingTurnDamp", 1.0},						--0.3
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight","CombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"BoostingTurnDamp", 1.0},						--0.1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight","AtmosCombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"BoostingTurnDamp", 1.0},						--0.1
							}
						},
						
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy","SpaceEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"BoostingTurnDamp", 1.0},						--0.1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy","PlanetEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"BoostingTurnDamp", 1.0},						--0.15
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy","CombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"BoostingTurnDamp", 1.0},						--0.1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy","AtmosCombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"BoostingTurnDamp", 1.0},						--0.1
							}
						},

					}
				}	
			}
		}
	}
}