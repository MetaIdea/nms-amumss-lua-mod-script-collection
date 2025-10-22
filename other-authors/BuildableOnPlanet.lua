-- Script automático para AMUMSS
-- Aplica BuildableOnPlanet=True para uma lista de grupos
-- Ajusta alguns IDs específicos e adiciona CanScale/CanPickup onde BuildableOnPlanetBase=true e BuildableOnPlanet=false

local groups = {
    "BASE_TECH","BASIC_B","BASIC_F","BASIC_LEGACY","BASIC_S","BASIC_T",
    "BIGGS_CORE","BIGGS_EXT","BIGGS_EXTDECOR","BIGGS_INT","DECORATION",
    "EXOTICS","FREIGHTER","FREIGHTER_BIO","FREIGHTER_IND","FREIGHTER_TECH",
    "FREIGHT_LEGACY","FURNITURE","PLANET_TECH","POWER","ROOMS","WALL_ART"
}

local groupsPLANET = {
    "DECORATION","EXOTICS","FURNITURE","BASE_TECH","PLANET_TECH","POWER","ROOMS","WALL_ART"
}

local groupsBASIC = {
    "BASIC_B","BASIC_F","BASIC_LEGACY","BASIC_S","BASIC_T"
}

local groupsCorvette = {
    "BIGGS_CORE","BIGGS_EXT","BIGGS_EXTDECOR","BIGGS_INT"
}

local exml_changes = {}

-- Gera um bloco para cada group (compatível com qualquer versão do AMUMSS)
for _, g in ipairs(groups) do
    table.insert(exml_changes, {
        ["SPECIAL_KEY_WORDS"] = {"Group", g},
        ["SECTION_UP"] = 2,
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_CHANGE_TABLE"] = {
            {"CanStack", "True"},
            {"PlanetLimit", "0"},
            {"RegionLimit", "0"},
            {"PlanetBaseLimit", "0"},
            {"IsFromModFolder", "True"},
            -- {"ShowInBuildMenu", "True"},
        }
    })
end

for _, g in ipairs(groupsPLANET) do
    table.insert(exml_changes, {
        ["SPECIAL_KEY_WORDS"] = {"Group", g},
        ["SECTION_UP"] = 2,
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_CHANGE_TABLE"] = {
            {"BuildableOnPlanet", "True"},
            -- {"ShowInBuildMenu", "True"},
        }
    })
end

for _, g in ipairs(groupsBASIC) do
    table.insert(exml_changes, {
        ["SPECIAL_KEY_WORDS"] = {"Group", g},
        ["SECTION_UP"] = 2,
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_CHANGE_TABLE"] = {
            {"CanScale", "True"},
            {"ShowInBuildMenu", "True"},
            {"BuildableOnPlanet", "True"},
        }
    })
end

for _, g in ipairs(groupsCorvette) do
    table.insert(exml_changes, {
        ["SPECIAL_KEY_WORDS"] = {"Group", g},
        ["SECTION_UP"] = 2,
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_CHANGE_TABLE"] = {
            {"CanScale", "True"},
            -- {"BuildableOnPlanet", "True"},
            {"BuildableInShipStructural", "True"},
        }
    })
end

-- Ajustes para Grupos e Subgrupos específicos (cada um em seu bloco)
table.insert(exml_changes, {
    ["SPECIAL_KEY_WORDS"] = {"Group", "POWER"},
    ["SECTION_UP"] = 2,
    ["REPLACE_TYPE"] = "ALL",
    ["VALUE_CHANGE_TABLE"] = {
        {"CanPickUp", "True"},
        {"DependsOnEnvironment", "None"},
        {"DependsOnHotspots", "None"},
        {"DependentEffect", "None"},
    }
})

table.insert(exml_changes, {
    ["SPECIAL_KEY_WORDS"] = {"SubGroupName", "TECHSTORAGE"},
    ["SECTION_UP"] = 3,
    ["REPLACE_TYPE"] = "ALL",
    ["VALUE_CHANGE_TABLE"] = {
        {"CanPickUp", "True"},
    }
})

