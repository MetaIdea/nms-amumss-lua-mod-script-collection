local mod_filename              = "BuildableOnPlanet"
local lua_author                = "Strollker"
local mod_author                = "Strollker"
local lua_Internalversion       = "0.1.2"
local lua_version               = "0.0.4"
local nms_version               = "Voyagers"
local mod_description           = [[
    - Removes part limits
    - Allows the construction of items not yet unlocked
    - Fixed buggy parts that kept appearing
    REFACTORED SECTORS:
    - APPLY BATCH CHANGES WITH AUTOMATIC DETECTION

    - CHANGE LISTS

    - APPLY GENERAL CHANGES

    - APPLY GLOBAL OVERRIDES

    - PER-ITEM CONFIGURATION (Rate / Storage)
    - MAIN APPLICATION FUNCTION

    - SAFE FALLBACK
    REFACTORED FUNCTION
    - AddChange
    - DetectItemType
    - ApplyBatchChanges
    - ApplyLinkGridDataChanges
]]

local FixedBugs = false
-- =.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.=
-- VALOR DEFINIDO PELO usuário PARA OVERRIDES ESPECÍFICOS DE RateConfig
local EnableRateConfigChanges   = true
local RateConfigDependsNone     = true
local RateConfigPickUp          = true
local RateConfigScale           = true
local RateConfigBOP             = false -- BuildableOnPlanet(BOP)
local RateConfigModFolder       = false -- SE ATIVO MOSTRA MESMO QUE NÃO DESBLOQUEADO
-- =.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.=
local UseMultiplier             = true

-- GLOBAL BEHAVIOR CONTROL
local UseDecreaseBioGenStorage  = true  -- IF true → DIVIDE the VALUE (ex: "@/2") IF false → SUB the VALUE (ex: "@-10000")---[VALUE default 180000]
local UseIncreaseForElectroRate = false -- IF true → ADD the VALUE (ex: "@+250") IF false → MULT the VALUE (ex: "@*250") ---[VALUE default 1]
local UseIncreaseForBattery     = false -- IF true → ADD the VALUE (ex: "@+25000") IF false → MULT the VALUE (ex: "@*2") ---[VALUE default 45000]

-- VALORES NÚMERICOS 999 ou "999"
local battery_storage           = "1.5" --[VALUE DEFAULT   45000]
local biogen_rate               = 2     --[VALUE DEFAULT 	  50]
local biogen_storage            = 3     --[VALUE DEFAULT  180000]
local electro_rate              = 250   --[VALUE DEFAULT 	   1]
local solar_rate                = 3     --[VALUE DEFAULT 	  50]
local silo_storage              = 2     --[VALUE DEFAULT 1440000]
local gas_rate                  = 2     --[VALUE DEFAULT     100]
local gas_storage               = 2     --[VALUE DEFAULT  360000]
local mining_rate               = 2     --[VALUE DEFAULT     100]
local mining_storage            = 2     --[VALUE DEFAULT  360000]
-- =.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.=
-- MAIS ADIANTE REPASSAR PARA CADA GRUPO, CADA ITEM ESPECÍFICO RECEBER 
-- MUDANÇAS DE LIMITE, MANTENDO OPÇÃO GLOBAL {[LEMBRETE]}
-- =.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.=
-- PlanetBaseLimit, RegionLimit, PlanetLimit, FreighterBaseLimit,CorvetteBaseLimit numbers 9999 or "9999"
-- AQUI "RESPECT_VANILLA" E "OVERRIDE_TRUE" NÃO APLICAM MUDANÇAS PARA LIMIT 
-- SÓ MUDA SE "OVERRIDE_FALSE" OU VALOR ESPECÍFICO
-- =.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.=
-- =================================================================================================
-- Allowed values: "OVERRIDE_TRUE", "OVERRIDE_FALSE", "RESPECT_VANILLA"
-- =================================================================================================
local PropConfigGlobal          = {
    PlanetBaseLimit = "RESPECT_VANILLA",
    RegionLimit = "RESPECT_VANILLA",
    PlanetLimit = "RESPECT_VANILLA",
    FreighterBaseLimit = "RESPECT_VANILLA",
    CorvetteBaseLimit = "RESPECT_VANILLA",
    CanStack = "RESPECT_VANILLA",
    CanChangeColour = "RESPECT_VANILLA",
    CanChangeMaterial = "RESPECT_VANILLA",
    IsFromModFolder = "RESPECT_VANILLA", -- SE ATIVO MUITAS OUTRAS CONFIGURAÇÕES SÃO SOBREESCRITA (COMPORTAMENTO PADRÃO DO JOGO) MOSTRA TODAS CONTRUÇÕES MESMO QUE NÃO DESBLOQUEADOS
}

