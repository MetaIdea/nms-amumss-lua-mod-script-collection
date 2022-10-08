Author = "Gumsk"
ModName = "gFreighter"
ModNameSub = "All Ships On Freighter"
BaseDescription = "Makes it so all nine of your ships are visible in your freighter hangar."
GameVersion = "401"
ModVersion = "a"
FileSource1 = "GCFLEETGLOBALS.GLOBAL.MBIN"

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
								{"MaxNumberOfPlayerShipsInFreighterHangar",9},		--6
							},
						},
					},
				},
			}
		}
	}
}