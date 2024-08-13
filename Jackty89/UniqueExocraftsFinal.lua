local ModName = "UniqueExoCrafts"
local Description = "A small mod that make exocraft faster but also stand out from eachother"

local GCTechnologyTablePath = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
local VehicleGlobalsPath = "GCVEHICLEGLOBALS.GLOBAL.MBIN"
local InventoryTablePath = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN"

local NautilonUnderwaterEnginePower = "10" -- Acceleration speed
local NautilonUnderwaterEngineFalloff = "1" -- 1 = 100% so no fall of , 0.9 =90% means speed wil be 10% slower  => 45u

local MechSuitJPForce = "100"
local MechSuitJPMaxSpeed = "50"
local MechSuitJPMaxUpSpeed = "80"
local MechSuitJPDrainRate = "0.40"
local MechSuitJPFillRate = "0.60"
local MechSuitLaserDamange = "350"
local MechSuitCanonDamange = "2500"

local VehicleFuelRate = "0.3"
-- VehicleFuelRateSurvival = "0.5"
local VehicleBoostFuelRate = "1"
local VehicleBoostFuelRateSurvival = "2"

local ImproveVehicleInventory = true

local MaxInventoryCap = 120
local MaxTechCap = 60

local InventoryWidth = 10
local InventoryHeight = 12

local TechWidth = 10
local TechHeight = 6

local VehicleSizes = {
    "VehicleSmall",
    "VehicleMedium",
    "VehicleLarge"
}

local Edit_Properties = false

local User_Choice_Edit_Properties = {Edit_Properties,
[[
    Would you like to manually edit properties?
    Default = >> ]] .. (Edit_Properties and "Y" or "N") .. [[ <<
]]}
Edit_Properties = GUIF(User_Choice_Edit_Properties, 10)


local ExoCraftsNewValues =
{
    BIKE = {
        ["Speed"] = "50",
        ["BoostForce"] = "800",
        ["BoostMaxSpeed"] = "60",
        ["BoostExtraMaxSpeedAir"] = "80",
        ["VehicleBoostSpeedFalloff"] = "2.5",
        ["VehicleBoostTime"] = "2.5",
        ["VehicleBoostRechargeTime"] = "3"
    },
    MED_BUGGY =
    {
        ["Speed"] = "40",
        ["BoostForce"] = "700",
        ["BoostMaxSpeed"] = "50",
        ["BoostExtraMaxSpeedAir"] = "70",
        ["VehicleBoostSpeedFalloff"] = "5",
        ["VehicleBoostTime"] = "3.5",
        ["VehicleBoostRechargeTime"] = "4"
    },
    WHEELEDBIKE =
    {
        ["Speed"] = "60",
        ["BoostForce"] = "900",
        ["BoostMaxSpeed"] = "70",
        ["BoostExtraMaxSpeedAir"] = "90",
        ["VehicleBoostSpeedFalloff"] = "5",
        ["VehicleBoostTime"] = "2",
        ["VehicleBoostRechargeTime"] = "2.5"
    },
    TRUCK =
    {
        ["Speed"] = "25",
        ["BoostForce"] = "550",
        ["BoostMaxSpeed"] = "35",
        ["BoostExtraMaxSpeedAir"] = "55",
        ["VehicleBoostSpeedFalloff"] = "2.5",
        ["VehicleBoostTime"] = "2.5",
        ["VehicleBoostRechargeTime"] = "3"
    },
    SUBMARINE =
    {
        ["Speed"] = "50",
        ["BoostForce"] = "2250",
        ["BoostMaxSpeed"] = "50",
        ["BoostExtraMaxSpeedAir"] = "50",
        ["VehicleBoostSpeedFalloff"] = "2.5",
        ["VehicleBoostTime"] = "5",
        ["VehicleBoostRechargeTime"] = "5"
    },
    MECH =
    {
        ["Speed"] = "4",
        ["BoostForce"] = "2250",
        ["BoostMaxSpeed"] = "50",
        ["BoostExtraMaxSpeedAir"] = "50",
        ["VehicleBoostSpeedFalloff"] = "2.5",
        ["VehicleBoostTime"] = "5",
        ["VehicleBoostRechargeTime"] = "5"
    }
}

if Edit_Properties then
    for id, properties in pairs(ExoCraftsNewValues) do
        for property, property_value in pairs(properties) do
            local choice_user = {property_value,
            [[
                Would you like change the value ]] .. property .. [[ for ]].. id ..[[?
                Current = >> ]] .. property_value .. [[ <<
            ]]}
            ExoCraftsNewValues[id][property] = GUIF(choice_user, 10)
        end
    end
end



