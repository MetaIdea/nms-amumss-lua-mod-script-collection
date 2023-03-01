Author = "Gumsk"
ModName = "gCharacter"
ModNameSub = ""
BaseDescription = "Character movement changes"
GameVersion = "411"
ModVersion = "a"
FileSource1 = "GCCHARACTERGLOBALS.GLOBAL.MBIN"

LadderDistanceToAutoMount = -1				-- 0.4
TimeFallingUntilPanic = 10					-- 0.8


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
					["PRECEDING_KEY_WORDS"] = "",
					["VALUE_CHANGE_TABLE"] = {
						{"LadderDistanceToAutoMount", LadderDistanceToAutoMount},
						{"TimeFallingUntilPanic", TimeFallingUntilPanic},
					}
				},
			}
		}
	}
}
}}