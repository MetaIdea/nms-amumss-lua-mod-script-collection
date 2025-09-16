local modfilename = "CrashedShipScanner"
local lua_author  = "Silent"
local lua_version = "4.6"
local mod_author  = "Silent369"
local contributor = "Spectrus1702"
local nms_version = "6.04"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Auto Scan for Crashed Ships Only (by request)

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
AddDistress    = CreateScannableComponentData(m_ScanRange, "BUILDING_DISTRESSSIGNAL_L",   m_ScanTime, m_RangeMult, m_ShowRange, "HazardPlant",       "false",  m_Override, true)
AddFreighter   = CreateScannableComponentData(m_ScanRange, "BUILDING_FREIGHTER_ALT",      m_ScanTime, m_RangeMult, m_ShowRange, "HazardPlant",       "false",  m_Override, true)
AddSentinCrash = CreateScannableComponentData(m_ScanRange, "UI_SENTINEL_CRASH_MARKER",    m_ScanTime, m_RangeMult, m_ShowRange, "FriendlyDrone",      "true",  m_Override, true)
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
