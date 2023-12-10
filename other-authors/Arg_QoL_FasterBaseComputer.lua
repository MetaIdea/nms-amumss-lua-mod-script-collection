--[[

	Name:
		Argual's Quality of Life Faster Base Computer

	Description:
		Reduces base computer wait times from 1h 30m to 5m.

	Modified files:
		METADATA\SIMULATION\MISSIONS\BASECOMPUTERMISSIONTABLE.MBIN

--]]

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Arg_QoL_FasterBaseComputer.pak",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "Argual",
  ["NMS_VERSION"]				= "3.10",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\MISSIONS\BASECOMPUTERMISSIONTABLE.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "Stage" },
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "5400",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Time", 60*5}, -- Original: 5400
							}	
						},
					}
				},
			}
		},
	}
}
