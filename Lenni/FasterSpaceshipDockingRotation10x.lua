NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]	= "_FasterSpaceshipDockingRotation10x.pak",
["MOD_AUTHOR"]		= "Fiatpax -- LUA Script by gango90 aka netjunk",
["NMS_VERSION"]		= "3.88",
["MOD_DESCRIPTION"]	= "10x faster docking rotation",
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
								{"DockingRotateSpeed",10},			--default "1"
							}
						}
					}
				}
			}
		}
	}
}