local PropConfig                = {
    -- BuildableOnPlanet (BOP) ATIVA CONSTRUÇÃO SEM BASE
    -- BuildableOnPlanetBOPB/ShowInBuildMenuBOP SE ATIVO APLICA MUDANÇAS DIRETO POR TERMOS DE BUSCA
    -- =.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.=
    BuildableOnPlanetBOPB = "RESPECT_VANILLA", -- SE VERDADEIRO HABILITA BuildableOnPlanet PARA ITEMS QUE POSSUAM BuildableOnPlanetBase=true VANILLA (BOPB=BuildableOnPlanetBase)
    ShowInBuildMenuBOP = "RESPECT_VANILLA",    -- SE VERDADEIRO HABILITA ShowInBuildMenu PARA ITEMS QUE POSSUAM BuildableOnPlanet=true (também INCLUI os SOBREESCRITO caso BuildableOnPlanetBOPB=true) (BOP=BuildableOnPlanet)
    -- =.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.=
    -- ATIVA BuildableOnPlanet (BOP) [PERMITE CONSTRUÇÃO SEM BASE] - GRUPOS FIXOS (AGORA INDIVIDUAIS)
    BOPAllGroup = "RESPECT_VANILLA",
    BOPStructureLegacy = "RESPECT_VANILLA",
    BOPFreighterLegacy = "RESPECT_VANILLA",
    BOPGroupStructures = "RESPECT_VANILLA",
    BOPGroupPower = "RESPECT_VANILLA",
    BOPPartsCorvette = "RESPECT_VANILLA",
    BOPPartsFreighter = "RESPECT_VANILLA",
    -- =.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.=
    -- MOSTRA NO MENU mesmo QUE NÃO TENHA SIDO desbloqueado - GRUPOS FIXOS (AGORA INDIVIDUAIS)
    -- =.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.=
    ShowAllGroupInMenu = "RESPECT_VANILLA",
    ShowStructureLegacyInMenu = "RESPECT_VANILLA",
    ShowFreighterLegacyInMenu = "RESPECT_VANILLA",
    ShowGroupStructuresInMenu = "RESPECT_VANILLA",
    ShowGroupPowerInMenu = "RESPECT_VANILLA",
    ShowPartsCorvetteInMenu = "RESPECT_VANILLA",
    ShowPartsFreighterInMenu = "RESPECT_VANILLA",
}

local PropConfigGeneric         = {
    CanPickUp_Target = "RESPECT_VANILLA",                   -- GRUPOS GENÉRICO
    CanScale_Target = "RESPECT_VANILLA",                    -- GRUPOS GENÉRICO
    BuildableOnPlanet_Target = "RESPECT_VANILLA",         -- GRUPOS GENÉRICO
    BuildableOnPlanetBase_Target = "RESPECT_VANILLA",     -- GRUPOS GENÉRICO
    BuildableInShipStructural_Target = "RESPECT_VANILLA", -- GRUPOS GENÉRICO
    BuildableInShipDecorative_Target = "RESPECT_VANILLA", -- GRUPOS GENÉRICO
    BuildableAboveWater_Target = "RESPECT_VANILLA",         -- GRUPOS GENÉRICO
    BuildableUnderwater_Target = "RESPECT_VANILLA",         -- GRUPOS GENÉRICO
    ShowInBuildMenu_Target = "RESPECT_VANILLA",           -- GRUPOS GENÉRICO
    CheckPlaceholderCollision_Target = "RESPECT_VANILLA", -- GRUPOS GENÉRICO
    CheckPlayerCollision_Target = "RESPECT_VANILLA",    -- GRUPOS GENÉRICO
    EditsTerrain_Target = "RESPECT_VANILLA",              -- GRUPOS GENÉRICO
}
-- VEJA OS GRUPOS MAIS ABAIXO
-- =================================================================================================
-- PER ITEM CONFIGURATION (Rate / Storage)
-- =================================================================================================

