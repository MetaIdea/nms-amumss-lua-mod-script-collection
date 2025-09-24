NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Convenient Corvette Teleporters 1.5.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "6.05",
["MOD_DESCRIPTION"]			= "This mod improves Corvette teleportes placements",
["MODIFICATIONS"] 			= 
	{
		{					
			["MBIN_CHANGE_TABLE"] 	= 
			{	
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\SPACE\SPACESTATION\MODULARPARTSTYPEB\DOCK\BACK_SECTION.SCENE.MBIN",   
					["MXML_CHANGE_TABLE"] 	= 
					{	--Position of eack corvette pad teleporter
						{
							["SPECIAL_KEY_WORDS"]  = {{"Name","BiggsTele1REF"}, {"Name","BiggsTele1ABaseREF"},  },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX", "0.000000"}, 
								{"TransZ", "33.0958633"},
							},
						},									
						{
							["SPECIAL_KEY_WORDS"]  = {{"Name","BiggsTele2REF"}, {"Name","BiggsTele2ABaseREF"},  },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX", "0.000000"}, 
								{"TransZ", "153.095856"},
							},
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {{"Name","BiggsTele3REF"}, {"Name","BiggsTele3ABaseREF"},  },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX", "0.000000"}, 
								{"TransZ", "273.095900"},
							},
						},							
						{
							["SPECIAL_KEY_WORDS"]  = {{"Name","BiggsTele4REF"}, {"Name","BiggsTele4ABaseREF"},  },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX", "0.000000"}, 
								{"TransZ", "393.095856"},
							},
						},	
						{  --Rotation of the 4 teleporters near shops
							["SPECIAL_KEY_WORDS"]  = {{"Name","BiggsTele1BRef"}, {"Name","BiggsTele2BRef"}, {"Name","BiggsTele3BRef"}, {"Name","BiggsTele4BRef"}, },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY", "90.000000"}, 
							},
						},				
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARINTERIOR.SCENE.MBIN",
											"MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\HANGARINTERIORPIRATE.SCENE.MBIN",  },					
					["MXML_CHANGE_TABLE"] 	= 
					{	--Position of freighter corvette teleporters
						{
							["SPECIAL_KEY_WORDS"]  = {{"Name","RefBiggsTeleporter"},  },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX", "20.95"}, --original 22.6
								{"TransZ", "13.4"}, --original 66
								{"RotY", "90.000000"}, 
							},
						},		
						{
							["SPECIAL_KEY_WORDS"]  = {{"Name","RefBiggsTeleporter1"}, },
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TransX", "-20.95"}, --original -22.6
								{"TransZ", "13.4"}, --original 66
								{"RotY", "-90.000000"}, 
							},
						},							
					},
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"MODELS\COMMON\SPACECRAFT\BIGGS\BIGGSTELEPORTER_FREIGHTERS.SCENE.MBIN", },					
					["MXML_CHANGE_TABLE"] 	= 
					{	--Direction when exiting teleporters
						{
							["SPECIAL_KEY_WORDS"]  = {{"Type","LOCATOR"}, },  -- interaction point / "REFERENCE" turns TP but not player
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"RotY", "-90.000000"},  --original 0
							},
						},								
					},
				},
			}
		}
	}	
}


  
