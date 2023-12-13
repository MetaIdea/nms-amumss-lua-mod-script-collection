
--[[ Summery Description:
NO clue what to actually call this file... it's now stuck like this.

This makes stamina recover insanely fast the moment you stop running.
Jetpack now recharges a helleva lot faster now, too.

It also makes falling damage occur only after 8 seconds of falling instead of vanilla's half a second...
"That's not how falling damage works, HG!!!" -Copper B. and the rest of the modding community...


Looking through the GCPLAYERGLOBALS.GLOBAL.MBIN, i can honestly say that i have NO clue as to how to improve the power of the jetpack.
To many variables to mock about with. sooo... yeah.... -Copper B.
]]--

StaminaRecoveryRate = 0.9   --0.1 -- CB: "Changed it to 0.9 to make it near instant stamina recovery..."
HardLandTime = 8            --0.5 -- This is assuming that it's calculated in seconds...
                            --       which means you would need to fall for 8 seconds before falling damage triggers...
                            --       odd system, but i guess it's as good as any system...
                            --       besides, what could take you that high, that you fall for more then 8 seconds?!? And why bother?
HardLandMin = 50            --5
HardLandMax = 150           --18

JetpackFillRate = 10            --0.5
JetpackFillRateHardMode = 10    --0.2
JetpackFillRateMidair = 10      --0.25
JetpackFillRateSpaceStationMultiplier = 20  --5
JetpackFillRateFleetMultiplier = 10        --5
JetpackFillRateNexusMultiplier = 20       --20
JetpackUnderwaterDrainRate = 0.1         --0.4
JetpackUnderwaterFillRate = 10          --1

FreeJetpackRange = 7                --3
FreeJetpackRangeNonTerrain = 2      --1.1
JetpackDrainHorizontalFactor = 3    --2.5
JetpackForce = 50                    --31 ; lateral force added when pressing in a direction. Existing force remains until direction is released
JetpackMinLevel = 0.1                 --0.5 ; ?How flat does the ground need to be to ignite jetpack? At 99, couldn't ignite in most places
JetpackMaxSpeed = 25                   --5 (40)
JetpackMaxUpSpeed = 60                  --30 (100)
JetpackUpForce = 60                      --30 (50) ; Needs to be above about 20 to overcome standard gravity
JetpackIgnitionForce = 80                 --60 ; No noticeable effect
JetpackIgnitionTime = 10                   --0.4 ; 
JetpackMinIgnitionTime = .1                 --0.2 ; How quickly after igniting the jetpack FROM A SURFACE will jetpack thrust stop?
JetpackUpForceDeadPlanetExtra = 30          --10
JetpackForceDeadPlanetExtra = 40            --15
JetpackIgnitionForceDeadPlanetExtra = 90    --45

UnderwaterMaxSpeed = 7                  --4
UnderwaterForce = 25                    --15
UnderwaterMaxJetpackSpeed = 25          --8 (40)
UnderwaterJetpackForce = 50             --25 (80)
UnderwaterMaxJetpackEscapeSpeed = 20    --8
UnderwaterJetpackEscapeForce = 30       --20


NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"]    = "B_Jetpack_Stamina_Convinience.pak",
    ["MOD_AUTHOR"]      = "Gumsk and Copper",
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
                                {"StaminaRecoveryRate",StaminaRecoveryRate},
                                {"HardLandTime",HardLandTime},
                                {"HardLandMin",HardLandMin},
                                {"HardLandMax",HardLandMax},

                                {"JetpackFillRate",JetpackFillRate},
                                {"JetpackFillRateHardMode",JetpackFillRateHardMode},
                                {"JetpackFillRateMidair" ,JetpackFillRateMidair},
                                {"JetpackFillRateSpaceStationMultiplier",JetpackFillRateSpaceStationMultiplier},
                                {"JetpackFillRateFleetMultiplier" ,JetpackFillRateFleetMultiplier},
                                {"JetpackFillRateNexusMultiplier" ,JetpackFillRateNexusMultiplier},
                                {"JetpackUnderwaterDrainRate",JetpackUnderwaterDrainRate},
                                {"JetpackUnderwaterFillRate",JetpackUnderwaterFillRate},

                                {"FreeJetpackRange",FreeJetpackRange},
                                {"FreeJetpackRangeNonTerrain",FreeJetpackRangeNonTerrain},
                                {"JetpackDrainHorizontalFactor",JetpackDrainHorizontalFactor},    
                                {"JetpackForce",JetpackForce},
                                {"JetpackMinLevel",JetpackMinLevel},
                                {"JetpackMaxSpeed",JetpackMaxSpeed},
                                {"JetpackMaxUpSpeed",JetpackMaxUpSpeed},
                                {"JetpackUpForce",JetpackUpForce},
                                {"JetpackIgnitionForce",JetpackIgnitionForce},
                                {"JetpackIgnitionTime",JetpackIgnitionTime},
                                {"JetpackMinIgnitionTime",JetpackMinIgnitionTime},
                                {"JetpackUpForceDeadPlanetExtra",JetpackUpForceDeadPlanetExtra},
                                {"JetpackForceDeadPlanetExtra",JetpackForceDeadPlanetExtra},
                                {"JetpackIgnitionForceDeadPlanetExtra",JetpackIgnitionForceDeadPlanetExtra},

                                {"UnderwaterMaxSpeed",UnderwaterMaxSpeed},
                                {"UnderwaterForce",UnderwaterForce},
                                {"UnderwaterMaxJetpackSpeed",UnderwaterMaxJetpackSpeed},
                                {"UnderwaterJetpackForce",UnderwaterJetpackForce},
                                {"UnderwaterMaxJetpackEscapeSpeed",UnderwaterMaxJetpackEscapeSpeed},
                                {"UnderwaterJetpackEscapeForce",UnderwaterJetpackEscapeForce},
                            }
                        },
                    }
                }
            }
        }
    }
}