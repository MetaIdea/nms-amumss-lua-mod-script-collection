NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]	= "_FasterSpaceshipDockingRotationInstant.pak",
["MOD_AUTHOR"]		= "Fiatpax -- LUA Script by gango90 aka netjunk",
["NMS_VERSION"]		= "3.88",
["MOD_DESCRIPTION"]	= "instant docking rotation",
["MODIFICATIONS"]	=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["VALUE_CHANGE_TABLE"] 		=
							{
								{"DockingRotateSpeed",100},			--default "1"
							}
						}
					}
				}
			}
		}
	}
}
