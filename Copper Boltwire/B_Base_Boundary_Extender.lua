
--[[ Summery Description:
Increases the overall area where you can build around your base, as well as how much your build area increases when you read the edge.
]]--

MinRadiusForBases = 999999                      -- When you first build the base, how far out can you build? Original value "300"
BaseRadiusExtension = 200                       -- If you place an item on the edge of your border, how much does the border bump out? Original value "50"
MaxRadiusForPlanetBases = 999999                -- What is the absolute maximum border distance? Original value "1000"
MaxRadiusForSpaceBases = 999999                 -- Not sure yet. Original 400
BuildingPlacementMaxConnectionLength = 999999   -- How long can one segment of power line or teleporter cable be? Original value "200"
BuildingPlacementScaleMin = .1                  -- How small can you scale items? (0.25)
BuildingPlacementScaleMax = 10                  -- How large can you scale items? (3)

--Start Location
StartCrashMin = 500     -- Original value "500
StartCrashMax = 600     -- Original value "600"
StartShelterMin = 800   -- Original value "800"
StartShelterMax = 1000  -- Original value "1000"


NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "B_Base_Boundary_Extender.pak",
    ["MOD_AUTHOR"]      = "Gumsk",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"MinRadiusForBases", MinRadiusForBases},
                                {"BaseRadiusExtension", BaseRadiusExtension},
                                {"MaxRadiusForPlanetBases", MaxRadiusForPlanetBases},
                                {"MaxRadiusForSpaceBases", MaxRadiusForSpaceBases},
                                {"BuildingPlacementMaxConnectionLength", BuildingPlacementMaxConnectionLength},
                                {"StartCrashSiteMinDistance", StartCrashMin},
                                {"StartCrashSiteMaxDistance", StartCrashMax},
                                {"StartShelterMinDistance", StartShelterMin},
                                {"StartShelterMaxDistance", StartShelterMax},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "BuildingPlacementScaleMinMax",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"x", BuildingPlacementScaleMin},
                                {"y", BuildingPlacementScaleMax},
                            }
                        },
                    }
                }
            }
        }
    }
}