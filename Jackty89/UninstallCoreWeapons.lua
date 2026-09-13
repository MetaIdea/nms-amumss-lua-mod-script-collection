local ModeName = "UninstallCoreWeapons"
local Author = "Jackty89"

local GCTechnologyTablePath = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"
local ExtraChanges = false
local InputExtraChanges = {ExtraChanges,
[[
    Do you also wish to make the change to  the hyperdrive and pulse drive (also for sentinel ship)?
    Default = N | Current = >> ]] .. (ExtraChanges and "Y" or "N") .. [[ <<
]]}

local ExtraChanges = GUIF(InputExtraChanges, 10)

local BaseTechIdList = {"SHIPGUN1", "SHIPGUN_ROBO", "LASER", "SENT_LASER", "ATLAS_LASER", "SHIPGUN_ALIEN"}
local ExtraTechIdList = {"SHIPJUMP1", "LAUNCHER", "HYPERDRIVE", "HYPERDRIVE_ROBO", "SHIPJUMP_ROBO", "LAUNCHER_ROBO"}

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME = ModeName,
    MOD_DESCRIPTION = ModeName,
    MOD_AUTHOR = Author,
    MODIFICATIONS =
    {
        {
            MBIN_CHANGE_TABLE =
            {
                {
                    MBIN_FILE_SOURCE = GCTechnologyTablePath,
                    MXML_CHANGE_TABLE =
                    {
                    }
                }
            }
        }
    }
}

local ChangesToTechnologyTable = NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE[1].MXML_CHANGE_TABLE

function ChangeExtraTech()
    for i = 1, #ExtraTechIdList do
        local techId = ExtraTechIdList[i]
        ChangesToTechnologyTable[#ChangesToTechnologyTable +1] =
        {
            SPECIAL_KEY_WORDS = {"ID", techId},
            VALUE_CHANGE_TABLE =
            {
                -- {"PrimaryItem", "False"},
                {"Core", "False"}
            }
        }
    end
end

function SetTechnologyCoreAndPrimaryToFalse()
    for i = 1, #BaseTechIdList do        
        local techId = BaseTechIdList[i]
        ChangesToTechnologyTable[#ChangesToTechnologyTable +1] =
        {
            SPECIAL_KEY_WORDS = {"ID", techId},
            VALUE_CHANGE_TABLE =
            {
                -- {"PrimaryItem", "False"},
                {"Core", "False"}
            }
        }
    end

    if ExtraChanges then
        ChangeExtraTech()
    end
end

SetTechnologyCoreAndPrimaryToFalse()