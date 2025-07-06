--[[
    SAND1: Silicate Powder
    LAND1: Ferrite Dust
    LAND2: Pure Ferrite
    LAND3: Magnetised Ferrite
--]]
TERRAINEDITOR_CHARGEBY = [[
<Property name="ChargeBy" value="SAND1" _index="0" />
<Property name="ChargeBy" value="LAND1" _index="1" />
<Property name="ChargeBy" value="LAND2" _index="2" />
<Property name="ChargeBy" value="LAND3" _index="3" />
]]

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "TerrainEditorSilicatePowder1st.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Moves Silicate Powder to 1st place in re-charge list of Terrain Editor.",
    ["NMS_VERSION"]     = "5.20",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]   = { "ID", "TERRAINEDITOR" },
                            ["PRECEDING_KEY_WORDS"] = { "ChargeBy" },
                            ["CREATE_HOS"]          = "TRUE",
                            ["ADD"]                 = TERRAINEDITOR_CHARGEBY
                        },
                    }
                },
            }
        }
    }
}