-- table.insert(exml_changes, {
--     ["SPECIAL_KEY_WORDS"] = {
--         {{"Group", ""}},
--     },
--     ["SECTION_UP"] = 2,
--     ["REPLACE_TYPE"] = "ALL",
--     ["VALUE_CHANGE_TABLE"] = {
--         {"ShowInBuildMenu", "False"},
--     }
-- })

-- Ajustes para IDs específicos (cada um em seu bloco)
table.insert(exml_changes, {
    ["SPECIAL_KEY_WORDS"] = {{"ID", "TELEPORTER"},{"ID", "BUILD_REFINER2"},{"ID", "BUILD_REFINER3"}},
    ["REPLACE_TYPE"] = "ALL",
    ["VALUE_CHANGE_TABLE"] = {
        {"BuildableInShipStructural", "True"},
        {"CanPickUp", "True"},
        {"CanScale", "True"},
    }
})

table.insert(exml_changes, {
    ["SPECIAL_KEY_WORDS"] = {"ID", "U_SILO_S"},
    ["REPLACE_TYPE"] = "ALL",
    ["VALUE_CHANGE_TABLE"] = {
        {"Rate", "14400000"},
    }
})

table.insert(exml_changes, {
    ["SPECIAL_KEY_WORDS"] = {"ID", "U_GASEXTRACTOR"},
    ["REPLACE_TYPE"] = "ALL",
    ["VALUE_CHANGE_TABLE"] = {
        {"Rate", "14400000"},
    }
})

table.insert(exml_changes, {
    ["SPECIAL_KEY_WORDS"] = {"ID", "U_SOLAR_S"},
    ["REPLACE_TYPE"] = "ALL",
    ["VALUE_CHANGE_TABLE"] = {
        {"Rate", "250"},
    }
})

table.insert(exml_changes, {
    ["SPECIAL_KEY_WORDS"] = {"ID", "U_BIOGENERATOR"},
    ["REPLACE_TYPE"] = "ALL",
    ["VALUE_CHANGE_TABLE"] = {
        {"DependentRate", "150"},
        {"Storage", "14000"},
    }
})

table.insert(exml_changes, {
    ["SPECIAL_KEY_WORDS"] = {"ID", "U_BATTERY_S"},
    ["REPLACE_TYPE"] = "ALL",
    ["VALUE_CHANGE_TABLE"] = {
        {"Storage", "65000"},
    }
})

table.insert(exml_changes, {
    ["SPECIAL_KEY_WORDS"] = {"ID", "U_GENERATOR_S"},
    ["REPLACE_TYPE"] = "ALL",
    ["VALUE_CHANGE_TABLE"] = {
        {"Rate", "550"},
    }
})

-- Adiciona CanScale e CanPickup DENTRO do entry quando BuildableOnPlanetBase = True e BuildableOnPlanet = False
-- Usamos ADDinsideSECTION para que as propriedades fiquem dentro do mesmo GcBaseBuildingEntry
-- table.insert(exml_changes, {
--     ["SPECIAL_KEY_WORDS"] = {"BuildableOnPlanetBase", "True", "BuildableOnPlanet", "False"},
--     ["REPLACE_TYPE"] = "ALL",
--     ["ADD_OPTION"] = "ADDinsideSECTION",
--     ["ADD"] = [[
--         <Property name="CanScale" value="True" />
--         <Property name="CanPickup" value="True" />
--     ]]
-- })

-- Montagem final do container
NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "BuildableOnPlanet",
    ["MOD_AUTHOR"]      = "Strollker",
    ["LUA_AUTHOR"]      = "Strollker",
    ["NMS_VERSION"]     = "6.05.2",
    ["MOD_DESCRIPTION"] = ".",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = exml_changes
                },
            }
        }
    }
}