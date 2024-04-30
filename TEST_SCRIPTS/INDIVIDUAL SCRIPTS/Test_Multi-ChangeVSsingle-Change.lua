NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Test_Multi-ChangeVSsingle-Change.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "Wbertro",
["LUA_AUTHOR"]				= "Wbertro",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"FingerButtonClickTime",  "0.02"},  --Original 0.2
								{"HandInteractionLightTime",  "0.03"},  --Original 0.3
								{"DoPlayerAppearInVehicleEffect",  "True"},  --Original False
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
							["LINE_OFFSET"] 	= "1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "IGNORE", 					"99" }, 		--Original "4" --line 690
							},
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
							["LINE_OFFSET"] 	= "2",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "IGNORE", 					"99" }, 		--Original "6" --line 691
							},
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
							["LINE_OFFSET"] 	= "3",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "IGNORE", 					"99" }, 		--Original "8" --line 692
							},
						},
            
						--alternate way to do the same as the preceding 3 sections!!!
						{
							["PKW"] = {"JetpackTankTimes"},
							["LINE_OFFSET"] 	= "1",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{ "IGNORE", 					"99" }, 		--Original "4" --lines 690-2
								{ "IGNORE", 					"99" }, 		--Original "6"
								{ "IGNORE", 					"99" }, 		--Original "8"
							},
						},
						
					},
				},
			},
		},
	},	--9 global replacements
}