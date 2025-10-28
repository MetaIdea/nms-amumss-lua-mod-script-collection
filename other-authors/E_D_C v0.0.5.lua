-- =================================================================================================
-- MOD: (com GUIF agrupado)
-- =================================================================================================

local mod_filename        = "E_D_C"
local mod_name            = "Enhanced Difficulty Customizer"
local lua_author          = "Strollker"
local mod_author          = "Strollker"
local lua_Internalversion = "0.2.8"
local lua_version         = "0.0.5"
local nms_version         = "Voyagers"
local mod_description     = [[
    Desativa custos de recursos, modifica limites de stack.
    Corrigido o erro de tabela vazia ao desativar o mod e removido o aviso de variavel nao utilizada.
    Refatoração para a inserção do GUI
    Implemntado GUI
    adcionado debug
    Implementado Suporte de Linguagens
    GUI Agrupado
    Correção/validação de tamanho dos valores passados pelo input
    Tratando a linguagem antes do GUI
    Adicionado Quick MODE
    Refeito a captura de valores
    ]]

GUIF                      = GUIF or function(config)
    return config[1]
end

local language            = ""

local Localizations       = {
    ["USER_CHOSEN_SETTINGS"] = {
        PT = "CONFIGURACOES ESCOLHIDAS PELO USUARIO",
        EN = "USER-CHOSEN SETTINGS."
    },
    ["MESSAGE"] = {
        PT = "Pressione ENTER para valores predefinidos.",
        EN = "Press ENTER for predefined values."
    },
    ["CLEAN_COMPILE"] = {
        PT = "Nenhuma Modificacao Ativa Detectada - Compilacao Limpa.",
        EN = "No Active Modifications Detected - Clean Compile."
    },
    ["CRAFTING_BUILD_SETUP"] = {
        PT = "CONFIGURACAO DE CRAFTING E CONSTRUCAO",
        EN = "CRAFTING AND CONSTRUCTION SETUP"
    },
    ["INVENTORY_DIFFICULTY"] = {
        PT = "CONFIGURACAO DE INVENTARIO E DIFICULDADE",
        EN = "INVENTORY AND DIFFICULTY SETUP"
    },
    ["EXPERIENCE_TUTORIAL"] = {
        PT = "CONFIGURACAO DE EXPERIENCIA E TUTORIAL",
        EN = "EXPERIENCE AND TUTORIAL SETUP"
    },
    ["CRAFTING_FREE"] = {
        PT = "Ativar Crafting Gratis (Y/N - Padrao: S)? ",
        EN = "Enable Free Crafting (Y/N - Default: Y)? "
    },
    ["ALWAYS_RANGE"] = {
        PT = "Inventarios Sempre no Alcance (Y/N - Padrao: S)? ",
        EN = "Inventories Always in Reach (Y/N - Default: Y)? "
    },
    ["WARP_DRIVE"] = {
        PT = "Ativar Requisitos de Motor de Dobra (Y/N - Padrao: N)? ",
        EN = "Activate Warp Drive Requirements (Y/N - Default: N)? "
    },
    ["BASE_POWER"] = {
        PT = "Energia Automatica da Base (Y/N - Padrao: N)? ",
        EN = "Automatic Base Power (Y/N - Default: N)? "
    },
    ["SLOTS_UNLOCKED"] = {
        PT = "Desbloquear Todos os Slots de Inventario (Y/N - Padrao: N) (Novo Save)? ",
        EN = "Unlock All Inventory Slots (Y/N - Default: N) (New Save)? "
    },
    ["START_KNOWN"] = {
        PT = "Comecar com Todos os Itens Conhecidos (Y/N - Padrao: N) (Novo Save)? ",
        EN = "Start with All Known Items (Y/N - Default: N) (New Save)? "
    },
    ["USE_MULTIPLIER"] = {
        PT = "Usar Multiplicador de Pilha (Y/N - Padrao: S)? ",
        EN = "Use Stack Multiplier (Y/N - Default: Y)? "
    },
    ["MULTIPLIER"] = {
        PT = "Multiplicador de pilha, Insira um Numero (Padrao: 100): ",
        EN = "Stack Multiplier, Enter a Number (Default: 100): "
    },
    ["MAX_STACK_SIZES"] = {
        PT = "Tamanhos Maximos da Pilha de Substancias (Padrao: 99999): ",
        EN = "Maximum Substance Stack Sizes (Default: 99999): "
    },
    ["SUBSTANCE_STACK"] = {
        PT = "Limite de Pilha de Substancias (Padrao: 99999): ",
        EN = "Substance Stack Limit (Default: 99999): "
    },
    ["PRODUCT_STACK"] = {
        PT = "Limite de Pilha de Produtos (Padrao: 99999): ",
        EN = "Product Stack Limit (Default: 99999): "
    },
    ["TUTORIAL_PROMPT"] = {
        PT = "Ativar Tutorial (Y/N - Padrao: N) (Novo Save)? ",
        EN = "Enable Tutorial (Y/N - Default: N) (New Save)? "
    },
    ["MULTIPLIER_WARNING"] = {
        PT = "[AVISO] UseMultiplier 'N' Para Definir Tamanhos de Pilhas Personalizado",
        EN = "[WARNING] UseMultiplier 'N' to Define custom stack sizes"
    },
    ["LIMIT_EXCEEDED"] = {
        PT = "[AVISO] O valor excedeu 9 digitos. Limite ajustado para %d.",
        EN = "[WARNING] Value exceeded 9 digits. Limit adjusted to %d."
    },
    ["ENABLE_INFO"] = {
        PT = "Ativar o Mod? (Y/N) Se 'N', o script sera compilado, mas nao sera gerado o mod.",
        EN = "Enable Mod? (Y/N) If 'N', the script will be compiled, but the mod will not be generated."
    },
    ["DISABLED_INFO"] = {
        PT = "Mod Desativado. Nenhum Arquivo Gerado.",
        EN = "Mod Disabled. No Files Generated."
    },
    ["TABLE_EDIT"] = {
        PT = "Edicao na tabela Detectada.",
        EN = "Table Edit Detected."
    },
    ["ACTIVE_MOD"] = {
        PT = "Mod Ativo",
        EN = "Active Mod."
    },
    ["DEFAULT_MOD"] = {
        PT = "[AVISO] Entrada invalida. Aplicando Valor Padrao",
        EN = "[WARNING] Invalid input. Applying Default Value."
    },
    ["QUICK_MODE"] = {
        PT = "Ativar Modo Rapido (Y/N)? (Pula prompts se Y)",
        EN = "Enable Fast Mode (Y/N)? (Skip prompts if Y)"
    },
    ["ATIVE_QUICK_MODE"] = {
        PT = "Modo Rapido Ativo. Usando configuracoes fixas.",
        EN = "Quick Mode Active. Using fixed settings."
    },
}

