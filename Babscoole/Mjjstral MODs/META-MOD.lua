QUICK_ACTION_LIST =
{
    "SAVE",
    "GALACTICMAP",
    "PLANETSCANNER",
    "TOGGLE_BACKPACK",
    "REVEAL_PORTAL",
    "HEALTH_SUIT",
    "R_SENTINELS_OFF",
    "R_FIX_REP",
    "HARVEST",
    "PLANET_FINDER",
    "TOGGLE_SHIELD",
    "TOGGLE_INVIS",
    "REVEAL_RUNES",
    "R_CHART_ROBOT",
    "R_SCANSENTCRASH",
    "CRASHED_SHIP",
    "WORD",
    "FREIGHTER_TRANS",
    "SCARE_CREATURES",
    "STOP_STORM",
    "STORM",
    "POWER_STATE",
    "R_ENABLENEXUS",
    "UPLOAD_BASE",
    "DEACT_FIENDS",
    "FREE_EXPLORE",
    "R_CLEAR_WANTED",
    "MIXER_WANTED",
    "BLACK_HOLE_WARP",
    "RELIC_GATE_WARP",
    "R_MEGAWARP",
    "TELEPORT_BASE",
    "CENTREJOURNEY0",
    "CENTREJOURNEY1",
    "CENTREJOURNEY2",
    "CENTREJOURNEY3",
    "CENTREJOURNEY4",
    --"R_NEXUS_TECH",
    --"R_FREI_CUSTOM",
    "TREE_BASICS",
    "TREE_TECHBASICS",
    "TREE_BASE",
    "TREE_SPEC_BASE",
    "TREE_SUIT",
    "TREE_SHIP",
    "TREE_WEAP",
    "TREE_EXO",
    "TREE_CRAFT",
    "TREE_FRIGATE",
}

USER_SEED_LIST =
{
    {"POLICESHIP", "0x1"},
    {"FIGHTER",    "0x8E8E2193DD4A9EDA"}, --ALPHA VECTOR
    {"FIGHTER",    "0xC4C9C1AABCA59FE6"}, --HORIZON OMEGA
    {"FIGHTER",    "0xA547AB958C97E439"}, --RASAMAMA S36
    {"MULTITOOL",  "0x55907B79D95B675B"}, --STARTER WEAPON

    -- {"FIGHTER", "0x2ed0b7e8773e6959"},
    -- {"FIGHTER", "0x0469079B58527FAC", true},
    -- {"FIGHTER", "0xc82dbd4a5f1f4191"},
    -- {"FIGHTER", "0x646abde861bb4790"},
    -- {"FIGHTER", "0x8B368967CED50C9C"},

    -- {"DROPSHIP", "0x100A66565DECB1C5"},
    -- {"DROPSHIP", "0xCA26E52B0D24DC37"},
    -- {"DROPSHIP", "0xC25A946003305CF0", true},
    -- {"DROPSHIP", "0xA4687FDB844DA5DC"},
    -- {"DROPSHIP", "0x71876903D4317C8D"},
    -- {"DROPSHIP", "0x2EB67DD98452B24D", true},
    -- {"DROPSHIP", "0xE71E296D1CAD582E"},

    -- {"DROPSHIP", "0x2179DE9A6801F57C"},
    -- {"DROPSHIP", "0x46031B34A85DB726"},
    -- {"DROPSHIP", "0x1D30478CA881BE29"},
    -- {"DROPSHIP", "0x2C1CEC12E7120CA9"},
    -- {"DROPSHIP", "0x5E61694BFAA3C741"},
    -- {"DROPSHIP", "0x2D4777FBBF2AA61D"},
    -- {"DROPSHIP", "0x24B6531B41368A80"},
    -- {"DROPSHIP", "0xF4042806234A385D"},

    -- {"DROPSHIP", "0x2D4777FBBF2AA61D"},
    -- {"DROPSHIP", "0x521F5EA090A8D435"},
    -- {"DROPSHIP", "0xE6A73D8B66BB11F5"},
    -- {"DROPSHIP", "0x24B6531B41368A80"},
    -- {"DROPSHIP", "0x96959C617F3F741C"},
    -- {"DROPSHIP", "0xBBF7FE10647AD6BD"},

    -- {"DROPSHIP", "0x014E18C048F92588"},
    -- {"DROPSHIP", "0x39ABFE3E3E4BBD39"},
    -- {"DROPSHIP", "0xD6818C49606930E9"},
    -- {"DROPSHIP", "0x3AF32591A1C3DD0E"},
    -- {"DROPSHIP", "0x5AC70EC519EBE79D"},
    -- {"DROPSHIP", "0x5B510F514629D3C9"},
    -- {"DROPSHIP", "0x003242B4681A0027"},

    -- {"SCIENTIFIC", "0x74C41D521491C48B"},
    -- {"SCIENTIFIC", "0xE088DFDC904C8A54"},

    -- {"EXOTIC", "0x66c2ba46dcfbf4c3"},
    -- {"EXOTIC", "0xc688372a1012811b"},
}

function HexToDec(number)
    if type(number) == "number" then return number
    elseif string.find(tostring(number),"0x") then return math.abs(tonumber(number))
    else return math.abs(tonumber(number,16))
    end
end

PacksList =
{
    "Backpack",
    "_Cape_Frigate",
    "_Cape_Sandworm",
    "_Cape_Jelly",
    "_Cape_Freighter",
    "_Cape_Infinity",
    "_Cape_Pirate",
    "_Cape_Atlas",
    "_Cape_Proto",
    "_Chest_Vanilla",
    "_Chest_Astro",
    "_Chest_Gek",
    "_Chest_Fourth",
    "_Chest_Vykeen",
}

function GetPack(Pack)
return [[
                  <Property name="Action" value="GcNodeActivationAction">
                    <Property name="GcNodeActivationAction">
                      <Property name="NodeActiveState" value="Toggle" />
                      <Property name="Name" value="]]..Pack..[[" />
                      <Property name="SceneToAdd" value="" />
                      <Property name="IncludePhysics" value="true" />
                      <Property name="IncludeChildPhysics" value="true" />
                      <Property name="NotifyNPC" value="false" />
                      <Property name="UseMasterModel" value="true" />
                      <Property name="UseLocalNode" value="false" />
                      <Property name="RestartEmitters" value="false" />
                      <Property name="AffectModels" value="true" />
                    </Property>
                  </Property>
]]
end

PACKS_ADDING_ALL = {}

for i=1,#PacksList,1 do
    table.insert(PACKS_ADDING_ALL,GetPack(PacksList[i]))
end

GENERIC_BUTTON_ICON = "TEXTURES/UI/FRONTEND/COMPONENTS/STAR.DDS"

