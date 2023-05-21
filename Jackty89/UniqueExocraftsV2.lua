ModName = "UniqueExoCrafts"
Description = "A small mod that make exocraft faster but also stand out from eachother"

GCTechnologyTablePath = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
VehicleGlobalsPath = "GCVEHICLEGLOBALS.GLOBAL.MBIN"
InventoryTablePath = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN"

NautilonUnderwaterEnginePower = "10" -- Acceleration speed
NautilonUnderwaterEngineFalloff = "1" -- 1 = 100% so no fall of , 0.9 =90% means speed wil be 10% slower  => 45u

MechSuitJPForce = "100"
MechSuitJPMaxSpeed = "50"
MechSuitJPMaxUpSpeed = "80"
MechSuitJPDrainRate = "0.40"
MechSuitJPFillRate = "0.60"
MechSuitLaserDamange = "350"
MechSuitCanonDamange = "2500"

VehicleFuelRate = "0.3"
-- VehicleFuelRateSurvival = "0.5"
VehicleBoostFuelRate = "1"
VehicleBoostFuelRateSurvival = "2"

ImproveVehicleInventory = true

MaxInventoryCap = 120
MaxTechCap = 60

InventoryWidth = 10
InventoryHeight = 12

TechWidth = 10
TechHeight = 6

VehicleSizes = {
    "VehicleSmall",
    "VehicleMedium",
    "VehicleLarge"
}

ExoCraftsNewValues = {
    {
        ["ID"] = "BIKE", --Nomad
        ["Speed"] = "50",
        ["BoostForce"] = "800",
        ["BoostMaxSpeed"] = "60",
        ["BoostExtraMaxSpeedAir"] = "80",
        ["VehicleBoostSpeedFalloff"] = "2.5",
        ["VehicleBoostTime"] = "2.5",
        ["VehicleBoostRechargeTime"] = "3"
    },
    {
        ["ID"] = "MED_BUGGY", --ROAMER
        ["Speed"] = "40",
        ["BoostForce"] = "700",
        ["BoostMaxSpeed"] = "50",
        ["BoostExtraMaxSpeedAir"] = "70",
        ["VehicleBoostSpeedFalloff"] = "5",
        ["VehicleBoostTime"] = "3.5",
        ["VehicleBoostRechargeTime"] = "4"
    },
    {
        ["ID"] = "WHEELEDBIKE", --PILGRIM
        ["Speed"] = "60",
        ["BoostForce"] = "900",
        ["BoostMaxSpeed"] = "70",
        ["BoostExtraMaxSpeedAir"] = "90",
        ["VehicleBoostSpeedFalloff"] = "5",
        ["VehicleBoostTime"] = "2",
        ["VehicleBoostRechargeTime"] = "2.5"
    },
    {
        ["ID"] = "TRUCK", --COLOSSUUS
        ["Speed"] = "25",
        ["BoostForce"] = "550",
        ["BoostMaxSpeed"] = "35",
        ["BoostExtraMaxSpeedAir"] = "55",
        ["VehicleBoostSpeedFalloff"] = "2.5",
        ["VehicleBoostTime"] = "2.5",
        ["VehicleBoostRechargeTime"] = "3"
    },
    {
        ["ID"] = "SUBMARINE", --NATILON
        ["Speed"] = "50",
        ["BoostForce"] = "2250",
        ["BoostMaxSpeed"] = "50",
        ["BoostExtraMaxSpeedAir"] = "50",
        ["VehicleBoostSpeedFalloff"] = "2.5",
        ["VehicleBoostTime"] = "5",
        ["VehicleBoostRechargeTime"] = "5"
    },
    {
        ["ID"] = "MECH",
        ["Speed"] = "4",
        ["BoostForce"] = "2250",
        ["BoostMaxSpeed"] = "50",
        ["BoostExtraMaxSpeedAir"] = "50",
        ["VehicleBoostSpeedFalloff"] = "2.5",
        ["VehicleBoostTime"] = "5",
        ["VehicleBoostRechargeTime"] = "5"
    }
}

InputUserImproveVehicleInventory = {ImproveVehicleInventory,
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
for i = 1, #ExoCraftsNewValues do
    if ExoCraftsNewValues[i]["ID"] == "SUBMARINE" then
        vehicleChanges[#vehicleChanges + 1] = {
            ["SPECIAL_KEY_WORDS"] = {"Name", ExoCraftsNewValues[i]["ID"]},
            ["INTEGER_TO_FLOAT"] = "FORCE",
            ["VALUE_CHANGE_TABLE"] = {
                {"UnderwaterEngineMaxSpeed", ExoCraftsNewValues[i]["Speed"]},
                {"UnderwaterEnginePower", NautilonUnderwaterEnginePower},
                {"UnderwaterEngineFalloff", NautilonUnderwaterEngineFalloff},
                {"VehicleBoostForce", ExoCraftsNewValues[i]["BoostForce"]},
                {"VehicleBoostMaxSpeed", ExoCraftsNewValues[i]["BoostMaxSpeed"]},
                {"VehicleBoostExtraMaxSpeedAir", ExoCraftsNewValues[i]["BoostExtraMaxSpeedAir"]},
                {"VehicleBoostSpeedFalloff", ExoCraftsNewValues[i]["VehicleBoostSpeedFalloff"]},
                {"VehicleBoostTime", ExoCraftsNewValues[i]["VehicleBoostTime"]},
                {"VehicleBoostRechargeTime", ExoCraftsNewValues[i]["VehicleBoostRechargeTime"]}
            }
        }
    else
        vehicleChanges[#vehicleChanges + 1] = {
            ["SPECIAL_KEY_WORDS"] = {"Name", ExoCraftsNewValues[i]["ID"]},
            ["INTEGER_TO_FLOAT"] = "FORCE",
            ["VALUE_CHANGE_TABLE"] = {
                {"TopSpeedForward", ExoCraftsNewValues[i]["Speed"]},
                {"TopSpeedReverse", ExoCraftsNewValues[i]["Speed"]},
                {"VehicleBoostForce", ExoCraftsNewValues[i]["BoostForce"]},
                {"VehicleBoostMaxSpeed", ExoCraftsNewValues[i]["BoostMaxSpeed"]},
                {"VehicleBoostExtraMaxSpeedAir", ExoCraftsNewValues[i]["BoostExtraMaxSpeedAir"]},
                {"VehicleBoostSpeedFalloff", ExoCraftsNewValues[i]["VehicleBoostSpeedFalloff"]},
                {"VehicleBoostTime", ExoCraftsNewValues[i]["VehicleBoostTime"]},
                {"VehicleBoostRechargeTime", ExoCraftsNewValues[i]["VehicleBoostRechargeTime"]}
            }
        }
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

if ImproveVehicleInventory then
    ImproveVehicleInventoryFunc()
end