-- =========================================================
-- CONFIGURAÇÃO PADRÃO para GERAÇÃO DINÂMICA de RateConfig
-- =========================================================
local default_container_rate  = nil  -- nil = ignora alteração de Rate
local default_container_store = nil  -- nil = ignora alteração de Storage
local default_prefixR         = "@*"
local default_prefixS         = "@*"
-- =========================================================
-- RateConfig BASE (itens principais com comportamento definido)
-- =========================================================
local RateConfig = {
    U_BATTERY_S = {
        Storage = tostring(battery_storage),
        PrefixS = UseIncreaseForBattery and "@+" or "@*",
    },
    U_BIOGENERATOR = {
        Rate = tostring(biogen_rate),
        Storage = tostring(biogen_storage),
        PrefixR = "@*",
        PrefixS = UseDecreaseBioGenStorage and "@/" or "@-"
    },
    U_GENERATOR_S = {
        Rate = tostring(electro_rate),
        PrefixR = UseIncreaseForElectroRate and "@+" or "@*",
    },
    U_SOLAR_S = {
        Rate = tostring(solar_rate),
        PrefixR = "@*",
    },
    U_SILO_S = {
        Storage = tostring(silo_storage),
        PrefixS = "@*"
    },
    U_GASEXTRACTOR = {
        Rate = tostring(gas_rate),
        Storage = tostring(gas_storage),
        PrefixR = "@*",
        PrefixS = "@*"
    },
    U_EXTRACTOR_S = {
        Rate = tostring(mining_rate),
        Storage = tostring(mining_storage),
        PrefixR = "@*",
        PrefixS = "@*"
    },
}

-- =================================================================================================
-- FIXED LISTS OF GROUPS AND SUBGROUPS
-- =================================================================================================
local KnownGroups               = {
    "BIGGS_CORE", "BIGGS_EXT", "BIGGS_EXTDECOR", "BIGGS_INT",
    "FREIGHTER", "FREIGHTER_BIO", "FREIGHTER_IND", "FREIGHTER_TECH", "FREIGHT_LEGACY",
    "BASE_TECH", "PLANET_TECH", "ROOMS", "POWER", "DECORATION", "FURNITURE", "EXOTICS",
    "BASIC_B", "BASIC_F", "BASIC_S", "BASIC_T", "BASIC_LEGACY", "WALL_ART"
}

local KnownSubGroups            = {
    "PLANETPORTABLE", "PLANETEXOCRAFT", "PLANETFIREWORKS", "PLANETFOSSILS", "PLANETBONES",
    "TECHTECH", "TECHFARMING", "TECHSTORAGE", "TECHTEMINALS", "POWERPOWER", "POWERINDUSTRY",
    "POWERSWITCHES", "T_FLOORS", "T_WALLS", "T_ROOFS", "S_FLOORS", "S_WALLS", "S_ROOFS",
    "F_FLOORS", "F_WALLS", "F_ROOFS", "B_FLOORS", "B_WALLS", "B_ROOFS", "BASICWOOD",
    "BASICCONCRETE", "BASICMETAL", "ROOMSMAIN", "ROOMSCORRIDORS", "ROOMSDOORS", "ROOMSCUBE",
    "FURNINTERIOR", "FURNDECOR", "FURNDERELICTS", "FURNSTATION", "DECOLIGHTS", "DECOEXTERIOR",
    "DECOCONSTRUCT", "DECOFOSSILS", "DECOFOLIAGE", "DECOSTATUES", "DECOGLITCHES", "WALLDECALS",
    "WALLPOSTERS", "BIGGS_GENERATOR", "BIGGS_WINGS", "BIGGS_IN_STOR", "BIGGS_DECO", "BIGGS_STRUCT",
    "BIGGS_INT_DEC", "BIGGS_GUNS", "BIGGS_WINDOW", "BIGGS_CONNECTOR", "BIGGS_INT_STR",
    "BIGGS_ENGINES", "BIGGS_EXTRA", "BIGGS_HAB", "FRE_CORE", "FRE_TECH_SUB", "FRE_BIO_SUB",
    "FRE_IND_SUB", "FREIGHTERLEGACY", "FRE_TECH_OTHER", "FRE_PLANTS"
}

