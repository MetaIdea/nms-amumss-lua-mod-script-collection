NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 	    = "X-Longer_Days_Less_Storms.pak",
["MOD_AUTHOR"]			= "Lowkie",
["LUA_AUTHOR"]			= "Lowkie",
["MOD_DESCRIPTION"]		= "Longer Days, Less Storms",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
                -- {
                    -- ["MBIN_FILE_SOURCE"] 	= {"GCENVIRONMENTGLOBALS.GLOBAL.MBIN"},
					-- ["EXML_CHANGE_TABLE"] 	= 
					-- {
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"LODSettings", "RegionLODRadius"},
                            -- ["REMOVE"] = "SECTION",
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = "",
                            -- ["VALUE_CHANGE_TABLE"] 	=
                            -- {
                                -- {"HeightFogHeightMin",      "200"},	--Default 100
                                -- {"PlanetEffectEndDistance", "8000"},--Default 10000
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"CloudProperties"},
                            -- ["VALUE_CHANGE_TABLE"] 	=
                            -- {
                                -- {"AnimationScale",          "15"},	--Default 50
                                -- {"CloudDistortionScale",    "2"},	--Default 1
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"CloudProperties", "WindOffset"},
                            -- ["VALUE_CHANGE_TABLE"] 	=
                            -- {
                                -- {"x",  "0.65"},	--Default 0.5
                                -- {"y",  "0.65"},	--Default 0.5
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"EnvironmentProperties"},
                            -- ["VALUE_CHANGE_TABLE"] 	=
                            -- {
                                -- {"FlightFogheight",     "900"},	--Default 50
                                -- {"FlightFogBlend",      "1300"},--Default 250
                                -- {"CloudHeightMin",      "900"},	--Default 650
                                -- {"HeavyAirHeightMin",   "850"},	--Default 700
                                -- {"HeavyAirHeightMax",   "900"},	--Default 750
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"EnvironmentPrimeProperties"},
                            -- ["VALUE_CHANGE_TABLE"] 	=
                            -- {
                                -- {"HeavyAirHeightMin",           "1450"},--Default 1900
                                -- {"HeavyAirHeightMax",           "1500"},--Default 1950
                                -- {"HorizonBlendHeight",          "1000"},--Default 1700
                                -- {"SolarSystemLUTHeight",        "1000"},--Default 2000
                                -- {"SolarSystemLUTBlendLength",   "500"},	--Default 2000
                            -- }
                        -- },                        
                    -- },
                -- },
                -- {--Keep seperate from top secion, as adds are done before deletes when both changes are in the same File source section
                    -- ["MBIN_FILE_SOURCE"] 	= {"GCENVIRONMENTGLOBALS.GLOBAL.MBIN"},
					-- ["EXML_CHANGE_TABLE"] 	= 
					-- {
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"LODSettings", "RegionLODHiddenRanges"},
                            -- ["ADD_OPTION"] = "ADDafterSECTION",
                            -- ["ADD"] = --DO NOT CHANGE Layout of XML, this spacing matches the file.
-- [[<Property name="RegionLODRadius">
        -- <Property value="5" />
        -- <Property value="7" />
        -- <Property value="16" />
        -- <Property value="12" />
        -- <Property value="10" />
        -- <Property value="10" />
      -- </Property>
-- ]]
                        -- },
                        
                    -- },
                -- },
                {
                    ["MBIN_FILE_SOURCE"] 	= {"GCSKYGLOBALS.GLOBALS.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 
					{
						{--Root
							["VALUE_CHANGE_TABLE"] 	=
                            {
                                {"DayLength",				            "8500"},	--Default 1800  
                                {"SafeSkyMaxIndex",			            "342"},	    --Default 5     
                                {"FrozenSkyMaxIndex",				    "342"},	    --Default 0      
                                {"StormScreenFilterFadeTime",		    "2"},	    --Default 1     
                                {"MinTimeBetweenStormsLow",             "9999999"},   --Default 900   -Lowkie from ? => 9999999
                                {"MaxTimeBetweenStormsLow",             "9999999"},   --Default 2400  -Lowkie from ? => 9999999
                                {"MinTimeBetweenStormsHigh",            "9999999"},	--Default 120   -Lowkie from 480 => 9999999
                                {"MaxTimeBetweenStormsHigh",            "9999999"},   --Default 620   -Lowkie from 2500 => 9999999
                                {"MinTimeBetweenStormsExtremeFallback", "9999999"},   --Default 240   -Lowkie from 960 => 9999999
                                {"MaxTimeBetweenStormsExtremeFallback", "9999999"},   --Default 620   -Lowkie from 2500 => 9999999
                                --{"StormWarningTime",				    "20"},      --Default 25
                                --{"StormTransitionTime",				    "60"},      --Default 20                                 
                                {"MinStormLengthLow",                   "1"},        --120
                                {"MaxStormLengthLow",                   "1"},        --180
                                {"MinStormLengthHigh",                  "1"},        --150
                                {"MaxStormLengthHigh",                  "1"},        --320
                                {"MaxCloudCover",				        "0.6"},     --Default 0.8
                                {"MaxStormCloudCover",				    "0.7"},     --Default 0.8
                                {"CloudCoverSmoothTime",                "20"},      --Default 10
                                {"CloudRatioSmoothTime",                "20"},      --Default 4
                                {"StormCloudTopColourMinBlend",         "0"},       --Default 0.3
                                {"StormCloudTopColourMaxBlend",         "0.5"},     --Default 0.75
                                {"StormCloudBottomColourMinBlend",      "0"},       --Default 0.5
                                {"StormCloudBottomColourMaxBlend",      "0.5"},     --Default 0.9
                                {"MinSunsetFade",                       "0.33"},    --Default 0.4 
                                {"MaxSunsetFade",                       "0.53"},    --Default 0.5
                                {"MinSunsetHorizonFade",                "0.33"},    --Default 0.4
                                {"MaxSunsetHorizonFade",                "0.53"},    --Default 0.5
                                {"MinNightFade",                        "0.55"},    --Default 0.61
                                {"MaxNightFade",                        "0.73"},    --Default 0.98
                                {"MinSunsetPosFade",                    "0.73"},    --Default 0.72
                                {"MaxSunsetPosFade",                    "0.77"},    --Default 0.65
                                {"MinSunsetFogFade",                    "0.7"},     --Default 0.7
                                {"MaxSunsetFogFade",                    "0.75"},    --Default 0.65
                                {"MinSunsetAtmosphereFade",             "0.7"},     --Default 0.7
                                {"MaxSunsetAtmosphereFade",             "0.75"},    --Default 0.65
                                {"MinSunsetColourFade",                 "0.7"},     --Default 0.7
                                {"MaxSunsetColourFade",                 "0.75"},    --Default 0.65
                                {"MinSaturation",                       "0.3"},     --Default 0.65
                                {"MaxSaturation",                       "0.3"},     --Default 0.65
                                {"NoAtmosphereFogStrength",				"0.09"},	--Default 0.3 
                                {"NoAtmosphereFogMax",				    "0.05"},	--Default 0.87 -Lowkie from 0.95 => 0.05
                                --{"BinaryStarChance",				    "0.05"},	  --Default 0.2 --LOWKIE Remove
                                --{"TernaryStarChance",				    "0.025"},	  --Default 0.05 --LOWKIE Remove
                                {"WeatherBloomGain",				    "5"},	    --Default 7.1
                                --{"RainWetnessFadeInTime",				"40"},	      --Default 15 --LOWKIE Remove
                                --{"RainWetnessFadeOutTime",				"60"},    --Default 30 --LOWKIE Remove
                            }
                        },
                        -- {   
                            -- ["INTEGER_TO_FLOAT"] = "FORCE",
							-- ["VALUE_CHANGE_TABLE"] 	=
                            -- {
                                -- {"MaxRainWetness",				        "0.6"}, --Default 1
                            -- }
                        -- },                    
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetFog"},
                            -- ["INTEGER_TO_FLOAT"] = "FORCE",
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                -- {"FogMax",                     "0.5"}, --Default 1 -Lowkie from 0.95 => 0.5
                            -- }
                        -- },                    
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetFog"},
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                -- {"HeightFogStrength",          "0.1"},	--Default 0.08
                                -- {"HeightFogFadeOutStrength",   "0.5"},	--Default 0.25
                                -- {"HeightFogMax",               "0.98"}, --Default 0.8
                                -- {"DepthOfFieldDistance",       "10"},   --Default 700
                            -- }
                        -- },                  
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetExtremeFog"},
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                -- {"FogStrength",                "0.15"}, --Default 0.5
                                -- {"FogMax",                     "0.05"}, --Default 0.9 -Lowkie from 0.9 => 0.05
                                -- {"FogColourStrength",          "10"},   --Default 6
                                -- {"HeightFogStrength",          "0.1"},	--Default 0.3
                                -- {"HeightFogFadeOutStrength",   "0.5"},	--Default 0.4
                                -- {"HeightFogMax",               "0.98"}, --Default 0.6
                                -- {"FogHeight",                  "128"},  --Default 8
                                -- {"DepthOfFieldDistance",       "10"},   --Default 700
                            -- }
                        -- },                  
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetStormFog"},
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                -- {"FogStrength",                "0.25"}, --Default 1.5
                                -- {"FogColourStrength",          "10"},   --Default 2.5
                                -- {"HeightFogStrength",          "0.1"},	--Default 0.5
                                -- {"HeightFogFadeOutStrength",   "0.5"},  --Default 0.3
                                -- {"HeightFogMax",               "0.98"}, --Default 0.6
                                -- {"FogHeight",                  "128"},  --Default 4
                                -- {"DepthOfFieldDistance",       "10"},   --Default 400
                                -- {"DepthOfFieldFade",           "1000"}, --Default 200
                            -- }
                        -- },                  
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetFlightFog"},
                            -- ["INTEGER_TO_FLOAT"] = "FORCE",
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                -- {"FogMax",                     "0.05"},--Default 1-Lowkie from 0.95 => 0.05
                            -- }
                        -- },                  
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PlanetProperties", "PlanetFlightFog"},
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                -- {"HeightFogStrength",          "0.1"},	--Default 1.5
                                -- {"HeightFogFadeOutStrength",   "0.5"},	--Default 0.25
                                -- {"HeightFogMax",               "0.98"}, --Default 0.6
                                -- {"DepthOfFieldDistance",       "10"},   --Default 700
                            -- }
                        -- },                  
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetSky"},
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                -- {"SunSize",                  "0.4"},   --Default 0.25
                                -- {"SunSurroundSize",          "12"},     --Default 10
                                 
                            -- }
                        -- },                
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties","PlanetFog"},
                            -- ["INTEGER_TO_FLOAT"] = "FORCE",
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                -- {"HeightFogStrength",          "0.3"},	--Default 1
                                -- {"HeightFogFadeOutStrength",   "0.8"},	--Default 1
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetFog"},
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                -- --{"FogStrength",                "0.04"}, --Default 0.035
                                -- {"FogMax",                     "0.05"}, --Default 0.8-Lowkie from 0.95 => 0.05
                                -- {"FogColourMax",               "1"},    --Default 0.9
                                -- {"HeightFogMax",               "0.98"}, --Default 0.9
                                -- {"FogHeight",                  "192"},  --Default 1024
                                -- {"DepthOfFieldDistance",       "10"},   --Default 700
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetExtremeFog"},
                            -- ["INTEGER_TO_FLOAT"] = "FORCE",
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                                                
                                -- {"HeightFogMax",               "0.98"}, --Default 0
                                -- {"HeightFogStrength",          "0.3"},  --Default 0
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetExtremeFog"},
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                -- {"FogStrength",                "0.15"}, --Default 0.5
                                -- {"FogMax",                     "0.05"}, --Default 0.9-Lowkie from 0.95 => 0.05
                                -- {"HeightFogFadeOutStrength",   "0.8"},	--Default 0.1
                                -- {"FogColourStrength",          "10"},   --Default 6
                                -- {"FogHeight",                  "192"},  --Default 8
                                -- {"DepthOfFieldDistance",       "10"},   --Default 700
                            -- }
                        -- },                
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetStormFog"},
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                -- {"FogStrength",                "0.25"}, --Default 1.5
                                -- {"FogColourStrength",          "10"},   --Default 2.5
                                -- {"HeightFogStrength",          "0.3"},	--Default 0.5
                                -- {"HeightFogFadeOutStrength",   "0.8"},	--Default 0.3
                                -- {"HeightFogMax",               "0.98"}, --Default 0.6
                                -- {"FogHeight",                  "192"},  --Default 4
                                -- {"DepthOfFieldDistance",       "10"},   --Default 400
                                -- {"DepthOfFieldFade",           "1000"}, --Default 500
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"PlanetPrimeProperties", "PlanetFlightFog"},
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                -- {"FogMax",                     "0.05"}, --Default 0.8-Lowkie from 0.95 => 0.05
                                -- {"HeightFogStrength",          "0.3"},	--Default 0.15
                                -- {"HeightFogFadeOutStrength",   "0.8"},  --Default 0.25
                                -- {"HeightFogMax",               "0.98"}, --Default 0.6
                                -- {"FogHeight",                  "192"},  --Default 1024
                                -- {"DepthOfFieldDistance",       "10"},   --Default 700
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"SpaceSkyMin"},
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                 -- {"SunStrength",                "0.4"},     --Default 0.6
                                 -- {"SunSize",                    "0.002"},   --Default 0.005
                                 -- {"SpaceFogMax",                "0.6"},     --Default 0.7
                                 -- --{"SpaceFogPlanetMax",          "0.7"},     --Default 0 --LOWKIE Remove
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"SpaceSkyMax"},
                            -- ["VALUE_CHANGE_TABLE"]  =   
                            -- {
                                -- {"SunStrength",                "0.8"},  --Default 0.6
                                -- {"SunSize",                    "0.01"},	--Default 0.005
                                -- {"SpaceFogMax",                "0.6"},	--Default 0.7-Lowkie from 0.8 => 0.6
                                -- --{"SpaceFogPlanetMax",           "0.7"}, --Default 0 --LOWKIE Remove
                                -- {"NebulaDistortionStrength",   "0.4"},  --Default 0.2
                            -- }
                        -- },
                    },
                },
            },
        },
    }
}