local InputUserImproveVehicleInventory = {ImproveVehicleInventory,
[[
    Would you like improve exocraft slots?
    Default = Y | Current = >> ]] .. (ImproveVehicleInventory and "Y" or "N") .. [[ <<
]]}
ImproveVehicleInventory = GUIF(InputUserImproveVehicleInventory, 10)

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName.. ".pak",
    ["MOD_DESCRIPTION"] = Description,
    ["MOD_AUTHOR"] = "Jackty89",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = VehicleGlobalsPath,
                    ["INTEGER_TO_FLOAT"] = "FORCE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MechJetpackForce", MechSuitJPForce}, --Original 70
                                {"MechJetpackMaxSpeed", MechSuitJPMaxSpeed},
                                {"MechJetpackMaxUpSpeed", MechSuitJPMaxUpSpeed},
                                {"MechJetpackDrainRate", MechSuitJPDrainRate},
                                {"MechJetpackFillRate", MechSuitJPFillRate},
                                {"VehicleFuelRate", VehicleFuelRate},
                                -- {"VehicleFuelRateSurvival", VehicleFuelRateSurvival},
                                {"VehicleBoostFuelRate", VehicleBoostFuelRate},
                                {"VehicleBoostFuelRateSurvival", VehicleBoostFuelRateSurvival}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]     = GCTechnologyTablePath,
                    ["EXML_CHANGE_TABLE"]     =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","MECH_LASER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", MechSuitLaserDamange}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","MECH_GUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", MechSuitCanonDamange}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = InventoryTablePath,
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                }
            }
        }
    }
}

local vehicleChanges = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
function Improve_Vehicle_Properties()
    for id, properties in pairs(ExoCraftsNewValues) do
        if id == "SUBMARINE" then
            vehicleChanges[#vehicleChanges + 1] = {
                ["SPECIAL_KEY_WORDS"] = {"Name", id},
                ["INTEGER_TO_FLOAT"] = "FORCE",
                ["VALUE_CHANGE_TABLE"] = {
                    {"UnderwaterEngineMaxSpeed", properties["Speed"]},
                    {"UnderwaterEnginePower", NautilonUnderwaterEnginePower},
                    {"UnderwaterEngineFalloff", NautilonUnderwaterEngineFalloff},
                    {"VehicleBoostForce", properties["BoostForce"]},
                    {"VehicleBoostMaxSpeed", properties["BoostMaxSpeed"]},
                    {"VehicleBoostExtraMaxSpeedAir", properties["BoostExtraMaxSpeedAir"]},
                    {"VehicleBoostSpeedFalloff", properties["VehicleBoostSpeedFalloff"]},
                    {"VehicleBoostTime", properties["VehicleBoostTime"]},
                    {"VehicleBoostRechargeTime", properties["VehicleBoostRechargeTime"]}
                }
            }
        else
            vehicleChanges[#vehicleChanges + 1] = {
                ["SPECIAL_KEY_WORDS"] = {"Name", id},
                ["INTEGER_TO_FLOAT"] = "FORCE",
                ["VALUE_CHANGE_TABLE"] = {
                    {"TopSpeedForward", properties["Speed"]},
                    {"TopSpeedReverse", properties["Speed"]},
                    {"VehicleBoostForce", properties["BoostForce"]},
                    {"VehicleBoostMaxSpeed", properties["BoostMaxSpeed"]},
                    {"VehicleBoostExtraMaxSpeedAir", properties["BoostExtraMaxSpeedAir"]},
                    {"VehicleBoostSpeedFalloff", properties["VehicleBoostSpeedFalloff"]},
                    {"VehicleBoostTime", properties["VehicleBoostTime"]},
                    {"VehicleBoostRechargeTime", properties["VehicleBoostRechargeTime"]}
                }
            }
        end
    end
end

local ChangesToInventoryTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]
function EditInventory(type, maxSlot)
    if maxSlot then
        ChangesToInventoryTable[#ChangesToInventoryTable + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {type, "GcInventoryLayoutGenerationDataEntry.xml"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"MinSlots", MaxInventoryCap},
                {"MaxSlots", MaxInventoryCap},
                {"MinTechSlots", MaxTechCap},
                {"MaxTechSlots", MaxTechCap}
            }
        }
    end

    if type ~= "Suite" then
        ChangesToInventoryTable[#ChangesToInventoryTable + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {type, "GcInventoryLayoutGenerationDataEntry.xml", "Bounds", "GcInventoryLayoutGenerationBounds.xml"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"MaxWidthSmall",     InventoryWidth},
                {"MaxHeightSmall",    InventoryHeight},
                {"MaxWidthStandard",  InventoryWidth},
                {"MaxHeightStandard", InventoryHeight},
                {"MaxWidthLarge",     InventoryWidth},
                {"MaxHeightLarge",    InventoryHeight}
            }
        }

        ChangesToInventoryTable[#ChangesToInventoryTable + 1] =
        {
            ["SPECIAL_KEY_WORDS"] = {type, "GcInventoryLayoutGenerationDataEntry.xml", "TechBounds", "GcInventoryLayoutGenerationBounds.xml"},
            ["VALUE_CHANGE_TABLE"] =
            {
                {"MaxWidthSmall",     TechWidth},
                {"MaxHeightSmall",    TechHeight},
                {"MaxWidthStandard",  TechWidth},
                {"MaxHeightStandard", TechHeight},
                {"MaxWidthLarge",     TechWidth},
                {"MaxHeightLarge",    TechHeight}
            }
        }
    end
end

function ImproveVehicleInventoryFunc()
    for _key, vehicleSize in ipairs(VehicleSizes) do
        EditInventory(vehicleSize, true)
    end
end

Improve_Vehicle_Properties()
if ImproveVehicleInventory then
    ImproveVehicleInventoryFunc()
end