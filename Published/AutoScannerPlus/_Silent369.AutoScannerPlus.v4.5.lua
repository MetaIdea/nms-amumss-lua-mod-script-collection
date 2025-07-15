local modfilename = "AutoScannerPlus"
local lua_author  = "Silent"
local lua_version = "4.5"
local mod_author  = "Silent369"
local contributor = "Spectrus1702"
local nms_version = "5.74"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Auto Scan planet entities (objects, structures) within given range.

Inspired by the Scan_Auto.cs script provided by cmkNMSModBuilder
https://github.com/cmkushnir/NMSModBuilder

]]

------------------------------------------------------------------------------------------

local m_ScanRange = 15000.000000
local m_ScanTime  = 30.000000
local m_RangeMult = 1.000000
local m_ShowRange = 15000.000000
local m_Override  = 50.000000

------------------------------------------------------------------------------------------
-- Create Scannable Component Data (with optional Wrapper)
------------------------------------------------------------------------------------------
function CreateScannableComponentData(ScanRange, ScanName, ScanTime, RangeMult, ShowRange, DisplayIcon, AllowMerge, Override, Wrapper)
    local Content = [[
			<Property name="GcScannableComponentData">
				<Property name="ScanRange" value="]]..ScanRange..[[" />
				<Property name="ScanName" value="]]..ScanName..[[" />
				<Property name="ScanTime" value="]]..ScanTime..[[" />
				<Property name="CompassRangeMultiplier" value="]]..RangeMult..[[" />
				<Property name="AlwaysShowRange" value="]]..ShowRange..[[" />
				<Property name="CanTagIcon" value="true" />
				<Property name="ClearTagOnArrival" value="true" />
				<Property name="DisableIfBuildingPart" value="true" />
				<Property name="DisableIfInBase" value="true" />
				<Property name="UseModelNode" value="true" />
				<Property name="Icon" value="GcScannerIconTypes">
					<Property name="ScanIconType" value="]]..DisplayIcon..[[" />
				</Property>
				<Property name="BinocsDiscoIconOverride" value="GcDiscoveryType">
					<Property name="DiscoveryType" value="Unknown" />
				</Property>
				<Property name="ScannableType" value="Binoculars" />
				<Property name="IsPlacedMarker" value="false" />
				<Property name="ShowInFreighterBranchRoom" value="false" />
				<Property name="TellPlayerIfFreighterObjectUsed" value="false" />
				<Property name="FreighterObjectAlreadyUsedLocID" value="UI_ABAND_LOG_READ" />
				<Property name="GetIconAndNameFromSettlementBuilding" value="false" />
				<Property name="AllowedToMerge" value="]]..AllowMerge..[[" />
				<Property name="MarkerActiveWithNodeInactive" value="true" />
				<Property name="ValidMissionSurveyIds" />
				<Property name="MinDisplayDistanceOverride" value="0.000000" />
				<Property name="MarkerOffsetOverride" value="]]..Override..[[" />
			</Property>]]

    -- Rolling Plant has a specific GcScannableComponentData with an _index
    -- And needs to be wrapped with just the Content GcScannableComponentData.
    -- Everything else is wrapped with the full Component GcScannableComponentData

    if Wrapper then
        return [[
		<Property name="Components" value="GcScannableComponentData">]] .. Content .. [[
		</Property>]]
    else
        return Content
    end
end

------------------------------------------------------------------------------------------
-- Audio component for Distress Signals
------------------------------------------------------------------------------------------
local DistressSound = [[
		<Property name="Components" value="GcAudioAreaTriggerComponentData">
			<Property name="GcAudioAreaTriggerComponentData">
				<Property name="Event Enter" value="GcAudioWwiseEvents">
					<Property name="AkEvent" value="WARN_DISTRESS_DETECTED" />
				</Property>
				<Property name="Event Exit" value="GcAudioWwiseEvents">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
				<Property name="Enter Distance" value="]]..tostring(m_ShowRange)..[[" />
				<Property name="Exit Distance" value="]]..tostring(m_ShowRange)..[[" />
			</Property>
		</Property>
]]

