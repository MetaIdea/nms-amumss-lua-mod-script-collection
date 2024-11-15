local modfilename = "AutoScannerPlus"
local lua_author  = "Silent"
local lua_version = "3.5"
local mod_author  = "Silent369"
local contributor = "Spectrus1702"
local nms_version = "5.12"
local maintenance = mod_author
local description = [[

Auto Scan planet entities (objects, structures) within given range.

]]

--Inspired by the Scan_Auto.cs script provided by cmkNMSModBuilder
--https://github.com/cmkushnir/NMSModBuilder

------------------------------------------------------------------------------------------

local _ScanRange = 15000   --max based on lod? range ~2,100u
local _ScanTime  = 30
local _RangeMult = 1
local _ShowRange = 15000
local _Override  = 100     --hide when this close

------------------------------------------------------------------------------------------
-- Create Scannable Component Data
------------------------------------------------------------------------------------------

function CreateScannableComponentData(ScanRange, ScanName, ScanTime, RangeMult, ShowRange, DisplayIcon, AllowMerge)
    local result = [[
    <Property value="LinkableNMSTemplate.xml">
      <Property name="Template" value="GcScannableComponentData.xml">
        <Property name="ScanRange" value="]]..ScanRange..[[" />
        <Property name="ScanName" value="]]..ScanName..[[" />
        <Property name="ScanTime" value="]]..ScanTime..[[" />
        <Property name="CompassRangeMultiplier" value="]]..RangeMult..[[" />
        <Property name="AlwaysShowRange" value="]]..ShowRange..[[" />
        <Property name="CanTagIcon" value="True" />
        <Property name="ClearTagOnArrival" value="True" />
        <Property name="DisableIfBuildingPart" value="True" />
        <Property name="DisableIfInBase" value="True" />
        <Property name="UseModelNode" value="True" />
        <Property name="Icon" value="GcScannerIconTypes.xml">
          <Property name="ScanIconType" value="]]..DisplayIcon..[[" />
        </Property>
        <Property name="ScannableType" value="Marker" />
        <Property name="IsPlacedMarker" value="False" />
        <Property name="ShowInFreighterBranchRoom" value="False" />
        <Property name="TellPlayerIfFreighterObjectUsed" value="False" />
        <Property name="FreighterObjectAlreadyUsedLocID" value="UI_ABAND_LOG_READ" />
        <Property name="AllowedToMerge" value="]]..AllowMerge..[[" />
        <Property name="MarkerActiveWithNodeInactive" value="True" />
        <Property name="MissionSurveyId" value="" />
        <Property name="MinDisplayDistanceOverride" value="]].._Override..[[" />
      </Property>
      <Property name="Linked" value="" />
    </Property>]]
    return result
end

-- For scene and lsystem mbin's for all buildings:
-- METADATA/SIMULATION/ENVIRONMENT/PLANETBUILDINGTABLE.MBIN

--Note: if you enable any of the commented sections below then ensure you also uncomment the
--      related sections further in the script, otherwise you will encounter compile errors!