-- =================================================================================================
-- CHANGE LISTS
-- =================================================================================================
local exml_changes_base         = {}
-- =========================================================
-- LISTAS PARA INCLUIR MAIS ITENS NO RateConfig
-- =========================================================
local DependsRateStorage    = { "" }
local DependsRate           = { "" }
local DependsStorage        = { "" }
local NoNDependsRateStorage = { "TECHSTORAGE" }

-- LISTAS FIXAS
local StructureLegacy           = {
    "BASIC_LEGACY"
}

local FreighterLegacy           = {
    "FREIGHT_LEGACY"
}

local GroupStructures           = {
    "BASIC_B", "BASIC_F", "BASIC_S", "BASIC_T"
}
local GroupPower                = {
    "POWER", "ROOMS",
    "TECHTECH", "TECHFARMING", "TECHSTORAGE"
}

local PartsCorvette             = {
    "BIGGS_CORE", "BIGGS_EXT", "BIGGS_EXTDECOR", "BIGGS_INT",
}

local PartsFreighter            = {
    "FREIGHTER", "FREIGHTER_BIO", "FREIGHTER_IND", "FREIGHTER_TECH"
}


local AllGroup                  = {
    StructureLegacy, GroupStructures, GroupPower, PartsCorvette, PartsFreighter
}

-- AQUI AGORA SUPORTA A LISTA DE RateConfig, MAS ELA AINDA NÃO É USADA AQUI
-- RateConfig AINDA ESTÁ USANDO MÉTODO ALTERNATIVA 1 E DEVE SER REFATORADA/TRATADA,
-- E PASSADA PARA METODO ALTERNATIVA 2(SOMENTE AQUI) {[LEMBRETE]}
-- =.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.=
local CanPickUp_Target = { "TECHSTORAGE" }
local CanScale_Target = { StructureLegacy, GroupStructures, CanPickUp_Target }
local BuildableOnPlanet_Target = {  }
local BuildableOnPlanetBase_Target = {  }
local BuildableInShipStructural_Target = { "TELEPORTER" }
local BuildableInShipDecorative_Target = { BuildableInShipStructural_Target }  --NÃO SEI SE TODOS MAS ALGUNS ITEMS PRECISAM ESTAR AQUI PARA APARECER 
local BuildableAboveWater_Target = { CanScale_Target}
local BuildableUnderwater_Target = { BuildableAboveWater_Target }
local CheckPlaceholderCollision_Target = { PartsCorvette }
local CheckPlayerCollision_Target = { "BIGGS_ENGINES" } -- USAR COM CUIDADO
local EditsTerrain_Target = { "" } -- USAR COM CUIDADO
local ShowInBuildMenu_Target = { "" }

-- =================================================================================================
-- LISTS PARA CORREÇOES DE BUGS SE NECESSÁRIO
-- =================================================================================================
-- FALTA SER INCLUSO OUTROS ITENS DEFEITUOSOS
local NeverEditsTerrain = { "SET_LZ" }
local NeverShowInBuildMenu = {
    "FOS_SKULL", "FOS_SKULL_MNT", "FOS_SKULL_DISP", "FOS_LIMBS",
    "FOS_LIMBS_MNT", "FOS_LIMBS_DISP", "FOS_BODY", "FOS_BODY_MNT",
    "FOS_BODY_DISP", "FOS_TAIL", "FOS_TAIL_MNT", "FOS_TAIL_DISP",
    "FOS_QUAD_DIS", "FOS_BI_DIS", "FOS_WORM_DIS", "FOS_BIRD_DIS", "FOS_GRUN_DIS"
}

-- =================================================================================================
-- MAPS FOR QUICK LOOKUP
-- =================================================================================================
local GroupMap = {}
for _, group in ipairs(KnownGroups) do
    GroupMap[group] = true
end

local SubGroupMap = {}
for _, subgroup in ipairs(KnownSubGroups) do
    SubGroupMap[subgroup] = true
end
-- ====================================================================
-- GERAÇÃO DINÂMICA DE RateConfig
-- ====================================================================
-- 1️ Itens com Rate e Storage
for _, id in ipairs(DependsRateStorage) do
    RateConfig[id] = {
        Rate = tostring(default_container_rate),
        Storage = tostring(default_container_store),
        PrefixR = default_prefixR,
        PrefixS = default_prefixS
    }
