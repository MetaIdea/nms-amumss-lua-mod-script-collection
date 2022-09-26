GCINPUTBINDINGS = [[
        <Property value="GcInputBinding.xml">
          <Property name="Action" value="GcInputActions.xml">
            <Property name="InputAction" value="Ship_TurnLeft" />
          </Property>
          <Property name="Button" value="TkInputEnum.xml">
            <Property name="InputButton" value="None" />
          </Property>
          <Property name="Axis" value="TkInputAxisEnum.xml">
            <Property name="InputAxis" value="Invalid" />
          </Property>
        </Property>
        <Property value="GcInputBinding.xml">
          <Property name="Action" value="GcInputActions.xml">
            <Property name="InputAction" value="Ship_TurnRight" />
          </Property>
          <Property name="Button" value="TkInputEnum.xml">
            <Property name="InputButton" value="None" />
          </Property>
          <Property name="Axis" value="TkInputAxisEnum.xml">
            <Property name="InputAxis" value="Invalid" />
          </Property>
        </Property>
]]

ACTIONSET = [[
        <Property value="GcActionSetAction.xml">
          <Property name="Status" value="GcActionUseType.xml">
            <Property name="ActionUseType" value="Active" />
          </Property>
          <Property name="Action" value="GcInputActions.xml">
            <Property name="InputAction" value="Ship_TurnLeft" />
          </Property>
        </Property>
        <Property value="GcActionSetAction.xml">
          <Property name="Status" value="GcActionUseType.xml">
            <Property name="ActionUseType" value="Active" />
          </Property>
          <Property name="Action" value="GcInputActions.xml">
            <Property name="InputAction" value="Ship_TurnRight" />
          </Property>
        </Property>
]]


NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]		= "OldShipSteering.pak",
  ["MOD_DESCRIPTION"]	= "Steer left and right",
  ["MOD_AUTHOR"]		= "Lenni",
  ["NMS_VERSION"]		= "3.99.1",
  ["MODIFICATIONS"]		=
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
				{
                    ["MBIN_FILE_SOURCE"]	= "METADATA\INPUT\BINDINGS\GCINPUTBINDINGS_WIN_KEYBOARD.MBIN",
                    ["EXML_CHANGE_TABLE"]	=
                    {
                        {
							["SPECIAL_KEY_WORDS"]	= {"ActionSetType", "ShipControls"},
							["SECTION_UP_SPECIAL"]	= 1,
							["PRECEDING_KEY_WORDS"]	= "InputBindings",
							["ADD"] = GCINPUTBINDINGS,
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA/INPUT/GCACTIONSETS.MBIN",
                    ["EXML_CHANGE_TABLE"]	=
					{
                        {
							["SPECIAL_KEY_WORDS"]	= {"ActionSetType", "ShipControls"},
							["SECTION_UP_SPECIAL"]	= 1,
							["PRECEDING_KEY_WORDS"]	= "Actions",
							["ADD"] = ACTIONSET,
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA/INPUT/GCINPUTACTIONINFO.MBIN",
                    ["EXML_CHANGE_TABLE"]	=
					{
                        {
							["PRECEDING_KEY_WORDS"]	= "Ship_TurnLeft",
							["VALUE_CHANGE_TABLE"]	=
								{
									{"LocTag", "SHIP_TURNLEFT"}
								},
						},
                        {
							["PRECEDING_KEY_WORDS"]	= "Ship_TurnRight",
							["VALUE_CHANGE_TABLE"]	=
								{
									{"LocTag", "SHIP_TURNRIGHT"}
								},
						},
					},
				}
            }
        }
    }
}