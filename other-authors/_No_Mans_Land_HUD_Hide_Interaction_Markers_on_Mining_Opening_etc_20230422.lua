Author = "youngneil1"
ModName = "No Mans Land Hide HUD Interaction markers, especially for mouse over when mining"
ModNameSub = ""
BaseDescription = "No more mouse over spam when mining; note: this deletes all interaction markers like for panels, crates, etc. (you can still mormally intercat with them of course) so the user should have some experience with NMS gameplay already."
GameVersion = "4.23"
ModVersion = "a"
FileSource = "UI/HUD/HUDINTERACTIONMARKER.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = FileSource,
			["EXML_CHANGE_TABLE"] = {
				{
					["REPLACE_TYPE"] = "ALL",
					["VALUE_CHANGE_TABLE"] = {
						{"Width",0},
{"Height",0},

					}
				}
			}
		}
	}
}
}}