end

-- 2️ Itens com apenas Rate
for _, id in ipairs(DependsRate) do
    RateConfig[id] = {
        Rate = tostring(default_container_rate),
        PrefixR = default_prefixR
    }
end

-- 3️ Itens com apenas Storage
for _, id in ipairs(DependsStorage) do
    RateConfig[id] = {
        Storage = tostring(default_container_store),
        PrefixS = default_prefixS
    }
end

-- 4️ Itens sem Rate nem Storage
for _, id in ipairs(NoNDependsRateStorage) do
    -- Garante que o item exista na tabela RateConfig, mesmo que vazio
    RateConfig[id] = RateConfig[id] or {}
end


-- DEFINIÇÃO DE ALVOS PARA A CATEGORIA Rate/Storage de Depends*
-- =.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.=
local DependsOn_RateConfig_Targets = {}
for id, _ in pairs(RateConfig) do
    table.insert(DependsOn_RateConfig_Targets, id)
end

-- =================================================================================================
-- FUNCTION: CREATE GENERIC EXML ENTRY
-- =================================================================================================
-- FUNÇÃO GENÉRICA PARA ADICIONAR UM BLOCO DE MUDANÇA EXML
local function AddChange(tbl, cfg)
    local entry = {
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_CHANGE_TABLE"] = cfg.values
    }
    if cfg.keywords then entry["SPECIAL_KEY_WORDS"] = cfg.keywords end
    if cfg.preceding then entry["PRECEDING_KEY_WORDS"] = cfg.preceding end
    if cfg.section_up then entry["SECTION_UP"] = cfg.section_up end
    if cfg.add then
        entry["ADD_OPTION"] = "ADDendSECTION"
        entry["ADD"] = cfg.add
    end
    table.insert(tbl, entry)
end

-- DETERMINA O TIPO DE ITEM (ID, Group, SubGroupName) E A SEÇÃO DE SUBIDA
local function DetectItemType(entry)
    if SubGroupMap[entry] then return "SubGroupName", 2 end
    if GroupMap[entry] then return "Group", 2 end
    return "ID", 0
end

-- APLICA ALTERAÇÕES EM LOTE, SUPORTANDO LISTAS ANINHADAS (LISTA DENTRO DE LISTAS).
-- ACEITA REFERÊNCIAS DIRETA À TABELA RateConfig COMO ATALHO PARA APLICAR
-- ALTERAÇÕES ASO IDs DEFINIDOS EM RateConfig (RESPEITA EnableRateConfigChanges).
-- =.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.==.=
local function ApplyBatchChanges(target_table, cfg)
    local function process_entry(entry)
        if type(entry) ~= "string" or entry == "" then return end
        local type_name, section_up = DetectItemType(entry)
        AddChange(target_table, {
            values = cfg.values,
            keywords = { type_name, entry },
            section_up = section_up,
            add = cfg.add
        })
    end

    -- CONVERTE TABELA RateConfig EM LISTA DE IDs (SE REQUISITADO)
    local function expand_rateconfig_if_needed(list)
        if list == RateConfig and EnableRateConfigChanges then
            local ids = {}
            for id, _ in pairs(RateConfig) do
                table.insert(ids, id)
            end
            return ids
        end
        return list
    end

    local function process_list(list)
        -- SE list FOR EXATAMENTE A TABELA RateConfig, EXPANDE PARA OS IDs
        list = expand_rateconfig_if_needed(list)

        for _, item in ipairs(list or {}) do
            if type(item) == "table" then
                process_list(item) -- RECURSÃO PARA LISTAS ANINHADAS
            else
                process_entry(item)
            end
        end
    end

    -- INICIA O PROCESSAMENTO
    if type(cfg.list) == "table" then
        process_list(cfg.list)
    elseif type(cfg.list) == "string" and cfg.list ~= "" then
        process_entry(cfg.list)
    end
end

-- RETORNA O VALR "True"/"False" OU "nil" PARA "RESPECT_VANILLA"
local function GetPropValue(prop)
    local mode = PropConfig[prop] or PropConfigGeneric[prop]

    if mode == "OVERRIDE_TRUE" then
        return "True"
    elseif mode == "OVERRIDE_FALSE" then
        return "False"
    else
        return nil
    end
