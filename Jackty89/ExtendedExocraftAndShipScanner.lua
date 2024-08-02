Mod_Name = "ExtendedExocraftAndShipScanner"

Vehicle_Scan_Table_Path = "METADATA/SIMULATION/SCANNING/VEHICLESCANTABLE.MBIN"
Building_Globals_Path = "GCBUILDINGGLOBALS.GLOBAL.MBIN"
Vehicle_Scan_Event_Table_Path = "METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN"
Scan_Event_Table_Planet_Path = "METADATA/SIMULATION/SCANNING/SCANEVENTTABLEPLANET.MBIN"

--Scanner lvl 0 = base scanner, lvl 1 = 1st uprgade, lvl 2 = 2nd uprgade
--Exocraft can now scan for TradePosts with scanner lvl2

Scan_Entries =
{
    {
        -- CRASHED_SHIP
        ["Value"] = "DISTRESS",
        ["Name"] = "ABANDONED_SHIP_TITLE_L",
        ["RequiredTech"] = "VEHICLE_SCAN2",
        ["Icon"] = "TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.SHIP.DDS"
    },
    {
        -- CRASHED_FREIGHTER
        ["Value"] = "CRASHED_FREIGHTER",
        ["Name"] = "UI_CORE_ACT2_STEP8_MARKER",
        ["RequiredTech"] = "VEHICLE_SCAN",
        ["Icon"] = "TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.FREIGHTER.DDS"
    },
    {
        -- DISTRESS_NPC
        ["Value"] = "DISTRESS_NPC",
        ["Name"] = "UI_PULSE_ENCOUNTER_NAME_REPAIR",
        ["RequiredTech"] = "VEHICLE_SCAN1",
        ["Icon"] = "TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.REPAIR.DDS"
    },
    {
        -- FACTORY
        ["Value"] = "FACTORY",
        ["Name"] = "BUILDING_FACTORY_L",
        ["RequiredTech"] = "VEHICLE_SCAN2",
        ["Icon"] = "TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.COLLECT.DDS"
    },
    {
        -- HARVESTER
        ["Value"] = "HARVESTER",
        ["Name"] = "BUILDING_HARVESTER_L",
        ["RequiredTech"] = "VEHICLE_SCAN1",
        ["Icon"] = "TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.WHEAT.DDS"
    },
    {
        -- OBSERVATORY
        ["Value"] = "OBSERVATORY",
        ["Name"] = "BUILDING_OBSERVATORY_L",
        ["RequiredTech"] = "VEHICLE_SCAN1",
        ["Icon"] = "EXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PLANET.DDS"
    },
    {
        -- RADIOTOWER
        ["Value"] = "RADIOTOWER",
        ["Name"] = "BUILDING_RADIOTOWER_L",
        ["RequiredTech"] = "VEHICLE_SCAN1",
        ["Icon"] = "TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.SCAN.DDS"
    },
    {
        -- ROBOT_CAMP
        ["Value"] = "ROBOT_CAMP",
        ["Name"] = "ROBOT_CAMP",
        ["RequiredTech"] = "VEHICLE_SCAN2",
        ["Icon"] = "TEXTURES/UI/HUD/ICONS/BUILDINGS/BUILDING.ROBOTHEAD.DDS"
    },
}

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = Mod_Name .. ".pak",
    ["MOD_AUTHOR"] = "Jackty89",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = Vehicle_Scan_Table_Path,
                    ["EXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = Scan_Event_Table_Planet_Path,
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = Vehicle_Scan_Event_Table_Path,
                    ["EXML_CHANGE_TABLE"] = {}
                },
                {
                    ["MBIN_FILE_SOURCE"] = Building_Globals_Path,
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

local Changes_To_Vehicle_Scan_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local Changes_To_Scan_Event_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local Changes_Vehicle_Scan_Event_Table = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

function Add_Single_Scan_Event_For_Vehicle(Value, Name, RequiredTech, Icon)
    Changes_To_Vehicle_Scan_Table[#Changes_To_Vehicle_Scan_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"GcVehicleScanTableEntry.xml"},
        ["SEC_SAVE_TO"] = "SCAN_EVENT"
    }
    Changes_To_Vehicle_Scan_Table[#Changes_To_Vehicle_Scan_Table + 1] =
    {
        ["SEC_EDIT"] = "SCAN_EVENT",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"Value", Value},
            {"Name", Name},
            {"RequiredTech", RequiredTech},
            {"Filename", Icon},
        }
    }
    Changes_To_Vehicle_Scan_Table[#Changes_To_Vehicle_Scan_Table + 1] =
    {
        ["SEC_EDIT"] = "SCAN_EVENTS_MASTER",
        ["ADD_OPTION"] = "ADDafterSECTION",
        ["SEC_ADD_NAMED"] = "SCAN_EVENT"
    }
end

function Add_New_Scan_Events_For_Vehicle()
    Changes_To_Vehicle_Scan_Table[#Changes_To_Vehicle_Scan_Table + 1] =
    {
        ["SEC_EMPTY"] = "SCAN_EVENTS_MASTER"
    }
    for i = 1, #Scan_Entries do
        Add_Single_Scan_Event_For_Vehicle(Scan_Entries[i]["Value"], Scan_Entries[i]["Name"], Scan_Entries[i]["RequiredTech"], Scan_Entries[i]["Icon"])
    end
    Changes_To_Vehicle_Scan_Table[#Changes_To_Vehicle_Scan_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"VehicleScanTable"},
        ["SEC_ADD_NAMED"] = "SCAN_EVENTS_MASTER"
    }
end

function Add_New_Scan_Event()
    Changes_To_Scan_Event_Table[#Changes_To_Scan_Event_Table + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {"Name", "ROBOT_CAMP"},
        ["SEC_SAVE_TO"] = "ROBOT_CAMP"
    }
    Changes_Vehicle_Scan_Event_Table[#Changes_Vehicle_Scan_Event_Table + 1] =
    {
        ["PRECEDING_KEY_WORDS"] = {"Events"},
        ["SEC_ADD_NAMED"] = "ROBOT_CAMP"
    }
end

Add_New_Scan_Events_For_Vehicle()
Add_New_Scan_Event()