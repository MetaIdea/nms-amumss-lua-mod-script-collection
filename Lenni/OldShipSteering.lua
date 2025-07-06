NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"]		= "OldShipSteering.pak",
  ["MOD_DESCRIPTION"]	= "Steer left and right",
  ["MOD_AUTHOR"]		= "Lenni",
  ["NMS_VERSION"]		= "5.50",
  ["MODIFICATIONS"]		=
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
				{
                    ["MBIN_FILE_SOURCE"]	= "METADATA\INPUT\BINDINGS\GCINPUTBINDINGS_WIN_KEYBOARD.MBIN",
                    ["EXML_CHANGE_TABLE"]	=
                    {
                        {
							["SKW"]					=	{"InputBindings", "GcInputBinding"},
							["SEC_COPY"]			=	"KeyboardInput",
						},
                        {
							["SEC_EDIT"]			=	"KeyboardInput",
							["VCT"]					=
							{
								{"InputAction", "Ship_TurnLeft"},
								{"InputButton", "None"},
								{"InputAxis", "Invalid"},
							}
						},
                        {
							["SKW"]					=	{"ActionSetType", "ShipControls"},
							["SECTION_UP_SPECIAL"]	=	1,
							["PKW"]					=	"InputBindings",
							["SEC_PASTE"]			=	"KeyboardInput",
						},
                        {
							["SEC_EDIT"]			=	"KeyboardInput",
							["VCT"]					=
							{
								{"InputAction", "Ship_TurnRight"},
							}
						},
                        {
							["SKW"]					=	{"ActionSetType", "ShipControls"},
							["SECTION_UP_SPECIAL"]	=	1,
							["PKW"]					=	"InputBindings",
							["SEC_PASTE"]			=	"KeyboardInput",
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA/INPUT/GCACTIONSETS.MBIN",
                    ["EXML_CHANGE_TABLE"]	=
					{
                        {
							["SKW"]			=	{"Actions", "GcActionSetAction"},
							["SEC_COPY"]	=	"ActionSet",
						},
                        {
							["SEC_EDIT"]	=	"ActionSet",
							["VCT"]			=
							{
								{"ActionUseType", "Active"},
								{"InputAction", "Ship_TurnLeft"},
							}
						},
                        {
							["SKW"]			=	{"ExternalId", "ShipControls"},
							["PKW"]			=	"Actions",
							["SEC_PASTE"]	=	"ActionSet",
						},
                        {
							["SEC_EDIT"]	=	"ActionSet",
							["VCT"]			=
							{
								{"InputAction", "Ship_TurnRight"},
							}
						},
                        {
							["SKW"]			=	{"ExternalId", "ShipControls"},
							["PKW"]			=	"Actions",
							["SEC_PASTE"]	=	"ActionSet",
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"]	= "METADATA/INPUT/GCINPUTACTIONINFO.MBIN",
                    ["EXML_CHANGE_TABLE"]	=
					{
                        {
							["PKW"]	= "Ship_TurnLeft",
							["VCT"]	=
								{
									{"LocTag", "SHIP_TURNLEFT"}
								},
						},
                        {
							["PKW"]	= "Ship_TurnRight",
							["VCT"]	=
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