--BUILDING                                                 SIGNAL/SCAN TYPE               SCANTIME   RANGEMULT   SHOWRANGE   ICON            ALLOW MERGE
AddAbandoned   = CreateScannableComponentData(_ScanRange, "BUILDING_ABANDONED_L",        _ScanTime, _RangeMult, _ShowRange, "HazardEgg",          "True") --BUILDING_ABANDONED_L
AddBase        = CreateScannableComponentData(_ScanRange, "UI_RECOVER_BASE_MARKER",      _ScanTime, _RangeMult, _ShowRange, "Shield",            "False")
--AddBones       = CreateScannableComponentData(_ScanRange, "UI_UNDERGROUND_BONES_NAME_L", _ScanTime, _RangeMult, _ShowRange, "BuriedRare",         "True")
AddDepot       = CreateScannableComponentData(_ScanRange, "SIGNAL_DEPOT",                _ScanTime, _RangeMult, _ShowRange, "Drone",              "True")
AddDistress    = CreateScannableComponentData(_ScanRange, "BUILDING_DISTRESSSIGNAL_L",   _ScanTime, _RangeMult, _ShowRange, "HazardPlant",       "False")
AddFactory     = CreateScannableComponentData(_ScanRange, "BUILDING_FACTORY_L",          _ScanTime, _RangeMult, _ShowRange, "Drone",              "True") --BUILDING_FACTORY_L
AddFreighter   = CreateScannableComponentData(_ScanRange, "BUILDING_FREIGHTER_ALT",      _ScanTime, _RangeMult, _ShowRange, "HazardPlant",       "False")
AddGrave       = CreateScannableComponentData(_ScanRange, "BUILDING_GRAVEINCAVE",        _ScanTime, _RangeMult, _ShowRange, "Grave",             "False")
AddMessage     = CreateScannableComponentData(_ScanRange, "BLD_MESSAGEMODULE_NAME_L",    _ScanTime, _RangeMult, _ShowRange, "Grave",             "False")
AddMonolith    = CreateScannableComponentData(_ScanRange, "BUILDING_MONOLITH_L",         _ScanTime, _RangeMult, _ShowRange, "Artifact",          "False") --BUILDING_MONOLITH_L
AddObserver    = CreateScannableComponentData(_ScanRange, "BUILDING_OBSERVATORY_L",      _ScanTime, _RangeMult, _ShowRange, "SignalBooster",      "True") --BUILDING_OBSERVATORY_L
AddOutpost     = CreateScannableComponentData(_ScanRange, "BUILDING_OUTPOST_L",          _ScanTime, _RangeMult, _ShowRange, "FreighterDoor",      "True") --BUILDING_OUTPOST_L
AddPSettlement = CreateScannableComponentData(_ScanRange, "UI_SETTLEMENT_LOCATED_OSD",   _ScanTime, _RangeMult, _ShowRange, "HazardPlant",       "False") --UI_SETTLEMENT_LOCATED_OSD
AddPortal      = CreateScannableComponentData(_ScanRange, "BUILDING_PORTAL_L",           _ScanTime, _RangeMult, _ShowRange, "Artifact",          "False") --BUILDING_PORTAL_L
AddRadioTower  = CreateScannableComponentData(_ScanRange, "BUILDING_RADIOTOWER_L",       _ScanTime, _RangeMult, _ShowRange, "SignalBooster",      "True") --BUILDING_RADIOTOWER_L
AddRuin        = CreateScannableComponentData(_ScanRange, "UI_SIGNAL_TREASURERUIN",      _ScanTime, _RangeMult, _ShowRange, "Artifact",           "True")
AddTreasure    = CreateScannableComponentData(_ScanRange, "PLANT_FOOD_38",               _ScanTime, _RangeMult, _ShowRange, "ArtifactCrate",      "True")
AddSentinelH   = CreateScannableComponentData(_ScanRange, "UI_MP_HIVE_LABEL",            _ScanTime, _RangeMult, _ShowRange, "Drone",              "True")
AddSentinelD   = CreateScannableComponentData(_ScanRange, "UI_MP_HIVE_LABEL",            _ScanTime, _RangeMult, _ShowRange, "FriendlyDrone",      "True")
AddMinorSettle = CreateScannableComponentData(_ScanRange, "BUILDING_SHOP_L",             _ScanTime, _RangeMult, _ShowRange, "Hazard",            "False")
AddTerminal    = CreateScannableComponentData(_ScanRange, "SIGNAL_TERMINAL",             _ScanTime, _RangeMult, _ShowRange, "FreighterTerminal", "False")

