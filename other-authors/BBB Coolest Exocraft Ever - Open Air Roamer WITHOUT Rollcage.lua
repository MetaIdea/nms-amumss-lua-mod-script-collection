NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BBB Coolest Exocraft Ever - Open Air Roamer WITHOUT Rollcage.pak",
["MOD_AUTHOR"]      = "BigBuffaloBill",
["NMS_VERSION"]     = "5.1.1",
["MOD_DESCRIPTION"] = "Removes many of the front interior parts of a Roamer ExoCraft to make it look open while in 1st person mode or in VR",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {                
				--[[ Begin Interior ]]--
				{                    
					["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\SHARED\INTERIOR\COCKPITCHAIR.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "padding"},
								{"Name", "door"},
								{"Name", "asymmetry"},
								{"Name", "center"},
								{"Name", "concolebox"},
								{"Name", "vent"},
								{"Name", "pedal"},								
								{"Name", "base"},
								{"Name", "base2"},
								{"Name", "polySurface1711_3"},
								{"Name", "polySurface1712_3"},
								{"Name", "polySurface1713_3"},
								{"Name", "polySurface1711_4"},
								{"Name", "polySurface1712_4"},
								{"Name", "polySurface1713_4"},
								{"Name", "pSphere156"},
								{"Name", "polySurface1711_5"},
								{"Name", "polySurface1712_5"},
								{"Name", "polySurface1921"},
								{"Name", "polySurface1713_5"},
								{"Name", "polySurface1711"},
								{"Name", "polySurface1712"},
								{"Name", "polySurface1713"},
								{"Name", "polySurface1711_2"},
								{"Name", "polySurface1712_2"},
								{"Name", "polySurface1713_2"},
								{"Name", "glass"},
								{"Name", "polySurface108"},
								{"Name", "Dasboard"},
								{"Name", "pSphere157"},
								{"Name", "pSphere158"},
								
                            },
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
				--[[ End Interior ]]--
				
				
				
				--[[ Begin Exterior ]]--
				{                    
					["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\BIKE\BIKEPRES.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        
						
						--[[Begin Remove Parts]]--
						
						{
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "Bike"},
                                {"Name", "SUB1Body"},
								
                            },
                            ["REMOVE"] = "SECTION"
                        },	
												
						--[[End Remove Parts  ]]-- 
						
						--[[Begin Move canopy piece hide it but leave the Cockpit positon locator  ]]--
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","Body"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                    			{"TransY", "-0.608494"}, --[[Original -0.012973]]--
								{"TransZ", "-1.39989"}, --[[Original -0.667377]]--
								
				
								
                            },
						},	
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","COCKPITPOS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "1.900732"}, --[[original 1.305211, this one moves us up after parent moved down.]]--
								{"TransZ", "-0.744615"}	--[[original -0.012102 this one moves back]]--
															
                            },
							
                        },
						
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","Underside"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "0.257138"},  --[[Original 0]]--
								{"TransZ", "-0.183501"}, --[[original 0]]--	
															
                            },
							
                        },
						
                    }
                },
							
		
				{                    
					["MBIN_FILE_SOURCE"] = "MODELS\COMMON\VEHICLES\BIKE\BIKECOCKPIT.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        --[[Begin Remove Parts]]--
						{
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "BodyBike21"},
								{"Name", "polySurface1926"},														
								{"Name", "rollcage6"},
								{"Name", "rollcage7"},
								{"Name", "canister"},
								{"Name", "canister1"},
								{"Name", "Box"},
								{"Name", "Box1"},
								{"Name", "Box3"},
								{"Name", "SideMonitor1_R_Ref"},
								
                            },
                            ["REMOVE"] = "SECTION"
                        },						
						--[[End Remove Parts ]]-- 
						
						--[[Begin Move Handles Out  ]]-- 
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","LHandRailStartPos"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                    			{"TransX", "0.360129"}, --[[Original 0.160129]]--
								{"TransZ", "0.442937"}, --[[Original 0.642937]]--								
								
                            },
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","LHandRailEndPos"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                    			{"TransX", "0.360129"}, --[[Original 0.160129]]--
								{"TransZ", "0.442937"}, --[[Original 0.642937]]--
                            },
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","LHandRailPosition"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                    			{"TransX", "0.360129"}, --[[Original 0.160129]]--
								{"TransZ", "0.442937"}, --[[Original 0.642937]]--
                            },
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","EjectHandleLREF"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                    			{"TransX", "0.354996"}, --[[Original 0.154996]]--
								{"TransZ", "0.428568"}, --[[Original 0.628568]]--
                            },
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","RHandRailStartPos"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                    			{"TransX", "-0.360129"}, --[[Original -0.163268]]--
								{"TransZ", "0.442937"}, --[[Original 0.642322]]--
                            },
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","RHandRailEndPos"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                    			{"TransX", "-0.360129"}, --[[Original -0.163268]]--
								{"TransZ", "0.442937"}, --[[Original 0.642322]]--
                            },
						},
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","RHandRailPosition"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                    			{"TransX", "-0.360129"}, --[[Original 0.160129]]--
								{"TransZ", "0.442937"}, --[[Original 0.642937]]--
                            },
						},						
						{
                            ["SPECIAL_KEY_WORDS"] = {"Name","EjectHandleRREF"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                    			{"TransX", "-0.354996"}, --[[Original -0.158471]]--
								{"TransZ", "0.428568"}, --[[Original 0.628803]]--
                            },
						},		
						--[[End Move Handles Out  ]]-- 
					
                    }
                },
				--[[ End Exterior ]]--
				
				
				
				
				
				
				
            }
        },
    }
}