QUICK_ACTION_MENU =
{
    ["SAVE"] = {["TITLE"]="Save",["ICON"]="TEXTURES/UI/HUD/ICONS/PLAYER/SAVE.DDS",["ANIM"]="SAVEGAME",
        ["ACTION_TRIGGER"] =
[[
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="SAVEGAME" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="SAVE" />
                      <Property name="Broadcast" value="true" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Scene" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
]],
    },
    ["GALACTICMAP"] = {["TITLE"]="Galactic Map",["ICON"]="TEXTURES/UI/FRONTEND/GALACTICMAP/GALACTICMAP.DDS",["ANIM"]="GALACTICMAP",
        ["ACTION_TRIGGER"] =
[[
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="GALACTICMAP" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="GALACTICMAP" />
                      <Property name="Broadcast" value="true" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Scene" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
]],
    },
    ["PLANETSCANNER"] = {["TITLE"]="Planetary Scanner",["ICON"]="TEXTURES\UI\HUD\ICONS\SCANNING\SCAN.PLANET.DDS",["ANIM"]="PLANETSCANNER",
        ["ACTION_TRIGGER"] =
[[
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="PLANETSCANNER" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="PLANETSCANNER" />
                      <Property name="Broadcast" value="true" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Scene" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
]],
    },
    ["TOGGLE_BACKPACK"] = {["TITLE"]="Toggle Backpack",["ICON"]="TEXTURES/UI/FRONTEND/COMPONENTS/CHARCUSTOMISE/BACKPACK.DDS",["ANIM"]="TOGGLE_BACKPACK",
        ["ACTION_TRIGGER"] =
[[
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcPlayAnimAction">
                    <Property name="GcPlayAnimAction">
                      <Property name="Anim" value="TOGGLE_BACKPACK" />
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="TOGGLE_BACKPACK" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
]] .. table.concat(PACKS_ADDING_ALL) .. [[
                  <Property name="Action" value="GcPlayAudioAction">
                    <Property name="GcPlayAudioAction">
                      <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                      <Property name="UseOcclusion" value="false" />
                      <Property name="OcclusionRadius" value="2.000000" />
                    </Property>
                  </Property>
                </Property>
              </Property>
]]
    },
    ["TOGGLE_INVIS"] = {["TITLE"]="Toggle Invisibility",["ICON"]="TEXTURES/UI/HUD/ICONS/MISSIONS/HIDE_N_SEEK.DDS",["ANIM"]="TOGGLE_INVIS",
        ["ACTION_TRIGGER"] =
[[
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="TOGGLE_INVIS" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcNodeActivationAction">
                    <Property name="GcNodeActivationAction">
                      <Property name="NodeActiveState" value="Toggle" />
                      <Property name="Name" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER" />
                      <Property name="SceneToAdd" value="" />
                      <Property name="IncludePhysics" value="true" />
                      <Property name="IncludeChildPhysics" value="true" />
                      <Property name="NotifyNPC" value="true" />
                      <Property name="UseMasterModel" value="true" />
                      <Property name="UseLocalNode" value="false" />
                      <Property name="RestartEmitters" value="false" />
                      <Property name="AffectModels" value="true" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcNodeActivationAction">
                    <Property name="GcNodeActivationAction">
                      <Property name="NodeActiveState" value="Deactivate" />
                      <Property name="Name" value="BubbleShield" />
                      <Property name="SceneToAdd" value="" />
                      <Property name="IncludePhysics" value="true" />
                      <Property name="IncludeChildPhysics" value="true" />
                      <Property name="NotifyNPC" value="false" />
                      <Property name="UseMasterModel" value="false" />
                      <Property name="UseLocalNode" value="false" />
                      <Property name="RestartEmitters" value="false" />
                      <Property name="AffectModels" value="true" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcPlayAudioAction">
                    <Property name="GcPlayAudioAction">
                      <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                      <Property name="UseOcclusion" value="false" />
                      <Property name="OcclusionRadius" value="2.000000" />
                    </Property>
                  </Property>
                </Property>
              </Property>
]]
    },
    ["TOGGLE_SHIELD"] = {["TITLE"]="Shield",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/STATS/STATS.SUIT.PROTECTION.DDS",["ANIM"]="TOGGLE_SHIELD",
        ["ACTION_TRIGGER"] =
[[
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcNodeActivationAction">
                    <Property name="GcNodeActivationAction">
                      <Property name="NodeActiveState" value="Deactivate" />
                      <Property name="Name" value="BubbleShield" />
                      <Property name="SceneToAdd" value="" />
                      <Property name="IncludePhysics" value="true" />
                      <Property name="IncludeChildPhysics" value="true" />
                      <Property name="NotifyNPC" value="false" />
                      <Property name="UseMasterModel" value="false" />
                      <Property name="UseLocalNode" value="false" />
                      <Property name="RestartEmitters" value="false" />
                      <Property name="AffectModels" value="true" />
                    </Property>
                  </Property>
                </Property>
              </Property>
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="TOGGLE_SHIELD" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcNodeActivationAction">
                    <Property name="GcNodeActivationAction">
                      <Property name="NodeActiveState" value="Toggle" />
                      <Property name="Name" value="BubbleShield" />
                      <Property name="SceneToAdd" value="" />
                      <Property name="IncludePhysics" value="true" />
                      <Property name="IncludeChildPhysics" value="true" />
                      <Property name="NotifyNPC" value="true" />
                      <Property name="UseMasterModel" value="true" />
                      <Property name="UseLocalNode" value="false" />
                      <Property name="RestartEmitters" value="false" />
                      <Property name="AffectModels" value="true" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcPlayAudioAction">
                    <Property name="GcPlayAudioAction">
                      <Property name="Sound" value="Obj_Shield_Repairer_Off" />
                      <Property name="UseOcclusion" value="false" />
                      <Property name="OcclusionRadius" value="2.000000" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcPlayAudioAction">
                    <Property name="GcPlayAudioAction">
                      <Property name="Sound" value="Anomaly_Simulation_Reveal_Open" />
                      <Property name="UseOcclusion" value="false" />
                      <Property name="OcclusionRadius" value="2.000000" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcCameraShakeAction">
                    <Property name="GcCameraShakeAction">
                      <Property name="Shake" value="SLOWRUMBLE" />
                      <Property name="FalloffMin" value="5.000000" />
                      <Property name="FalloffMax" value="15.000000" />
                    </Property>
                  </Property>
                </Property>
              </Property>
]],
    },
    ["SCARE_CREATURES"] = {["TITLE"]="Scare Creatures",["ICON"]="TEXTURES/UI/HUD/EYE.CREATURE.DDS",["ANIM"]="SCARE_CREATURES",
        ["ACTION_TRIGGER"] =
[[
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="SCARE_CREATURES" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcScareCreaturesAction">
                    <Property name="GcScareCreaturesAction">
                      <Property name="HearRadius" value="21.000000" />
                      <Property name="FleeRadius" value="7.000000" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcDisplayText">
                    <Property name="GcDisplayText">
                      <Property name="HUDTextDisplayType" value="Tooltip" />
                      <Property name="Title" value="Creature Scare" />
                      <Property name="Subtitle1" value="" />
                      <Property name="Subtitle2" value="" />
                      <Property name="UseAlienLanguage" value="GcAlienRace">
                        <Property name="AlienRace" value="None" />
                      </Property>
                      <Property name="ChooseRandomTextOptions" />
                    </Property>
                  </Property>
                </Property>
              </Property>
]]
    },
    ["POWER_STATE"] = {["TITLE"]="Emit Electricity (WIP)",["ICON"]="TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.STORMCRYSTALS.DDS",["ANIM"]="POWER_STATE",
        ["ACTION_TRIGGER"] =
[[
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="POWER_STATE" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcPowerStateAction">
                    <Property name="GcPowerStateAction">
                      <Property name="SetRateEnabled" value="true" />
                      <Property name="SetConnectionEnabled" value="true" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcDisplayText">
                    <Property name="GcDisplayText">
                      <Property name="HUDTextDisplayType" value="Tooltip" />
                      <Property name="Title" value="Power ON" />
                      <Property name="Subtitle1" value="" />
                      <Property name="Subtitle2" value="" />
                      <Property name="UseAlienLanguage" value="GcAlienRace">
                        <Property name="AlienRace" value="None" />
                      </Property>
                      <Property name="ChooseRandomTextOptions" />
                    </Property>
                  </Property>
                </Property>
              </Property>
]]
    },
    ["HARVEST"] = {["TITLE"]="Harvest All",["ICON"]="TEXTURES/UI/HUD/ICONS/PICKUPS/PICKUP.PLANTGREEN.DDS",["ANIM"]="HARVEST",
        ["ACTION_TRIGGER"] =
[[
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="HARVEST" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="HARVEST" />
                      <Property name="Broadcast" value="true" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Scene" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
]],
    },
    ["REVEAL_PORTAL"] = {["TITLE"]="Find Portal",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.PORTAL.DDS",["ANIM"]="REVEAL_PORTAL",["TYPE"]="REWARD"},
    ["R_SENTINELS_OFF"] = {["TITLE"]="Disable Sentinels",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/RANK/MEDAL.SENTINELSSILVER.DDS",["ANIM"]="R_SENTINELS_OFF",["TYPE"]="REWARD"},
    ["R_FIX_REP"] = {["TITLE"]="Reset Reputation",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/UPDATE3/REPTOKEN.DDS",["ANIM"]="R_FIX_REP",["TYPE"]="REWARD"},
    ["WORD"] = {["TITLE"]="Learn Word",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/RANK/MEDAL.WORDSGOLD.DDS",["ANIM"]="WORD",["TYPE"]="REWARD"},
    ["PLANET_FINDER"] = {["TITLE"]="Find Lush Planet",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/DISCOVERY/PLANET.DDS",["ANIM"]="PLANET_FINDER",["TYPE"]="REWARD",
        ["REWARDTABLE"] =
[[
    <Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="PLANET_FINDER" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardScanEvent">
              <Property name="GcRewardScanEvent">
                <Property name="Event" value="PLANET_FINDER" />
                <Property name="ScanEventTable" value="Tutorial" />
                <Property name="DoAerialScan" value="true" />
                <Property name="UseMissionSeedForEvent" value="false" />
                <Property name="StartDelay" value="6.000000" />
                <Property name="UseStartDelayWhenNoAerialScan" value="false" />
                <Property name="ForceSilentFailure" value="false" />
                <Property name="FailureOSD" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]],
        ["SCANEVENTTABLE"] =
[[
        <Property name="ScanEvents" value="GcScanEventData">
          <Property name="Name" value="PLANET_FINDER" />
          <Property name="ForceInteraction" value="" />
          <Property name="UseSeasonDataAsInteraction" value="false" />
          <Property name="ForceInteractionType" value="GcInteractionType">
            <Property name="InteractionType" value="None" />
          </Property>
          <Property name="NPCReactsToPlayer" value="false" />
          <Property name="RequireInteractionRace" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="OverrideInteractionRace" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="MustMatchStoryUtilityPuzzle" value="" />
          <Property name="ForceBroken" value="false" />
          <Property name="ForceFixed" value="false" />
          <Property name="ReplacementMaintData" value="" />
          <Property name="ForceReplaceStoryPortalSeed" value="false" />
          <Property name="ForceOverridesAll" value="true" />
          <Property name="ForceOverrideEncounter" value="" />
          <Property name="IsCommunityPortalOverride" value="false" />
          <Property name="ClearForcedInteractionOnCompletion" value="false" />
          <Property name="BuildingPreventionRadius" value="0.000000" />
          <Property name="UseMissionTradingDataOverride" value="false" />
          <Property name="AlwaysShow" value="true" />
          <Property name="NeverShow" value="false" />
          <Property name="ShowOnlyIfSequenceTarget" value="false" />
          <Property name="PlanetLabelText" value="" />
          <Property name="SurveyDistance" value="0.000000" />
          <Property name="SurveyDiscoveryOSDMessage" value="" />
          <Property name="SurveyHUDName" value="" />
          <Property name="EventStartType" value="None" />
          <Property name="EventEndType" value="None" />
          <Property name="EventPriority" value="Regular" />
          <Property name="CanEndFromOutsideMission" value="false" />
          <Property name="DisableMultiplayerSync" value="false" />
          <Property name="BlockStartedOnUseEvents" value="false" />
          <Property name="ReplaceEventIfAlreadyActive" value="false" />
          <Property name="BuildingLocation" value="PlanetSearch" />
          <Property name="SearchType" value="Any" />
          <Property name="SpecificBuildingClass" value="GcBuildingClassification">
            <Property name="BuildingClass" value="None" />
          </Property>
          <Property name="AllowFriendsBases" value="true" />
          <Property name="ForceWideRandom" value="false" />
          <Property name="MustFindSystem" value="false" />
          <Property name="AllowOverriddenBuildings" value="true" />
          <Property name="TargetMustMatchMissionSeed" value="false" />
          <Property name="UseBuildingFromRendezvousStage" value="false" />
          <Property name="SolarSystemLocation" value="LocalOrNear" />
          <Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup">
            <Property name="UseStarType" value="false" />
            <Property name="UseWealth" value="false" />
            <Property name="UseTrading" value="false" />
            <Property name="UseRace" value="GcAlienRace">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="UseAnomaly" value="GcGalaxyStarAnomaly">
              <Property name="GalaxyStarAnomaly" value="None" />
            </Property>
            <Property name="UseConflict" value="GcPlayerConflictData">
              <Property name="ConflictLevel" value="Default" />
            </Property>
            <Property name="StarType" value="GcGalaxyStarTypes">
              <Property name="GalaxyStarType" value="Yellow" />
            </Property>
            <Property name="TradingData" value="GcPlanetTradingData">
              <Property name="WealthClass" value="GcWealthClass">
                <Property name="WealthClass" value="Average" />
              </Property>
              <Property name="TradingClass" value="GcTradingClass">
                <Property name="TradingClass" value="Mining" />
              </Property>
            </Property>
            <Property name="AllowUnsafeMatches" value="false" />
            <Property name="NeverAllowEmpty" value="false" />
            <Property name="NeverAllowAbandoned" value="false" />
            <Property name="AllowedToBePurpleWithoutAccess" value="true" />
            <Property name="RequireUndiscovered" value="false" />
            <Property name="NeedsWaterPlanet" value="false" />
            <Property name="NeedsDeepWaterPlanet" value="false" />
            <Property name="NeedsPrimePlanet" value="false" />
            <Property name="NeedsSentinels" value="false" />
            <Property name="NeedsCorruptSentinelPlanet" value="false" />
            <Property name="NeedsExtremeSentinelPlanet" value="false" />
            <Property name="NeverAllowExtremeSentinelPlanet" value="false" />
            <Property name="NeedsExtremeWeatherPlanet" value="false" />
            <Property name="NeedsExtremeHazardPlanet" value="false" />
            <Property name="NeverAllowExtremeWeatherPlanet" value="false" />
            <Property name="AnyBiomeNotWeirdOrDead" value="false" />
            <Property name="AnyRGBBiome" value="false" />
            <Property name="AnyInfestedBiome" value="false" />
            <Property name="NeedsBiome" value="true" />
            <Property name="NeedsBiomeType" value="GcBiomeType">
              <Property name="Biome" value="Lush" />
            </Property>
            <Property name="UseBiomeSubType" value="GcBiomeSubType">
              <Property name="BiomeSubType" value="None" />
            </Property>
            <Property name="NeedsEmptySystem" value="false" />
            <Property name="NeedsAbandonedSystem" value="false" />
            <Property name="NeedsResourceHint" value="" />
            <Property name="SuitableForCreatureDiscovery" value="false" />
            <Property name="SuitableForWeirdCreatureDiscovery" value="false" />
            <Property name="SuitableForRobotCreatureDiscovery" value="false" />
            <Property name="SuitableForCreatureTaming" value="false" />
            <Property name="SamePlanetAsEvent" value="" />
            <Property name="SamePlanetAsSeasonParty" value="0" />
            <Property name="SystemNeedsResourceHint" value="" />
            <Property name="SystemNeedsWater" value="false" />
            <Property name="SystemNeedsWeirdPlanet" value="false" />
            <Property name="SystemNeedsInfestedPlanet" value="false" />
            <Property name="SystemNeedsCorruptSentinelPlanet" value="false" />
            <Property name="SystemNeedsExtremeStormPlanet" value="false" />
            <Property name="SystemNeedsGasGiant" value="false" />
            <Property name="NeverAllowGasGiantSystem" value="false" />
            <Property name="MinPlanets" value="-1" />
          </Property>
          <Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup">
            <Property name="UseStarType" value="false" />
            <Property name="UseWealth" value="false" />
            <Property name="UseTrading" value="false" />
            <Property name="UseRace" value="GcAlienRace">
              <Property name="AlienRace" value="None" />
            </Property>
            <Property name="UseAnomaly" value="GcGalaxyStarAnomaly">
              <Property name="GalaxyStarAnomaly" value="None" />
            </Property>
            <Property name="UseConflict" value="GcPlayerConflictData">
              <Property name="ConflictLevel" value="Default" />
            </Property>
            <Property name="StarType" value="GcGalaxyStarTypes">
              <Property name="GalaxyStarType" value="Yellow" />
            </Property>
            <Property name="TradingData" value="GcPlanetTradingData">
              <Property name="WealthClass" value="GcWealthClass">
                <Property name="WealthClass" value="Average" />
              </Property>
              <Property name="TradingClass" value="GcTradingClass">
                <Property name="TradingClass" value="Mining" />
              </Property>
            </Property>
            <Property name="AllowUnsafeMatches" value="false" />
            <Property name="NeverAllowEmpty" value="false" />
            <Property name="NeverAllowAbandoned" value="false" />
            <Property name="AllowedToBePurpleWithoutAccess" value="false" />
            <Property name="RequireUndiscovered" value="false" />
            <Property name="NeedsWaterPlanet" value="false" />
            <Property name="NeedsDeepWaterPlanet" value="false" />
            <Property name="NeedsPrimePlanet" value="false" />
            <Property name="NeedsSentinels" value="false" />
            <Property name="NeedsCorruptSentinelPlanet" value="false" />
            <Property name="NeedsExtremeSentinelPlanet" value="false" />
            <Property name="NeverAllowExtremeSentinelPlanet" value="false" />
            <Property name="NeedsExtremeWeatherPlanet" value="false" />
            <Property name="NeedsExtremeHazardPlanet" value="false" />
            <Property name="NeverAllowExtremeWeatherPlanet" value="false" />
            <Property name="AnyBiomeNotWeirdOrDead" value="false" />
            <Property name="AnyRGBBiome" value="false" />
            <Property name="AnyInfestedBiome" value="false" />
            <Property name="NeedsBiome" value="false" />
            <Property name="NeedsBiomeType" value="GcBiomeType">
              <Property name="Biome" value="Lush" />
            </Property>
            <Property name="UseBiomeSubType" value="GcBiomeSubType">
              <Property name="BiomeSubType" value="None" />
            </Property>
            <Property name="NeedsEmptySystem" value="false" />
            <Property name="NeedsAbandonedSystem" value="false" />
            <Property name="NeedsResourceHint" value="" />
            <Property name="SuitableForCreatureDiscovery" value="false" />
            <Property name="SuitableForWeirdCreatureDiscovery" value="false" />
            <Property name="SuitableForRobotCreatureDiscovery" value="false" />
            <Property name="SuitableForCreatureTaming" value="false" />
            <Property name="SamePlanetAsEvent" value="" />
            <Property name="SamePlanetAsSeasonParty" value="0" />
            <Property name="SystemNeedsResourceHint" value="" />
            <Property name="SystemNeedsWater" value="false" />
            <Property name="SystemNeedsWeirdPlanet" value="false" />
            <Property name="SystemNeedsInfestedPlanet" value="false" />
            <Property name="SystemNeedsCorruptSentinelPlanet" value="false" />
            <Property name="SystemNeedsExtremeStormPlanet" value="false" />
            <Property name="SystemNeedsGasGiant" value="false" />
            <Property name="NeverAllowGasGiantSystem" value="false" />
            <Property name="MinPlanets" value="-1" />
          </Property>
          <Property name="ForceRestartInteraction" value="true" />
          <Property name="ForceResetPortal" value="false" />
          <Property name="HasReward" value="" />
          <Property name="NextOption" value="" />
          <Property name="TriggerActions" value="GcScanEventTriggers">
            <Property name="Range" value="0.000000" />
            <Property name="Triggers" />
            <Property name="AllowRetrigger" value="false" />
          </Property>
          <Property name="UAsList" />
          <Property name="TechShopType" value="GcTechnologyCategory">
            <Property name="TechnologyCategory" value="All" />
          </Property>
          <Property name="OSDMessage" value="Lush Planet Finder" />
          <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
          <Property name="MarkerLabel" value="Lush Planet" />
          <Property name="MarkerIcon" value="TkTextureResource">
            <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/DISCOVERY/PLANET.DDS" />
            <Property name="ResHandle" value="GcResource">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes">
            <Property name="ScannerIconHighlightType" value="Diamond" />
          </Property>
          <Property name="StartTime" value="0.000000" />
          <Property name="MessageTime" value="0.000000" />
          <Property name="MessageDisplayTime" value="4.000000" />
          <Property name="MessageAudio" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="VO_TUT_COORDSRECEIVED" />
          </Property>
          <Property name="IconTime" value="4.000000" />
          <Property name="TooltipTime" value="10.000000" />
          <Property name="TooltipRepeats" value="false" />
          <Property name="ShowEndTooltip" value="true" />
          <Property name="TooltipMessage" value="" />
          <Property name="MissionMessageOnInteract" value="" />
          <Property name="ResourceOverride" value="GcResourceElement">
            <Property name="Filename" value="" />
            <Property name="ResHandle" value="GcResource">
              <Property name="ResourceID" value="0" />
            </Property>
            <Property name="Seed" value="NONE" />
            <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
              <Property name="Samplers" />
            </Property>
            <Property name="AltId" value="" />
          </Property>
        </Property>
]]
    },
    ["R_CHART_ROBOT"] = {["TITLE"]="Locate Sentinel Multi-Tool",["ICON"]="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.ROBOTHEAD.DDS",["ANIM"]="R_CHART_ROBOT",["TYPE"]="REWARD"},
    ["R_SCANSENTCRASH"] = {["TITLE"]="Find Crashed Sentinel Ship",["ICON"]="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.SENTINELCRASH.DDS",["ANIM"]="R_SCANSENTCRASH",["TYPE"]="REWARD"},
    ["CRASHED_SHIP"] = {["TITLE"]="Find Crashed Ship",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/EXPEDITION/PATCH.CRASH.DDS",["ANIM"]="CRASHED_SHIP",["TYPE"]="REWARD",
        ["REWARDTABLE"] =
[[
    <Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="CRASHED_SHIP" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="Distress" />
            <Property name="Reward" value="GcRewardScanEvent">
              <Property name="GcRewardScanEvent">
                <Property name="Event" value="DISTRESS" />
                <Property name="ScanEventTable" value="Planet" />
                <Property name="DoAerialScan" value="true" />
                <Property name="UseMissionSeedForEvent" value="false" />
                <Property name="StartDelay" value="6.000000" />
                <Property name="UseStartDelayWhenNoAerialScan" value="false" />
                <Property name="ForceSilentFailure" value="false" />
                <Property name="FailureOSD" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]]
    },
    ["STOP_STORM"] = {["TITLE"]="Stop Storm",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/DISCOVERY/PLANETDATA.WEATHER.DDS",["ANIM"]="STOP_STORM",["TYPE"]="REWARD",
        ["REWARDTABLE"] =
[[
    <Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="STOP_STORM" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="Trigger Storm" />
            <Property name="Reward" value="GcRewardTriggerStorm">
              <Property name="GcRewardTriggerStorm">
                <Property name="Duration" value="3.000000" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]]
    },
    ["STORM"] = {["TITLE"]="Trigger Storm",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/DISCOVERY/PLANETDATA.WEATHER.DDS",["ANIM"]="STORM",["TYPE"]="REWARD"},
    ["UPLOAD_BASE"] = {["TITLE"]="Upload Base",["ICON"]="TEXTURES/UI/HUD/ICONS/SCANNING/BUILDING.UPLOADBASE.DDS",["ANIM"]="UPLOAD_BASE",["TYPE"]="REWARD",
        ["REWARDTABLE"] =
[[
    <Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="UPLOAD_BASE" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="Upload Base" />
            <Property name="Reward" value="GcRewardUploadBase">
              <Property name="GcRewardUploadBase" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]],
    },
    ["DEACT_FIENDS"] = {["TITLE"]="Deactivate Fiends",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.FIEND.OFF.DDS",["ANIM"]="DEACT_FIENDS",["TYPE"]="REWARD",
        ["REWARDTABLE"] =
[[
    <Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="DEACT_FIENDS" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="Deactivate Fiends" />
            <Property name="Reward" value="GcRewardDeactivateFiends">
              <Property name="GcRewardDeactivateFiends" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]],
    },
    ["HEALTH_SUIT"] = {["TITLE"]="Full Health+Suit+Stamina",["ICON"]="TEXTURES/UI/HUD/ICONS/SCANNING/PICKUP.HEALTH.DDS",["ANIM"]="HEALTH_SUIT",["TYPE"]="REWARD",
        ["REWARDTABLE"] =
[[
    <Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="HEALTH_SUIT" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardHealth">
              <Property name="GcRewardHealth">
                <Property name="AmountMin" value="100" />
                <Property name="AmountMax" value="100" />
                <Property name="SilentUnlessShieldAtMax" value="false" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardShield">
              <Property name="GcRewardShield">
                <Property name="AmountMin" value="100" />
                <Property name="AmountMax" value="100" />
                <Property name="ShowOSDOnSuccess" value="true" />
                <Property name="ShowOSDOnFail" value="true" />
              </Property>
            </Property>
          </Property>
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardHazard">
              <Property name="GcRewardHazard">
                <Property name="AmountMin" value="100" />
                <Property name="AmountMax" value="100" />
                <Property name="Silent" value="false" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]],
    },
    ["BLACK_HOLE_WARP"] = {["TITLE"]="Black Hole Warp",["ICON"]="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.BLACKHOLE.DDS",["ANIM"]="BLACK_HOLE_WARP",
        ["ACTION_TRIGGER"] =
[[
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="BLACK_HOLE_WARP" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcWarpAction">
                    <Property name="GcWarpAction">
                      <Property name="WarpType" value="BlackHole" />
                    </Property>
                  </Property>
                </Property>
              </Property>
]]
    },
    ["RELIC_GATE_WARP"] = {["TITLE"]="Relic Gate Warp",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/EXPEDITION/PATCH.WARPFIX.DDS",["ANIM"]="RELIC_GATE_WARP",
        ["ACTION_TRIGGER"] =
[[
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="RELIC_GATE_WARP" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcWarpAction">
                    <Property name="GcWarpAction">
                      <Property name="WarpType" value="SpacePOI" />
                    </Property>
                  </Property>
                </Property>
              </Property>
]]
    },
    ["R_MEGAWARP"] = {["TITLE"]="MegaWarp",["ICON"]="TEXTURES\UI\FRONTEND\ICONS\TECHNOLOGY\TECHNOLOGY.FREIGHTER.MEGAWARP.DDS",["ANIM"]="R_MEGAWARP",["TYPE"]="REWARD"},
    ["TELEPORT_BASE"] = {["TITLE"]="Warp To Base",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.WARP.DDS",["ANIM"]="TELEPORT_BASE",["TYPE"]="REWARD"},
    ["CENTREJOURNEY0"] = {["TITLE"]="Switch to Next Galaxy",["ICON"]="TEXTURES/SPACE/ATLASSTATION/ENDING_1/GALAXYTEXTUREVARIANTS.WHITEGALAXY.DDS",["ANIM"]="CENTREJOURNEY0",["TYPE"]="REWARD",
        ["REWARDTABLE"] =
[[
    <Property name="SpecialRewardTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="CENTREJOURNEY0" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardJourneyThroughCentre">
              <Property name="GcRewardJourneyThroughCentre">
                <Property name="CentreJourneyDestination" value="Next" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]],
    },
    ["CENTREJOURNEY1"] = {["TITLE"]="Switch to Vicious Galaxy",["ICON"]="TEXTURES/SPACE/ATLASSTATION/ENDING_1/GALAXYTEXTUREVARIANTS.REDGALAXY.DDS",["ANIM"]="CENTREJOURNEY1",["TYPE"]="REWARD"},
    ["CENTREJOURNEY2"] = {["TITLE"]="Switch to Lush Galaxy",["ICON"]="TEXTURES/SPACE/ATLASSTATION/ENDING_1/GALAXYTEXTUREVARIANTS.GREENGALAXY.DDS",["ANIM"]="CENTREJOURNEY2",["TYPE"]="REWARD"},
    ["CENTREJOURNEY3"] = {["TITLE"]="Switch to Abandoned Galaxy",["ICON"]="TEXTURES/SPACE/ATLASSTATION/ENDING_1/GALAXYTEXTURE.DDS",["ANIM"]="CENTREJOURNEY3",["TYPE"]="REWARD"},
    ["CENTREJOURNEY4"] = {["TITLE"]="Switch to Balanced Galaxy",["ICON"]="TEXTURES/SPACE/ATLASSTATION/ENDING_1/GALAXYTEXTURE.1.DDS",["ANIM"]="CENTREJOURNEY4",["TYPE"]="REWARD"},
    ["FREE_EXPLORE"] = {["TITLE"]="Free Explore",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.EXPLORATION.ON.DDS",["ANIM"]="FREE_EXPLORE",["TYPE"]="REWARD"},
    ["R_FREI_CUSTOM"] = {["TITLE"]="Freighter customization",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS",["ANIM"]="R_FREI_CUSTOM",["TYPE"]="REWARD"},
    ["R_NEXUS_TECH"] = {["TITLE"]="Nexus Tech Shop",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS",["ANIM"]="R_NEXUS_TECH",["TYPE"]="REWARD"},
    ["TREE_BASICS"] = {["TITLE"]="Unlock Basic Base Parts",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS",["ANIM"]="TREE_BASICS",["TYPE"]="REWARD"},
    ["TREE_TECHBASICS"] = {["TITLE"]="Unlock Basic Tech Parts",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS",["ANIM"]="TREE_TECHBASICS",["TYPE"]="REWARD"},
    ["TREE_BASE"] = {["TITLE"]="Unlock Base Parts",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS",["ANIM"]="TREE_BASE",["TYPE"]="REWARD"},
    ["TREE_SPEC_BASE"] = {["TITLE"]="Unlock Special Base Parts",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS",["ANIM"]="TREE_SPEC_BASE",["TYPE"]="REWARD"},
    ["TREE_SUIT"] = {["TITLE"]="Unlock Suit Tech",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS",["ANIM"]="TREE_SUIT",["TYPE"]="REWARD"},
    ["TREE_SHIP"] = {["TITLE"]="Unlock Ship Tech",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS",["ANIM"]="TREE_SHIP",["TYPE"]="REWARD"},
    ["TREE_WEAP"] = {["TITLE"]="Unlock Weap Tech",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS",["ANIM"]="TREE_WEAP",["TYPE"]="REWARD"},
    ["TREE_EXO"] = {["TITLE"]="Unlock Exocraft Tech",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS",["ANIM"]="TREE_EXO",["TYPE"]="REWARD"},
    ["TREE_CRAFT"] = {["TITLE"]="Unlock Craft Products",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS",["ANIM"]="TREE_CRAFT",["TYPE"]="REWARD"},
    ["TREE_FRIGATE"] = {["TITLE"]="Unlock Freighter Tech",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/BANNERICONS/BANNERICON.COG.DDS",["ANIM"]="TREE_FRIGATE",["TYPE"]="REWARD"},
    ["R_ENABLENEXUS"] = {["TITLE"]="Enable Nexus",["ICON"]="TEXTURES/UI/HUD/ICONS/BUILDINGS/NEXUS.DDS",["ANIM"]="R_ENABLENEXUS",["TYPE"]="REWARD"},
    ["REVEAL_RUNES"] = {["TITLE"]="Reveal Portal Runes",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/NOTIFICATIONS/ICON.RUNE.DDS",["ANIM"]="REVEAL_RUNES",["TYPE"]="REWARD"},
    ["FREIGHTER_TRANS"] = {["TITLE"]="Transfer Freighter Inventory",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/CATEGORIES/INVCAT.FREIGHTER.DDS",["ANIM"]="FREIGHTER_TRANS",["TYPE"]="REWARD"},
    ["R_CLEAR_WANTED"] = {["TITLE"]="Clear Wanted Level",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/GAMEMODE/STAR.DDS",["ANIM"]="R_CLEAR_WANTED",["TYPE"]="REWARD"},
    ["MIXER_WANTED"] = {["TITLE"]="Add Wanted Level",["ICON"]="TEXTURES/UI/FRONTEND/ICONS/GAMEMODE/STAR.DDS",["ANIM"]="MIXER_WANTED",["TYPE"]="REWARD"},
    --[""] = { ["TITLE"]="", ["ICON"]="" , ["ANIM"]="", ["TYPE"]="REWARD" },
}

SEED_TYPE_PATH =
{
    ["FIGHTER"]="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTER_PROC.SCENE.MBIN",
    ["DROPSHIP"]="MODELS/COMMON/SPACECRAFT/DROPSHIPS/DROPSHIP_PROC.SCENE.MBIN",
    ["SCIENTIFIC"]="MODELS/COMMON/SPACECRAFT/SCIENTIFIC/SCIENTIFIC_PROC.SCENE.MBIN",
    ["SHUTTLE"]="MODELS/COMMON/SPACECRAFT/SHUTTLE/SHUTTLE_PROC.SCENE.MBIN",
    ["ROYAL"]="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN",
    ["ALIEN"]="MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN",
    ["SAIL"]="MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIP_PROC.SCENE.MBIN",
    ["ROBOT"]="MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELSHIP_PROC.SCENE.MBIN",
    ["MULTITOOL"]="MODELS/COMMON/WEAPONS/MULTITOOL/MULTITOOL.SCENE.MBIN",
    ["ROYALMULTITOOL"]="MODELS/COMMON/WEAPONS/MULTITOOL/ROYALMULTITOOL.SCENE.MBIN",
    ["POLICESHIP"]="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERPOLICE.SCENE.MBIN",
}

function GetTriggerAnim(ANIM)
return [[
          <Property name="Anims" value="TkAnimationData">
            <Property name="Anim" value="]] .. ANIM .. [[" />
            <Property name="Filename" value="MODELS/TESTS/EFFECTTEST.ANIM.MBIN" />
            <Property name="AnimType" value="OneShotBlendable" />
            <Property name="AnimGroupOverride" value="false" />
            <Property name="Priority" value="0" />
            <Property name="FrameStart" value="0" />
            <Property name="FrameEnd" value="0" />
            <Property name="FrameEndGame" value="0" />
            <Property name="StartNode" value="" />
            <Property name="ExtraStartNodes" />
            <Property name="AdditiveBaseAnim" value="" />
            <Property name="AdditiveBaseFrame" value="0.000000" />
            <Property name="Mask" value="" />
            <Property name="OffsetMin" value="0.000000" />
            <Property name="OffsetMax" value="0.000000" />
            <Property name="Delay" value="0.000000" />
            <Property name="Speed" value="1.000000" />
            <Property name="ActionStartFrame" value="0.000000" />
            <Property name="ActionFrame" value="-1.000000" />
            <Property name="Actions" />
            <Property name="CreatureSize" value="AllSizes" />
            <Property name="Notifies" />
            <Property name="Additive" value="false" />
            <Property name="Mirrored" value="false" />
            <Property name="Active" value="true" />
            <Property name="Has30HzFrames" value="false" />
            <Property name="GameData" value="TkAnimationGameData">
              <Property name="RootMotion" value="None" />
              <Property name="BlockPlayerMovement" value="false" />
              <Property name="BlockPlayerWeapon" value="Unblocked" />
            </Property>
          </Property>
]]
end

function GetQuickAction(TITLE, ANIM, ICON)
return [[
    <Property value="GcPlayerEmote">
      <Property name="Title" value="]] .. TITLE .. [[" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="false" />
      <Property name="EmoteID" value="]] .. ANIM .. [[" />
      <Property name="AnimationName" value="]] .. ANIM .. [[" />
      <Property name="PropData" value="GcPlayerEmotePropData">
        <Property name="Model" value="" />
        <Property name="Scale" value="0.000000" />
        <Property name="Hand" value="GcHand">
          <Property name="Hand" value="Right" />
        </Property>
        <Property name="IsHologram" value="False" />
        <Property name="ScanEffectNodeName" value="" />
        <Property name="ScanEffect" value="GcScanEffectData">
          <Property name="Id" value="" />
          <Property name="ScanEffectType" value="Building" />
          <Property name="Colour">
            <Property name="R" value="0.823000" />
            <Property name="G" value="0.475000" />
            <Property name="B" value="0.432000" />
            <Property name="A" value="1.000000" />
          </Property>
          <Property name="BasecolourIntensity" value="0.200000" />
          <Property name="ScanlinesSeparation" value="0.100000" />
          <Property name="FresnelIntensity" value="3.000000" />
          <Property name="GlowIntensity" value="0.000000" />
          <Property name="WaveOffset" value="0.000000" />
          <Property name="WaveActive" value="true" />
          <Property name="FixedUpAxis" value="false" />
          <Property name="Transparent" value="false" />
          <Property name="ModelFade" value="false" />
          <Property name="FadeInTime" value="0.200000" />
          <Property name="FadeOutTime" value="0.200000" />
        </Property>
        <Property name="DelayTime" value="0.000000" />
      </Property>
      <Property name="Icon" value="TkTextureResource">
        <Property name="Filename" value="]] .. ICON .. [[" />
        <Property name="ResHandle" value="GcResource">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="false" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="false" />
      <Property name="MoveToCancel" value="True" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="false" />
      <Property name="RidingAnimationName" value="]] .. ANIM .. [[" />
      <Property name="IsPetCommand" value="false" />
      <Property name="PetCommandTitle" value="" />
      <Property name="PetCommandIcon" value="TkTextureResource">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="IconResource" value="GcResource">
        <Property name="ResourceID" value="0" />
      </Property>
      <Property name="IconPetCommandResource" value="GcResource">
        <Property name="ResourceID" value="0" />
      </Property>
    </Property>
]]
end

function GetComponents(TRIGGER_ACTION)
return [[
    <Property name="Components" value="GcTriggerActionComponentData">
      <Property name="GcTriggerActionComponentData">
        <Property name="HideModel" value="false" />
        <Property name="StartInactive" value="false" />
        <Property name="States">
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
]] .. TRIGGER_ACTION .. [[
            </Property>
          </Property>
        </Property>
        <Property name="Persistent" value="false" />
        <Property name="PersistentState" value="" />
        <Property name="ResetShotTimeOnStateChange" value="false" />
        <Property name="LinkStateToBaseGrid" value="false" />
      </Property>
    </Property>
]]
end

function GetShipRewardEntry(REWARDID, TYPE, SEED)
return [[
    <Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="]] .. REWARDID .. [[" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificShip">
              <Property name="GcRewardSpecificShip">
                <Property name="ShipResource" value="GcResourceElement">
                  <Property name="Filename" value="]] .. TYPE .. [[" />
                  <Property name="ResHandle" value="GcResource">
                    <Property name="ResourceID" value="0" />
                  </Property>
                  <Property name="Seed" value="]] .. SEED .. [[" />
                  <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
                    <Property name="Samplers" />
                  </Property>
                  <Property name="AltId" value="" />
                </Property>
                <Property name="Customisation" value="GcCharacterCustomisationData">
                  <Property name="DescriptorGroups" />
                  <Property name="PaletteID" value="" />
                  <Property name="Colours" />
                  <Property name="TextureOptions" />
                  <Property name="BoneScales" />
                  <Property name="Scale" value="1.000000" />
                </Property>
                <Property name="ShipLayout" value="GcInventoryLayout">
                  <Property name="Slots" value="48" />
                  <Property name="Seed" value="1" />
                  <Property name="Level" value="1" />
                </Property>
                <Property name="ShipInventory" value="GcInventoryContainer">
                  <Property name="Slots">
                    <Property name="Slots" value="GcInventoryElement">
                      <Property name="Type" value="GcInventoryType">
                        <Property name="InventoryType" value="Technology" />
                      </Property>
                      <Property name="Id" value="LAUNCHER" />
                      <Property name="Amount" value="0" />
                      <Property name="MaxAmount" value="300" />
                      <Property name="DamageFactor" value="0" />
                      <Property name="FullyInstalled" value="true" />
                      <Property name="Index" value="GcInventoryIndex">
                        <Property name="X" value="-1" />
                        <Property name="Y" value="-1" />
                      </Property>
                    </Property>
                    <Property name="Slots" value="GcInventoryElement">
                      <Property name="Type" value="GcInventoryType">
                        <Property name="InventoryType" value="Technology" />
                      </Property>
                      <Property name="Id" value="SHIPJUMP1" />
                      <Property name="Amount" value="0" />
                      <Property name="MaxAmount" value="100" />
                      <Property name="DamageFactor" value="0" />
                      <Property name="FullyInstalled" value="true" />
                      <Property name="Index" value="GcInventoryIndex">
                        <Property name="X" value="-1" />
                        <Property name="Y" value="-1" />
                      </Property>
                    </Property>
                    <Property name="Slots" value="GcInventoryElement">
                      <Property name="Type" value="GcInventoryType">
                        <Property name="InventoryType" value="Technology" />
                      </Property>
                      <Property name="Id" value="SHIPSHIELD" />
                      <Property name="Amount" value="200" />
                      <Property name="MaxAmount" value="200" />
                      <Property name="DamageFactor" value="0" />
                      <Property name="FullyInstalled" value="true" />
                      <Property name="Index" value="GcInventoryIndex">
                        <Property name="X" value="-1" />
                        <Property name="Y" value="-1" />
                      </Property>
                    </Property>
                    <Property name="Slots" value="GcInventoryElement">
                      <Property name="Type" value="GcInventoryType">
                        <Property name="InventoryType" value="Technology" />
                      </Property>
                      <Property name="Id" value="SHIPGUN1" />
                       <Property name="Amount" value="1000" />
                      <Property name="MaxAmount" value="1000" />
                      <Property name="DamageFactor" value="0" />
                      <Property name="FullyInstalled" value="true" />
                      <Property name="Index" value="GcInventoryIndex">
                        <Property name="X" value="-1" />
                        <Property name="Y" value="-1" />
                      </Property>
                    </Property>
                    <Property name="Slots" value="GcInventoryElement">
                      <Property name="Type" value="GcInventoryType">
                        <Property name="InventoryType" value="Technology" />
                      </Property>
                      <Property name="Id" value="HYPERDRIVE" />
                      <Property name="Amount" value="24" />
                      <Property name="MaxAmount" value="120" />
                      <Property name="DamageFactor" value="0" />
                      <Property name="FullyInstalled" value="true" />
                      <Property name="Index" value="GcInventoryIndex">
                        <Property name="X" value="-1" />
                        <Property name="Y" value="-1" />
                      </Property>
                    </Property>
                    <Property name="Slots" value="GcInventoryElement">
                      <Property name="Type" value="GcInventoryType">
                        <Property name="InventoryType" value="Technology" />
                      </Property>
                      <Property name="Id" value="SHIPLAS1" />
                      <Property name="Amount" value="1000" />
                      <Property name="MaxAmount" value="1000" />
                      <Property name="DamageFactor" value="0" />
                      <Property name="FullyInstalled" value="true" />
                      <Property name="Index" value="GcInventoryIndex">
                        <Property name="X" value="-1" />
                        <Property name="Y" value="-1" />
                      </Property>
                    </Property>
                  </Property>
                  <Property name="ValidSlotIndices" />
                  <Property name="Class" value="GcInventoryClass">
                    <Property name="InventoryClass" value="S" />
                  </Property>
                  <Property name="StackSizeGroup" value="GcInventoryStackSizeGroup">
                    <Property name="InventoryStackSizeGroup" value="Default" />
                  </Property>
                  <Property name="BaseStatValues" />
                  <Property name="SpecialSlots" />
                  <Property name="Width" value="0" />
                  <Property name="Height" value="0" />
                  <Property name="IsCool" value="false" />
                  <Property name="Name" value="" />
                  <Property name="Version" value="0" />
                </Property>
                <Property name="CostAmount" value="0" />
                <Property name="CostCurrency" value="GcCurrency">
                  <Property name="Currency" value="Units" />
                </Property>
                <Property name="ShipType" value="GcSpaceshipClasses">
                  <Property name="ShipClass" value="Fighter" />
                </Property>
                <Property name="UseOverrideSizeType" value="false" />
                <Property name="OverrideSizeType" value="GcInventoryLayoutSizeType">
                  <Property name="SizeType" value="FgtLarge" />
                </Property>
                <Property name="NameOverride" value="" />
                <Property name="IsGift" value="true" />
                <Property name="IsRewardShip" value="true" />
                <Property name="FormatAsSeasonal" value="false" />
                <Property name="ModelViewOverride" value="GcModelViews">
                  <Property name="ModelViews" value="None" />
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]]
end

function GetMultitoolRewardEntry(REWARDID, TYPE, SEED)
return [[
    <Property name="GenericTable" value="GcGenericRewardTableEntry">
      <Property name="Id" value="]] .. REWARDID .. [[" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100.000000" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardSpecificWeapon">
              <Property name="GcRewardSpecificWeapon">
                <Property name="WeaponInventory" value="GcInventoryContainer">
                  <Property name="Slots" />
                  <Property name="ValidSlotIndices" />
                  <Property name="Class" value="GcInventoryClass">
                    <Property name="InventoryClass" value="S" />
                  </Property>
                  <Property name="StackSizeGroup" value="GcInventoryStackSizeGroup">
                    <Property name="InventoryStackSizeGroup" value="Default" />
                  </Property>
                  <Property name="BaseStatValues" />
                  <Property name="SpecialSlots" />
                  <Property name="Width" value="0" />
                  <Property name="Height" value="0" />
                  <Property name="IsCool" value="false" />
                  <Property name="Name" value="" />
                  <Property name="Version" value="0" />
                </Property>
                <Property name="WeaponLayout" value="GcInventoryLayout">
                  <Property name="Slots" value="24" />
                  <Property name="Seed" value="1" />
                  <Property name="Level" value="1" />
                </Property>
                <Property name="WeaponResource" value="GcExactResource">
                  <Property name="Filename" value="]] .. TYPE .. [[" />
                  <Property name="GenerationSeed" value="]] .. SEED .. [[" />
                </Property>
                <Property name="NameOverride" value="]] .. "" .. [[" />
                <Property name="IsGift" value="true" />
                <Property name="IsRewardWeapon" value="true" />
                <Property name="FormatAsSeasonal" value="false" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]]
end

function GetRewardAction(ANIM, REWARDID)
return
[[
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="]] .. ANIM .. [[" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcRewardAction">
                    <Property name="GcRewardAction">
                      <Property name="Reward" value="]] .. REWARDID .. [[" />
                    </Property>
                  </Property>
                </Property>
              </Property>
]]
end

NEW_EMOTES_ALL = ""
EMOTE_GENERIC_ICON = "TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WONDER.DDS"
EMOTE_GENERIC_ICON_HAPPY = "TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/LAUGH.DDS"
EMOTE_GENERIC_ICON_ANGRY = "TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/NEGATIVE.DDS"
EMOTE_GENERIC_ICON_GREET = "TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/WAVE.DDS"
NEW_EMOTE_TABLE =
{
    { ["TITLE"]="Fake Death",            ["ANIM"]="0H_DEATH",       ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/WIKI/COMBATHEADER.DDS" },
    { ["TITLE"]="PANIC!",                ["ANIM"]="0H_FALL_PANIC",  ["ICON"]=EMOTE_GENERIC_ICON },
    { ["TITLE"]="Happy 1",               ["ANIM"]="0H_HAPPY_01",    ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
    { ["TITLE"]="Happy 2",               ["ANIM"]="0H_HAPPY_02",    ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
    { ["TITLE"]="Happy 3",               ["ANIM"]="0H_HAPPY_03",    ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
    { ["TITLE"]="Happy 4",               ["ANIM"]="0H_HAPPY_04",    ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
    { ["TITLE"]="Happy 5",               ["ANIM"]="0H_HAPPY_05",    ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
    { ["TITLE"]="Happy 6",               ["ANIM"]="0H_HAPPY_06",    ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
    { ["TITLE"]="Happy 7",               ["ANIM"]="0H_HAPPY_07",    ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
    { ["TITLE"]="Happy 8",               ["ANIM"]="0H_HAPPY_08",    ["ICON"]=EMOTE_GENERIC_ICON_HAPPY },
    { ["TITLE"]="Angry 1",               ["ANIM"]="0H_ANGRY_01",    ["ICON"]=EMOTE_GENERIC_ICON_ANGRY },
    { ["TITLE"]="Angry 2",               ["ANIM"]="0H_ANGRY_02",    ["ICON"]=EMOTE_GENERIC_ICON_ANGRY },
    { ["TITLE"]="Angry 3",               ["ANIM"]="0H_ANGRY_03",    ["ICON"]=EMOTE_GENERIC_ICON_ANGRY },
    { ["TITLE"]="Angry 4",               ["ANIM"]="0H_ANGRY_04",    ["ICON"]=EMOTE_GENERIC_ICON_ANGRY },
    { ["TITLE"]="Greet 1",               ["ANIM"]="0H_GREET_01",    ["ICON"]=EMOTE_GENERIC_ICON_GREET },
    { ["TITLE"]="Greet 2",               ["ANIM"]="0H_GREET_02",    ["ICON"]=EMOTE_GENERIC_ICON_GREET },
    { ["TITLE"]="Greet 3",               ["ANIM"]="0H_GREET_03",    ["ICON"]=EMOTE_GENERIC_ICON_GREET },
    { ["TITLE"]="Greet 4",               ["ANIM"]="0H_GREET_04",    ["ICON"]=EMOTE_GENERIC_ICON_GREET },
    { ["TITLE"]="Greet 5",               ["ANIM"]="0H_GREET_05",    ["ICON"]=EMOTE_GENERIC_ICON_GREET },
    { ["TITLE"]="Greet 6",               ["ANIM"]="0H_GREET_06",    ["ICON"]=EMOTE_GENERIC_ICON_GREET },
    { ["TITLE"]="Greet 7",               ["ANIM"]="0H_GREET_07",    ["ICON"]=EMOTE_GENERIC_ICON_GREET },
    { ["TITLE"]="Slide",                 ["ANIM"]="0H_SLIDE_F",     ["ICON"]=EMOTE_GENERIC_ICON },
    { ["TITLE"]="Land Float",            ["ANIM"]="0H_SWIM_IDLE",   ["ICON"]=EMOTE_GENERIC_ICON },
    { ["TITLE"]="Land Swim",             ["ANIM"]="0H_SWIM_F",      ["ICON"]=EMOTE_GENERIC_ICON },
    { ["TITLE"]="Interact With Console", ["ANIM"]="0H_INT_CNSL_IN", ["ICON"]="TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/POINT.DDS" },
    { ["TITLE"]="Gather",                ["ANIM"]="0H_INT_GATH_IN", ["ICON"]=EMOTE_GENERIC_ICON },
}
for i=1,#NEW_EMOTE_TABLE,1 do
    NEW_EMOTES_ALL = NEW_EMOTES_ALL .. GetQuickAction(NEW_EMOTE_TABLE[i]["TITLE"], NEW_EMOTE_TABLE[i]["ANIM"], NEW_EMOTE_TABLE[i]["ICON"])
end

ANIMS                  = ""
COMPONENTS             = ""
COMPONENTS_ALL         = ""
ACTIONCOMPONENTS       = ""
ACTIONCOMPONENTS_TABLE = {}
EMOTEMENU              = ""
REWARDTABLE            = ""
SCANEVENTTABLE         = ""
ACTIONCOMPONENTS_COUNT = 0
ACTIONCOMPONENTS_LIMIT = 28 --actually 32

for i=1,#QUICK_ACTION_LIST,1 do
    print(QUICK_ACTION_LIST[i])
    if ACTIONCOMPONENTS_COUNT >= ACTIONCOMPONENTS_LIMIT then
        print("new GcTriggerActionComponentData")
        ACTIONCOMPONENTS_LIMIT = ACTIONCOMPONENTS_LIMIT - 1
        ACTIONCOMPONENTS_COUNT = 0
        table.insert(ACTIONCOMPONENTS_TABLE, ACTIONCOMPONENTS)
        ACTIONCOMPONENTS = ""
    end
    if QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]] then
        if QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["COMPONENT"] then
            COMPONENTS = COMPONENTS .. QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["COMPONENT"]
        end
        if QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["TYPE"] == "REWARD" and not QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["ACTION_TRIGGER"] then
            ACTIONCOMPONENTS = ACTIONCOMPONENTS .. GetRewardAction(QUICK_ACTION_LIST[i], QUICK_ACTION_LIST[i])
        else
            ACTIONCOMPONENTS = ACTIONCOMPONENTS .. QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["ACTION_TRIGGER"]
        end
        EMOTEMENU = EMOTEMENU .. GetQuickAction(QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["TITLE"], QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["ANIM"], QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["ICON"])
        ANIMS     = ANIMS     .. GetTriggerAnim(QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["ANIM"])
        if QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["REWARDTABLE"] then
            REWARDTABLE = REWARDTABLE .. QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["REWARDTABLE"]
        end
        if QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["SCANEVENTTABLE"] then
            SCANEVENTTABLE = SCANEVENTTABLE .. QUICK_ACTION_MENU[QUICK_ACTION_LIST[i]]["SCANEVENTTABLE"]
        end
    else --pure reward
        ACTIONCOMPONENTS = ACTIONCOMPONENTS .. GetRewardAction(QUICK_ACTION_LIST[i], QUICK_ACTION_LIST[i])
        EMOTEMENU        = EMOTEMENU        .. GetQuickAction(QUICK_ACTION_LIST[i], QUICK_ACTION_LIST[i], GENERIC_BUTTON_ICON)
        ANIMS            = ANIMS            .. GetTriggerAnim(QUICK_ACTION_LIST[i])
    end
    ACTIONCOMPONENTS_COUNT = ACTIONCOMPONENTS_COUNT + 1
end

SHIPCOUNTER = 1
MULTITOOLCOUNTER = 1

if #USER_SEED_LIST > 0 then
    for i=1,#USER_SEED_LIST,1 do
        print(USER_SEED_LIST[i][1], USER_SEED_LIST[i][2])
        if ACTIONCOMPONENTS_COUNT >= ACTIONCOMPONENTS_LIMIT then
            print("new GcTriggerActionComponentData")
            ACTIONCOMPONENTS_LIMIT = ACTIONCOMPONENTS_LIMIT - 1
            ACTIONCOMPONENTS_COUNT = 0
            table.insert(ACTIONCOMPONENTS_TABLE, ACTIONCOMPONENTS)
            ACTIONCOMPONENTS = ""
        end
        local REWARD_ID = ""
        if USER_SEED_LIST[i][1] == "MULTITOOL" then
            REWARD_ID        = USER_SEED_LIST[i][1] .. "-" .. MULTITOOLCOUNTER
            MULTITOOLCOUNTER = MULTITOOLCOUNTER + 1
            REWARDTABLE      = REWARDTABLE .. GetMultitoolRewardEntry(REWARD_ID, SEED_TYPE_PATH[USER_SEED_LIST[i][1]], tonumber(USER_SEED_LIST[i][2]))
            EMOTEMENU        = EMOTEMENU   .. GetQuickAction(REWARD_ID, REWARD_ID, "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\HERO.TWITCH.GUN02.DDS")
        elseif USER_SEED_LIST[i][1] == "POLICESHIP" then
            REWARD_ID        = USER_SEED_LIST[i][1] .. "-" .. SHIPCOUNTER
            SHIPCOUNTER      = SHIPCOUNTER + 1
            REWARDTABLE      = REWARDTABLE .. GetShipRewardEntry(REWARD_ID, SEED_TYPE_PATH[USER_SEED_LIST[i][1]], HexToDec(USER_SEED_LIST[i][2]))
            EMOTEMENU        = EMOTEMENU   .. GetQuickAction(REWARD_ID, REWARD_ID, "TEXTURES\UI\HUD\POLICEMESSAGEICON.DDS")
        else
            REWARD_ID        = USER_SEED_LIST[i][1] .. "-" .. SHIPCOUNTER
            SHIPCOUNTER      = SHIPCOUNTER + 1
            REWARDTABLE      = REWARDTABLE .. GetShipRewardEntry(REWARD_ID, SEED_TYPE_PATH[USER_SEED_LIST[i][1]], HexToDec(USER_SEED_LIST[i][2]))
            EMOTEMENU        = EMOTEMENU   .. GetQuickAction(REWARD_ID, REWARD_ID, "TEXTURES\UI\FRONTEND\ICONS\SPECIALSHOP\SPECIAL1.TWITCH.SHIP11.DDS")
        end
        ACTIONCOMPONENTS       = ACTIONCOMPONENTS .. GetRewardAction(REWARD_ID, REWARD_ID)
        ANIMS                  = ANIMS            .. GetTriggerAnim(REWARD_ID)
        ACTIONCOMPONENTS_COUNT = ACTIONCOMPONENTS_COUNT + 1
    end
end
table.insert(ACTIONCOMPONENTS_TABLE, ACTIONCOMPONENTS)

for i=1,#ACTIONCOMPONENTS_TABLE,1 do
    COMPONENTS_ALL = COMPONENTS_ALL .. GetComponents(ACTIONCOMPONENTS_TABLE[i])
end
COMPONENTS_ALL = COMPONENTS_ALL .. COMPONENTS

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Meta-Mod",
["MOD_AUTHOR"]      = "Mjjstral and Babscoole",
["MOD_DESCRIPTION"] = "Meta Mod - Collection of new QOL quick menu actions",
["NMS_VERSION"]     = "5.73",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Components", "TkAnimationComponentData"},
                            ["PRECEDING_KEY_WORDS"] = {"Anims"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] = ANIMS
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] = COMPONENTS_ALL
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\EMOTEMENU.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Emotes"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] = NEW_EMOTES_ALL
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Emotes"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] = EMOTEMENU
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title", "Toggle Backpack"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidingAnimationName", ""},
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GenericTable"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] = REWARDTABLE
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\SCANEVENTTABLETUTORIAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Events"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["ADD"] = SCANEVENTTABLE
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {"MODELS\COMMON\SPACECRAFT\POLICE\POLICESHIP.SCENE.MBIN", "MODELS\COMMON\SPACECRAFT\FIGHTERS\POLICE.SCENE.MBIN", "REMOVE"},
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\POLICE.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "PoliceShip"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY", "1.400000"},
                                {"TransZ", "-1.500000"},
                                {"ScaleX", "1.400000"},
                                {"ScaleY", "1.400000"},
                                {"ScaleZ", "1.400000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "PoliceShip", "Name", "ATTACHMENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "AttackPointLight", "Name", "FALLOFF_RATE"},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER|collisionCapsule"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="REFGalMapData" />
          <Property name="NameHash" value="4073298945" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\GALACTICMAP\GALACTICMAP.SCENE.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="EMBEDGEOMETRY" />
              <Property name="Value" value="TRUE" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="REFSaveData" />
          <Property name="NameHash" value="96205072" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SAVE\SAVE.SCENE.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="EMBEDGEOMETRY" />
              <Property name="Value" value="TRUE" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="REFShieldData" />
          <Property name="NameHash" value="781004035" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD\SHIELD.SCENE.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="EMBEDGEOMETRY" />
              <Property name="Value" value="TRUE" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="REFHarvestData" />
          <Property name="NameHash" value="2176906341" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\HARVEST\HARVEST.SCENE.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="EMBEDGEOMETRY" />
              <Property name="Value" value="TRUE" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="REFPScanData" />
          <Property name="NameHash" value="241619397" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\PLANETSCANNER\PLANETSCANNER.SCENE.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="EMBEDGEOMETRY" />
              <Property name="Value" value="TRUE" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
]]
                        },
                    }
                },
            }
        }
    },
["ADD_FILES"] =
    {
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTERPOLICE.DESCRIPTOR.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkModelDescriptorList">
  <Property name="List">
    <Property name="List" value="TkResourceDescriptorList">
      <Property name="TypeId" value="_SHIP_" />
      <Property name="Descriptors">
        <Property name="Descriptors" value="TkResourceDescriptorData">
          <Property name="Id" value="_SHIP_POLICE" />
          <Property name="Name" value="_Ship_Police" />
          <Property name="ReferencePaths">
            <Property name="ReferencePaths" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/POLICE.SCENE.MBIN" />
          </Property>
          <Property name="Chance" value="0.000000" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\SPACECRAFT\FIGHTERS\FIGHTERPOLICE.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/FIGHTERCLASSICGOLD" />
  <Property name="NameHash" value="4182676705" />
  <Property name="Type" value="MODEL" />
  <Property name="Transform" value="TkTransformData">
    <Property name="TransX" value="0.000000" />
    <Property name="TransY" value="0.000000" />
    <Property name="TransZ" value="0.000000" />
    <Property name="RotX" value="0.000000" />
    <Property name="RotY" value="0.000000" />
    <Property name="RotZ" value="0.000000" />
    <Property name="ScaleX" value="1.000000" />
    <Property name="ScaleY" value="1.000000" />
    <Property name="ScaleZ" value="1.000000" />
  </Property>
  <Property name="PlatformExclusion" value="0" />
  <Property name="Attributes">
    <Property name="Attributes" value="TkSceneNodeAttributeData">
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="EngineFlare_Distant" />
      <Property name="NameHash" value="3869425187" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="1.628213" />
        <Property name="TransZ" value="-3.462083" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="180.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="20.8902454" />
        <Property name="ScaleY" value="20.8902454" />
        <Property name="ScaleZ" value="20.8902454" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children" />
    </Property>
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="ProcRoot_StarShip" />
      <Property name="NameHash" value="3871606254" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes" />
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="_Ship_Police" />
          <Property name="NameHash" value="3628092373" />
          <Property name="Type" value="REFERENCE" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="SCENEGRAPH" />
              <Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/POLICE.SCENE.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="EMBEDGEOMETRY" />
              <Property name="Value" value="TRUE" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData">
              <Property name="Name" value="Data" />
              <Property name="NameHash" value="2810148397" />
              <Property name="Type" value="LOCATOR" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="0.000000" />
                <Property name="TransZ" value="0.000000" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="ATTACHMENT" />
                  <Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/COCKPIT/COCKPIT_A/COCKPITA/ENTITIES/COCKPIT_A.ENTITY.MBIN" />
                </Property>
              </Property>
              <Property name="Children">
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="INTERACTOrigin" />
                  <Property name="NameHash" value="3066580072" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.800000" />
                    <Property name="TransZ" value="0.700000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="INTERACT" />
                  <Property name="NameHash" value="3698755080" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.800000" />
                    <Property name="TransZ" value="0.700000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="CrashEffect" />
                  <Property name="NameHash" value="1244254611" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="2.309226" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="MaintenanceSlot1" />
                  <Property name="NameHash" value="304746222" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.338705" />
                    <Property name="TransY" value="2.185556" />
                    <Property name="TransZ" value="-0.734243" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="MaintenanceSlot0" />
                  <Property name="NameHash" value="1004495448" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.338705" />
                    <Property name="TransY" value="1.328125" />
                    <Property name="TransZ" value="2.983213" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="CUSTOM" />
                  <Property name="NameHash" value="2675539979" />
                  <Property name="Type" value="COLLISION" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.500000" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes">
                    <Property name="Attributes" value="TkSceneNodeAttributeData">
                      <Property name="Name" value="TYPE" />
                      <Property name="Value" value="Box" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData">
                      <Property name="Name" value="WIDTH" />
                      <Property name="Value" value="1.000000" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData">
                      <Property name="Name" value="HEIGHT" />
                      <Property name="Value" value="1.000000" />
                    </Property>
                    <Property name="Attributes" value="TkSceneNodeAttributeData">
                      <Property name="Name" value="DEPTH" />
                      <Property name="Value" value="1.000000" />
                    </Property>
                  </Property>
                  <Property name="Children" />
                </Property>
                <Property name="Children" value="TkSceneNodeData">
                  <Property name="Name" value="Cockpit" />
                  <Property name="NameHash" value="876108911" />
                  <Property name="Type" value="LOCATOR" />
                  <Property name="Transform" value="TkTransformData">
                    <Property name="TransX" value="0.000000" />
                    <Property name="TransY" value="1.000000" />
                    <Property name="TransZ" value="0.000000" />
                    <Property name="RotX" value="0.000000" />
                    <Property name="RotY" value="0.000000" />
                    <Property name="RotZ" value="0.000000" />
                    <Property name="ScaleX" value="1.000000" />
                    <Property name="ScaleY" value="1.000000" />
                    <Property name="ScaleZ" value="1.000000" />
                  </Property>
                  <Property name="PlatformExclusion" value="0" />
                  <Property name="Attributes" />
                  <Property name="Children">
                    <Property name="Children" value="TkSceneNodeData">
                      <Property name="Name" value="CockpitPos" />
                      <Property name="NameHash" value="465567180" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="1.000000" />
                        <Property name="TransZ" value="0.000000" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes" />
                      <Property name="Children" />
                    </Property>
                    <Property name="Children" value="TkSceneNodeData">
                      <Property name="Name" value="Inventory" />
                      <Property name="NameHash" value="1402981485" />
                      <Property name="Type" value="LOCATOR" />
                      <Property name="Transform" value="TkTransformData">
                        <Property name="TransX" value="0.000000" />
                        <Property name="TransY" value="0.000000" />
                        <Property name="TransZ" value="0.000000" />
                        <Property name="RotX" value="0.000000" />
                        <Property name="RotY" value="0.000000" />
                        <Property name="RotZ" value="0.000000" />
                        <Property name="ScaleX" value="1.000000" />
                        <Property name="ScaleY" value="1.000000" />
                        <Property name="ScaleZ" value="1.000000" />
                      </Property>
                      <Property name="PlatformExclusion" value="0" />
                      <Property name="Attributes">
                        <Property name="Attributes" value="TkSceneNodeAttributeData">
                          <Property name="Name" value="ATTACHMENT" />
                          <Property name="Value" value="MODELS/COMMON/SPACECRAFT/FIGHTERS/ENTITIES/FIGHTERBASE.ENTITY.MBIN" />
                        </Property>
                      </Property>
                      <Property name="Children" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\GALACTICMAP\GALACTICMAP.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\GALACTICMAP" />
  <Property name="NameHash" value="1187083149" />
  <Property name="Type" value="LOCATOR" />
  <Property name="Transform" value="TkTransformData">
    <Property name="TransX" value="0" />
    <Property name="TransY" value="0" />
    <Property name="TransZ" value="0" />
    <Property name="RotX" value="0" />
    <Property name="RotY" value="0" />
    <Property name="RotZ" value="0" />
    <Property name="ScaleX" value="1" />
    <Property name="ScaleY" value="1" />
    <Property name="ScaleZ" value="1" />
    </Property>
    <Property name="PlatformExclusion" value="0" />
  <Property name="Attributes">
    <Property name="Attributes" value="TkSceneNodeAttributeData">>
      <Property name="Name" value="ATTACHMENT" />
      <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\GALACTICMAP\ENTITIES\GALACTICMAP.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\GALACTICMAP\ENTITIES\GALACTICMAP.ENTITY.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAttachmentData">
  <Property name="AdditionalData" />
  <Property name="Components">
    <Property name="Components" value="GcSimpleInteractionComponentData">
      <Property name="GcSimpleInteractionComponentData">
        <Property name="SimpleInteractionType" value="FreighterGalacticMap" />
        <Property name="InteractDistance" value="0.000000" />
        <Property name="Use2dInteractDistance" value="false" />
        <Property name="Id" value="" />
        <Property name="Rarity" value="GcRarity">
          <Property name="Rarity" value="Common" />
        </Property>
        <Property name="Size" value="GcSizeIndicator">
          <Property name="SizeIndicator" value="Medium" />
        </Property>
        <Property name="TriggerAction" value="INACTIVE" />
        <Property name="TriggerActionOnPrepare" value="" />
        <Property name="TriggerActionToggle" value="" />
        <Property name="DeactivateSimilarInteractionsNearbyRadius" value="0.000000" />
        <Property name="BroadcastTriggerAction" value="false" />
        <Property name="Delay" value="0.000000" />
        <Property name="HideContents" value="true" />
        <Property name="InteractIsCrime" value="false" />
        <Property name="InteractFiendCrimeType" value="GcFiendCrime">
          <Property name="FiendCrime" value="None" />
        </Property>
        <Property name="InteractFiendCrimeChance" value="0.000000" />
        <Property name="InteractCrimeLevel" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="NotifyEncounter" value="false" />
        <Property name="ActivationCost" value="GcInteractionActivationCost">
          <Property name="SubstanceId" value="" />
          <Property name="AltIds" />
          <Property name="Cost" value="0" />
          <Property name="Repeat" value="false" />
          <Property name="RequiredTech" value="" />
          <Property name="UseCostID" value="" />
          <Property name="StartMissionOnCantAfford" value="" />
          <Property name="OnlyChargeDuringSeasons" />
        </Property>
        <Property name="StatToTrack" value="GcStatsEnum">
          <Property name="StatEnum" value="None" />
        </Property>
        <Property name="StartsBuried" value="false" />
        <Property name="MustBeVisibleToInteract" value="false" />
        <Property name="NeedsStorm" value="false" />
        <Property name="Name" value="" />
        <Property name="ForceSubtitle" value="" />
        <Property name="VRInteractMessage" value="" />
        <Property name="TerminalHeading" value="" />
        <Property name="TerminalMessage" value="" />
        <Property name="ScanType" value="" />
        <Property name="ScanData" value="" />
        <Property name="ScanIcon" value="">
          <Property name="DiscoveryType" value="Unknown" />
        </Property>
        <Property name="ActivateLocatorsFromRarity" value="false" />
        <Property name="RarityLocators">
          <Property name="Common" value="" />
          <Property name="Uncommon" value="" />
          <Property name="Rare" value="" />
        </Property>
        <Property name="BaseBuildingTriggerActions" />
        <Property name="RewardOverrideTable" />
        <Property name="PersistencyBufferOverride" />
        <Property name="UsePersonalPersistentBuffer" value="false" />
        <Property name="ReseedOnRewardSuccess" value="false" />
        <Property name="CanCollectInMech" value="false" />
      </Property>
    </Property>
    <Property name="Components" value="GcTriggerActionComponentData">
      <Property name="GcTriggerActionComponentData">
        <Property name="HideModel" value="false" />
        <Property name="StartInactive" value="false" />
        <Property name="States">
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers" />
          </Property>
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="GALACTICMAP" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcFireSimpleInteractionAction">
                    <Property name="GcFireSimpleInteractionAction" />
                  </Property>
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="BOOT" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Scene" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Persistent" value="false" />
        <Property name="PersistentState" value="" />
        <Property name="ResetShotTimeOnStateChange" value="false" />
        <Property name="LinkStateToBaseGrid" value="false" />
      </Property>
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property name="LodDistances" value="0.000000" />
    <Property name="LodDistances" value="50.000000" />
    <Property name="LodDistances" value="80.000000" />
    <Property name="LodDistances" value="150.000000" />
    <Property name="LodDistances" value="500.000000" />
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SAVE\SAVE.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SAVE" />
  <Property name="NameHash" value="643301275" />
  <Property name="Type" value="LOCATOR" />
  <Property name="Transform" value="TkTransformData">
    <Property name="TransX" value="0" />
    <Property name="TransY" value="0" />
    <Property name="TransZ" value="0" />
    <Property name="RotX" value="0" />
    <Property name="RotY" value="0" />
    <Property name="RotZ" value="0" />
    <Property name="ScaleX" value="1" />
    <Property name="ScaleY" value="1" />
    <Property name="ScaleZ" value="1" />
  </Property>
  <Property name="PlatformExclusion" value="0" />
  <Property name="Attributes">
    <Property name="Attributes" value="TkSceneNodeAttributeData">
      <Property name="Name" value="ATTACHMENT" />
      <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SAVE\ENTITIES\SAVE.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SAVE\ENTITIES\SAVE.ENTITY.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAttachmentData">
  <Property name="AdditionalData" />
  <Property name="Components">
    <Property name="Components" value="GcSimpleInteractionComponentData">
      <Property name="GcSimpleInteractionComponentData">
        <Property name="SimpleInteractionType" value="Save" />
        <Property name="InteractDistance" value="0.000000" />
        <Property name="Use2dInteractDistance" value="false" />
        <Property name="Id" value="" />
        <Property name="Rarity" value="GcRarity">
          <Property name="Rarity" value="Common" />
        </Property>
        <Property name="Size" value="GcSizeIndicator">
          <Property name="SizeIndicator" value="Medium" />
        </Property>
        <Property name="TriggerAction" value="INACTIVE" />
        <Property name="TriggerActionOnPrepare" value="" />
        <Property name="TriggerActionToggle" value="" />
        <Property name="DeactivateSimilarInteractionsNearbyRadius" value="0.000000" />
        <Property name="BroadcastTriggerAction" value="false" />
        <Property name="Delay" value="0.000000" />
        <Property name="HideContents" value="true" />
        <Property name="InteractIsCrime" value="false" />
        <Property name="InteractFiendCrimeType" value="GcFiendCrime">
          <Property name="FiendCrime" value="None" />
        </Property>
        <Property name="InteractFiendCrimeChance" value="1.000000" />
        <Property name="InteractCrimeLevel" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="NotifyEncounter" value="false" />
        <Property name="ActivationCost" value="GcInteractionActivationCost">
          <Property name="SubstanceId" value="" />
          <Property name="AltIds" />
          <Property name="Cost" value="0" />
          <Property name="Repeat" value="false" />
          <Property name="RequiredTech" value="" />
          <Property name="UseCostID" value="" />
          <Property name="StartMissionOnCantAfford" value="" />
          <Property name="OnlyChargeDuringSeasons" />
        </Property>
        <Property name="StatToTrack" value="GcStatsEnum">
          <Property name="StatEnum" value="None" />
        </Property>
        <Property name="StartsBuried" value="false" />
        <Property name="MustBeVisibleToInteract" value="false" />
        <Property name="NeedsStorm" value="false" />
        <Property name="Name" value="" />
        <Property name="ForceSubtitle" value="" />
        <Property name="VRInteractMessage" value="" />
        <Property name="TerminalHeading" value="" />
        <Property name="TerminalMessage" value="" />
        <Property name="ScanType" value="" />
        <Property name="ScanData" value="" />
        <Property name="ScanIcon" value="">
          <Property name="DiscoveryType" value="Unknown" />
        </Property>
        <Property name="ActivateLocatorsFromRarity" value="false" />
        <Property name="RarityLocators">
          <Property name="Common" value="" />
          <Property name="Uncommon" value="" />
          <Property name="Rare" value="" />
        </Property>
        <Property name="BaseBuildingTriggerActions" />
        <Property name="RewardOverrideTable" />
        <Property name="PersistencyBufferOverride" />
        <Property name="UsePersonalPersistentBuffer" value="false" />
        <Property name="ReseedOnRewardSuccess" value="false" />
        <Property name="CanCollectInMech" value="false" />
      </Property>
    </Property>
    <Property name="Components" value="GcTriggerActionComponentData">
      <Property name="GcTriggerActionComponentData">
        <Property name="HideModel" value="false" />
        <Property name="StartInactive" value="false" />
        <Property name="States">
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="WAIT_FOR_SAVE" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Local" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="SAVE" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcPlayAudioAction">
                    <Property name="GcPlayAudioAction">
                      <Property name="Sound" value="SignalScanner" />
                      <Property name="UseOcclusion" value="false" />
                      <Property name="OcclusionRadius" value="2.000000" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcFireSimpleInteractionAction">
                    <Property name="GcFireSimpleInteractionAction" />
                  </Property>
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="WAIT_FOR_SAVE" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Local" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="WAIT_FOR_SAVE" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="SAVEGAME" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="SAVE" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Local" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Persistent" value="false" />
        <Property name="PersistentState" value="" />
        <Property name="ResetShotTimeOnStateChange" value="false" />
        <Property name="LinkStateToBaseGrid" value="false" />
      </Property>
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property name="LodDistances" value="0.000000" />
    <Property name="LodDistances" value="50.000000" />
    <Property name="LodDistances" value="80.000000" />
    <Property name="LodDistances" value="150.000000" />
    <Property name="LodDistances" value="500.000000" />
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD\SHIELD.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD" />
  <Property name="NameHash" value="2755176659" />
  <Property name="Type" value="MODEL" />
  <Property name="Transform" value="TkTransformData">
    <Property name="TransX" value="0.000000" />
    <Property name="TransY" value="0.000000" />
    <Property name="TransZ" value="0.000000" />
    <Property name="RotX" value="0.000000" />
    <Property name="RotY" value="0.000000" />
    <Property name="RotZ" value="0.000000" />
    <Property name="ScaleX" value="1.000000" />
    <Property name="ScaleY" value="1.000000" />
    <Property name="ScaleZ" value="1.000000" />
  </Property>
  <Property name="PlatformExclusion" value="0" />
  <Property name="Attributes">
    <Property name="Attributes" value="TkSceneNodeAttributeData">
      <Property name="Name" value="GEOMETRY" />
      <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD.GEOMETRY.MBIN" />
    </Property>
    <Property name="Attributes" value="TkSceneNodeAttributeData">
      <Property name="Name" value="NUMLODS" />
      <Property name="Value" value="1" />
    </Property>
  </Property>
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="BubbleShield" />
      <Property name="NameHash" value="2175858882" />
      <Property name="Type" value="MESH" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="BATCHSTARTPHYSI" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="VERTRSTARTPHYSI" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="VERTRENDPHYSICS" />
          <Property name="Value" value="5195" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="BATCHSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="BATCHCOUNT" />
          <Property name="Value" value="27072" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="VERTRSTARTGRAPH" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="VERTRENDGRAPHIC" />
          <Property name="Value" value="5195" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="FIRSTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="LASTSKINMAT" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="LODLEVEL" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="BOUNDHULLST" />
          <Property name="Value" value="0" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="BOUNDHULLED" />
          <Property name="Value" value="48" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="AABBMINX" />
          <Property name="Value" value="-6.468001" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="AABBMINY" />
          <Property name="Value" value="-6.467999" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="AABBMINZ" />
          <Property name="Value" value="-6.468003" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="AABBMAXX" />
          <Property name="Value" value="6.468001" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="AABBMAXY" />
          <Property name="Value" value="6.467996" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="AABBMAXZ" />
          <Property name="Value" value="6.468003" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="HASH" />
          <Property name="Value" value="13535163643597906482" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="MATERIAL" />
          <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD\SHIELD_MAT.MATERIAL.MBIN" />
        </Property>
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="MESHLINK" />
          <Property name="Value" value="BubbleShieldShape" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="Data" />
          <Property name="NameHash" value="2810148397" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="3.871552" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD\ENTITIES\SHIELD_A.ENTITY.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="ATTACHMENT" />
              <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD\ENTITIES\SHIELD_B.ENTITY.MBIN" />
            </Property>
          </Property>
          <Property name="Children">
            <Property name="Children" value="TkSceneNodeData">
              <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD" />
              <Property name="NameHash" value="2755176659" />
              <Property name="Type" value="COLLISION" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="-1.600000" />
                <Property name="TransY" value="1.600000" />
                <Property name="TransZ" value="0.000000" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="90" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="TYPE" />
                  <Property name="Value" value="Box" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="WIDTH" />
                  <Property name="Value" value="3.200000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="HEIGHT" />
                  <Property name="Value" value="0.300000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="DEPTH" />
                  <Property name="Value" value="3.200000" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData">
              <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD" />
              <Property name="NameHash" value="2755176659" />
              <Property name="Type" value="COLLISION" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="1.600000" />
                <Property name="TransZ" value="-1.600000" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="-90.000000" />
                <Property name="RotZ" value="90.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="TYPE" />
                  <Property name="Value" value="Box" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="WIDTH" />
                  <Property name="Value" value="3.200000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="HEIGHT" />
                  <Property name="Value" value="0.300000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="DEPTH" />
                  <Property name="Value" value="3.200000" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData">
              <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD" />
              <Property name="NameHash" value="2755176659" />
              <Property name="Type" value="COLLISION" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="1.600000" />
                <Property name="TransY" value="1.600000" />
                <Property name="TransZ" value="0.000000" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="180.000000" />
                <Property name="RotZ" value="90.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="TYPE" />
                  <Property name="Value" value="Box" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="WIDTH" />
                  <Property name="Value" value="3.200000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="HEIGHT" />
                  <Property name="Value" value="0.300000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="DEPTH" />
                  <Property name="Value" value="3.200000" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData">
              <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD" />
              <Property name="NameHash" value="2755176659" />
              <Property name="Type" value="COLLISION" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="1.600000" />
                <Property name="TransZ" value="1.600000" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="90" />
                <Property name="RotZ" value="90" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="TYPE" />
                  <Property name="Value" value="Box" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="WIDTH" />
                  <Property name="Value" value="3.200000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="HEIGHT" />
                  <Property name="Value" value="0.300000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="DEPTH" />
                  <Property name="Value" value="3.200000" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData">
              <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD" />
              <Property name="NameHash" value="2755176659" />
              <Property name="Type" value="COLLISION" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="3.200000" />
                <Property name="TransZ" value="0.000000" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="TYPE" />
                  <Property name="Value" value="Box" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="WIDTH" />
                  <Property name="Value" value="3.200000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="HEIGHT" />
                  <Property name="Value" value="0.300000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="DEPTH" />
                  <Property name="Value" value="3.200000" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
            <Property name="Children" value="TkSceneNodeData">
              <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD" />
              <Property name="NameHash" value="2755176659" />
              <Property name="Type" value="COLLISION" />
              <Property name="Transform" value="TkTransformData">
                <Property name="TransX" value="0.000000" />
                <Property name="TransY" value="-0.600000" />
                <Property name="TransZ" value="0.000000" />
                <Property name="RotX" value="0.000000" />
                <Property name="RotY" value="0.000000" />
                <Property name="RotZ" value="0.000000" />
                <Property name="ScaleX" value="1.000000" />
                <Property name="ScaleY" value="1.000000" />
                <Property name="ScaleZ" value="1.000000" />
              </Property>
              <Property name="PlatformExclusion" value="0" />
              <Property name="Attributes">
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="TYPE" />
                  <Property name="Value" value="Box" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="WIDTH" />
                  <Property name="Value" value="3.200000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="HEIGHT" />
                  <Property name="Value" value="0.300000" />
                </Property>
                <Property name="Attributes" value="TkSceneNodeAttributeData">
                  <Property name="Name" value="DEPTH" />
                  <Property name="Value" value="3.200000" />
                </Property>
              </Property>
              <Property name="Children" />
            </Property>
          </Property>
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="BubbleShield1" />
          <Property name="NameHash" value="1077413731" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="27072" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="5196" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="7793" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="13536" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="2597" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="48" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="96" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-6.468001" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="-6.467999" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-6.468003" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="6.468001" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="6.467996" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="6.468003" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="7910654785100097477" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD\SCANLINES_MAT.MATERIAL.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="MESHLINK" />
              <Property name="Value" value="BubbleShield1Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="BubbleShield2" />
          <Property name="NameHash" value="1322558620" />
          <Property name="Type" value="MESH" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BATCHSTARTPHYSI" />
              <Property name="Value" value="42888" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRSTARTPHYSI" />
              <Property name="Value" value="8233" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRENDPHYSICS" />
              <Property name="Value" value="9530" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BATCHSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BATCHCOUNT" />
              <Property name="Value" value="6768" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRSTARTGRAPH" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VERTRENDGRAPHIC" />
              <Property name="Value" value="1297" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="FIRSTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="LASTSKINMAT" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="LODLEVEL" />
              <Property name="Value" value="0" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BOUNDHULLST" />
              <Property name="Value" value="144" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="BOUNDHULLED" />
              <Property name="Value" value="176" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMINX" />
              <Property name="Value" value="-6.468001" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMINY" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMINZ" />
              <Property name="Value" value="-6.468003" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMAXX" />
              <Property name="Value" value="6.468001" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMAXY" />
              <Property name="Value" value="6.467996" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="AABBMAXZ" />
              <Property name="Value" value="6.468003" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="HASH" />
              <Property name="Value" value="5515647454882198215" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\SHIELD\GRAD_MAT.MATERIAL.MBIN" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="MESHLINK" />
              <Property name="Value" value="BubbleShield2Shape" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="pointLight1" />
          <Property name="NameHash" value="4219409884" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="5.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="FOV" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="110000.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="0.717800" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="Value" value="-1" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData">
          <Property name="Name" value="pointLight2" />
          <Property name="NameHash" value="230242896" />
          <Property name="Type" value="LIGHT" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.663226" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="FOV" />
              <Property name="Value" value="360.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="FALLOFF" />
              <Property name="Value" value="quadratic" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="FALLOFF_RATE" />
              <Property name="Value" value="2.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="INTENSITY" />
              <Property name="Value" value="40000.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COL_R" />
              <Property name="Value" value="1.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COL_G" />
              <Property name="Value" value="0.238700" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COL_B" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="COOKIE_IDX" />
              <Property name="Value" value="-1" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="VOLUMETRIC" />
              <Property name="Value" value="0.000000" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData">
              <Property name="Name" value="MATERIAL" />
              <Property name="Value" value="MATERIALS/LIGHT.MATERIAL.MBIN" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD\ENTITIES\SHIELD_A.ENTITY.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAttachmentData">
  <Property name="AdditionalData" />
  <Property name="Components">
    <Property name="Components" value="TkPhysicsComponentData">
      <Property name="TkPhysicsComponentData">
        <Property name="Data" value="TkPhysicsData">
          <Property name="Mass" value="0.000000" />
          <Property name="Friction" value="0.500000" />
          <Property name="RollingFriction" value="0.200000" />
          <Property name="AngularDamping" value="0.200000" />
          <Property name="LinearDamping" value="0.100000" />
          <Property name="Gravity" value="20.000000" />
        </Property>
        <Property name="NavMeshInclusion" value="TkNavMeshInclusionParams">
          <Property name="InclusionType" value="TkNavMeshInclusionType">
            <Property name="NavMeshInclusionType" value="Auto" />
          </Property>
          <Property name="InclusionMinSize" value="0.000000" />
          <Property name="AreaType" value="TkNavMeshAreaType">
            <Property name="NavMeshAreaType" value="Auto" />
          </Property>
        </Property>
        <Property name="TriggerVolume" value="false" />
        <Property name="TriggerVolumeType" value="TkVolumeTriggerType">
          <Property name="VolumeTriggerType" value="HazardProtection" />
        </Property>
        <Property name="SurfaceProperties" value="None" />
        <Property name="ModelOwnership" value="Model" />
        <Property name="Climbable" value="false" />
        <Property name="Walkable" value="true" />
        <Property name="Floor" value="false" />
        <Property name="IgnoreModelOwner" value="true" />
        <Property name="NoVehicleCollide" value="false" />
        <Property name="NoPlayerCollide" value="true" />
        <Property name="NoTerrainCollide" value="false" />
        <Property name="NoFireCollide" value="false" />
        <Property name="NoFallDamage" value="false" />
        <Property name="IgnoreAllCollisions" value="false" />
        <Property name="BlocksInteract" value="true" />
        <Property name="CameraInvisible" value="true" />
        <Property name="InvisibleForInteraction" value="true" />
        <Property name="AllowTeleporter" value="false" />
        <Property name="BlockTeleporter" value="false" />
        <Property name="DisableGravity" value="false" />
        <Property name="SpinOnCreate" value="0.000000" />
        <Property name="ScaleAffectsMass" value="false" />
        <Property name="AllowedDefaultCollision" value="true" />
        <Property name="Animated" value="false" />
        <Property name="UseBasePartOptimisation" value="false" />
        <Property name="IsTransporter" value="false" />
        <Property name="UseSimpleCharacterCollision" value="false" />
        <Property name="RotateSimpleCharacterCollisionCapsule" value="false" />
        <Property name="SimpleCharacterCollisionRadius" value="0.500000" />
        <Property name="SimpleCharacterCollisionHeight" value="2.000000" />
        <Property name="SimpleCharacterCollisionHeightOffset" value="0.000000" />
        <Property name="SimpleCharacterCollisionFwdOffset" value="0.000000" />
      </Property>
    </Property>
    <Property name="Components" value="GcShootableComponentData">
      <Property name="GcShootableComponentData">
        <Property name="Health" value="3000" />
        <Property name="LevelledExtraHealth" value="0" />
        <Property name="UseSpaceLevelForExtraHealth" value="false" />
        <Property name="AutoAimTarget" value="false" />
        <Property name="PlayerOnly" value="false" />
        <Property name="IgnorePlayer" value="false" />
        <Property name="ImpactShake" value="false" />
        <Property name="ImpactShakeEffect" value="SHOOTABLESHAKE" />
        <Property name="ForceImpactType" value="GcProjectileImpactType">
          <Property name="Impact" value="Default" />
        </Property>
        <Property name="ImpactOverrideData" value="GcProjectileImpactData">
          <Property name="Effect" value="" />
          <Property name="Impact" value="GcProjectileImpactType">
            <Property name="Impact" value="Default" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="World" />
        </Property>
        <Property name="IncreaseWanted" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="IncreaseWantedThresholdTime" value="0.500000" />
        <Property name="FiendCrimeType" value="GcFiendCrime">
          <Property name="FiendCrime" value="None" />
        </Property>
        <Property name="FiendCrimeModifier" value="1.000000" />
        <Property name="RepairTime" value="8.000000" />
        <Property name="MinDamage" value="0" />
        <Property name="StaticUntilShot" value="false" />
        <Property name="IgnoreHitPush" value="true" />
        <Property name="HitEffectEnabled" value="false" />
        <Property name="HitEffectEntireModel" value="true" />
        <Property name="IsArmoured" value="false" />
        <Property name="CapHealthForMissingArmour" value="1.000000" />
        <Property name="CouldCountAsArmourForParent" value="true" />
        <Property name="IgnoreTerrainEditKills" value="false" />
        <Property name="NameOverride" value="" />
        <Property name="RequiredTech" value="" />
        <Property name="DamageMultiplier" value="OBJECT" />
        <Property name="IsPiercable" value="false" />
        <Property name="IsAffectedByPiercing" value="false" />
      </Property>
    </Property>
    <Property name="Components" value="GcDestructableComponentData">
      <Property name="GcDestructableComponentData">
        <Property name="Explosion" value="EXPLOSION" />
        <Property name="ExplosionScale" value="1.000000" />
        <Property name="ExplosionScaleToBounds" value="false" />
        <Property name="UnderwaterExplosion" value="" />
        <Property name="UnderwaterExplosionScale" value="1.000000" />
        <Property name="OnlyExplodeSelf" value="false" />
        <Property name="VehicleDestroyEffect" value="VEHICLECRASH" />
        <Property name="TriggerAction" value="IDLE" />
        <Property name="IncreaseWanted" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="IncreaseFiendWanted" value="false" />
        <Property name="IncreaseFiendWantedChance" value="1.000000" />
        <Property name="IncreaseFiendCrime" value="GcFiendCrime">
          <Property name="FiendCrime" value="EggDestroyed" />
        </Property>
        <Property name="NotifyEncounter" value="false" />
        <Property name="DamagesParentWhenDestroyed" value="false" />
        <Property name="LootReward" value="" />
        <Property name="LootRewardAmountMin" value="0" />
        <Property name="LootRewardAmountMax" value="0" />
        <Property name="CanDestroyFromStoredInteraction" value="true" />
        <Property name="GivesSubstances" />
        <Property name="StatToTrack" value="GcStatsEnum">
          <Property name="StatEnum" value="None" />
        </Property>
        <Property name="GivesReward" value="" />
        <Property name="BlockDestructionIfRewardFails" value="false" />
        <Property name="OverrideChipAmount" value="-1" />
        <Property name="PirateSystemAltReward" value="" />
        <Property name="RewardIfDestroyedByOther" value="false" />
        <Property name="NoConsequencesDuringPirateBattle" value="false" />
        <Property name="HideReward" value="false" />
        <Property name="OverrideRewardLoc" value="" />
        <Property name="RewardOverrideTable" />
        <Property name="ActivateLocatorsFromRarity" value="false" />
        <Property name="RarityLocators">
          <Property name="Common" value="" />
          <Property name="Uncommon" value="" />
          <Property name="Rare" value="" />
        </Property>
        <Property name="StandingChangeOnDeath">
          <Property name="Gek" value="0" />
          <Property name="Korvax" value="0" />
          <Property name="Vykeen" value="0" />
          <Property name="TradeGuild" value="0" />
          <Property name="WarriorGuild" value="0" />
          <Property name="ExplorerGuild" value="0" />
          <Property name="Nexus" value="0" />
          <Property name="Pirates" value="0" />
          <Property name="Builders" value="0" />
          <Property name="None" value="0" />
        </Property>
        <Property name="UseSystemColorsForTexture" value="false" />
        <Property name="RemoveModel" value="false" />
        <Property name="HideModel" value="false" />
        <Property name="DestroyedModel" value="TkModelResource">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="0" />
        </Property>
        <Property name="DestroyedModelUsesScale" value="true" />
        <Property name="DestroyedModelSpawnNode" value="" />
        <Property name="DestroyedModelCollidesWithEverything" value="false" />
        <Property name="DestroyForce" value="1.000000" />
        <Property name="DestroyForceRadius" value="3.000000" />
        <Property name="DestroyEffect" value="" />
        <Property name="DestroyEffectOnSurface" value="false" />
        <Property name="DestroyEffectPoint" value="SFX" />
        <Property name="DestroyEffectTime" value="2.000000" />
        <Property name="DestroyEffectMatrices" value="false" />
        <Property name="AreaDamage" value="" />
        <Property name="ShowInteract" value="true" />
        <Property name="HideInteractWhenAllArmourDestroyed" value="false" />
        <Property name="ShowInteractRange" value="20.000000" />
        <Property name="HideInteractWhenShielded" value="false" />
        <Property name="GrenadeSingleHit" value="true" />
        <Property name="LootItems" />
      </Property>
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property name="LodDistances" value="0.000000" />
    <Property name="LodDistances" value="50.000000" />
    <Property name="LodDistances" value="80.000000" />
    <Property name="LodDistances" value="150.000000" />
    <Property name="LodDistances" value="500.000000" />
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\SHIELD\ENTITIES\SHIELD_B.ENTITY.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAttachmentData">
  <Property name="AdditionalData" />
  <Property name="Components">
    <Property name="Components" value="TkPhysicsComponentData">
      <Property name="TkPhysicsComponentData">
        <Property name="Data" value="TkPhysicsData">
          <Property name="Mass" value="0.000000" />
          <Property name="Friction" value="0.500000" />
          <Property name="RollingFriction" value="0.200000" />
          <Property name="AngularDamping" value="0.200000" />
          <Property name="LinearDamping" value="0.100000" />
          <Property name="Gravity" value="20.000000" />
        </Property>
        <Property name="NavMeshInclusion" value="TkNavMeshInclusionParams">
          <Property name="InclusionType" value="TkNavMeshInclusionType">
            <Property name="NavMeshInclusionType" value="Auto" />
          </Property>
          <Property name="InclusionMinSize" value="0.000000" />
          <Property name="AreaType" value="TkNavMeshAreaType">
            <Property name="NavMeshAreaType" value="Auto" />
          </Property>
        </Property>
        <Property name="TriggerVolume" value="false" />
        <Property name="TriggerVolumeType" value="TkVolumeTriggerType">
          <Property name="VolumeTriggerType" value="HazardProtection" />
        </Property>
        <Property name="SurfaceProperties" value="None" />
        <Property name="ModelOwnership" value="Model" />
        <Property name="Climbable" value="false" />
        <Property name="Walkable" value="true" />
        <Property name="Floor" value="false" />
        <Property name="IgnoreModelOwner" value="true" />
        <Property name="NoVehicleCollide" value="false" />
        <Property name="NoPlayerCollide" value="true" />
        <Property name="NoTerrainCollide" value="false" />
        <Property name="NoFireCollide" value="false" />
        <Property name="NoFallDamage" value="false" />
        <Property name="IgnoreAllCollisions" value="false" />
        <Property name="BlocksInteract" value="true" />
        <Property name="CameraInvisible" value="true" />
        <Property name="InvisibleForInteraction" value="true" />
        <Property name="AllowTeleporter" value="false" />
        <Property name="BlockTeleporter" value="false" />
        <Property name="DisableGravity" value="false" />
        <Property name="SpinOnCreate" value="0.000000" />
        <Property name="ScaleAffectsMass" value="false" />
        <Property name="AllowedDefaultCollision" value="true" />
        <Property name="Animated" value="false" />
        <Property name="UseBasePartOptimisation" value="false" />
        <Property name="IsTransporter" value="false" />
        <Property name="UseSimpleCharacterCollision" value="false" />
        <Property name="RotateSimpleCharacterCollisionCapsule" value="false" />
        <Property name="SimpleCharacterCollisionRadius" value="0.500000" />
        <Property name="SimpleCharacterCollisionHeight" value="2.000000" />
        <Property name="SimpleCharacterCollisionHeightOffset" value="0.000000" />
        <Property name="SimpleCharacterCollisionFwdOffset" value="0.000000" />
      </Property>
    </Property>
    <Property name="Components" value="GcShootableComponentData">
      <Property name="GcShootableComponentData">
        <Property name="Health" value="3000" />
        <Property name="LevelledExtraHealth" value="0" />
        <Property name="UseSpaceLevelForExtraHealth" value="false" />
        <Property name="AutoAimTarget" value="false" />
        <Property name="PlayerOnly" value="false" />
        <Property name="IgnorePlayer" value="false" />
        <Property name="ImpactShake" value="false" />
        <Property name="ImpactShakeEffect" value="SHOOTABLESHAKE" />
        <Property name="ForceImpactType" value="GcProjectileImpactType">
          <Property name="Impact" value="Default" />
        </Property>
        <Property name="ImpactOverrideData" value="GcProjectileImpactData">
          <Property name="Effect" value="" />
          <Property name="Impact" value="GcProjectileImpactType">
            <Property name="Impact" value="Default" />
          </Property>
          <Property name="ImpactAlignment" value="ImpactNormal" />
          <Property name="ImpactAttachment" value="World" />
        </Property>
        <Property name="IncreaseWanted" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="IncreaseWantedThresholdTime" value="0.500000" />
        <Property name="FiendCrimeType" value="GcFiendCrime">
          <Property name="FiendCrime" value="None" />
        </Property>
        <Property name="FiendCrimeModifier" value="1.000000" />
        <Property name="RepairTime" value="8.000000" />
        <Property name="MinDamage" value="0" />
        <Property name="StaticUntilShot" value="false" />
        <Property name="IgnoreHitPush" value="true" />
        <Property name="HitEffectEnabled" value="false" />
        <Property name="HitEffectEntireModel" value="true" />
        <Property name="IsArmoured" value="false" />
        <Property name="CapHealthForMissingArmour" value="1.000000" />
        <Property name="CouldCountAsArmourForParent" value="true" />
        <Property name="IgnoreTerrainEditKills" value="false" />
        <Property name="NameOverride" value="" />
        <Property name="RequiredTech" value="" />
        <Property name="DamageMultiplier" value="OBJECT" />
        <Property name="IsPiercable" value="false" />
        <Property name="IsAffectedByPiercing" value="false" />
      </Property>
    </Property>
    <Property name="Components" value="GcDestructableComponentData">
      <Property name="GcDestructableComponentData">
        <Property name="Explosion" value="EXPLOSION" />
        <Property name="ExplosionScale" value="1.000000" />
        <Property name="ExplosionScaleToBounds" value="false" />
        <Property name="UnderwaterExplosion" value="" />
        <Property name="UnderwaterExplosionScale" value="1.000000" />
        <Property name="OnlyExplodeSelf" value="false" />
        <Property name="VehicleDestroyEffect" value="VEHICLECRASH" />
        <Property name="TriggerAction" value="IDLE" />
        <Property name="IncreaseWanted" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="IncreaseFiendWanted" value="false" />
        <Property name="IncreaseFiendWantedChance" value="1.000000" />
        <Property name="IncreaseFiendCrime" value="GcFiendCrime">
          <Property name="FiendCrime" value="EggDestroyed" />
        </Property>
        <Property name="NotifyEncounter" value="false" />
        <Property name="DamagesParentWhenDestroyed" value="false" />
        <Property name="LootReward" value="" />
        <Property name="LootRewardAmountMin" value="0" />
        <Property name="LootRewardAmountMax" value="0" />
        <Property name="CanDestroyFromStoredInteraction" value="true" />
        <Property name="GivesSubstances" />
        <Property name="StatToTrack" value="GcStatsEnum">
          <Property name="StatEnum" value="None" />
        </Property>
        <Property name="GivesReward" value="" />
        <Property name="BlockDestructionIfRewardFails" value="false" />
        <Property name="OverrideChipAmount" value="-1" />
        <Property name="PirateSystemAltReward" value="" />
        <Property name="RewardIfDestroyedByOther" value="false" />
        <Property name="NoConsequencesDuringPirateBattle" value="false" />
        <Property name="HideReward" value="false" />
        <Property name="OverrideRewardLoc" value="" />
        <Property name="RewardOverrideTable" />
        <Property name="ActivateLocatorsFromRarity" value="false" />
        <Property name="RarityLocators">
          <Property name="Common" value="" />
          <Property name="Uncommon" value="" />
          <Property name="Rare" value="" />
        </Property>
        <Property name="StandingChangeOnDeath">
          <Property name="Gek" value="0" />
          <Property name="Korvax" value="0" />
          <Property name="Vykeen" value="0" />
          <Property name="TradeGuild" value="0" />
          <Property name="WarriorGuild" value="0" />
          <Property name="ExplorerGuild" value="0" />
          <Property name="Nexus" value="0" />
          <Property name="Pirates" value="0" />
          <Property name="Builders" value="0" />
          <Property name="None" value="0" />
        </Property>
        <Property name="UseSystemColorsForTexture" value="false" />
        <Property name="RemoveModel" value="false" />
        <Property name="HideModel" value="false" />
        <Property name="DestroyedModel" value="TkModelResource">
          <Property name="Filename" value="" />
          <Property name="ResHandle" value="GcResource">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="0" />
        </Property>
        <Property name="DestroyedModelUsesScale" value="true" />
        <Property name="DestroyedModelSpawnNode" value="" />
        <Property name="DestroyedModelCollidesWithEverything" value="false" />
        <Property name="DestroyForce" value="1.000000" />
        <Property name="DestroyForceRadius" value="3.000000" />
        <Property name="DestroyEffect" value="" />
        <Property name="DestroyEffectOnSurface" value="false" />
        <Property name="DestroyEffectPoint" value="SFX" />
        <Property name="DestroyEffectTime" value="2.000000" />
        <Property name="DestroyEffectMatrices" value="false" />
        <Property name="AreaDamage" value="" />
        <Property name="ShowInteract" value="true" />
        <Property name="HideInteractWhenAllArmourDestroyed" value="false" />
        <Property name="ShowInteractRange" value="20.000000" />
        <Property name="HideInteractWhenShielded" value="false" />
        <Property name="GrenadeSingleHit" value="true" />
        <Property name="LootItems" />
      </Property>
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property name="LodDistances" value="0.000000" />
    <Property name="LodDistances" value="50.000000" />
    <Property name="LodDistances" value="80.000000" />
    <Property name="LodDistances" value="150.000000" />
    <Property name="LodDistances" value="500.000000" />
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\HARVEST\HARVEST.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\HARVEST" />
  <Property name="NameHash" value="4051767790" />
  <Property name="Type" value="LOCATOR" />
  <Property name="Transform" value="TkTransformData">
    <Property name="TransX" value="0" />
    <Property name="TransY" value="0" />
    <Property name="TransZ" value="0" />
    <Property name="RotX" value="0" />
    <Property name="RotY" value="0" />
    <Property name="RotZ" value="0" />
    <Property name="ScaleX" value="1" />
    <Property name="ScaleY" value="1" />
    <Property name="ScaleZ" value="1" />
  </Property>
  <Property name="PlatformExclusion" value="0" />
  <Property name="Attributes">
    <Property name="Attributes" value="TkSceneNodeAttributeData">
      <Property name="Name" value="ATTACHMENT" />
      <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\HARVEST\ENTITIES\HARVEST.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\HARVEST\ENTITIES\HARVEST.ENTITY.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAttachmentData">
  <Property name="AdditionalData" />
  <Property name="Components">
    <Property name="Components" value="GcSimpleInteractionComponentData">
      <Property name="GcSimpleInteractionComponentData">
        <Property name="SimpleInteractionType" value="Interact" />
        <Property name="InteractDistance" value="0.000000" />
        <Property name="Use2dInteractDistance" value="false" />
        <Property name="Id" value="" />
        <Property name="Rarity" value="GcRarity">
          <Property name="Rarity" value="Common" />
        </Property>
        <Property name="Size" value="GcSizeIndicator">
          <Property name="SizeIndicator" value="Medium" />
        </Property>
        <Property name="TriggerAction" value="INACTIVE" />
        <Property name="TriggerActionOnPrepare" value="" />
        <Property name="TriggerActionToggle" value="" />
        <Property name="DeactivateSimilarInteractionsNearbyRadius" value="0.000000" />
        <Property name="BroadcastTriggerAction" value="false" />
        <Property name="Delay" value="0.000000" />
        <Property name="HideContents" value="true" />
        <Property name="InteractIsCrime" value="false" />
        <Property name="InteractFiendCrimeType" value="GcFiendCrime">
          <Property name="FiendCrime" value="None" />
        </Property>
        <Property name="InteractFiendCrimeChance" value="1.000000" />
        <Property name="InteractCrimeLevel" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="NotifyEncounter" value="false" />
        <Property name="ActivationCost" value="GcInteractionActivationCost">
          <Property name="SubstanceId" value="" />
          <Property name="AltIds" />
          <Property name="Cost" value="0" />
          <Property name="Repeat" value="false" />
          <Property name="RequiredTech" value="" />
          <Property name="UseCostID" value="" />
          <Property name="StartMissionOnCantAfford" value="" />
          <Property name="OnlyChargeDuringSeasons" />
        </Property>
        <Property name="StatToTrack" value="GcStatsEnum">
          <Property name="StatEnum" value="None" />
        </Property>
        <Property name="StartsBuried" value="false" />
        <Property name="MustBeVisibleToInteract" value="false" />
        <Property name="NeedsStorm" value="false" />
        <Property name="Name" value="" />
        <Property name="ForceSubtitle" value="" />
        <Property name="VRInteractMessage" value="" />
        <Property name="TerminalHeading" value="" />
        <Property name="TerminalMessage" value="" />
        <Property name="ScanType" value="" />
        <Property name="ScanData" value="" />
        <Property name="ScanIcon" value="">
          <Property name="DiscoveryType" value="Unknown" />
        </Property>
        <Property name="ActivateLocatorsFromRarity" value="false" />
        <Property name="RarityLocators">
          <Property name="Common" value="" />
          <Property name="Uncommon" value="" />
          <Property name="Rare" value="" />
        </Property>
        <Property name="BaseBuildingTriggerActions" />
        <Property name="RewardOverrideTable" />
        <Property name="PersistencyBufferOverride" />
        <Property name="UsePersonalPersistentBuffer" value="false" />
        <Property name="ReseedOnRewardSuccess" value="false" />
        <Property name="CanCollectInMech" value="false" />
      </Property>
    </Property>
    <Property name="Components" value="GcTriggerActionComponentData">
      <Property name="GcTriggerActionComponentData">
        <Property name="HideModel" value="false" />
        <Property name="StartInactive" value="false" />
        <Property name="States">
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="WAIT_FOR_HARVEST" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Local" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="HARVEST" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcHarvestPlantAction">
                    <Property name="GcHarvestPlantAction">
                      <Property name="Radius" value="2000.000000" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="WAIT_FOR_HARVEST" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Local" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="WAIT_FOR_HARVEST" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="HARVEST" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="HARVEST" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Local" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Persistent" value="false" />
        <Property name="PersistentState" value="" />
        <Property name="ResetShotTimeOnStateChange" value="false" />
        <Property name="LinkStateToBaseGrid" value="false" />
      </Property>
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property name="LodDistances" value="0.000000" />
    <Property name="LodDistances" value="50.000000" />
    <Property name="LodDistances" value="80.000000" />
    <Property name="LodDistances" value="150.000000" />
    <Property name="LodDistances" value="500.000000" />
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\PLANETSCANNER\PLANETSCANNER.SCENE.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkSceneNodeData">
  <Property name="Name" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\PLANETSCANNER" />
  <Property name="NameHash" value="3884128067" />
  <Property name="Type" value="LOCATOR" />
  <Property name="Transform" value="TkTransformData">
    <Property name="TransX" value="0" />
    <Property name="TransY" value="0" />
    <Property name="TransZ" value="0" />
    <Property name="RotX" value="0" />
    <Property name="RotY" value="0" />
    <Property name="RotZ" value="0" />
    <Property name="ScaleX" value="1" />
    <Property name="ScaleY" value="1" />
    <Property name="ScaleZ" value="1" />
    </Property>
    <Property name="PlatformExclusion" value="0" />
  <Property name="Attributes">
    <Property name="Attributes" value="TkSceneNodeAttributeData">
      <Property name="Name" value="ATTACHMENT" />
      <Property name="Value" value="MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\PLANETSCANNER\ENTITIES\PLANETSCANNER.ENTITY.MBIN" />
    </Property>
  </Property>
  <Property name="Children" />
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\CUSTOM\PLANETSCANNER\ENTITIES\PLANETSCANNER.ENTITY.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAttachmentData">
  <Property name="AdditionalData" />
  <Property name="Components">
    <Property name="Components" value="GcSimpleInteractionComponentData">
      <Property name="GcSimpleInteractionComponentData">
        <Property name="SimpleInteractionType" value="SuperDoopaScanner" />
        <Property name="InteractDistance" value="0.000000" />
        <Property name="Use2dInteractDistance" value="false" />
        <Property name="Id" value="" />
        <Property name="Rarity" value="GcRarity">
          <Property name="Rarity" value="Common" />
        </Property>
        <Property name="Size" value="GcSizeIndicator">
          <Property name="SizeIndicator" value="Medium" />
        </Property>
        <Property name="TriggerAction" value="INACTIVE" />
        <Property name="TriggerActionOnPrepare" value="" />
        <Property name="TriggerActionToggle" value="" />
        <Property name="DeactivateSimilarInteractionsNearbyRadius" value="0.000000" />
        <Property name="BroadcastTriggerAction" value="false" />
        <Property name="Delay" value="0.000000" />
        <Property name="HideContents" value="true" />
        <Property name="InteractIsCrime" value="false" />
        <Property name="InteractFiendCrimeType" value="GcFiendCrime">
          <Property name="FiendCrime" value="None" />
        </Property>
        <Property name="InteractFiendCrimeChance" value="1.000000" />
        <Property name="InteractCrimeLevel" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="NotifyEncounter" value="false" />
        <Property name="ActivationCost" value="GcInteractionActivationCost">
          <Property name="SubstanceId" value="" />
          <Property name="AltIds" />
          <Property name="Cost" value="0" />
          <Property name="Repeat" value="false" />
          <Property name="RequiredTech" value="" />
          <Property name="UseCostID" value="" />
          <Property name="StartMissionOnCantAfford" value="" />
          <Property name="OnlyChargeDuringSeasons" />
        </Property>
        <Property name="StatToTrack" value="GcStatsEnum">
          <Property name="StatEnum" value="None" />
        </Property>
        <Property name="StartsBuried" value="false" />
        <Property name="MustBeVisibleToInteract" value="false" />
        <Property name="NeedsStorm" value="false" />
        <Property name="Name" value="UI_SCAN_ROOM_LABEL" />
        <Property name="ForceSubtitle" value="" />
        <Property name="VRInteractMessage" value="" />
        <Property name="TerminalHeading" value="" />
        <Property name="TerminalMessage" value="" />
        <Property name="ScanType" value="BINOC_INTERACTABLE" />
        <Property name="ScanData" value="" />
        <Property name="ScanIcon" value="">
          <Property name="DiscoveryType" value="Unknown" />
        </Property>
        <Property name="ActivateLocatorsFromRarity" value="false" />
        <Property name="RarityLocators">
          <Property name="Common" value="" />
          <Property name="Uncommon" value="" />
          <Property name="Rare" value="" />
        </Property>
        <Property name="BaseBuildingTriggerActions" />
        <Property name="RewardOverrideTable" />
        <Property name="PersistencyBufferOverride" />
        <Property name="UsePersonalPersistentBuffer" value="false" />
        <Property name="ReseedOnRewardSuccess" value="false" />
        <Property name="CanCollectInMech" value="false" />
      </Property>
    </Property>
    <Property name="Components" value="GcTriggerActionComponentData">
      <Property name="GcTriggerActionComponentData">
        <Property name="HideModel" value="false" />
        <Property name="StartInactive" value="false" />
        <Property name="States">
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="WAIT_FOR_PSCAN" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Scene" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="PLANETSCANNER" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.000000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcFireSimpleInteractionAction">
                    <Property name="GcFireSimpleInteractionAction" />
                  </Property>
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="WAIT_FOR_PSCAN" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Scene" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
          <Property name="States" value="GcActionTriggerState">
            <Property name="StateID" value="WAIT_FOR_PSCAN" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcAnimFrameEvent">
                  <Property name="GcAnimFrameEvent">
                    <Property name="Anim" value="PLANETSCANNER" />
                    <Property name="FrameStart" value="0" />
                    <Property name="StartFromEnd" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcGoToStateAction">
                    <Property name="GcGoToStateAction">
                      <Property name="State" value="PLANETSCANNER" />
                      <Property name="Broadcast" value="false" />
                      <Property name="BroadcastLevel" value="GcBroadcastLevel">
                        <Property name="BroadcastLevel" value="Scene" />
                      </Property>
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Persistent" value="false" />
        <Property name="PersistentState" value="" />
        <Property name="ResetShotTimeOnStateChange" value="false" />
        <Property name="LinkStateToBaseGrid" value="false" />
      </Property>
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property name="LodDistances" value="0.000000" />
    <Property name="LodDistances" value="50.000000" />
    <Property name="LodDistances" value="80.000000" />
    <Property name="LodDistances" value="150.000000" />
    <Property name="LodDistances" value="500.000000" />
  </Property>
</Data>
]]
        },
        {
            ["FILE_DESTINATION"] = "MODELS\TESTS\EFFECTTEST.ANIM.MXML",
            ["FILE_CONTENT"] =
[[
<?xml version="1.0" encoding="utf-8"?>

<Data template="cTkAnimMetadata">
  <Property name="NodeData">
    <Property name="NodeData" value="TkAnimNodeData">
      <Property name="Node" value="AnimatedTrans" />
      <Property name="RotIndex" value="0" />
      <Property name="TransIndex" value="0" />
      <Property name="ScaleIndex" value="0" />
    </Property>
  </Property>
  <Property name="AnimFrameData">
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
    <Property name="AnimFrameData" value="TkAnimNodeFrameData">
      <Property name="Rotations" />
      <Property name="Translations" />
      <Property name="Scales" />
    </Property>
  </Property>
  <Property name="StillFrameData" value="TkAnimNodeFrameData">
    <Property name="Rotations">
      <Property name="Rotations" value="Quaternion">
        <Property name="X" value="0" />
        <Property name="Y" value="0" />
        <Property name="Z" value="0" />
        <Property name="W" value="1" />
        <Property name="dropComponent" value="3" />
      </Property>
    </Property>
    <Property name="Translations">
      <Property name="Translations">
        <Property name="X" value="-0.73121876" />
        <Property name="Y" value="0.08333181" />
        <Property name="Z" value="-0.02858855" />
      </Property>
    </Property>
    <Property name="Scales">
      <Property name="Scales">
        <Property name="X" value="1.000000" />
        <Property name="Y" value="1.000000" />
        <Property name="Z" value="1.000000" />
      </Property>
    </Property>
  </Property>
  <Property name="FrameCount" value="10" />
  <Property name="NodeCount" value="0" />
  <Property name="Has30HzFrames" value="false" />
</Data>
]]
        },
    }
}

if REWARDTABLE == "" then table.remove(NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"], 3)
end
if SCANEVENTTABLE == "" then
    if #NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"] > 3 then
        table.remove(NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"], 4)
    else
        table.remove(NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"], 3)
    end
end

--"TEXTURES\UI\FRONTEND\ICONS\QUICKMENU\EMOTES\EMOTE_MENU.DDS", "TEXTURES\UI\FRONTEND\COMPONENTS\STAR.DDS"