--ADDITIONAL
AddRunawayMold = CreateScannableComponentData(_ScanRange, "UI_WEIRD_BALL_NAME_L",        _ScanTime, _RangeMult, _ShowRange, "Rare3",              "True")
AddSentinCrash = CreateScannableComponentData(_ScanRange, "UI_SENTINEL_CRASH_MARKER",    _ScanTime, _RangeMult, _ShowRange, "FriendlyDrone",      "True")
AddStoryGlitch = CreateScannableComponentData(_ScanRange, "Alien Anomaly Detected",      _ScanTime, _RangeMult, _ShowRange, "Artifact",          "False")
AddDropPod     = CreateScannableComponentData(_ScanRange, "BUILDING_DAMAGEDMACHINE_L",   _ScanTime, _RangeMult, _ShowRange, "Tech",              "False")
AddPillar      = CreateScannableComponentData(_ScanRange, "UI_MINIHIVE_CORRUPT_NAME",    _ScanTime, _RangeMult, _ShowRange, "CorruptedMachine",  "False")
AddCamp        = CreateScannableComponentData(_ScanRange, "UI_ROBOT_CAMP_TERMINAL_NAME", _ScanTime, _RangeMult, _ShowRange, "RobotHead",         "False") --ROBOT_CAMP

local DistressSound =
[[
    <Property value="LinkableNMSTemplate.xml">
      <Property name="Template" value="GcAudioAreaTriggerComponentData.xml">
        <Property name="EventEnter" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="WARN_DISTRESS_DETECTED" />
        </Property>
        <Property name="EventExit" value="GcAudioWwiseEvents.xml">
          <Property name="AkEvent" value="INVALID_EVENT" />
        </Property>
        <Property name="EnterDistance" value="]].._ShowRange..[[" />
        <Property name="ExitDistance" value="]].._ShowRange..[[" />
      </Property>
      <Property name="Linked" value="" />
    </Property>
]]

--Sentinel Crash Scene Data.Entity

local PhysicsComponantData =
[[
    <Property value="LinkableNMSTemplate.xml">
      <Property name="Template" value="TkPhysicsComponentData.xml">
        <Property name="Data" value="TkPhysicsData.xml">
          <Property name="Mass" value="0" />
          <Property name="Friction" value="0.5" />
          <Property name="RollingFriction" value="0.2" />
          <Property name="AngularDamping" value="0.2" />
          <Property name="LinearDamping" value="0.1" />
          <Property name="Gravity" value="20" />
        </Property>
        <Property name="NavMeshInclusion" value="TkNavMeshInclusionParams.xml">
          <Property name="InclusionType" value="TkNavMeshInclusionType.xml">
            <Property name="NavMeshInclusionType" value="Auto" />
          </Property>
          <Property name="InclusionMinSize" value="0" />
          <Property name="AreaType" value="TkNavMeshAreaType.xml">
            <Property name="NavMeshAreaType" value="Auto" />
          </Property>
        </Property>
        <Property name="TriggerVolume" value="False" />
        <Property name="TriggerVolumeType" value="TkVolumeTriggerType.xml">
          <Property name="VolumeTriggerType" value="Open" />
        </Property>
        <Property name="SurfaceProperties" value="None" />
        <Property name="ModelOwnership" value="Model" />
        <Property name="Climbable" value="False" />
        <Property name="Walkable" value="True" />
        <Property name="Floor" value="False" />
        <Property name="IgnoreModelOwner" value="False" />
        <Property name="NoVehicleCollide" value="False" />
        <Property name="NoPlayerCollide" value="False" />
        <Property name="NoFireCollide" value="False" />
        <Property name="NoFallDamage" value="False" />
        <Property name="IgnoreAllCollisions" value="False" />
        <Property name="BlocksInteract" value="True" />
        <Property name="CameraInvisible" value="False" />
        <Property name="InvisibleForInteraction" value="False" />
        <Property name="AllowTeleporter" value="False" />
        <Property name="BlockTeleporter" value="False" />
        <Property name="DisableGravity" value="False" />
        <Property name="SpinOnCreate" value="0" />
        <Property name="ScaleAffectsMass" value="False" />
        <Property name="AllowedDefaultCollision" value="True" />
        <Property name="Animated" value="False" />
        <Property name="UseBasePartOptimisation" value="False" />
        <Property name="IsTransporter" value="False" />
        <Property name="UseSimpleCharacterCollision" value="False" />
        <Property name="RotateSimpleCharacterCollisionCapsule" value="False" />
        <Property name="SimpleCharacterCollisionRadius" value="0.5" />
        <Property name="SimpleCharacterCollisionHeight" value="2" />
        <Property name="SimpleCharacterCollisionHeightOffset" value="0" />
        <Property name="SimpleCharacterCollisionFwdOffset" value="0" />
      </Property>
      <Property name="Linked" value="" />
    </Property>
]]

