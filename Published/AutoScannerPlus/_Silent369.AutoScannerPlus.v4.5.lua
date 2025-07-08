local modfilename = "AutoScannerPlus"
local lua_author  = "Silent"
local lua_version = "4.5"
local mod_author  = "Silent369"
local contributor = "Spectrus1702"
local nms_version = "5.73"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Auto Scan planet entities (objects, structures) within given range.

Inspired by the Scan_Auto.cs script provided by cmkNMSModBuilder
https://github.com/cmkushnir/NMSModBuilder

]]

------------------------------------------------------------------------------------------

local _ScanRange = 15000.000000
local _ScanTime  = 30.000000
local _RangeMult = 1.000000
local _ShowRange = 15000.000000
local _Override  = 50.000000

------------------------------------------------------------------------------------------
-- Create Scannable Component Data (with optional Wrapper)
------------------------------------------------------------------------------------------
function CreateScannableComponentData(ScanRange, ScanName, ScanTime, RangeMult, ShowRange, DisplayIcon, AllowMerge, Override, Wrapper)
    ScanRange = tostring(ScanRange)
    ScanTime  = tostring(ScanTime)
    RangeMult = tostring(RangeMult)
    ShowRange = tostring(ShowRange)
    Override  = tostring(Override)

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
				<Property name="MarkerOffsetOverride" value="0.000000" />
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
local DistressSound =
[[
		<Property name="Components" value="GcAudioAreaTriggerComponentData">
			<Property name="GcAudioAreaTriggerComponentData">
				<Property name="Event Enter" value="GcAudioWwiseEvents">
					<Property name="AkEvent" value="WARN_DISTRESS_DETECTED" />
				</Property>
				<Property name="Event Exit" value="GcAudioWwiseEvents">
					<Property name="AkEvent" value="INVALID_EVENT" />
				</Property>
				<Property name="Enter Distance" value="]]..tostring(_ShowRange)..[[" />
				<Property name="Exit Distance" value="]]..tostring(_ShowRange)..[[" />
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
-- The wrapper 'true' argument indicates that the full wrapper should be included.
-- The wrapper 'false' argument indicates that only the inner GcScannableComponentData should be returned.
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--BUILDING                                                SIGNAL/SCAN TYPE                SCANTIME   RANGEMULT   SHOWRANGE  ICON             ALLOW MERGE   OVERRIDE   WRAPPER
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddAbandoned   = CreateScannableComponentData(_ScanRange, "BUILDING_ABANDONED_L",        _ScanTime, _RangeMult, _ShowRange, "HazardEgg",          "true",  _Override,  true)
AddBase        = CreateScannableComponentData(_ScanRange, "UI_RECOVER_BASE_MARKER",      _ScanTime, _RangeMult, _ShowRange, "Shield",            "false",  _Override,  true)
AddBones       = CreateScannableComponentData(_ScanRange, "UI_UNDERGROUND_BONES_NAME_L", _ScanTime, _RangeMult, _ShowRange, "BuriedRare",         "true", "0.000000",  true)
AddFossil      = CreateScannableComponentData(_ScanRange, "UI_UNDERGROUND_BONES_NAME_L", _ScanTime, _RangeMult, _ShowRange, "BuriedFossil",      "false", "0.000000",  true)
AddDepot       = CreateScannableComponentData(_ScanRange, "SIGNAL_DEPOT",                _ScanTime, _RangeMult, _ShowRange, "Drone",              "true",  _Override,  true)
AddDistress    = CreateScannableComponentData(_ScanRange, "BUILDING_DISTRESSSIGNAL_L",   _ScanTime, _RangeMult, _ShowRange, "HazardPlant",       "false",  _Override,  true)
AddFactory     = CreateScannableComponentData(_ScanRange, "BUILDING_FACTORY_L",          _ScanTime, _RangeMult, _ShowRange, "Drone",              "true",  _Override,  true)
AddFreighter   = CreateScannableComponentData(_ScanRange, "BUILDING_FREIGHTER_ALT",      _ScanTime, _RangeMult, _ShowRange, "HazardPlant",       "false",  _Override,  true)
AddGrave       = CreateScannableComponentData(_ScanRange, "BUILDING_GRAVEINCAVE",        _ScanTime, _RangeMult, _ShowRange, "Grave",             "false",  _Override,  true)
AddHarvester   = CreateScannableComponentData(_ScanRange, "BUILD_HARVESTER_L",           _ScanTime, _RangeMult, _ShowRange, "HarvestPlant",      "false",  _Override,  true)
AddMessage     = CreateScannableComponentData(_ScanRange, "BLD_MESSAGEMODULE_NAME_L",    _ScanTime, _RangeMult, _ShowRange, "Grave",             "false",  _Override,  true)
AddMonolith    = CreateScannableComponentData(_ScanRange, "BUILDING_MONOLITH_L",         _ScanTime, _RangeMult, _ShowRange, "Artifact",          "false",  _Override,  true)
AddObserver    = CreateScannableComponentData(_ScanRange, "BUILDING_OBSERVATORY_L",      _ScanTime, _RangeMult, _ShowRange, "SignalBooster",      "true",  _Override,  true)
AddOutpost     = CreateScannableComponentData(_ScanRange, "BUILDING_OUTPOST_L",          _ScanTime, _RangeMult, _ShowRange, "FreighterDoor",      "true",  _Override,  true)
--AddPlaque      = CreateScannableComponentData(_ScanRange, "SIGNAL_PLAQUE",               _ScanTime, _RangeMult, _ShowRange, "Artifact",          "false",  _Override,  true)
AddPSettlement = CreateScannableComponentData(_ScanRange, "UI_SETTLEMENT_LOCATED_OSD",   _ScanTime, _RangeMult, _ShowRange, "HazardPlant",       "false",  _Override,  true)
AddPortal      = CreateScannableComponentData(_ScanRange, "BUILDING_PORTAL_L",           _ScanTime, _RangeMult, _ShowRange, "Artifact",          "false",  _Override,  true)
AddRadioTower  = CreateScannableComponentData(_ScanRange, "BUILDING_RADIOTOWER_L",       _ScanTime, _RangeMult, _ShowRange, "SignalBooster",      "true",  _Override,  true)
AddRuin        = CreateScannableComponentData(_ScanRange, "UI_SIGNAL_TREASURERUIN",      _ScanTime, _RangeMult, _ShowRange, "Artifact",           "true",  _Override,  true)
AddTreasure    = CreateScannableComponentData(_ScanRange, "PLANT_FOOD_38",               _ScanTime, _RangeMult, _ShowRange, "ArtifactCrate",      "true",  _Override,  true)
AddSentinelH   = CreateScannableComponentData(_ScanRange, "UI_MP_HIVE_LABEL",            _ScanTime, _RangeMult, _ShowRange, "Drone",              "true",  _Override,  true)
AddSentinelD   = CreateScannableComponentData(_ScanRange, "UI_MP_HIVE_LABEL",            _ScanTime, _RangeMult, _ShowRange, "FriendlyDrone",      "true",  _Override,  true)
AddStoryGlitch = CreateScannableComponentData(_ScanRange, "Alien Anomaly Detected",      _ScanTime, _RangeMult, _ShowRange, "Artifact",          "false",  _Override,  true)
AddMinorSettle = CreateScannableComponentData(_ScanRange, "BUILDING_SHOP_L",             _ScanTime, _RangeMult, _ShowRange, "Hazard",            "false",  _Override,  true)
AddTerminal    = CreateScannableComponentData(_ScanRange, "SIGNAL_TERMINAL",             _ScanTime, _RangeMult, _ShowRange, "FreighterTerminal", "false",  _Override,  true)
AddRunawayMold = CreateScannableComponentData(_ScanRange, "UI_WEIRD_BALL_NAME_L",        _ScanTime, _RangeMult, _ShowRange, "Rare3",              "true", "0.000000", false)
AddSentinCrash = CreateScannableComponentData(_ScanRange, "UI_SENTINEL_CRASH_MARKER",    _ScanTime, _RangeMult, _ShowRange, "FriendlyDrone",      "true",  _Override,  true)
AddDropPod     = CreateScannableComponentData(_ScanRange, "BUILDING_DAMAGEDMACHINE_L",   _ScanTime, _RangeMult, _ShowRange, "Tech",              "false",  _Override,  true)
AddPillar      = CreateScannableComponentData(_ScanRange, "UI_MINIHIVE_CORRUPT_NAME",    _ScanTime, _RangeMult, _ShowRange, "CorruptedMachine",  "false",  _Override,  true)
AddCamp        = CreateScannableComponentData(_ScanRange, "UI_ROBOT_CAMP_TERMINAL_NAME", _ScanTime, _RangeMult, _ShowRange, "RobotHead",         "false",  _Override,  true)
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
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\PORTALSTRUCTURE.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Components", "TkPhysicsComponentData"},
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
