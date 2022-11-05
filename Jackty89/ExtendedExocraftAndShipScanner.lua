ModName = "ExtendedExocraftAndShipScanner"

VehicleScanTablePath = "METADATA/SIMULATION/SCANNING/VEHICLESCANTABLE.MBIN"
BuildingGlobalsPath = "GCBUILDINGGLOBALS.GLOBAL.MBIN"
VehicleScanEventTablePath = "METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN"

--Scanner lvl 0 = base scanner, lvl 1 = 1st uprgade, lvl 2 = 2nd uprgade
----Exocraft can now scan for TradePosts with scanner lvl2
AddCrashedShipExoCraft =
[[
    <Property value="GcVehicleScanTableEntry.xml">
        <Property name="ScanList">
            <Property value="NMSString0x20.xml">
                <Property name="Value" value="DISTRESS" />
            </Property>
        </Property>
        <Property name="Name" value="BUILDING_DISTRESSSIGNAL_L" />
        <Property name="RequiredTech" value="VEHICLE_SCAN2" />
        <Property name="Icon" value="TkTextureResource.xml">
            <Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.SHIP.DDS" />
        </Property>
    </Property>
]]

--Exocraft can now scan for TradePosts with scanner lvl0
AddCrashedFreighterExoCraft =
[[
    <Property value="GcVehicleScanTableEntry.xml">
        <Property name="ScanList">
            <Property value="NMSString0x20.xml">
                <Property name="Value" value="CRASHED_FREIGHTER" />
            </Property>
        </Property>
        <Property name="Name" value="UI_CORE_ACT2_STEP8_MARKER" />
        <Property name="RequiredTech" value="VEHICLE_SCAN" />
        <Property name="Icon" value="TkTextureResource.xml">
            <Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.FREIGHTER.DDS" />
        </Property>
    </Property>
]]

--Exocraft can now scan for TradePosts with scanner lvl2
AddDistressedNPCExoCraft =
[[
    <Property value="GcVehicleScanTableEntry.xml">
        <Property name="ScanList">
            <Property value="NMSString0x20.xml">
                <Property name="Value" value="DISTRESS_NPC" />
            </Property>
        </Property>
        <Property name="Name" value="Distressed NPC" />
        <Property name="RequiredTech" value="VEHICLE_SCAN1" />
        <Property name="Icon" value="TkTextureResource.xml">
            <Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.REPAIR.DDS" />
        </Property>
    </Property>
]]

--Exocraft can now scan for TradePosts with scanner lvl2
AddFactoryExoCraft =
[[
    <Property value="GcVehicleScanTableEntry.xml">
        <Property name="ScanList">
            <Property value="NMSString0x20.xml">
                <Property name="Value" value="FACTORY" />
            </Property>
        </Property>
        <Property name="Name" value="BUILDING_FACTORY_L" />
        <Property name="RequiredTech" value="VEHICLE_SCAN2" />
        <Property name="Icon" value="TkTextureResource.xml">
            <Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.COLLECT.DDS" />
        </Property>
    </Property>
]]

--Exocraft can now scan for TradePosts with scanner lvl1
AddHarvesterExoCraft =
[[
    <Property value="GcVehicleScanTableEntry.xml">
        <Property name="ScanList">
            <Property value="NMSString0x20.xml">
                <Property name="Value" value="HARVESTER" />
            </Property>
        </Property>
        <Property name="Name" value="BUILDING_HARVESTER_L" />
        <Property name="RequiredTech" value="VEHICLE_SCAN1" />
        <Property name="Icon" value="TkTextureResource.xml">
            <Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.WHEAT.DDS" />
        </Property>
    </Property>
]]

--Exocraft can now scan for TradePosts with scanner lvl1
AddObservatoryExoCraft =
[[
    <Property value="GcVehicleScanTableEntry.xml">
        <Property name="ScanList">
            <Property value="NMSString0x20.xml">
                <Property name="Value" value="OBSERVATORY" />
            </Property>
        </Property>
        <Property name="Name" value="BUILDING_OBSERVATORY_L" />
        <Property name="RequiredTech" value="VEHICLE_SCAN1" />
        <Property name="Icon" value="TkTextureResource.xml">
            <Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.PLANET.DDS" />
        </Property>
    </Property>
]]

