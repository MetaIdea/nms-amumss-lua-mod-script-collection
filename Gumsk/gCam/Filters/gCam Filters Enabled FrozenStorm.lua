Author = "Gumsk"
ModName = "gCam Filters Enabled"
ModNameSub = "FrozenStorm"
BaseDescription = ""
GameVersion = "408"
ModVersion = "a"

--[[ Files Modified:
METADATA\EFFECTS\SCREENFILTERS.MBIN
]]--

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA\EFFECTS\SCREENFILTERS.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"FrozenStorm","GcScreenFilterData.xml"},
							["VALUE_CHANGE_TABLE"] = {
								{"SelectableInPhotoMode","True"},
							},
						},
					},
				},
			}
		}
	}
}