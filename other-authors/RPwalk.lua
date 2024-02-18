NMS_MOD_DEFINITION_CONTAINER	=
{
  ["MOD_FILENAME"]	= "RPwalk.pak",
  ["MOD_DESCRIPTION"]	= "Realistic Walking for Immersion",
  ["MOD_AUTHOR"]	= "earlyPlanet",
  ["NMS_VERSION"]	= "4.51",
  ["MODIFICATIONS"]	=	
	{
		{
			["MBIN_CHANGE_TABLE"]	=
			{ 
				{
					["MBIN_FILE_SOURCE"]	=	"GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["VALUE_CHANGE_TABLE"]	=
							{
								{"GroundWalkSpeed",	"2.2",},
								{"GroundRunSpeed","6",}
							}	
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]	=	"GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["VALUE_CHANGE_TABLE"]	=
							{
								{"BobAmount","0.11",},
								{"BobFactor","0.35",}
							}	
						},
					}
				}
			}
		},
	}
}