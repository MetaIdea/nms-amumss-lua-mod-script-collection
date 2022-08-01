Author = "Gumsk"
ModName = "gPlayer"
ModNameSub = "Walk"
BaseDescription = ""
GameVersion = "398"
ModVersion = "a"
FileSource = "GCPLAYERGLOBALS.GLOBAL.MBIN"

GroundWalkSpeed = 2.8									--4.4 .
GroundRunSpeed = 8									--8 .

  
NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
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
							["VALUE_CHANGE_TABLE"] = {
								{"GroundWalkSpeed",GroundWalkSpeed},
								{"GroundRunSpeed",GroundRunSpeed},
							},
						},
					},
				},
			}
		}
	}
}