--Exocraft can now scan for TradePosts with scanner lvl1
AddRadioTowerExoCraft =
[[
    <Property value="GcVehicleScanTableEntry.xml">
        <Property name="ScanList">
            <Property value="NMSString0x20.xml">
                <Property name="Value" value="RADIOTOWER" />
            </Property>
        </Property>
        <Property name="Name" value="BUILDING_RADIOTOWER_L" />
        <Property name="RequiredTech" value="VEHICLE_SCAN1" />
        <Property name="Icon" value="TkTextureResource.xml">
            <Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.SCAN.DDS" />
        </Property>
    </Property>
]]

--Exocraft can now scan for TradePosts with scanner lvl0
AddSettlementExoCraft =
[[
    <Property value="GcVehicleScanTableEntry.xml">
        <Property name="ScanList">
            <Property value="NMSString0x20.xml">
                <Property name="Value" value="SHOP" />
            </Property>
        </Property>
        <Property name="Name" value="BUILDING_SHOP_L" />
        <Property name="RequiredTech" value="VEHICLE_SCAN" />
        <Property name="Icon" value="TkTextureResource.xml">
            <Property name="Filename" value="TEXTURES\UI\HUD\ICONS\MISSIONS\MISSION.CONSTRUCTION.DDS" />
        </Property>
    </Property>
]]

AddPortalExoCraft =
[[
    <Property value="GcVehicleScanTableEntry.xml">
        <Property name="ScanList">
            <Property value="NMSString0x20.xml">
                <Property name="Value" value="PORTAL" />
            </Property>
        </Property>
        <Property name="Name" value="BUILDING_SHOP_L" />
        <Property name="RequiredTech" value="VEHICLE_SCAN2" />
        <Property name="Icon" value="TkTextureResource.xml">
            <Property name="Filename" value="TEXTURES\UI\HUD\ICONS/SCANNING\BUILDING.PORTAL.DDS" />
        </Property>
    </Property>
]]


