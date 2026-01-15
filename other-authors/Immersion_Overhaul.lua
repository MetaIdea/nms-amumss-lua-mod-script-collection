-- =============================================================================
-- MOD: ULTIMATE ENVIRONMENTAL IMMERSION OVERHAUL
-- Targets: GCENVIRONMENTGLOBALS and GCGRAPHICSGLOBALS
-- Enhanced LOD for better grass/object visibility during flight
-- =============================================================================

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "Immersion Overhaul FINAL.pak",
    ["MOD_AUTHOR"]      = "Goldenveins & Gemini",
    ["NMS_VERSION"]     = "6.18",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            -- LOCK ALL LOD TO MAX (0 to 4) - Improves all object detail
                            ["PRECEDING_KEY_WORDS"] = {"LODSettings", "Low", "LODAdjust"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  = {
                                {"LODAdjust", "1.000000"} 
                            }
                        },
                        {
                            -- INCREASE PLANET LOD DISTANCES - Better grass/vegetation render distance
                            ["PRECEDING_KEY_WORDS"] = {"EnvironmentProperties"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"PlanetObjectSwitch",    "1400.000000"},  -- Vanilla: 700
                                {"PlanetLodSwitch0",      "600.000000"},   -- Vanilla: 300
                                {"PlanetLodSwitch1",      "3000.000000"},  -- Vanilla: 2000
                            }
                        },
                        {
                            -- Atmosphere and Horizon Scale
                            ["VALUE_CHANGE_TABLE"] = {
                                {"SkyAtmosphereHeight", "12000.000000"},
                                {"HorizonBlendLength",  "4500.000000"}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            -- ULTRA CLOUD SAMPLING & LIGHTING
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Sun Light Intensity", "5.000000"},
                                {"HBAO Intensity",      "8.000000"}
                            }
                        },
                        {
                            -- Increase Cloud Scattering for better "God Rays"
                            ["PRECEDING_KEY_WORDS"] = {"LightShaftProperties"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"LightShaft Scattering", "0.750000"}, -- Vanilla: 0.55
                                {"LightShaft Strength",   "4.000000"}  -- Vanilla: 2.0
                            }
                        },
                        {
                            -- Real-time Dynamic Shadow Updates
                            ["PRECEDING_KEY_WORDS"] = {"VariableUpdatePeriodModifers"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Ultra", "0.000000"}
                            }
                        },
                        {
                            -- INCREASE MAX PARTICLE RENDER RANGE (helps with grass/foliage)
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MaxParticleRenderRange", "150.000000"}  -- Vanilla: 75
                            }
                        }
                    }
                }
            }
        }
    }
}