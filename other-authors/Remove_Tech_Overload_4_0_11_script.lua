

----------Remove Tech Overload----------

	NUMBER_SAME_TECH = 9999		-- How many mods of the same type you can equip without triggering technology overload;
								-- mod default is 9999; vanilla default is 3;
								
	--(bugged) TECH_SLOT_ONLY = "False"	-- This value defines if tech can only be installed in the tech inventory, when set to "False"
								-- it allows to equip tech in any inventory you normally could not, eg. the cargo inventory;
								-- vanilla default is "True";
	

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"]             = "_Remove_Tech_Overload_4_0_11.pak", 
	["MOD_AUTHOR"]               = "chronicallybored",
	["NMS_VERSION"]              = "4.52",
	["MOD_DESCRIPTION"]          = "Removes technology overload and enables tech in cargo slots (deactivated for now since it's bugged).",
	["MODIFICATIONS"]            = 

	{
		{	--- Remove Tech Overload ---
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{								
							["VALUE_CHANGE_TABLE"] 	= 
							{	--- Tech Overload Removal and enable tech in cargo slots ---
								{"MaxNumSameGroupTech", 		NUMBER_SAME_TECH},
								--(bugged) {"TechMustBeInTechInventory", 	TECH_SLOT_ONLY},
							}
						}
					}	
				}
			}
		}
	}
}