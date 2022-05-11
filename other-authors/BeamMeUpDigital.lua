--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "IanM32.Beam Me Up Digital.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Changes the 'beaming' effect when the player enters or exits a vehicle.",         --optional, for reference
  ["MOD_AUTHOR"]				= "IanM32",         --optional, for reference
  ["NMS_VERSION"]				= "3.8+",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\EFFECTS\PLAYER\PLAYERSPAWN\FXCYLINDERSMALL_MAT.MATERIAL.MBIN","MODELS\EFFECTS\PLAYER\PLAYERSPAWN\FXCYLINDERWIBBLE_MAT.MATERIAL.MBIN"},  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, must be a file in PAK_FILE_SOURCE
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Map", "TEXTURES\EFFECTS\PLAYER\WARPZONESQUARE.DDS"}, --Original --first is "property name/value", second is "new value" (one or the other can be "IGNORE" in some cases), see Script_Rules.txt
							}	
						},
					}
				},
                {
                ["MBIN_FILE_SOURCE"] 	= {"MODELS\EFFECTS\PLAYER\PLAYERSPAWN\PLAYEREMBER_MAT.MATERIAL.MBIN"},  --{ a_comma_separated_list_of.MBINs, } - REQUIRED, must be a file in PAK_FILE_SOURCE
                ["EXML_CHANGE_TABLE"] = 
                {
                    {
                        ["VALUE_CHANGE_TABLE"] 	= 
                        {
                            {"Map", "TEXTURES\EFFECTS\PLAYER\WARPEMBERSQUARE.DDS"},
                        }	
                    },
                }
            },
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE