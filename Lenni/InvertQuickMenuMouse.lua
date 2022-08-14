NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "InvertQuickMenuMouse.pak",
["MOD_AUTHOR"]		= "Lenni",
["NMS_VERSION"]		= "3.98+",
["MOD_DESCRIPTION"]	= "Inverts the mouse wheel in the quick menu",
["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\INPUT\BINDINGS\GCINPUTBINDINGS_WIN_MOUSE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"InputAction","Quick_Left",},
							["SECTION_UP"]			= 1,
							["VALUE_CHANGE_TABLE"]	= 
							{	
								{ "InputButton", "MouseWheelUp" }, --Original "MouseWheelDown"
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"InputAction","Quick_Right",},
							["SECTION_UP"]			= 1,
							["VALUE_CHANGE_TABLE"]	= 
							{	
								{ "InputButton", "MouseWheelDown" }, --Original "MouseWheelDown"
							}
						}
					}
				}
			}
		}
	}	
}	
