--[[

	Name:
		Argual's Quality of Life Faster UI

	Description:
		Reduces the wait times during dialogs and hold-to-confirm actions.
			Reduces the time it takes for dialog texts to show up.
			Reduces the time it takes for dialog options to show up.
			Reduces the time it takes to hold button/mouse to confirm actions.
			Removes parallax effect from all menus.

	Modified files:
		GCUIGLOBALS.GLOBAL.MBIN
		METADATA\UI\SPECIALTEXTPUNCTUATIONDELAYDATA.MBIN

--]]

-- Settings:

	-- Dialog text print speed multiplier. Value 10 results in dialog text appearing 10 times faster.
		-- Original: 1
	DialogTextPrintSpeedMultiplier = 10

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "Arg_QoL_Faster_UI.pak",
  ["MOD_DESCRIPTION"]		= "",
  ["MOD_AUTHOR"]				= "Argual",
  ["NMS_VERSION"]				= "3.10",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCUIGLOBALS.GLOBAL.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = { },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RefinerPadStartTime",							0.3},		-- Original: 1
								{"FrontendWaitResponse",						0.4},		-- Original: 0.8
								{"FrontendWaitInitial",							0.5},		-- Original: 1.5
								{"FrontendWaitInitialTerminal",					0.2},		-- Original: 0.5
								{"FrontendWaitFadeTextOut",						0.2},		-- Original: 0.5
								{"FrontendWaitFadeTextFrameOut",				0.1},		-- Original: 0.2
								{"FrontendWaitFadeProgressiveDialogOut",		0.1},		-- Original: 0.2
								{"FrontendWaitResponseOffset",					0.1},		-- Original: 0.2
								{"FrontendConfirmTimeMouseMultiplier",			1.0},		-- Original: 0.5
								{"FrontendConfirmTimeFast",						0.15},	-- Original: 0.35
								{"FrontendConfirmTime",							0.35},	-- Original: 0.7
								{"FrontendConfirmTimeSlow",						0.7},		-- Original: 1.6
								{"TargetParallaxMouseMultiplier",				0},		-- Original: 0.36
								{"TargetParallaxMaintenancePageMultiplier",		0},		-- Original: 0.1
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = { "RefinerParallax" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	0},	-- Original: 0.12
								{"y",	0},	-- Original: 0.06
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = { "ModelViewWorldParallax" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	0},	-- Original: 0.12
								{"y",	0},	-- Original: 0.06
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = { "NGuiModelParallax" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	0},	-- Original: 0.6222
								{"y",	0},	-- Original: 0.35
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = { "NGuiShipInteractParallax" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	0},	-- Original: 0.062
								{"y",	0},	-- Original: 0.035
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = { "InteractionWorldParallax" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	0},	-- Original: 0.12
								{"y",	0},	-- Original: 0.12
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = { "NGuiMin2DParallax" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	0},	-- Original: 160
								{"y",	0},	-- Original: 90
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = { "NGuiMax2DParallax" },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x",	0},	-- Original: 160
								{"y",	0},	-- Original: 90
							}	
						},
					}
				},
			}
		},
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\UI\SPECIALTEXTPUNCTUATIONDELAYDATA.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = { },
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Delay",	(1/DialogTextPrintSpeedMultiplier)},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = { },
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DefaultDelay",	(1/DialogTextPrintSpeedMultiplier)},
							}	
						},
					}
				},
			}
		},
	}
}
