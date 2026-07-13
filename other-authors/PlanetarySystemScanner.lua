local MOD_VERSION = "2.0"
NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "PlanetarySystemScannerv"..MOD_VERSION,
    ["MOD_AUTHOR"] = "Aristotale",
    ["MOD_DESCRIPTION"] = "Replaces the Save Point with the functionality of the Freighter Scanner room",
    ["LUA_AUTHOR"]    = "Aristotale",
    ["NMS_VERSION"]   = "6.x",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SAVEPOINT/ENTITIES/SAVEPOINT.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                    }
                },
            }
        }
    }
}

local ChangeToTerminalSaveEntity = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

function DoTheWork()
    ChangeToTerminalSaveEntity[#ChangeToTerminalSaveEntity+1] =
    {
        ["SKW"] = {"Components","GcSimpleInteractionComponentData",},
        ["VALUE_CHANGE_TABLE"] = {
            {"SimpleInteractionType",   "SuperDoopaScanner"},
            {"ScanType",                "BINOC_INTERACTABLE"},
            {"InteractDistance",        "0"},
            {"Use2dInteractDistance",   "False"},
            {"HideContents",            "True"},
            {"MustBeVisibleToInteract", "False"},
            {"NeedsStorm",              "False"},
            {"Description",             "BLD_SAVEPOINT_DESCRIPTION"},
            {"Name",                    "BLD_FRE_ROOM_SCAN_SUB"},
        }
    }

end

DoTheWork()