NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 		= "No Alien Words",
  ["MOD_DESCRIPTION"]	= "makes all unlearned words show as english instead alien, does not prevent learning words",         --optional, for reference
  ["MOD_AUTHOR"]			= "Babscoole",
  ["NMS_VERSION"]			= "6.10",
  ["MODIFICATIONS"] 	=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = {"GCDEBUGOPTIONS.GLOBAL.MBIN"},
					["MXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"DoAlienLanguage",	"false"},
							}	
						},
					}
				},
			}
		},
	}
}
