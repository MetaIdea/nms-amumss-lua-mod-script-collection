ModAuthor		= "Soopytwist"
LuaAuthor		= "Balzhur"
ModName			= "Q and E Keys Unbound"
ModCategory		= "UI"
ModDescription	= "Unbinds Q and E keys away from sub menu tabs while in the inventory, binding them to Left and Right arrow keys instead. Avoids changing inventory when using the E key to craft an item."
GameVersion		= "3.94"
ModVersion		= "1.0"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]		= ModAuthor.." - "..ModCategory.." - "..ModName.."-"..ModVersion..".pak",
	["MOD_DESCRIPTION"]		= ModDescription,
	["MOD_AUTHOR"]			= ModAuthor,
	["LUA_AUTHOR"]			= LuaAuthor,
	["NMS_VERSION"]			= GameVersion,
	["MODIFICATIONS"]		= {{
		["MBIN_CHANGE_TABLE"] = {{
			["MBIN_FILE_SOURCE"]		= "METADATA\INPUT\BINDINGS\GCINPUTBINDINGS_WIN_KEYBOARD.MBIN",
			["EXML_CHANGE_TABLE"]		= {{
				["SPECIAL_KEY_WORDS"]	= {"InputAction","UI_Left_Sub",},
				["PRECEDING_KEY_WORDS"]	= "",
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"]	= {
					{ "InputButton","Left" },     -- Original "KeyQ"

				}
			},{
				["SPECIAL_KEY_WORDS"]	= {"InputAction","UI_Right_Sub",},
				["PRECEDING_KEY_WORDS"]	= "",
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"]	= {
					{ "InputButton","Right" },     -- Original "KeyE"
				}
			}}
		}}
	}}
}
-- The END of mod definition container