local function L(key)
    local text = Localizations[key]
    return text and (text[language] or text.PT) or "MISSING_KEY"
end
function LineBreak()
    print("")
end
-- =================================================================================================
-- ETAPA 1: Escolha do Idioma (antes de montar o GUI completo)
-- =================================================================================================
local lang_input = nil
local attempts = 0
local max_attempts = 2

repeat
    lang_input = GUIF({ language, "Escolha Seu Idioma. - Choose Your Language. (PT or EN): " })
    attempts = attempts + 1

    if type(lang_input) == "string" then
        local normalized = lang_input:upper():match("^%s*(.-)%s*$")
        if normalized == "PT" or normalized == "EN" then
            language = normalized
            attempts = 0
            break
        else
            LineBreak()
            print(string.format("[AVISO] Entrada invalida: '%s' (Tentativa %d/%d)", lang_input, attempts, max_attempts))
            LineBreak()
            print(string.format("[WARNING] Invalid input: '%s' (Attempt %d/%d)", lang_input, attempts, max_attempts))
        end
    end
until attempts >= max_attempts

if language ~= "PT" and language ~= "EN" then
    language = "EN"
    LineBreak()
    print(string.format("[INFO] Idioma padrao aplicado '(EN)' apos (Tentativa %d)", attempts))
    LineBreak()
    print(string.format("[INFO] Default language applied '(EN)' after (Attempt %d)", attempts))
