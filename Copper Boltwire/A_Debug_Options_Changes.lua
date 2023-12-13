
--[[ Summery Description:
This mod does a whole lotta things, I'll try explain what it does.
Just bear in mind that this mod compilation was made to simulate a Semi-creative mode experience.
Like Less Grinding and more fun overall. But some would just yell CHEATS! ... what ever...

- Disables the sorting of saves so that saves are NOt sorted by the last played,
    but instead the save will stick to the slot you selected for when you started a new game in that slot.

- While untested as of writing this summery, it also allows more then one player owned freighter in the same star system.

- Allows you to use abandoned freighters as yet another save point.

- does a bunch of other stuff... but it's more stuff that works behind the scenes that in the long run will be of help
]]--

    GodMode = "False"                           --False
    TakeNoDamage = "False"                      --False
    DebugGalaxyMapInQuickMenu = "False"         --False
    MapWarpCheckIgnoreFuel = "False"            --False
    MapWarpCheckIgnoreDrive = "False"           --False
    EverythingIsFree = "False"                  --False
    EverythingIsKnown = "False"                 --False
    EverythingIsStar = "False"                  --False
    InfiniteStamina = "False"                   --False
    IgnoreMissionRank = "False"                 --False
    UseScreenEffects = "True"                    --True
    SkipTutorial = "False"                        --False
    IgnoreFreighterSpawnWarpRequirement = "False" --False
    MaximumFreighterSpawns = "False"            --False
DisableSaveSlotSorting = "True"             --False
  MPMissionsAlwaysEPIC = "True"               --False -- Changed this to true to see what up with this...
    UseParticles = "True"                        --True
    UseHeavyAir = "True"                         --True
    UseVolumetrics = "True"                      --True
    UseTerrain = "True"                          --True
    UseInstances = "True"                        --True
    UseObjects = "True"                          --True
    UseBuildings = "True"                        --True
    UseCreatures = "True"                        --True
    UseElevation = "True"                        --True
    EnableDayNightCycle = "True"                 --True
    SpawnPirates = "True"                        --True
    SpawnRobots = "True"                         --True
    SpawnShips = "True"                          --True
    SpawnPulseEncounters = "True"                --True
    MPMissions = "True"                          --True
    SpecialsShop = "False"                       --False
MultiplePlayerFreightersInASystem = "True"   --False
    BootLogoFadeRate = 2.5                       --2.5
    DebugBuildingSpawns = "False"                --False
DisableProfanityFilter = "True"              --False
DisableFileWatcher = "True"                  --False
ShowPositionDebug = "True"                   --False
ShowUniverseAddressOnGalaxyMap = "True"      --""   ???? huh??? Why is the default value unknown??? BEtter fix some time...
    DisableBasePowerRequirements = "False"       --False
EnableBaseMovingOption = "True"              --False
    MoveBaseIndex = 0                            --0
  DisableLimits = "False"                      --False     Got issues with Freighter base building, this might be the cause...
  DisableBaseBuildingLimits = "False"          --False     Got issues with Freighter base building, this might be the cause...
BaseDownloadTimeout = 120                    --40
AllowSavingOnAbandonedFreighters = "True"    --False
    RevealAllTitles = "False"                    --False
    UnlockAllTitles = "False"                    --False
AlwaysAllowShipOperations = "True"           --False
AlwaysAllowVehicleOperations = "True"        --False
AlwaysAllowFreighterInventoryAccess = "True" --False
    ThirdPersonIsDefaultCamera = "True"          --True


NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "A_Debug_Options_Changes.pak",
    ["MOD_AUTHOR"]      = "Gumsk",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"GodMode", GodMode},
                                {"TakeNoDamage", TakeNoDamage},
                                {"DebugGalaxyMapInQuickMenu", DebugGalaxyMapInQuickMenu},
                                {"MapWarpCheckIgnoreFuel", MapWarpCheckIgnoreFuel},        
                                {"MapWarpCheckIgnoreDrive", MapWarpCheckIgnoreDrive},
                                {"EverythingIsFree", EverythingIsFree},        
                                {"EverythingIsKnown", EverythingIsKnown},
                                {"EverythingIsStar", EverythingIsStar},        
                                {"InfiniteStamina", InfiniteStamina},
                                {"IgnoreMissionRank", IgnoreMissionRank},        
                                {"UseScreenEffects", UseScreenEffects},
                                {"SkipTutorial", SkipTutorial},        
                                {"IgnoreFreighterSpawnWarpRequirement", IgnoreFreighterSpawnWarpRequirement},
                                {"MaximumFreighterSpawns", MaximumFreighterSpawns},            
                                {"DisableSaveSlotSorting", DisableSaveSlotSorting},
                                {"MPMissionsAlwaysEPIC", MPMissionsAlwaysEPIC},        
                                {"UseParticles", UseParticles},
                                {"UseHeavyAir", UseHeavyAir},
                                {"UseVolumetrics", UseVolumetrics},
                                {"UseTerrain", UseTerrain},
                                {"UseInstances", UseInstances},
                                {"UseObjects", UseObjects},
                                {"UseBuildings", UseBuildings},
                                {"UseCreatures", UseCreatures},
                                {"UseElevation", UseElevation},
                                {"EnableDayNightCycle", EnableDayNightCycle},
                                {"SpawnPirates", SpawnPirates},
                                {"SpawnRobots", SpawnRobots},
                                {"SpawnShips", SpawnShips},
                                {"SpawnPulseEncounters", SpawnPulseEncounters},
                                {"MPMissions", MPMissions},
                                {"SpecialsShop", SpecialsShop},
                                {"MultiplePlayerFreightersInASystem", MultiplePlayerFreightersInASystem},
                                {"BootLogoFadeRate", BootLogoFadeRate},
                                {"DebugBuildingSpawns", DebugBuildingSpawns},
                                {"DisableProfanityFilter", DisableProfanityFilter},
                                {"DisableFileWatcher", DisableFileWatcher},
                                {"ShowPositionDebug", ShowPositionDebug},
                                {"ShowUniverseAddressOnGalaxyMap", ShowUniverseAddressOnGalaxyMap},
                                {"DisableBasePowerRequirements", DisableBasePowerRequirements},
                                {"EnableBaseMovingOption", EnableBaseMovingOption},
                                {"MoveBaseIndex", MoveBaseIndex},
                                {"DisableLimits", DisableLimits},
                                {"DisableBaseBuildingLimits", DisableBaseBuildingLimits},
                                {"BaseDownloadTimeout", BaseDownloadTimeout},
                                {"AllowSavingOnAbandonedFreighters", AllowSavingOnAbandonedFreighters},
                                {"RevealAllTitles", RevealAllTitles},
                                {"UnlockAllTitles", UnlockAllTitles},
                                {"AlwaysAllowShipOperations", AlwaysAllowShipOperations},
                                {"AlwaysAllowVehicleOperations", AlwaysAllowVehicleOperations},
                                {"AlwaysAllowFreighterInventoryAccess", AlwaysAllowFreighterInventoryAccess},
                                {"ThirdPersonIsDefaultCamera", ThirdPersonIsDefaultCamera},
                            }
                        }
                    }
                }
            }
        }
    }
}