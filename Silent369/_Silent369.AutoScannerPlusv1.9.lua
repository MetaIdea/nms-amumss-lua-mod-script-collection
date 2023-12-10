local modfilename = "AutoScannerPlus"
local lua_author  = "Silent"
local lua_version = "v1.9"
local mod_author  = "Silent369"
local nms_version = "4.46"
local maintenance = mod_author
local description = [[

Auto Scan planet entities (objects, structures) within given range.

]]

--Inspired by the Scan_Auto.cs script provided by cmkNMSModBuilder
--https://github.com/cmkushnir/NMSModBuilder

------------------------------------------------------------------------------------------

local _ScanRange = 15000   --max based on a lod? range ~2,100u
local _ScanTime  = 5
local _RangeMult = 1E+09
local _ShowRange = 15000
local _Override  = -1      --hide when this close

------------------------------------------------------------------------------------------
-- Create Scannable Component Data
------------------------------------------------------------------------------------------

function CreateScannableComponentData(ScanRange, ScanName, ScanTime, RangeMult, ShowRange, DisplayIcon, AllowMerge)
    local result = [[
    <Property value="GcScannableComponentData.xml">
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
AddFactory     = CreateScannableComponentData(_ScanRange, "SIGNAL_FACTORY",              _ScanTime, _RangeMult, _ShowRange, "Drone",              "True") --BUILDING_FACTORY_L
AddFreighter   = CreateScannableComponentData(_ScanRange, "BUILDING_FREIGHTER_ALT",      _ScanTime, _RangeMult, _ShowRange, "HazardPlant",       "False")
AddGrave       = CreateScannableComponentData(_ScanRange, "BUILDING_GRAVEINCAVE",        _ScanTime, _RangeMult, _ShowRange, "Grave",             "False")
AddMessage     = CreateScannableComponentData(_ScanRange, "BLD_MESSAGEMODULE_NAME_L",    _ScanTime, _RangeMult, _ShowRange, "Grave",             "False")
AddMonolith    = CreateScannableComponentData(_ScanRange, "SIGNAL_MONOLITH",             _ScanTime, _RangeMult, _ShowRange, "Artifact",          "False")
AddObserver    = CreateScannableComponentData(_ScanRange, "SIGNAL_OBSERVATORY",          _ScanTime, _RangeMult, _ShowRange, "SignalBooster",      "True") --BUILDING_OBSERVATORY_L
AddOutpost     = CreateScannableComponentData(_ScanRange, "BUILDING_OUTPOST_L",          _ScanTime, _RangeMult, _ShowRange, "FreighterDoor",      "True") --BUILDING_OUTPOST_L
AddPSettlement = CreateScannableComponentData(_ScanRange, "UI_SETTLEMENT_LOCATED_OSD",   _ScanTime, _RangeMult, _ShowRange, "HazardPlant",       "False") --UI_SETTLEMENT_LOCATED_OSD
AddPortal      = CreateScannableComponentData(_ScanRange, "BUILDING_PORTAL_L",           _ScanTime, _RangeMult, _ShowRange, "Artifact",          "False") --BUILDING_PORTAL_L
AddRadioTower  = CreateScannableComponentData(_ScanRange, "BUILDING_RADIOTOWER_L",       _ScanTime, _RangeMult, _ShowRange, "CustomMarker",       "True") --BUILDING_RADIOTOWER_L
AddRuin        = CreateScannableComponentData(_ScanRange, "UI_SIGNAL_TREASURERUIN",      _ScanTime, _RangeMult, _ShowRange, "Artifact",           "True")
AddTreasure    = CreateScannableComponentData(_ScanRange, "PLANT_FOOD_38",               _ScanTime, _RangeMult, _ShowRange, "ArtifactCrate",      "True")
AddSentinelH   = CreateScannableComponentData(_ScanRange, "UI_MP_HIVE_LABEL",            _ScanTime, _RangeMult, _ShowRange, "Drone",              "True")
AddSentinelD   = CreateScannableComponentData(_ScanRange, "UI_MP_HIVE_LABEL",            _ScanTime, _RangeMult, _ShowRange, "FriendlyDrone",      "True")
AddMinorSettle = CreateScannableComponentData(_ScanRange, "BUILDING_SHOP_L",             _ScanTime, _RangeMult, _ShowRange, "Hazard",            "False")
AddTerminal    = CreateScannableComponentData(_ScanRange, "SIGNAL_TERMINAL",             _ScanTime, _RangeMult, _ShowRange, "FreighterTerminal", "False")

--FLORA TEST                                               SIGNAL/SCAN TYPE               SCANTIME   RANGEMULT   SHOWRANGE   ICON            ALLOW MERGE
AddRunawayMold = CreateScannableComponentData(_ScanRange, "UI_WEIRD_BALL_NAME_L",        _ScanTime, _RangeMult, _ShowRange, "Rare3",              "True")

--ROBOTS TEST                                              SIGNAL/SCAN TYPE               SCANTIME   RANGEMULT   SHOWRANGE   ICON            ALLOW MERGE
AddSentinCrash = CreateScannableComponentData(_ScanRange, "SENT_CRASH_CORRUPT",          _ScanTime, _RangeMult, _ShowRange, "Drone",              "True")

--STORY GLITCH TEST                                        SIGNAL/SCAN TYPE               SCANTIME   RANGEMULT   SHOWRANGE   ICON            ALLOW MERGE
AddStoryGlitch = CreateScannableComponentData(_ScanRange, "Alien Anomaly Detected",      _ScanTime, _RangeMult, _ShowRange, "Artifact",          "False")

------------------------------------------------------------------------------------------
-- SOUND EFFECT
------------------------------------------------------------------------------------------

DistressSound =
[[
    <Property value="GcAudioAreaTriggerComponentData.xml">
      <Property name="EventEnter" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="WARN_DISTRESS_DETECTED" />
      </Property>
      <Property name="EventExit" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="EnterDistance" value="]].._ShowRange..[[" />
      <Property name="ExitDistance" value="]].._ShowRange..[[" />
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = string.format("_%s%s.pak", modfilename, lua_version),
    ["LUA_AUTHOR"]              = lua_author,
    ["MOD_AUTHOR"]              = mod_author,
    ["NMS_VERSION"]             = nms_version,
    ["MOD_DESCRIPTION"]         = description,
    ["MOD_MAINTENANCE"]         = maintenance,
    ["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                    ----------------------------------------------------------------------------------------------
                    --BUILDING SCAN DISTANCE / TIMING DATA
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  = [[GCBUILDINGGLOBALS.GLOBAL.MBIN]],
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MaxLineLength",               "0"}, --Original "30" Line length from object to icon
                                {"MaxTimeBetweenEvents",      "120"}, --Original "240"
                                {"ShowTimeNotDistance",         "1"}, --Original "2" Change to "1" range and icon!
                                {"UnknownBuildingRange", _ScanRange}, --Original "600"
                                {"MaxIconRange",         _ShowRange}, --Original "1200"
                                {"MinShipScanBuildings",        "1"}, --Original "0"
                                {"MaxShipScanBuildings",        "3"}, --Original "2"
                            }
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --SENTINEL CRASH SCENE
                    ----------------------------------------------------------------------------------------------
               {
                   ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DISTRESSSIGNAL\SENTINELCRASHSCENE\ENTITIES\DATA.ENTITY.MBIN]],
                   ["EXML_CHANGE_TABLE"] =
                   {
                       {
                           ["REPLACE_TYPE"]        = "RAW",
                           ["VALUE_CHANGE_TABLE"]  =
                           {
                               {[[<Property name="Components" />]], [[<Property name="Components">]]},
                           }
                       },
                       {
                           ["PRECEDING_KEY_WORDS"] = {"Components"},
                           ["ADD"]                 = AddSentinCrash,
                       },
                       {
                           ["PRECEDING_KEY_WORDS"] = {"GcScannableComponentData.xml"},
                           ["ADD_OPTION"]          = "ADDafterSECTION",
                           ["ADD"]                 = [[  </Property>]],
                       },
                   }
               },
                    ----------------------------------------------------------------------------------------------
                    --RUNAWAY MOLD - Already has GcScannableComponentData, but we're overriding for AllowMerge
                    ----------------------------------------------------------------------------------------------
               {
                   ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\ROLLINGPLANT\ENTITIES\ROLLINGPROP.ENTITY.MBIN]],
                   ["EXML_CHANGE_TABLE"] =
                   {
                       {
                           ["PRECEDING_KEY_WORDS"] = {"GcScannableComponentData.xml"},
                           ["REMOVE"]              = "SECTION",
                       },
                       {
                           ["PRECEDING_KEY_WORDS"] = {"Components"},
                           ["LINE_OFFSET"]         = "+0",
                           ["ADD"]                 = AddRunawayMold,
                       },
                   }
               },
                    ----------------------------------------------------------------------------------------------
                    --TRAVELLER GRAVE - Already has GcScannableComponentData, but we're overriding for AllowMerge
                    ----------------------------------------------------------------------------------------------
               {
                   ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\GRAVEINCAVE\GRAVEINCAVE\ENTITIES\GRAVEINCAVE.ENTITY.MBIN]],
                   ["EXML_CHANGE_TABLE"] =
                   {
                       {
                           ["PRECEDING_KEY_WORDS"] = {"GcScannableComponentData.xml"},
                           ["REMOVE"]              = "SECTION",
                       },
                       {
                           ["PRECEDING_KEY_WORDS"] = {"Components"},
                           ["LINE_OFFSET"]         = "+0",
                           ["ADD"]                 = AddGrave,
                       },
                   }
               },
                    ----------------------------------------------------------------------------------------------
                    --MESSAGE MODULE
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\TECH\MESSAGEMODULE\ENTITIES\MESSAGEMODULE.ENTITY.MBIN]],
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddMessage,
                        },
                    },
                },
                    ----------------------------------------------------------------------------------------------
                    --STORY GLITCH
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\BUILDINGSIZEDPROPS\ALIENRING\ENTITIES\ALIENRING.ENTITY.MBIN]],
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddStoryGlitch,
                        },
                    },
                },
                    ----------------------------------------------------------------------------------------------
                    --BASE SITE (WILD)
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\BASECOMPUTER\ENTITIES\BASECOMPUTER.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\DEFAULTROOM\ENTITIES\DEFAULTROOM.ENTITY.MBIN]]
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddBase,
                        },
                    },
                },
                    ----------------------------------------------------------------------------------------------
                    --TRADE OUTPOST
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\TRADINGPOST\TRADINGPOST\ENTITIES\OUTPOST.ENTITY.MBIN]],
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddOutpost,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --MINOR SETTLEMENT
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\TRADERPARTS\LANDINGPAD\ENTITIES\LANDINGPAD.ENTITY.MBIN]],
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddMinorSettle,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --PLANETARY SETTLEMENT
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SETTLEMENT\TOWER_STONE_PLACEMENT\ENTITIES\PLACEMENTDATA.ENTITY.MBIN]],
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddPSettlement,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --DISTRESS SIGNAL
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DISTRESSSIGNAL\PARTS\BLACKBOX\ENTITIES\BLACKBOX.ENTITY.MBIN]],
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddDistress..DistressSound,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --REMOTE TERMINAL
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\HOLOCOM\HOLOCOM\ENTITIES\HOLOCOM.ENTITY.MBIN]]
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddTerminal,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --RADIOTOWER (Transmission Tower)
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RADIOTOWER\SCIENTIFICRADIOTOWERPARTS\SCIENTIFICTERMINAL\ENTITIES\SCIENTIFICRADIOTOWER.ENTITY.MBIN]],
                        ---[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RADIOTOWER\RADIOTOWERSCIENTIFIC\ENTITIES\SCIENTIFICRADIOTOWER.ENTITY.MBIN]],
                        ---[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RADIOTOWER\RADIOTOWERWARRIOR\ENTITIES\RADIOTOWERWARRIOR.ENTITY.MBIN]],
                        ---[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RADIOTOWER\RADIOTOWERTRADER\ENTITIES\RADIOTOWERTRADER.ENTITY.MBIN]]
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddRadioTower,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --PORTAL \ MONUMENT SITE
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\PORTALSTRUCTURE.ENTITY.MBIN]],
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddPortal,
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PORTAL\PORTAL\ENTITIES\PORTAL.ENTITY.MBIN]],
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddPortal,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --MONOLITH SITES
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\CENTERPIECE\INTERACTIONPLATFORM\ENTITIES\INTERACTIONPLATFORM.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\CENTERPIECE\RUBIXCUBE\ENTITIES\RUBIXCUBE.ENTITY.MBIN]],
                        ---[[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\RUINPARTS\MONOLITH\ENTITIES\MONOLITH.ENTITY.MBIN]]
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddMonolith,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --ANCIENT RUINS
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RUINS\PROCRUINS\ENTITIES\RUINS.ENTITY.MBIN]],
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddRuin,
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RUINS\UNDERGROUNDRUINS\ENTITIES\TRIGGERVOLUME.ENTITY.MBIN]],
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddTreasure,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --DEPOT SITES
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEPOT\DEPOTWARRIOR\ENTITIES\CLUMPMASTER.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEPOT\DEPOTTRADER\ENTITIES\CLUMPMASTER.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEPOT\DEPOTSCIENTIFIC\ENTITIES\CLUMPMASTER.ENTITY.MBIN]]
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddDepot,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --FACTORY SITE
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  =
                    {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\FACTORY\FACTORYSCIENTIFIC\ENTITIES\SCIENTIFICFACTORY.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\FACTORY\FACTORYTRADER\ENTITIES\FACTORYTRADER.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\FACTORY\FACTORYWARRIOR\ENTITIES\FACTORY.ENTITY.MBIN]]
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddFactory,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --OBSERVATORY
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  = {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\WARRIORPARTS\OBSERVATORYWARRIOR_ROOF\ENTITIES\RADAR.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\WARRIORPARTS\ROOF_OBSERVATORY\ENTITIES\RADAR.ENTITY.MBIN]]
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddObserver,
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = {
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYSCIENTIFIC\ENTITIES\OBSERVATORYINTERACTION.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYTRADER\ENTITIES\OBSERVATORYINTERACTION.ENTITY.MBIN]],
                        [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\OBSERVATORY\OBSERVATORYWARRIOR\ENTITIES\OBSERVATORYINTERACTION.ENTITY.MBIN]]
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddObserver,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --SENTINEL HIVE ACTIVE
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SENTINELHIVE\SENTINELHIVEDESTRUCTIBLE\ENTITIES\SENTINELHIVEDESTRUCTIBLE.ENTITY.MBIN]],
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddSentinelH,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --SENTINEL HIVE DISABLED
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\SENTINELHIVE\SENTINELHIVEDESTRUCTIBLE_DESTROYED\ENTITIES\DEBRIS.ENTITY.MBIN]],
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddSentinelD,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --ABANDONED SITE
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\COMMONPARTS\ABANDONEDTERMINAL\ENTITIES\ABANDONEDTERMINAL.ENTITY.MBIN]],
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddAbandoned,
                        },
                    }
                },
                    ----------------------------------------------------------------------------------------------
                    --RARE RESOURCE, Already has GcScannableComponentData, but we're overriding for AllowMerge
                    ----------------------------------------------------------------------------------------------
                --{
                --  ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\RARERESOURCE\GROUND\BONEPILE\ENTITIES\BONEPILE.ENTITY.MBIN]],
                --  ["EXML_CHANGE_TABLE"] =
                --  {
                --          {
                --              ["PRECEDING_KEY_WORDS"] = {"GcScannableComponentData.xml"},
                --              ["REMOVE"]              = "SECTION",
                --          },
                --        {
                --          ["PRECEDING_KEY_WORDS"] = {"Components"},
                --          ["LINE_OFFSET"]         = "+0",
                --          ["ADD"]                 = AddBones,
                --        }
                --  },
                --},
                    ----------------------------------------------------------------------------------------------
                    --CRASHED FREIGHTER
                    ----------------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]  = [[MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRASHEDFREIGHTER\PARTS\CRASHEDFREIGHTER_DISTRESSSIGNAL\ENTITIES\CRASHEDFREIGHTER_DISTRESSSIGNAL.ENTITY.MBIN]],
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Components"},
                            ["LINE_OFFSET"]         = "+0",
                            ["ADD"]                 = AddFreighter..DistressSound,
                        },
                    }
                }
            }
        }
    }
}
