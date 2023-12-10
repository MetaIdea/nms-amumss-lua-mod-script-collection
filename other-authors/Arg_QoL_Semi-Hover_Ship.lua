--[[

	Name:
		Argual's Quality of Life Semi-Hover Ship

	Description:
		Greatly reduces minimum ship speed on planets (from 20 u/s to 5 u/s). Ships still can not hover!

	Modified files:
		GCSPACESHIPGLOBALS.GLOBAL.MBIN

--]]

-- Settings:
	
	-- Minimum ship speed (u/s) on planets. Set value to 0 to make ships be able to hover in place.
		-- Original: 20
	ShipPlanetMinSpeed	= 5

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Arg_QoL_Semi-Hover_Ship.pak",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "Argual",
  ["NMS_VERSION"]				= "3.10",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCSPACESHIPGLOBALS.GLOBAL.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "PlanetEngine" },
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",	ShipPlanetMinSpeed},
							}	
						},
					}
				},
			}
		},
	}
}
