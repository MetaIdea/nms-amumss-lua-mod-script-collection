-- File Settings --
FileName    = "QuickMenu MouseWheel Invert 1.0.pak"
ModAuthor   = "Reikokuu"
LuaAuthor   = "Reikokuu"
NMS_Version = "Leviathan 3.92"

-- File Sources --
FileSource1 = "METADATA/INPUT/BINDINGS/GCINPUTBINDINGS_WIN_MOUSE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]  = FileName,
	["MOD_AUTHOR"]    = ModAuthor,
	["LUA_AUTHOR"]    = LuaAuthor,
	["NMS_VERSION"]   = NMS_Version,
	["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]  = {"InputAction", "Quick_Right"},
							["SECTION_UP_SPECIAL"] = 1,
							["VALUE_CHANGE_TABLE"] =
							{
								{"InputButton", "MouseWheelDown"},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"]  = {"InputAction", "Quick_Left"},
							["SECTION_UP_SPECIAL"] = 1,
							["VALUE_CHANGE_TABLE"] =
							{
								{"InputButton", "MouseWheelUp"},
							},	
						},
					}
				},
			}
		},
	}
}