------------------------------------------------------------------------------------------
-- When we need to add a physics component.
------------------------------------------------------------------------------------------
function CreatePhysicsComponent(TriggerVolume, TriggerType)
  local result = [[
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
				<Property name="TriggerVolume" value="]]..TriggerVolume..[[" />
				<Property name="TriggerVolumeType" value="TkVolumeTriggerType">
					<Property name="VolumeTriggerType" value="]]..TriggerType..[[" />
				</Property>
				<Property name="SurfaceProperties" value="None" />
				<Property name="ModelOwnership" value="Model" />
				<Property name="Climbable" value="false" />
				<Property name="Walkable" value="true" />
				<Property name="Floor" value="false" />
				<Property name="IgnoreModelOwner" value="false" />
				<Property name="NoVehicleCollide" value="false" />
				<Property name="NoPlayerCollide" value="false" />
				<Property name="NoFireCollide" value="false" />
				<Property name="IgnoreAllCollisions" value="false" />
				<Property name="BlocksInteract" value="false" />
				<Property name="CameraInvisible" value="false" />
				<Property name="InvisibleForInteraction" value="false" />
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
  ]]
  return result
end
------------------------------------------------------------------------------------------
local phys_Physics  = CreatePhysicsComponent("false", "Open")
------------------------------------------------------------------------------------------

-- Define the GcScannableComponentData for various entities.
-- If ANY are disabled (commented with --), check below to enable that section!