end

-- APLICA MUDANÇAS EM PROPRIEDADES ANINHADAS EM LinkGridData (para RateConfig)
local function ApplyLinkGridDataChanges(list, prop_values)
    for _, entry in ipairs(list or {}) do
        if type(entry) == "string" and entry ~= "" then
            local type_name, section_up = DetectItemType(entry)

            -- Detecta se o item é um RateConfig conhecido
            local hasRateConfig = RateConfig[entry] ~= nil
            local rate_defined = hasRateConfig and (RateConfig[entry].Rate or RateConfig[entry].Storage)

            AddChange(exml_changes_base, {
                values = prop_values,
                keywords = { type_name, entry },
                section_up = section_up,
                preceding = rate_defined and { "LinkGridData", "" } or nil -- só aplica se o item usa Rate/Storage
            })
        end
    end
end

-- =================================================================================================
-- CORE APPLICATION LOGIC FUNCTIONS
-- =================================================================================================
-- APLICA OVERRIDES GLOBAIS DE LIMITES E CanStack/CanChange
local function ApplyGlobalOverrides()
    for prop, mode in pairs(PropConfigGlobal) do
        local val = nil
        local is_numeric_limit = prop == "PlanetBaseLimit" or prop == "RegionLimit" or prop == "PlanetLimit" or
            prop == "FreighterBaseLimit" or prop == "CorvetteBaseLimit"

        if is_numeric_limit then
            -- TRATAMENTO CORRIGIDO: Assume que OVERRIDE_TRUE em limites EQUIVALE à OVERRIDE_VANILLA
            if type(mode) == "number" or (type(mode) == "string" and tonumber(mode)) then
                val = tostring(mode)
            elseif mode == "OVERRIDE_FALSE" then
                val = "0"
            elseif mode == "OVERRIDE_TRUE" then
                val = nil
            end
        elseif mode ~= "RESPECT_VANILLA" then
            -- PROPRIEDADES BOOLEANAS (ex: CanStack)
            val = (mode == "OVERRIDE_TRUE") and "True" or "False"
        end

        if val then
            AddChange(exml_changes_base, { values = { { prop, val } } })
        end
    end
end

-- APLICA DependsOnEnvironment/Hotspots = None (OVERRIDES ESPECÍFICO PARA RateConfig)
local function ApplyRateConfigDependencyOverrides()
    if not RateConfigDependsNone then return end

    local specific_dep_values = {
        { "DependsOnEnvironment", "None" },
        { "DependsOnHotspots",    "None" }
    }

    ApplyLinkGridDataChanges(DependsOn_RateConfig_Targets, specific_dep_values)
end

