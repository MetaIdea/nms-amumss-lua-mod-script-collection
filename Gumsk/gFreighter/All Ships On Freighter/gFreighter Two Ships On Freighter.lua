Author = "Gumsk"
ModName = "gFreighter"
ModNameSub = "Two Ships on Freighter"
BaseDescription = "Makes it so you only have two ships in your freighter hangar"
GameVersion = "450"
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
								{"MaxNumberOfPlayerShipsInFreighterHangar",2},		--6
							},
						},
					},
				},
			}
		}
	}
}