-- Wrapper 'true'  argument indicates the full wrapper should be used.
-- Wrapper 'false' argument indicates the solo wrapper should be used.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--BUILDING                                                  SIGNAL/SCAN TYPE              SCANTIME    RANGEMULT    SHOWRANGE    ICON                  MERGE    OVERRIDE    WRAP
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddAbandoned   = CreateScannableComponentData(m_ScanRange, "BUILDING_ABANDONED_L",        m_ScanTime, m_RangeMult, m_ShowRange, "HazardEgg",          "true",  m_Override, true)
AddBase        = CreateScannableComponentData(m_ScanRange, "UI_RECOVER_BASE_MARKER",      m_ScanTime, m_RangeMult, m_ShowRange, "Shield",            "false",  m_Override, true)
AddBones       = CreateScannableComponentData(m_ScanRange, "UI_UNDERGROUND_BONES_NAME_L", m_ScanTime, m_RangeMult, m_ShowRange, "BuriedRare",         "true", "0.000000", true)
AddFossil      = CreateScannableComponentData(m_ScanRange, "UI_UNDERGROUND_BONES_NAME_L", m_ScanTime, m_RangeMult, m_ShowRange, "BuriedFossil",      "false", "0.000000", true)
AddDepot       = CreateScannableComponentData(m_ScanRange, "SIGNAL_DEPOT",                m_ScanTime, m_RangeMult, m_ShowRange, "Drone",              "true",  m_Override, true)
AddDistress    = CreateScannableComponentData(m_ScanRange, "BUILDING_DISTRESSSIGNAL_L",   m_ScanTime, m_RangeMult, m_ShowRange, "HazardPlant",       "false",  m_Override, true)
AddFactory     = CreateScannableComponentData(m_ScanRange, "BUILDING_FACTORY_L",          m_ScanTime, m_RangeMult, m_ShowRange, "Drone",              "true",  m_Override, true)
AddFreighter   = CreateScannableComponentData(m_ScanRange, "BUILDING_FREIGHTER_ALT",      m_ScanTime, m_RangeMult, m_ShowRange, "HazardPlant",       "false",  m_Override, true)
AddGrave       = CreateScannableComponentData(m_ScanRange, "BUILDING_GRAVEINCAVE",        m_ScanTime, m_RangeMult, m_ShowRange, "Grave",             "false",  m_Override, true)
AddHarvester   = CreateScannableComponentData(m_ScanRange, "BUILD_HARVESTER_L",           m_ScanTime, m_RangeMult, m_ShowRange, "HarvestPlant",      "false",  m_Override, true)
AddMessage     = CreateScannableComponentData(m_ScanRange, "BLD_MESSAGEMODULE_NAME_L",    m_ScanTime, m_RangeMult, m_ShowRange, "Grave",             "false",  m_Override, true)
AddMonolith    = CreateScannableComponentData(m_ScanRange, "BUILDING_MONOLITH_L",         m_ScanTime, m_RangeMult, m_ShowRange, "Artifact",          "false",  m_Override, true)
AddObserver    = CreateScannableComponentData(m_ScanRange, "BUILDING_OBSERVATORY_L",      m_ScanTime, m_RangeMult, m_ShowRange, "SignalBooster",      "true",  m_Override, true)
AddOutpost     = CreateScannableComponentData(m_ScanRange, "BUILDING_OUTPOST_L",          m_ScanTime, m_RangeMult, m_ShowRange, "FreighterDoor",      "true",  m_Override, true)
--AddPlaque      = CreateScannableComponentData(m_ScanRange, "SIGNAL_PLAQUE",               m_ScanTime, m_RangeMult, m_ShowRange, "Artifact",          "false",  m_Override, true)
AddPSettlement = CreateScannableComponentData(m_ScanRange, "UI_SETTLEMENT_LOCATED_OSD",   m_ScanTime, m_RangeMult, m_ShowRange, "HazardPlant",       "false",  m_Override, true)
AddPortal      = CreateScannableComponentData(m_ScanRange, "BUILDING_PORTAL_L",           m_ScanTime, m_RangeMult, m_ShowRange, "Artifact",          "false",  m_Override, true)
AddRadioTower  = CreateScannableComponentData(m_ScanRange, "BUILDING_RADIOTOWER_L",       m_ScanTime, m_RangeMult, m_ShowRange, "SignalBooster",      "true",  m_Override, true)
AddRuin        = CreateScannableComponentData(m_ScanRange, "UI_SIGNAL_TREASURERUIN",      m_ScanTime, m_RangeMult, m_ShowRange, "Artifact",           "true",  m_Override, true)
AddTreasure    = CreateScannableComponentData(m_ScanRange, "PLANT_FOOD_38",               m_ScanTime, m_RangeMult, m_ShowRange, "ArtifactCrate",      "true",  m_Override, true)
AddSentinelH   = CreateScannableComponentData(m_ScanRange, "UI_MP_HIVE_LABEL",            m_ScanTime, m_RangeMult, m_ShowRange, "Drone",              "true",  m_Override, true)
AddSentinelD   = CreateScannableComponentData(m_ScanRange, "UI_MP_HIVE_LABEL",            m_ScanTime, m_RangeMult, m_ShowRange, "FriendlyDrone",      "true",  m_Override, true)
AddStoryGlitch = CreateScannableComponentData(m_ScanRange, "Alien Anomaly Detected",      m_ScanTime, m_RangeMult, m_ShowRange, "Artifact",          "false",  m_Override, true)
AddMinorSettle = CreateScannableComponentData(m_ScanRange, "BUILDING_SHOP_L",             m_ScanTime, m_RangeMult, m_ShowRange, "Hazard",            "false",  m_Override, true)
AddTerminal    = CreateScannableComponentData(m_ScanRange, "SIGNAL_TERMINAL",             m_ScanTime, m_RangeMult, m_ShowRange, "FreighterTerminal", "false",  m_Override, true)
AddRunawayMold = CreateScannableComponentData(m_ScanRange, "UI_WEIRD_BALL_NAME_L",        m_ScanTime, m_RangeMult, m_ShowRange, "Rare3",              "true", "0.000000", false)
AddSentinCrash = CreateScannableComponentData(m_ScanRange, "UI_SENTINEL_CRASH_MARKER",    m_ScanTime, m_RangeMult, m_ShowRange, "FriendlyDrone",      "true",  m_Override, true)
AddDropPod     = CreateScannableComponentData(m_ScanRange, "BUILDING_DAMAGEDMACHINE_L",   m_ScanTime, m_RangeMult, m_ShowRange, "Tech",              "false",  m_Override, true)
AddPillar      = CreateScannableComponentData(m_ScanRange, "UI_MINIHIVE_CORRUPT_NAME",    m_ScanTime, m_RangeMult, m_ShowRange, "CorruptedMachine",  "false",  m_Override, true)
AddCamp        = CreateScannableComponentData(m_ScanRange, "UI_ROBOT_CAMP_TERMINAL_NAME", m_ScanTime, m_RangeMult, m_ShowRange, "RobotHead",         "false",  m_Override, true)
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME     = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR       = lua_author,
    MOD_AUTHOR       = mod_author,
    NMS_VERSION      = nms_version,
    MOD_CONTRIBUTORS = contributor,
    MOD_DESCRIPTION  = description,
    MOD_MAINTENANCE  = maintenance,
    EXML_CREATE      = exmlcreate,
    MODIFICATIONS    =
    {
        {
            MBIN_CT =
            {
                    ----------------------------------------------------------------------------------------------
                    --SENTINEL CRASH SITE - (Inserted TkPhysicsComponentData)
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DISTRESSSIGNAL\SENTINELCRASHSCENE\ENTITIES\DATA.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            PKW = {"Components"},
                            CREATE_HOS = true,
                            ADD = DistressSound..phys_Physics,
                        },
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddSentinCrash
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --RUNAWAY MOLD - Already has GcScannableComponentData, we're overriding for AllowMerge
                    --This is also a special case where we insert the GcScannableComponentData in a specific
                    --way due to GcScannableComponentData having an index value!
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\ROLLINGPLANT\ENTITIES\ROLLINGPROP.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcScannableComponentData"},
                            PKW = {"GcScannableComponentData"},
                            EXML_FLAGS = "UPDATESECTION",
                            ADD_OPTION = "REPLACEwholeSECTION",
                            ADD = AddRunawayMold,
                        },
                    }
                },
                     ----------------------------------------------------------------------------------------------
                     --TRAVELLER GRAVE - Already has GcScannableComponentData, we're overriding for AllowMerge
                     ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\GRAVEINCAVE\GRAVEINCAVE\ENTITIES\GRAVEINCAVE.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcScannableComponentData"},
                            ADD_OPTION = "REPLACEwholeSECTION",
                            ADD = AddGrave,
                        },
                    }
                },
                     ----------------------------------------------------------------------------------------------
                     --DISSONANCE RESONATOR - Already has GcScannableComponentData, we're overriding for AllowMerge
                     ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\CORRUPTDRONEPILLAR\ENTITIES\DATA.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcScannableComponentData"},
                            ADD_OPTION = "REPLACEwholeSECTION",
                            ADD = AddPillar,
                        },
                    }
                },
                     ----------------------------------------------------------------------------------------------
                     --DROP PODS - Spectrus1702
                     ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DAMAGEDMACHINERY\DAMAGEDMACHINERY_POD\ENTITIES\DAMAGEDMACHINERY_POD.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcObjectPlacementComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddDropPod,
                        },
                    }
                },
                     ----------------------------------------------------------------------------------------------
                     --HARVESTER
                     ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\HARVESTER\HARVESTERSCIENTIFIC\ENTITIES\HARVESTERINTERACTION.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddHarvester,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --MESSAGE MODULE
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\MESSAGEMODULE\ENTITIES\MESSAGEMODULE.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddMessage,
                        },
                    },
                },
                    ----------------------------------------------------------------------------------------------
                    --STORY GLITCH (ANOMOLY RINGS)
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\BUILDINGSIZEDPROPS\ALIENRING\ENTITIES\ALIENRING.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcEncounterComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddStoryGlitch,
                        },
                    },
                },
                    ----------------------------------------------------------------------------------------------
                    --BASE SITE (WILD)
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASECOMPUTER\ENTITIES\BASECOMPUTER.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAudioComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddBase,
                        },
                    },
                },
                    ----------------------------------------------------------------------------------------------
                    --TRADE OUTPOST
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOST\ENTITIES\OUTPOST.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddOutpost,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --MINOR SETTLEMENT
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\LANDINGPAD\ENTITIES\LANDINGPAD.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcOutpostComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddMinorSettle,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --PLANETARY SETTLEMENT
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SETTLEMENT\TOWER_STONE_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SETTLEMENT\MONUMENT\MONUMENT0_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN]]
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddPSettlement,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --MONUMENTS
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONUMENTS\MONUMENT\ENTITIES\MONUMENT.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddMinorSettle,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --DISTRESS SIGNAL
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DISTRESSSIGNAL\PARTS\BLACKBOX\ENTITIES\BLACKBOX.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAudioComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = DistressSound..AddDistress,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --REMOTE TERMINAL
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\HOLOCOM\HOLOCOM\ENTITIES\HOLOCOM.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddTerminal,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --RADIOTOWER (Transmission Tower)
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RADIOTOWER\SCIENTIFICRADIOTOWERPARTS\SCIENTIFICTERMINAL\ENTITIES\SCIENTIFICRADIOTOWER.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RADIOTOWER\SCIENTIFICRADIOTOWERPARTS\SCIENTIFICMECHANISM\ENTITIES\SCIENTIFICMECHANISM.ENTITY.MBIN]],
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcTriggerActionComponentData"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddRadioTower,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --ANCIENT RUINS (Ruins / Underwater Ruins / Underground Ruins (Buried Treasue))
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\CENTERPIECE\INTERACTIONPLATFORM\ENTITIES\INTERACTIONPLATFORM.ENTITY.MBIN]],
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddMonolith,
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RUINS\UNDERWATERRUINPARTS\UNDERWATERRUININTERACTION\ENTITIES\UNDERWATERRUIN.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddRuin,
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RUINS\UNDERGROUNDRUINS\ENTITIES\TRIGGERVOLUME.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddTreasure,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --MONOLITH SITES - Primary artifact
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONOLITH\MONOLITH\ENTITIES\MONOLITH.ENTITY.MBIN]],
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddMonolith,
                        },
                    }
                },
                     ----------------------------------------------------------------------------------------------
                     --ANCIENT PLAQUES - Maybe Clutters Artifact views too much? (Will revisit if requested)
                     ----------------------------------------------------------------------------------------------
                --{
                --    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\PLAQUE\ENTITIES\PLAQUE.ENTITY.MBIN]],
                --    MXML_CT =
                --    {
                --        {
                --            SKW = {"Components", "TkPhysicsComponentData"},
                --            ADD_OPTION = "ADDafterSECTION",
                --            ADD = AddPlaque,
                --        },
                --    }
                --},
                    ----------------------------------------------------------------------------------------------
                    --PORTAL SITE (DOES NOT WORK, LOOKING FOR OTHER METHODS!)
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\PORTAL.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkSketchComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddPortal,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --DEPOT SITES
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEPOT\DEPOTWARRIOR\ENTITIES\CLUMPMASTER.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEPOT\DEPOTTRADER\ENTITIES\CLUMPMASTER.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEPOT\DEPOTSCIENTIFIC\ENTITIES\CLUMPMASTER.ENTITY.MBIN]]
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcEncounterComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddDepot,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --FACTORY SITE
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\FACTORY\FACTORYSCIENTIFIC\ENTITIES\FACTORYINTERACTION.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\FACTORY\FACTORYTRADER\ENTITIES\FACTORYINTERACTION.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\FACTORY\FACTORYWARRIOR\ENTITIES\FACTORYINTERACTION.ENTITY.MBIN]],
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcEncounterComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddFactory,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --OBSERVATORY
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\WARRIORPARTS\OBSERVATORYWARRIOR_ROOF\ENTITIES\RADAR.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\WARRIORPARTS\ROOF_OBSERVATORY\ENTITIES\RADAR.ENTITY.MBIN]]
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAnimationComponentData"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddObserver,
                        },
                    }
                },
                {
                    MBIN_FS = {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\ENTITIES\OBSERVATORYINTERACTION.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYTRADER\ENTITIES\OBSERVATORYINTERACTION.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYWARRIOR\ENTITIES\OBSERVATORYINTERACTION.ENTITY.MBIN]]
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAudioComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddObserver,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --SENTINEL HIVE ACTIVE
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SENTINELHIVE\SENTINELHIVEDESTRUCTIBLE\ENTITIES\SENTINELHIVEDESTRUCTIBLE.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAudioComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddSentinelH,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --SENTINEL HIVE DISABLED
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SENTINELHIVE\SENTINELHIVEDESTRUCTIBLE_DESTROYED\ENTITIES\DEBRIS.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAudioComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddSentinelD,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --ABANDONED SITE
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\ABANDONEDTERMINAL\ENTITIES\ABANDONEDTERMINAL.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkAnimationComponentData"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddAbandoned,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --ROBOT CAMP, Already has GcScannableComponentData, we're overriding for AllowMerge
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\ROBOTBASE\ENTITIES\TERMINAL.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcScannableComponentData"},
                            ADD_OPTION = "REPLACEwholeSECTION",
                            ADD = AddCamp,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --RARE RESOURCE, Already has GcScannableComponentData, we're overriding for AllowMerge
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\BONEPILE\ENTITIES\BONEPILE.ENTITY.MBIN]],
                    MXML_CT =
                    {
                          {
                             SKW = {"Components", "GcScannableComponentData"},
                             ADD_OPTION = "REPLACEwholeSECTION",
                             ADD = AddBones,
                          }
                    },
                },
                    ----------------------------------------------------------------------------------------------
                    --BURRIED FOSSIL, Already has GcScannableComponentData, we're overriding for AllowMerge
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = {
                      [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\BONEPILE\ENTITIES\_FOSSIL_BODY.ENTITY.MBIN]],
                      [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\BONEPILE\ENTITIES\_FOSSIL_LIMBS.ENTITY.MBIN]],
                      [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\BONEPILE\ENTITIES\_FOSSIL_SKULL.ENTITY.MBIN]],
                      [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\BONEPILE\ENTITIES\_FOSSIL_TAIL.ENTITY.MBIN]],
                    },
                    MXML_CT =
                    {
                          {
                             SKW = {"Components", "GcScannableComponentData"},
                             ADD_OPTION = "REPLACEwholeSECTION",
                             ADD = AddFossil,
                          }
                    },
                },
                    ----------------------------------------------------------------------------------------------
                    --CRASHED FREIGHTER
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRASHEDFREIGHTER\PARTS\CRASHEDFREIGHTER_DISTRESSSIGNAL\ENTITIES\CRASHEDFREIGHTER_DISTRESSSIGNAL.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "GcEncounterComponentData"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = DistressSound..AddFreighter,
                        },
                    }
                },
            }
        },
    }
}
