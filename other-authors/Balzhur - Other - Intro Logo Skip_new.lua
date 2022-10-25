ModAuthor	= "Balzhur"
LuaAuthor	= "Nexus site, Balzhur"
Maintainer	= ""
ModName		= "Intro Logo Skip"
ModCategory	= "Other"
ModDescription	= "Skip intro logos"
GameVersion	= "3.66"
ModVersion	= "1.1"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModAuthor.." - "..ModCategory.." - "..ModName.."-"..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= ModDescription,
	["MOD_MAINTENANCE"]	= Maintainer,
	["MOD_AUTHOR"]		= ModAuthor,
	["LUA_AUTHOR"]		= LuaAuthor,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {{
		["MBIN_CHANGE_TABLE"] = {{
			["MBIN_FILE_SOURCE"]	= "METADATA\UI\BOOTLOGOPC.MBIN",
			["EXML_CHANGE_TABLE"] 	= {{
				["PRECEDING_KEY_WORDS"]	= {"Textures"},
				["REPLACE_TYPE"]	= "ALL",
				["VALUE_CHANGE_TABLE"]	= {
					{"Value", ""}
				}
			},{
				["PRECEDING_KEY_WORDS"]	= {"DisplayTime"},
				["REPLACE_TYPE"]	= "ALL",
				["LINE_OFFSET"]		= "1",
				["VALUE_CHANGE_TABLE"]	= {
					{"IGNORE", "0"}		-- Original "3"
				}
			},{
				["PRECEDING_KEY_WORDS"]	= {"DisplayTime"},
				["REPLACE_TYPE"]	= "ALL",
				["LINE_OFFSET"]		= "2",
				["VALUE_CHANGE_TABLE"]	= {
					{"IGNORE", "0"}		-- Original "2"
				}
			},{
				["PRECEDING_KEY_WORDS"]	= {"DisplayTime"},
				["REPLACE_TYPE"]	= "ALL",
				["LINE_OFFSET"]		= "3",
				["VALUE_CHANGE_TABLE"]	= {
					{"IGNORE", "0"}		-- Original "1"
				}
			},{
				["PRECEDING_KEY_WORDS"]	= {"DisplayTime"},
				["REPLACE_TYPE"]	= "ALL",
				["LINE_OFFSET"]		= "4",
				["VALUE_CHANGE_TABLE"]	= {
					{"IGNORE", "0"}		-- Original "1"
				}
			}}
		}}
	}}
}
-- The END of mod definition container