AddPortalEvent = [[
    <Property value="GcScanEventData.xml">
        <Property name="Name" value="PORTAL" />
        <Property name="ForceInteraction" value="" />
        <Property name="ForceInteractionType" value="GcInteractionType.xml">
            <Property name="InteractionType" value="Portal" />
        </Property>
        <Property name="RequireInteractionRace" value="GcAlienRace.xml">
            <Property name="AlienRace" value="None" />
        </Property>
        <Property name="ForceBroken" value="False" />
        <Property name="ForceFixed" value="False" />
        <Property name="ForceOverridesAll" value="True" />
        <Property name="ForceOverrideEncounter" value="" />
        <Property name="IsCommunityPortalOverride" value="False" />
        <Property name="ClearForcedInteractionOnCompletion" value="False" />
        <Property name="BuildingPreventionRadius" value="0" />
        <Property name="AlwaysShow" value="False" />
        <Property name="NeverShow" value="False" />
        <Property name="PlanetLabelText" value="" />
        <Property name="SurveyDistance" value="0" />
        <Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
        <Property name="EventStartType" value="ObjectScan" />
        <Property name="EventEndType" value="Proximity" />
        <Property name="EventPriority" value="High" />
        <Property name="CanEndFromOutsideMission" value="False" />
        <Property name="DisableMultiplayerSync" value="False" />
        <Property name="ReplaceEventIfAlreadyActive" value="False" />
        <Property name="BuildingLocation" value="AllNearest" />
        <Property name="BuildingType" value="BuildingClass" />
        <Property name="BuildingClass" value="GcBuildingClassification.xml">
            <Property name="BuildingClass" value="Portal" />
        </Property>
        <Property name="AllowFriendsBases" value="False" />
        <Property name="ForceWideRandom" value="False" />
        <Property name="MustFindSystem" value="False" />
        <Property name="AllowOverriddenBuildings" value="True" />
        <Property name="SolarSystemLocation" value="LocalOrNear" />
        <Property name="SolarSystemAttributes" value="GcScanEventSolarSystemLookup.xml">
            <Property name="UseStarType" value="False" />
            <Property name="UseWealth" value="False" />
            <Property name="UseTrading" value="False" />
            <Property name="UseRace" value="GcAlienRace.xml">
                <Property name="AlienRace" value="None" />
            </Property>
            <Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
                <Property name="GalaxyStarAnomaly" value="None" />
            </Property>
            <Property name="UseConflict" value="GcPlayerConflictData.xml">
                <Property name="ConflictLevel" value="Default" />
            </Property>
            <Property name="StarType" value="GcGalaxyStarTypes.xml">
                <Property name="GalaxyStarType" value="Yellow" />
            </Property>
            <Property name="TradingData" value="GcPlanetTradingData.xml">
                <Property name="WealthClass" value="GcWealthClass.xml">
                    <Property name="WealthClass" value="Average" />
                </Property>
                <Property name="TradingClass" value="GcTradingClass.xml">
                    <Property name="TradingClass" value="Mining" />
                </Property>
            </Property>
            <Property name="AllowUnsafeMatches" value="False" />
            <Property name="NeverAllowEmpty" value="False" />
            <Property name="NeverAllowAbandoned" value="False" />
            <Property name="RequireUndiscovered" value="False" />
            <Property name="NeedsWaterPlanet" value="False" />
            <Property name="NeedsPrimePlanet" value="False" />
            <Property name="NeedsExtremeSentinelPlanet" value="False" />
            <Property name="NeverAllowExtremeSentinelPlanet" value="False" />
            <Property name="NeedsExtremeWeatherPlanet" value="False" />
            <Property name="NeedsExtremeHazardPlanet" value="False" />
            <Property name="AnyBiomeNotWeirdOrDead" value="False" />
            <Property name="AnyRGBBiome" value="False" />
            <Property name="AnyInfestedBiome" value="False" />
            <Property name="NeedsBiome" value="False" />
            <Property name="NeedsBiomeType" value="GcBiomeType.xml">
                <Property name="Biome" value="Lush" />
            </Property>
            <Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
                <Property name="BiomeSubType" value="None" />
            </Property>
            <Property name="NeedsEmptySystem" value="False" />
            <Property name="NeedsAbandonedSystem" value="False" />
            <Property name="NeedsResourceHint" value="" />
            <Property name="SuitableForCreatureDiscovery" value="False" />
            <Property name="SuitableForCreatureTaming" value="False" />
            <Property name="SamePlanetAsEvent" value="" />
        </Property>
        <Property name="SolarSystemAttributesFallback" value="GcScanEventSolarSystemLookup.xml">
            <Property name="UseStarType" value="False" />
            <Property name="UseWealth" value="False" />
            <Property name="UseTrading" value="False" />
            <Property name="UseRace" value="GcAlienRace.xml">
                <Property name="AlienRace" value="None" />
            </Property>
            <Property name="UseAnomaly" value="GcGalaxyStarAnomaly.xml">
                <Property name="GalaxyStarAnomaly" value="None" />
            </Property>
            <Property name="UseConflict" value="GcPlayerConflictData.xml">
                <Property name="ConflictLevel" value="Default" />
            </Property>
            <Property name="StarType" value="GcGalaxyStarTypes.xml">
                <Property name="GalaxyStarType" value="Yellow" />
            </Property>
            <Property name="TradingData" value="GcPlanetTradingData.xml">
                <Property name="WealthClass" value="GcWealthClass.xml">
                    <Property name="WealthClass" value="Average" />
                </Property>
                <Property name="TradingClass" value="GcTradingClass.xml">
                    <Property name="TradingClass" value="Mining" />
                </Property>
            </Property>
            <Property name="AllowUnsafeMatches" value="False" />
            <Property name="NeverAllowEmpty" value="False" />
            <Property name="NeverAllowAbandoned" value="False" />
            <Property name="RequireUndiscovered" value="False" />
            <Property name="NeedsWaterPlanet" value="False" />
            <Property name="NeedsPrimePlanet" value="False" />
            <Property name="NeedsExtremeSentinelPlanet" value="False" />
            <Property name="NeverAllowExtremeSentinelPlanet" value="False" />
            <Property name="NeedsExtremeWeatherPlanet" value="False" />
            <Property name="NeedsExtremeHazardPlanet" value="False" />
            <Property name="AnyBiomeNotWeirdOrDead" value="False" />
            <Property name="AnyRGBBiome" value="False" />
            <Property name="AnyInfestedBiome" value="False" />
            <Property name="NeedsBiome" value="False" />
            <Property name="NeedsBiomeType" value="GcBiomeType.xml">
                <Property name="Biome" value="Lush" />
            </Property>
            <Property name="UseBiomeSubType" value="GcBiomeSubType.xml">
                <Property name="BiomeSubType" value="None" />
            </Property>
            <Property name="NeedsEmptySystem" value="False" />
            <Property name="NeedsAbandonedSystem" value="False" />
            <Property name="NeedsResourceHint" value="" />
            <Property name="SuitableForCreatureDiscovery" value="False" />
            <Property name="SuitableForCreatureTaming" value="False" />
            <Property name="SamePlanetAsEvent" value="" />
        </Property>
        <Property name="ForceRestartInteraction" value="True" />
        <Property name="HasReward" value="" />
        <Property name="NextOption" value="" />
        <Property name="TriggerActions" value="GcScanEventTriggers.xml">
            <Property name="Range" value="100" />
            <Property name="Triggers" />
            <Property name="AllowRetrigger" value="False" />
        </Property>
        <Property name="UAsList" />
        <Property name="TechShopType" value="GcTechnologyCategory.xml">
            <Property name="TechnologyCategory" value="All" />
        </Property>
        <Property name="OSDMessage" value="UI_CORE_ACT2_STEP15_OSD1" />
        <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
        <Property name="MarkerLabel" value="" />
        <Property name="MarkerIcon" value="TkTextureResource.xml">
            <Property name="Filename" value="" />
        </Property>
        <Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes.xml">
            <Property name="ScannerIconHighlightType" value="Diamond" />
        </Property>
        <Property name="StartTime" value="0" />
        <Property name="MessageTime" value="0" />
        <Property name="MessageDisplayTime" value="4" />
        <Property name="MessageAudio" value="GcAudioWwiseEvents.xml">
            <Property name="AkEvent" value="MUS_STORYMODE_MUSICCUE_20" />
        </Property>
        <Property name="IconTime" value="4" />
        <Property name="TooltipTime" value="10" />
        <Property name="TooltipRepeats" value="False" />
        <Property name="ShowEndTooltip" value="False" />
        <Property name="TooltipMessage" value="" />
        <Property name="ResourceOverride" value="GcResourceElement.xml">
            <Property name="Filename" value="" />
            <Property name="Seed" value="GcSeed.xml">
                <Property name="Seed" value="0" />
                <Property name="UseSeedValue" value="False" />
            </Property>
            <Property name="AltId" value="" />
            <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
                <Property name="Samplers" />
            </Property>
        </Property>
    </Property>	
]]

AddedScanEventsExoCraft =
AddCrashedShipExoCraft ..
AddCrashedFreighterExoCraft ..
AddDistressedNPCExoCraft ..
AddFactoryExoCraft ..
AddHarvesterExoCraft ..
AddObservatoryExoCraft ..
AddRadioTowerExoCraft ..
AddSettlementExoCraft..
AddPortalExoCraft

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName .. ".pak",
    ["MOD_DESCRIPTION"] = "",
    ["MOD_AUTHOR"] = "Jackty89",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = VehicleScanTablePath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"VehicleScanTable"},
                            ["LINE_OFFSET"] = "+0",
                            ["ADD"] = AddedScanEventsExoCraft
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = VehicleScanEventTablePath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Events"},
                            ["LINE_OFFSET"] = "+0",
                            ["ADD"] = AddPortalEvent
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = BuildingGlobalsPath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                        ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UnknownBuildingRange", "10000"},
                                {"MaxIconRange", "10000"},
                                {"MinShipScanBuildings", "1"},
                                {"MaxShipScanBuildings", "5"}
                            }
                        }
                    }
                }
            }
        }
    }
}