-- =================================================================================================
-- APPLICATION OF GENERAL CHANGES
-- =================================================================================================
local function ApplyGeneralChanges()
    -- TABELA DE MAPEAMENTO PARA CONTROLE GRANULAR DOS GRUPOS FIXOS BuildableOnPlanet(BOP)
    local specific_bop_targets = {
        { flag = "BOPAllGroup",        list = AllGroup },
        { flag = "BOPStructureLegacy", list = StructureLegacy },
        { flag = "BOPFreighterLegacy", list = FreighterLegacy },
        { flag = "BOPGroupStructures", list = GroupStructures },
        { flag = "BOPGroupPower",      list = GroupPower },
        { flag = "BOPPartsCorvette",   list = PartsCorvette },
        { flag = "BOPPartsFreighter",  list = PartsFreighter },
    }

    -- TABELA DE MAPEAMENTO PARA CONTROLE GRANULAR DOS GRUPOS FIXOS (ShowInBuildMenu)
    local specific_showinmenu_targets = {
        { flag = "ShowAllGroupInMenu",        list = AllGroup },
        { flag = "ShowStructureLegacyInMenu", list = StructureLegacy },
        { flag = "ShowFreighterLegacyInMenu", list = FreighterLegacy },
        { flag = "ShowGroupStructuresInMenu", list = GroupStructures },
        { flag = "ShowGroupPowerInMenu",      list = GroupPower },
        { flag = "ShowPartsCorvetteInMenu",   list = PartsCorvette },
        { flag = "ShowPartsFreighterInMenu",  list = PartsFreighter },
    }

    -- APLICA OVERRIDES PARA BuildableOnPlanet (GRUPOS FIXOS)
    for _, entry in ipairs(specific_bop_targets) do
        local val = GetPropValue(entry.flag)
        if val then
            ApplyBatchChanges(exml_changes_base, { list = entry.list, values = { { "BuildableOnPlanet", val } } })
        end
    end

    -- APLICA OVERRIDES PARA ShowInBuildMenu (GRUPOS FIXOS)
    for _, entry in ipairs(specific_showinmenu_targets) do
        local val = GetPropValue(entry.flag)
        if val then
            ApplyBatchChanges(exml_changes_base, { list = entry.list, values = { { "IsFromModFolder", val } } })
        end
    end

    local prop_targets = {
        { "CanPickUp",                 CanPickUp_Target },
        { "CanScale",                  CanScale_Target },
        { "BuildableOnPlanet",         BuildableOnPlanet_Target },
        { "BuildableOnPlanetBase",     BuildableOnPlanetBase_Target },
        { "BuildableInShipStructural", BuildableInShipStructural_Target },
        { "BuildableInShipDecorative", BuildableInShipDecorative_Target },
        { "CheckPlaceholderCollision", CheckPlaceholderCollision_Target },
        { "CheckPlayerCollision",      CheckPlayerCollision_Target },
        { "BuildableAboveWater",       BuildableAboveWater_Target },
        { "BuildableUnderwater",       BuildableUnderwater_Target },
        { "ShowInBuildMenu",           ShowInBuildMenu_Target },
        { "EditsTerrain",              EditsTerrain_Target },
    }

    for _, entry in ipairs(prop_targets) do
        local prop_name, target_list = entry[1], entry[2]
        local override_key = prop_name .. "_Target"
        local override_val = GetPropValue(override_key)

        -- fallback: SE NÃO HOUVER OVERRIDES POR _Target, TENTA A CHAVE DIRETA (ex: CanScale)
        if not override_val then
            override_val = GetPropValue(prop_name)
        end

        if override_val then
            ApplyBatchChanges(exml_changes_base, { list = target_list, values = { { prop_name, override_val } } })
        end
    end
    
    -- 1. OVERRIDE DE BuildableOnPlanet PARA ITENS COM BuildableOnPlanetBase = True (BOPB Search)
    local BOPB_on_planet_val = GetPropValue("BuildableOnPlanetBOPB")
    if BOPB_on_planet_val then
        AddChange(exml_changes_base, {
            keywords = { { "BuildableOnPlanetBase", "True" } },
            values = { { "BuildableOnPlanet", BOPB_on_planet_val } }
        })
    end

    -- 2. OVERRIDE DE ShowInBuildMenu PARA ITENS COM BuildableOnPlanet = True (Menu Search)
    local showIn_menu_val = GetPropValue("ShowInBuildMenuBOP")
    if showIn_menu_val then
        AddChange(exml_changes_base, {
            keywords = { { "BuildableOnPlanet", "True" } },
            values = { { "IsFromModFolder", showIn_menu_val } }
        })
    end

    local dep_values = {}
    if #dep_values > 0 then
        AddChange(exml_changes_base, {
            values = dep_values,
            preceding = { "LinkGridData", "" }
        })
    end

    -- =================================================================================================
    -- APLICAÇÃO DE PROPRIEDADES DE RateConfig
    -- =================================================================================================
    do
        --COLETA TODAS AS ALTERAÇÕES DE VALOR
        local rate_config_prop_values = {}

        if RateConfigPickUp then
            table.insert(rate_config_prop_values, { "CanPickUp", "True" })
        end

        if RateConfigScale then
            table.insert(rate_config_prop_values, { "CanScale", "True" })
        end

        if RateConfigBOP then
            table.insert(rate_config_prop_values, { "BuildableOnPlanet", "True" })
        end
        if RateConfigModFolder then
            table.insert(rate_config_prop_values, { "IsFromModFolder", "True" })
        end

        -- APLICA TODAS AS ALTERAÇÕES DE UMA VEZ
        if #rate_config_prop_values > 0 then
            ApplyBatchChanges(exml_changes_base, {
                list = DependsOn_RateConfig_Targets,
                values = rate_config_prop_values
            })
        end
    end
    -- =================================================================================================
    -- APLICAÇÃO PARA CORREÇOES DE BUGS (Opcional via FixedBugs)
    -- =================================================================================================
    if FixedBugs then
        ApplyBatchChanges(exml_changes_base, { list = NeverShowInBuildMenu, values = { { "ShowInBuildMenu", "False" } } })
        ApplyBatchChanges(exml_changes_base, { list = NeverEditsTerrain, values = { { "EditsTerrain", "False" } } })
    end
