NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "zzzzzzzzzzzActivateDebugGUI.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PreloadToolbox",				"True"}, 	-- Original "True"
								--{"ProceduralModelsShown",		"30"},		-- Original "30"
								--{"ProceduralModelBatchSize",	"30"},		-- Original "30"
								--{"BootMode",					"Scratchpad"},		-- Original "SolarSystem"	
-- { MinimalSolarSystem, SolarSystem, GalaxyMap, SmokeTest, SmokeTestGalaxyMap, Scratchpad, UnitTest }								
							}
						}
					}
				}
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\IMGUIWINDOWDEFAULTS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"]        = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WindowOpen",				"True"}, 	-- Original "False"				
								{"Maximised",				"True"}, 	-- Original "False"			
								{"WindowUsed",				"True"}, 	-- Original "False"			
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\UI\LAYOUTS\EFFECTEDITLAYOUTDEFAULT.MBIN", "METADATA\UI\LAYOUTS\SCRACHPADLAYOUTDEFAULT.MBIN" }
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["REPLACE_TYPE"]        = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WindowState",				"Opened"}, 	-- Original "False"	
							}
						}
					}
				},				
			}
		}
	}	
}