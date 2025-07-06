

----------Remove Tech Overload----------

	NUMBER_SAME_TECH = 9999		-- How many mods of the same type you can equip without triggering technology overload;
								-- mod default is 9999; vanilla default is 3;
								
	--(bugged/ignore) TECH_SLOT_ONLY = "False"	-- This value defines if tech can only be installed in the tech inventory, when set to "False"
								-- it allows to equip tech in any inventory you normally could not, eg. the cargo inventory;
								-- vanilla default is "True";


NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"]             = "cb Remove Technology Overload", 
	["MOD_AUTHOR"]               = "chronicallybored",
	["NMS_VERSION"]              = "5.61",
	["MOD_DESCRIPTION"]          = "Removes technology overload",
	["MODIFICATIONS"]            = 

	{
		{	
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{								
							["VALUE_CHANGE_TABLE"] 	= 
							{	--- Tech Overload Removal ---
								{"MaxNumSameGroupTech", 		NUMBER_SAME_TECH},
								--(bugged/ignore) {"TechMustBeInTechInventory", 	TECH_SLOT_ONLY},
							}
						},
					}	
				}
			}
		},
	}
}