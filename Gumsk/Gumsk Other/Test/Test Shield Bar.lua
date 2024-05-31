Author = "Gumsk"
ModName = "Test"
ModNameSub = "Shield Bar"
BaseDescription = "Test"
GameVersion = "384"
ModVersion = "a"
FileSource1 = 	{
				-- "UI/HUD/COMPONENTS/HUHEALTHICON.MBIN",
				-- "UI/HUD/COMPONENTS/HUDBAR.MBIN",
				-- "UI/HUD/COMPONENTS/HUDHAZARDBAR.MBIN",
				-- "UI/HUD/COMPONENTS/HUDICON.MBIN",
				-- "UI/HUD/COMPONENTS/HUDROWHEALTHICONS.MBIN",
				-- "UI/HUD/COMPONENTS/HUDROWSIMPLEICONS.MBIN",
				-- "UI/HUD/HUD.MBIN",
				-- "UI/HUD/HUDBARS.MBIN",
				-- "UI/HUD/HUDEFFECTLAYER.MBIN",
				-- "UI/HUD/HUDHAZARD.MBIN",
				-- "UI/HUD/HUDHEALTH.MBIN",
				-- "UI/HUD/HUDINDICATORS.MBIN",
				-- "UI/HUD/HUDLINES.MBIN",
				-- "UI/HUD/HUDMARKER.MBIN",
				-- "UI/HUD/HUDMESSAGE.MBIN",
				-- "UI/HUD/HUDNOTIFICATION.MBIN",
				-- "UI/HUD/HUDNOTIFICATIONPANEL.MBIN",
				-- "UI/HUD/HUDPLANETINFO.MBIN",
				}

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
					--["SPECIAL_KEY_WORDS"] = {"ID","SHIELDBAR"},
					--["SECTION_UP"] = 1,
					["INTEGER_TO_FLOAT"] = "FORCE",
					["REPLACE_TYPE"] = "ALL",
					["VALUE_CHANGE_TABLE"] = {
						{"R",0},
						{"A",0.5}
					}
				},
			}
		}
	}
}
}}