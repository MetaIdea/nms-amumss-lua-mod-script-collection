
--[[ Summery Description:

]]--

BinocularRangePlanet = 2000     --1000
BinocularRangeSpace = 20000     --10000
PlayerTransferRange = 200       --20
PlayerSpaceTransferRange = 3000 --2000

InteractionScanRange = 200      --80
InteractionButtonRange = 20     --10
InteractionSubstanceRange = 100 --40
MaxBuildHeight = 512            --64 No clue if this works...

DefaultHitPoints = 100                  --60
DefaultHealthPips = 5                   --3
DefaultShipHealthPips = 10              --6
MaxHealthPips = 20                      --9
UseLargeHealthBar = "False"             --True
HealthRechargeMinTimeSinceDamage = 1    --10
HealthPipRechargeRate = 100             --200

ShieldRestoreSpeed = 1.0    --0.2
ShieldRestoreDelay = 5      --10

AutoLandRange = 150 --100
AutoLandTime = 1    --2

  
NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "A_Other_Player_Settings.pak",
    ["MOD_AUTHOR"]      = "Gumsk",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"BinocularRangePlanet",BinocularRangePlanet},
                                {"BinocularRangeSpace",BinocularRangeSpace},
                                {"PlayerTransferRange",PlayerTransferRange},
                                {"PlayerSpaceTransferRange",PlayerSpaceTransferRange},

                                {"InteractionScanRange",InteractionScanRange},
                                {"InteractionButtonRange",InteractionButtonRange},
                                {"InteractionSubstanceRange",InteractionSubstanceRange},
                                {"MaxBuildHeight",MaxBuildHeight},

                                {"DefaultHitPoints",DefaultHitPoints},
                                {"DefaultHealthPips",DefaultHealthPips},
                                {"DefaultShipHealthPips",DefaultShipHealthPips},
                                {"MaxHealthPips",MaxHealthPips},
                                {"UseLargeHealthBar",UseLargeHealthBar},
                                {"HealthRechargeMinTimeSinceDamage",HealthRechargeMinTimeSinceDamage},
                                {"HealthPipRechargeRate",HealthPipRechargeRate},

                                {"ShieldRestoreSpeed",ShieldRestoreSpeed},
                                {"ShieldRestoreDelay",ShieldRestoreDelay},

                                {"AutoLandRange",AutoLandRange},
                                {"AutoLandTime",AutoLandTime},

                            }
                        },
                    }
                }
            }
        }
    }
}