elseif language == "PT" then
    LineBreak()
    print("[INFO] Idioma Definido Como: " .. tostring(language))
elseif language == "EN" then
    LineBreak()
    print("[INFO] Language Defined As: " .. tostring(language))
end
-- =================================================================================================
-- VALIDACAO DE LIMITES DE PILHA E MULTIPLICACAO
-- =================================================================================================
local MAX_STACK_VALUE = 999999999
local MAX_MULTI_VALUE = 99999

local function ValidateAndCapStack(value, isMultiplier)
    local num_value = tonumber(value) or 0

    if isMultiplier then
        if num_value > MAX_MULTI_VALUE then
            print(string.format(L("LIMIT_EXCEEDED"), MAX_MULTI_VALUE))
            num_value = MAX_MULTI_VALUE
        elseif num_value < 1 then
            num_value = 1
        end
    else
        if num_value > MAX_STACK_VALUE then
            print(string.format(L("LIMIT_EXCEEDED"), MAX_STACK_VALUE))
            num_value = MAX_STACK_VALUE
        elseif num_value < 1 then
            num_value = 1
        end
    end
    return math.floor(num_value)
end
-- =================================================================================================
-- CONFIGURACAO MODO RAPIDO (Defina os valores finais aqui para ignorar os prompts GUIF)
-- =================================================================================================
local QUICK_MODE_CONFIG = {
    EnableMod                = true,
    CraftingIsFree           = true,
    InventoriesAlwaysInRange = true,
    WarpDriveRequirements    = false,
    BaseAutoPower            = false,
    AllSlotsUnlocked         = false,
    StartWithAllItemsKnown   = false,
    UseMultiplier            = true,
    Multiplier               = 100,
    MaxSubstanceStackSizes   = 99999,
    SubstanceStackLimit      = 99999,
    ProductStackLimit        = 99999,
    TutorialEnabled          = true,
}
-- =================================================================================================
-- CONFIGURACAO GUIF AGRUPADA POR SECAO
-- =================================================================================================
local GUI = {
    ["GERAL"] = {
        QuickMode = { true, L("QUICK_MODE") },
        EnableMod = { true, L("ENABLE_INFO") },
    },

    ["CRAFTING E CONSTRUCAO"] = {
        CraftingIsFree           = { true, L("CRAFTING_FREE") },
        InventoriesAlwaysInRange = { true, L("ALWAYS_RANGE") },
        WarpDriveRequirements    = { false, L("WARP_DRIVE") },
        BaseAutoPower            = { false, L("BASE_POWER") },
    },

    ["INVENTARIO E DIFICULDADE"] = {
        AllSlotsUnlocked       = { false, L("SLOTS_UNLOCKED") },
        StartWithAllItemsKnown = { false, L("START_KNOWN") },
        UseMultiplier          = { true, L("USE_MULTIPLIER") },
        Multiplier             = { 100, L("MULTIPLIER") },
        MaxSubstanceStackSizes = { 99999, L("MAX_STACK_SIZES") },
        SubstanceStackLimit    = { 99999, L("SUBSTANCE_STACK") },
        ProductStackLimit      = { 99999, L("PRODUCT_STACK") },
    },

    ["EXPERIENCIA E TUTORIAL"] = {
        TutorialEnabled = { true, L("TUTORIAL_PROMPT") },
    },
}
-- =================================================================================================
-- CAPTURA DE VALORES INICIAIS (IDIOMA + FLAG PRINCIPAL)
-- =================================================================================================
local Config = {}

function QuickMode(key)
    print("[DEBUG]", L("USER_CHOSEN_SETTINGS"))
    for k, v in pairs(key) do
        Config[k] = v
        print("  " .. k .. " = " .. tostring(v))
    end
end

Config.QuickMode = GUIF(GUI.GERAL.QuickMode)
if Config.QuickMode then
    QuickMode(QUICK_MODE_CONFIG)
    LineBreak()
    print("[INFO] " .. L("ATIVE_QUICK_MODE"))
