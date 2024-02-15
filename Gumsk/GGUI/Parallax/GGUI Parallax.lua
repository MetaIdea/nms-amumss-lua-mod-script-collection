Author = "Gumsk"
ModName = "gGUI Parallax"
ModNameSub = ""
BaseDescription = "Removes mouse-based parallax movement in menus"
GameVersion = "450"
ModVersion = "a"
FileSource1 = "GCUIGLOBALS.GLOBAL.MBIN"

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
							["VALUE_CHANGE_TABLE"] = {
								{"TargetParallaxMouseMultiplier",0},
								{"TargetParallaxMaintenancePageMultiplier",0},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"RefinerParallax"},
							["VALUE_CHANGE_TABLE"] = {
								{"x", 0},
								{"y", 0},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ModelViewWorldParallax"},
							["VALUE_CHANGE_TABLE"] = {
								{"x", 0},
								{"y", 0},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"NGuiModelParallax"},
							["VALUE_CHANGE_TABLE"] = {
								{"x", 0},
								{"y", 0},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"NGuiShipInteractParallax"},
							["VALUE_CHANGE_TABLE"] = {
								{"x", 0},
								{"y", 0},
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"InteractionWorldParallax"},
							["VALUE_CHANGE_TABLE"] = {
								{"x", 0},
								{"y", 0},
							},
						},
					},
				},
			}
		}
	}
}