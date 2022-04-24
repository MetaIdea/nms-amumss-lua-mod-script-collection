Author = "Gumsk"
ModName = "Test"
ModNameSub = "Fake Quad Guard"
BaseDescription = "Test"
GameVersion = "384"
ModVersion = "a"
FileSource1 = "GCROBOTGLOBALS.MBIN"

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
						{"FakeQuadGuard",100}		--0 
					}
				},
			}
		}
	}
}
}}