else
    Config.EnableMod = GUIF(GUI.GERAL.EnableMod)
    if Config.EnableMod then
        LineBreak()
        print("[INFO] " .. L("MESSAGE"))
        print(" ")
        print("[INFO] " .. L("CRAFTING_BUILD_SETUP"))
        Config.CraftingIsFree           = GUIF(GUI["CRAFTING E CONSTRUCAO"].CraftingIsFree)
        Config.InventoriesAlwaysInRange = GUIF(GUI["CRAFTING E CONSTRUCAO"].InventoriesAlwaysInRange)
        Config.WarpDriveRequirements    = GUIF(GUI["CRAFTING E CONSTRUCAO"].WarpDriveRequirements)
        Config.BaseAutoPower            = GUIF(GUI["CRAFTING E CONSTRUCAO"].BaseAutoPower)

        print("[INFO] " .. L("INVENTORY_DIFFICULTY"))
        Config.AllSlotsUnlocked       = GUIF(GUI["INVENTARIO E DIFICULDADE"].AllSlotsUnlocked)
        Config.StartWithAllItemsKnown = GUIF(GUI["INVENTARIO E DIFICULDADE"].StartWithAllItemsKnown)

        print(L("MULTIPLIER_WARNING"))
        Config.UseMultiplier = GUIF(GUI["INVENTARIO E DIFICULDADE"].UseMultiplier)

        if Config.UseMultiplier then
            Config.Multiplier = ValidateAndCapStack(tonumber(GUIF(GUI["INVENTARIO E DIFICULDADE"].Multiplier)), true) or
                100
        else
            Config.MaxSubstanceStackSizes = ValidateAndCapStack(GUIF(GUI["INVENTARIO E DIFICULDADE"]
                .MaxSubstanceStackSizes))
            Config.SubstanceStackLimit    = ValidateAndCapStack(GUIF(GUI["INVENTARIO E DIFICULDADE"].SubstanceStackLimit))
            Config.ProductStackLimit      = ValidateAndCapStack(GUIF(GUI["INVENTARIO E DIFICULDADE"].ProductStackLimit))
        end

        print("[INFO] " .. L("EXPERIENCE_TUTORIAL"))
        Config.TutorialEnabled = GUIF(GUI["EXPERIENCIA E TUTORIAL"].TutorialEnabled)
    else
        print("[INFO] " .. L("DISABLED_INFO"))
    end
end
-- =================================================================================================
-- ETAPA 2: CONVERSAO DE TIPOS PARA STRINGS (Usando o sufixo _F para MXML Final)
-- =================================================================================================
local function B(v)
    return v and "True" or "False"
end

local function S(v)
    return tostring(v)
end

local CraftingIsFree_F           = B(Config.CraftingIsFree)
local InventoriesAlwaysInRange_F = B(Config.InventoriesAlwaysInRange)
local WarpDriveRequirements_F    = B(Config.WarpDriveRequirements)
local AllSlotsUnlocked_F         = B(Config.AllSlotsUnlocked)
local StartWithAllItemsKnown_F   = B(Config.StartWithAllItemsKnown)
local BaseAutoPower_F            = B(Config.BaseAutoPower)
local TutorialEnabled_F          = B(Config.TutorialEnabled)
local Multiplier_F               = S(Config.Multiplier)
local MaxSubstanceStackSizes_F   = S(Config.MaxSubstanceStackSizes)
local SubstanceStackLimit_F      = S(Config.SubstanceStackLimit)
local ProductStackLimit_F        = S(Config.ProductStackLimit)
-- =================================================================================================
-- FUNCAO GENERICA DE ALTERACAO
-- =================================================================================================
function AddChange(exml_table, config)
    local entry = {
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_CHANGE_TABLE"] = config.values
    }

    if config.keywords then
        entry["SPECIAL_KEY_WORDS"] = config.keywords
    elseif config.preceding then
        entry["PRECEDING_KEY_WORDS"] = config.preceding
    end

    if config.section_up then
        entry["SECTION_UP"] = config.section_up
    end

    table.insert(exml_table, entry)
