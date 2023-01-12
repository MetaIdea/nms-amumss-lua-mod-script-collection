NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]		= "BetterShipSteering.pak",
  ["MOD_DESCRIPTION"]	= "Steer left and right",
  ["MOD_AUTHOR"]		= "Lenni",
  ["NMS_VERSION"]		= "3.99.1",
  ["MODIFICATIONS"]		=
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
			
				{
                    ["MBIN_FILE_SOURCE"]     = {"METADATA\INPUT\BINDINGS\GCINPUTBINDINGS_WIN_KEYBOARD.MBIN","METADATA/INPUT/GCACTIONSETS.MBIN"},
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InputAction", "Ship_RollLeft"},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"InputAction", "Ship_TurnLeft"}
								},
						},
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InputAction", "Ship_RollRight"},
							["VALUE_CHANGE_TABLE"] = 
								{
									{"InputAction", "Ship_TurnRight"}
								},
						},
					},
				}
            }
        }
    }
}