end

-- =================================================================================================
--  MAIN FUNCTION OF THE APPLICATION (Rate / Storage)
-- =================================================================================================
-- Aplica alterações de Rate e Storage para itens em RateConfig
local function ApplyRateAndStorageChanges()
    if not EnableRateConfigChanges then return end

    for id, data in pairs(RateConfig) do
        -- A CONCATENAÇÃO GARANTE QUE Rate E Storage SEJAM strings, MESMO SE DEFINIDOS COMO números
        local rate_value = data.Rate and ((UseMultiplier and (data.PrefixR or "")) .. data.Rate) or nil
        local storage_value = data.Storage and ((UseMultiplier and (data.PrefixS or "")) .. data.Storage) or nil

        local values = {}

        if rate_value then table.insert(values, { "Rate", rate_value }) end
        if storage_value then table.insert(values, { "Storage", storage_value }) end
        if id == "U_BIOGENERATOR" and rate_value then
            table.insert(values, { "DependentRate", rate_value })
        end

        if #values > 0 then
            ApplyBatchChanges(exml_changes_base, {
                list = { id },
                values = values
            })
        end
    end
end

-- =================================================================================================
--  FINAL EXECUTION
-- =================================================================================================
ApplyGlobalOverrides()
ApplyGeneralChanges()
ApplyRateConfigDependencyOverrides()
ApplyRateAndStorageChanges()
-- =================================================================================================
-- SAFE FALLBACK: Evita erro quando todas as opções estão desativadas
-- =================================================================================================
-- TABELA DE MUDANÇAS de arquivo (MBIN_CHANGE_TABLE)
function NMS_LOG(message)
    -- O Lua converte a mensagem para string e adiciona um prefixo para clareza no log.
    print(string.format("[MOD:%s] %s", mod_filename, tostring(message)))
end

-- local README = [[
-- JUST TESTING THANKS
-- ]]

-- 1. Inicializa o array principal de mudanças MBIN (M_CHANGES)
local MBIN_Changes = {}

-- 2. Inclusão Condicional da Tabela de Mudanças
-- Checa se a tabela de mudanças 'exml_changes_base' existe E não está vazia.
if exml_changes_base and next(exml_changes_base) then
    table.insert(MBIN_Changes, {
        COMMENT = "Buildable On Planet.",
        MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/BASEBUILDINGOBJECTSTABLE.MBIN",
        MXML_CHANGE_TABLE = exml_changes_base
    })
    NMS_LOG("[INFO] Active modification.")
else
    NMS_LOG("[INFO] No active MBIN modifications detected. The script will compile without changes to the game.")
end

-- 3. Cria a tabela MODIFICATIONS com base em MBIN_Changes
-- Se 'MBIN_Changes' não estiver vazia, a seção MODIFICATIONS será incluída.
local Modifications = {}
if next(MBIN_Changes) then
    table.insert(Modifications, {
        MBIN_CHANGE_TABLE = MBIN_Changes
    })
end

-- =================================================================================================
-- FINAL CONTAINER
-- =================================================================================================
NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME = string.format("%s v%s %s", mod_filename, lua_version, nms_version,lua_Internalversion),
    LUA_AUTHOR = lua_author,
    MOD_AUTHOR = mod_author,
    NMS_VERSION = nms_version,
    MOD_DESCRIPTION = mod_description,
    GLOBAL_INTEGER_TO_FLOAT = "PRESERVE",
    MODIFICATIONS = Modifications,

    -- ADD_FILES = {
    --     {
    --         FILE_DESTINATION = "README.txt",  -- CAMINHO e NOME do ARQUIVO DENTRO DO mod
    --         FILE_CONTENT = README       -- O CONTEÚDO EM string (OU UM ARQUIVO físico)
    --     },
    -- }
}

return NMS_MOD_DEFINITION_CONTAINER