end
-- =================================================================================================
-- CONFIGURACAO DE DIFFICULTYCONFIG.MBIN
-- =================================================================================================
local Presets = { "Creative", "Custom", "Relaxed", "Normal", "Survival", "Permadeath", "PermadeathMinSettings" }
local iStackLimits = { "Low", "Normal", "High" }
local sStackLimits = {
    "Default", "Personal", "PersonalCargo",
    "Ship", "ShipCargo", "Freighter",
    "FreighterCargo", "Vehicle", "Chest",
    "BaseCapsule", "MaintenanceObject",
    "UIPopup", "SeasonTransfer"
}

local exml_DIFFICULTY_changes = {}

if Config.EnableMod then
    for _, p in ipairs(Presets) do
        AddChange(exml_DIFFICULTY_changes, {
            keywords = { { p, "GcDifficultySettingsData" } },
            values = {
                { "CraftingIsFree",           CraftingIsFree_F },
                { "InventoriesAlwaysInRange", InventoriesAlwaysInRange_F },
                { "WarpDriveRequirements",    WarpDriveRequirements_F },
                { "AllSlotsUnlocked",         AllSlotsUnlocked_F },
                { "StartWithAllItemsKnown",   StartWithAllItemsKnown_F },
                { "BaseAutoPower",            BaseAutoPower_F },
                { "TutorialEnabled",          TutorialEnabled_F }
            }
        })
    end

    if not Config.UseMultiplier then
        for _, i in ipairs(iStackLimits) do
            AddChange(exml_DIFFICULTY_changes, {
                keywords = { { i, "GcDifficultyInventoryStackSizeOptionData" } },
                values = {
                    { "SubstanceStackLimit", SubstanceStackLimit_F },
                    { "ProductStackLimit",   ProductStackLimit_F }
                }
            })
        end

        for _, s in ipairs(sStackLimits) do
            AddChange(exml_DIFFICULTY_changes, {
                preceding = { "MaxSubstanceStackSizes" },
                values = { { s, MaxSubstanceStackSizes_F } }
            })
        end
    else
        for _, i in ipairs(iStackLimits) do
            AddChange(exml_DIFFICULTY_changes, {
                keywords = { { i, "GcDifficultyInventoryStackSizeOptionData" } },
                values = {
                    { "SubstanceStackLimit", "@*" .. Multiplier_F },
                    { "ProductStackLimit",   "@*" .. Multiplier_F }
                }
            })
        end

        for _, s in ipairs(sStackLimits) do
            AddChange(exml_DIFFICULTY_changes, {
                preceding = { "MaxSubstanceStackSizes" },
                values = { { s, "@*" .. Multiplier_F } }
            })
        end
    end
end

-- =================================================================================================
-- SAFE FALLBACK
-- =================================================================================================

local README_CONTENT = [[
    JUST TESTING THANKS
]]

function NMS_LOG(msg)
    if msg:find("INFO") then
        print(string.format("[MOD:%s] %s", mod_filename, tostring(msg)))
    end
end

local MBIN_Changes = {}
if next(exml_DIFFICULTY_changes) then
    table.insert(MBIN_Changes, {
        COMMENT = "",
        MBIN_FILE_SOURCE = "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN",
        MXML_CHANGE_TABLE = exml_DIFFICULTY_changes
    })
    NMS_LOG("[INFO] " .. L("TABLE_EDIT"))
else
    NMS_LOG("[INFO] " .. L("CLEAN_COMPILE"))
end

local Modifications = {}
if next(MBIN_Changes) then
    table.insert(Modifications, { MBIN_CHANGE_TABLE = MBIN_Changes })
end

NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME = string.format("%s v%s %s", mod_filename, lua_version, nms_version, lua_Internalversion, mod_name),
    LUA_AUTHOR = lua_author,
    MOD_AUTHOR = mod_author,
    NMS_VERSION = nms_version,
    MOD_DESCRIPTION = mod_description,
    GLOBAL_INTEGER_TO_FLOAT = "PRESERVE",
    MODIFICATIONS = Modifications,
    ADD_FILES = {
        {
            FILE_DESTINATION = "SETTINGS.TXT",
            FILE_CONTENT = README_CONTENT
        },
    },

}

return NMS_MOD_DEFINITION_CONTAINER