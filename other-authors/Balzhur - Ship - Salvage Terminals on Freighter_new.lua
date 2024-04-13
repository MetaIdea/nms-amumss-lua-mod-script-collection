ModAuthor	= "Balzhur"
LuaAuthor	= "Balzhur"
Maintainer	= ""
ModName		= "Salvage Terminals on Freighter"
ModCategory	= "Ship"
ModDescription	= "Places three Salvage terminals at Freighter hangar"
GameVersion	= "4.6"
ModVersion	= "1.3"

STCoordX =	{
			"60",		-- Lane1
			"14.7",		-- Lane2
			"-30.7"		-- Lane3
		}

local add_salvage_terminal = {}
for i = 1,#STCoordX do
	local change1 = {
				["SECTION_EDIT"]	= "SALVAGE_TERMINAL",
--				["SEC_KEEP"]		= "true",		-- DEBUG
				["INTEGER_TO_FLOAT"]	= "FORCE",
				["VALUE_CHANGE_TABLE"]	= {
					{"Name",	"SalvageTerminalLane"..i},
					{"NameHash",	"0"},
					{"TransX",	STCoordX[i]},
					{"TransY",	"-7.344675"},
					{"TransZ",	"22.77"},
					{"RotY",	"-90"},
					{"ScaleX",	"0.7"},
					{"ScaleZ",	"0.7"},
--					{"Value",	"MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SHIPSALVAGETERMINAL.SCENE.MBIN"}
					{"Value",	"MODELS/SPACE/SPACESTATION/MODULARPARTSTYPEB/DOCK/SHOPS/SHIPSALVAGETERMINALTYPEB.SCENE.MBIN"}
				}
			}
	local change2 = {
				["SPECIAL_KEY_WORDS"]	= {"Name","Dock3C"},
				["SECTION_UP_SPECIAL"]	= 1,
				["PRECEDING_KEY_WORDS"]	= {"Children"},
				["ADD_OPTION"]		= "ADDafterLINE",
				["SECTION_ADD_NAMED"]	= "SALVAGE_TERMINAL",
			}
	table.insert(add_salvage_terminal, change1)
	table.insert(add_salvage_terminal, change2)
end

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModAuthor.." - "..ModCategory.." - "..ModName..".pak",
	["MOD_DESCRIPTION"]	= ModDescription.." v"..ModVersion,
	["MOD_MAINTENANCE"]	= Maintainer,
	["MOD_AUTHOR"]		= ModAuthor,
	["LUA_AUTHOR"]		= LuaAuthor,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {{
		["MBIN_CHANGE_TABLE"] = {{
			["MBIN_FILE_SOURCE"]	= "MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR.SCENE.MBIN",
			["EXML_CHANGE_TABLE"] 	= {{
				["SPECIAL_KEY_WORDS"]	= {"Name","Dock3C"},
				["SECTION_SAVE_TO"]	= "SALVAGE_TERMINAL",
			}}
		},{
			["MBIN_FILE_SOURCE"]	= {
				"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGAR.SCENE.MBIN",
				"MODELS/COMMON/SPACECRAFT/COMMONPARTS/HANGARINTERIORPARTS/HANGARPIRATE.SCENE.MBIN"
			},
			["EXML_CHANGE_TABLE"] 	= add_salvage_terminal
		}}
	}}
}
-- The END of mod definition container