----------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = string.format("_%s%s.pak", modfilename, "v"..lua_version),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    CONTRIBUTOR     = contributor,
    MOD_DESCRIPTION = description,
    MOD_MAINTENANCE = maintenance,
    MODIFICATIONS   =
    {
        {
            MBIN_CT =
            {
                    ----------------------------------------------------------------------------------------------
                    --SENTINEL CRASH SITE - (Inserted TkPhysicsComponentData)
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DISTRESSSIGNAL\SENTINELCRASHSCENE\ENTITIES\DATA.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            PKW = {"Components"},
                            CREATE_HOS = true,
                            ADD = DistressSound..PhysicsComponantData,
                        },
                        {
                            SKW = {"Template", "TkPhysicsComponentData.xml"},
                            SECTION_UP = 1,
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddSentinCrash
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --RUNAWAY MOLD - Already has GcScannableComponentData, we're overriding for AllowMerge
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\ROLLINGPLANT\ENTITIES\ROLLINGPROP.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            SKW = {"Template", "GcScannableComponentData.xml"},
                            SECTION_UP_SPECIAL = 1,
                            REMOVE = "SECTION",
                        },
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddRunawayMold,
                        },
                    }
                },
                     ----------------------------------------------------------------------------------------------
                     --TRAVELLER GRAVE - Already has GcScannableComponentData, we're overriding for AllowMerge
                     ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\GRAVEINCAVE\GRAVEINCAVE\ENTITIES\GRAVEINCAVE.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            SKW = {"Template", "GcScannableComponentData.xml"},
                            SECTION_UP_SPECIAL = 1,
                            REMOVE = "SECTION",
                        },
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddGrave,
                        },
                    }
                },
                     ----------------------------------------------------------------------------------------------
                     --DISSONANCE RESONATOR - Already has GcScannableComponentData, we're overriding for AllowMerge
                     ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\CORRUPTDRONEPILLAR\ENTITIES\DATA.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            SKW = {"Template", "GcScannableComponentData.xml"},
                            SECTION_UP_SPECIAL = 1,
                            REMOVE = "SECTION",
                        },
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddPillar,
                        },
                    }
                },
                     ----------------------------------------------------------------------------------------------
                     --DROP PODS - Spectrus1702
                     ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DAMAGEDMACHINERY\DAMAGEDMACHINERY_POD\ENTITIES\DAMAGEDMACHINERY_POD.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddDropPod,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --MESSAGE MODULE
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\MESSAGEMODULE\ENTITIES\MESSAGEMODULE.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
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
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
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
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddBase,
                        },
                    },
                },
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DEFAULTROOM\ENTITIES\DEFAULTROOM.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddBase,
                        },
                    },
                },
                    ----------------------------------------------------------------------------------------------
                    --TRADE OUTPOST
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOST\ENTITIES\OUTPOST.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml", "LinkableNMSTemplate.xml"},
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
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
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
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddPSettlement,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --DISTRESS SIGNAL
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DISTRESSSIGNAL\PARTS\BLACKBOX\ENTITIES\BLACKBOX.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddDistress..DistressSound,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --REMOTE TERMINAL
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\HOLOCOM\HOLOCOM\ENTITIES\HOLOCOM.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDbeforeSECTION",
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
                        ---[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RADIOTOWER\RADIOTOWERSCIENTIFIC\ENTITIES\SCIENTIFICRADIOTOWER.ENTITY.MBIN]],
                        ---[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RADIOTOWER\RADIOTOWERTRADER\ENTITIES\RADIOTOWERTRADER.ENTITY.MBIN]],
                        ---[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RADIOTOWER\RADIOTOWERWARRIOR\ENTITIES\RADIOTOWERWARRIOR.ENTITY.MBIN]],
                        ---[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RADIOTOWER\RADIOTOWERSCIENTIFIC\ENTITIES\RADIOTOWERINERACTION.ENTITY.MBIN]],
                        ---[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RADIOTOWER\RADIOTOWERWARRIOR\ENTITIES\RADIOTOWERINTERACTION.ENTITY.MBIN]],
                        ---[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RADIOTOWER\RADIOTOWERTRADER\ENTITIES\RADIOTOWERINTERACTION.ENTITY.MBIN]]
                    },
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddRadioTower,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --MONOLITH SITES
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\CENTERPIECE\INTERACTIONPLATFORM\ENTITIES\INTERACTIONPLATFORM.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\CENTERPIECE\RUBIXCUBE\ENTITIES\RUBIXCUBE.ENTITY.MBIN]],
                        --[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\MONOLITH\ENTITIES\MONOLITH.ENTITY.MBIN]]
                    },
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddMonolith,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --PORTAL \ MONUMENT SITE
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\PORTALSTRUCTURE.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddPortal,
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\PORTAL.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddPortal,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --ANCIENT RUINS
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RUINS\PROCRUINS\ENTITIES\RUINS.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddRuin,
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RUINS\UNDERGROUNDRUINS\ENTITIES\TRIGGERVOLUME.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddTreasure,
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
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDbeforeSECTION",
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
                        ---[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\FACTORY\FACTORYSCIENTIFIC\ENTITIES\SCIENTIFICFACTORY.ENTITY.MBIN]],
                        ---[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\FACTORY\FACTORYTRADER\ENTITIES\FACTORYTRADER.ENTITY.MBIN]],
                        ---[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\FACTORY\FACTORYWARRIOR\ENTITIES\FACTORY.ENTITY.MBIN]]
                    },
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDbeforeSECTION",
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
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
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
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
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
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
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
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
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
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDbeforeSECTION",
                            ADD = AddAbandoned,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --ROBOT CAMP
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\COMMON\BUILDINGS\ROBOT\ROBOTBASE\ENTITIES\TERMINAL.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            SKW = {"Template", "GcScannableComponentData.xml"},
                            SECTION_UP_SPECIAL = 1,
                            REMOVE = "SECTION",
                        },
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddCamp,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --RARE RESOURCE, Already has GcScannableComponentData, we're overriding for AllowMerge
                    ----------------------------------------------------------------------------------------------
                --{
                --    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\BONEPILE\ENTITIES\BONEPILE.ENTITY.MBIN]],
                --    EXML_CT =
                --    {
                --          {
                --              PKW = {"Template", "GcScannableComponentData.xml"},
                --              SECTION_UP_SPECIAL = 1,
                --              REMOVE = "SECTION",
                --          },
                --          {
                --             PKW = {"Components", "LinkableNMSTemplate.xml"},
                --             ADD_OPTION = "ADDafterSECTION",
                --             ADD = AddBones,
                --          }
                --    },
                --},
                    ----------------------------------------------------------------------------------------------
                    --CRASHED FREIGHTER
                    ----------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRASHEDFREIGHTER\PARTS\CRASHEDFREIGHTER_DISTRESSSIGNAL\ENTITIES\CRASHEDFREIGHTER_DISTRESSSIGNAL.ENTITY.MBIN]],
                    EXML_CT =
                    {
                        {
                            PKW = {"Components", "LinkableNMSTemplate.xml"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = AddFreighter..DistressSound,
                        },
                    }
                },
            }
        },
    }
}
