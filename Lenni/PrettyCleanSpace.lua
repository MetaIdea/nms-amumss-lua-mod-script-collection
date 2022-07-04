NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "PrettyCleanSpace.pak", 
["MOD_AUTHOR"]				= "Lo2k, NeptuneX3, Wombi, Lenni",
["LUA_AUTHOR"]				= "Lenni",
["NMS_VERSION"]				= "3.93",
["MOD_DESCRIPTION"]			= "Disables all Asteroids, Dust, Speed Lines and Trade Routes",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{	--No Speed Lines - all at once by Lo2k
                    ["MBIN_FILE_SOURCE"]	= "MODELS\EFFECTS\SPEEDLINES\SPEEDLINE.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"]	= 
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]	= {"Type", "SPEEDLINE"},
							["REPLACE_TYPE"]		= "ALL",
                            ["REMOVE"]				= "SECTION",
                        },
                    },
                },
				
				{	-- No Metric Lines 1.8 by Lo2k
					["MBIN_FILE_SOURCE"]	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MiniWarpLinesNum", "0"},
							},
						},
					},
				},
				
                {	--No Space Dust 1.3 by Lo2k
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE2.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = 
							{
                                {"NumberOfParticles","0"},
                            },
                        },
                    },
                },
				
                {	-- No Space Plasma 1.3 by Lo2k
                    ["MBIN_FILE_SOURCE"]	= "MODELS\EFFECTS\HEAVYAIR\SPACE\SPACEPLASMA.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"]	= {
                        {
                            ["VALUE_CHANGE_TABLE"]	=
							{
                                {"NumberOfParticles", "0"},
                            },
                        },
                    },
                },
				
				{	--Invisible Trade Route Lines by NeptuneX3 for Clean Space Origins
					["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							-- Stop the trade routes flickering, so they remain invisible when their Alpha Channel = 0
							["VALUE_CHANGE_TABLE"]	=
							{
								{"TradeRouteFlickerAmp", 0},
							},

						},
						{
							-- Makes the trade route lines invisible by turning their Alpha Channel to 0
							["PRECEDING_KEY_WORDS"]	= "TradeRouteColours",
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"A", 0},
							},
						},
					},
				},
				
				{	--NoAsteroids by Wombi
					["MBIN_FILE_SOURCE"] 	= "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["VALUE_CHANGE_TABLE"]	=
							{
								{ "AsteroidsEnabled", "False" },
							},
						},
					},
				},
				
				{	-- NoSpaceFog by Lenni
					["MBIN_FILE_SOURCE"]	= "GCSKYGLOBALS.GLOBALS.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["REPLACE_TYPE"]		= "ALL",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"SpaceFogStrength", "0"},
							},
						},
					},
				},
				
				{	-- NoHeavyAir by Lenni
					["MBIN_FILE_SOURCE"]	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["VALUE_CHANGE_TABLE"] =
							{
								{"UseHeavyAir", "False"},
							},
						},
					},
				},
			}
		}
	}	
}