Author			= "Gumsk"
ModName 		= "gMission Unlimited Free Derelicts"
ModNameSub		= ""
BaseDescription = "Removes the weekly limit on free derelict freighter EBRs"
GameVersion 	= "411"
ModVersion		= "a"

--[[Files Modified
METADATA/SIMULATION/MISSIONS/SPACEPOIMISSIONTABLE.MBIN
--]]

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]			= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]			= BaseDescription,
	["MOD_AUTHOR"]				= Author,
	["NMS_VERSION"]				= GameVersion,
	["GLOBAL_INTEGER_TO_FLOAT"]	= "FORCE",
	["MODIFICATIONS"]			= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = {"METADATA/SIMULATION/MISSIONS/SPACEPOIMISSIONTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Stat","ABAND_WEEKLY"},
							["REMOVE"] = "SECTION",
						},
					},
				},
			}
		}
	}
}