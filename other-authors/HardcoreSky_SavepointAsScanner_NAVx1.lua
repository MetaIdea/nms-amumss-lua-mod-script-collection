local COST        = 1
local GAME_VER    = "6.01"
local MOD_NAME    = "HardcoreSky_SavepointAsScanner"
local MOD_FILENAME= string.format("%s_NAVx%d", MOD_NAME, COST)

local ENTITY_SAVEPOINT = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/BUILDABLEPARTS/TECH/SAVEPOINT/ENTITIES/SAVEPOINT.ENTITY.MBIN"

local LOC_XML = ([[
  <Property value="TkLocalisationEntry.xml">
    <Property name="Id" value="UI_PLANET_SCANNER_LABEL" />
    <Property name="English" value="Planetary System Scanner" />
    <Property name="USEnglish" value="Planetary System Scanner" />
    <Property name="French" value="Scanneur de système planétaire" />
    <Property name="Italian" value="Scanner Sistema Planetario" />
    <Property name="German" value="Planetensystem-Scanner" />
    <Property name="Spanish" value="Escáner del sistema planetario" />
    <Property name="LatinAmericanSpanish" value="Escáner de sistema planetario" />
    <Property name="Russian" value="Сканер планетарной системы" />
    <Property name="Polish" value="Skaner systemu planetarnego" />
    <Property name="Dutch" value="Planetaire systeemscanner" />
    <Property name="Portuguese" value="Scanner do sistema planetário" />
    <Property name="BrazilianPortuguese" value="Scanner do sistema planetário" />
    <Property name="SimplifiedChinese" value="行星系统扫描器" />
    <Property name="TraditionalChinese" value="行星系統掃描器" />
    <Property name="TencentChinese" value="行星系统扫描器" />
    <Property name="Korean" value="행성계 스캐너" />
    <Property name="Japanese" value="惑星系スキャナー" />
  </Property>
  <Property value="TkLocalisationEntry.xml">
    <Property name="Id" value="BLD_SAVEPOINT_NAME" />
    <Property name="English" value="Planetary System Scanner (Cost: %d)" />
    <Property name="USEnglish" value="Planetary System Scanner (Cost: %d)" />
    <Property name="French" value="Scanneur de système planétaire (Coût : %d)" />
    <Property name="Italian" value="Scanner Sistema Planetario (Costo: %d)" />
    <Property name="German" value="Planetensystem-Scanner (Kosten: %d)" />
    <Property name="Spanish" value="Escáner del sistema planetario (Costo: %d)" />
    <Property name="LatinAmericanSpanish" value="Escáner de sistema planetario (Costo: %d)" />
    <Property name="Russian" value="Сканер планетарной системы (Стоимость: %d)" />
    <Property name="Polish" value="Skaner systemu planetarnego (Koszt: %d)" />
    <Property name="Dutch" value="Planetaire systeemscanner (Kosten: %d)" />
    <Property name="Portuguese" value="Scanner do sistema planetário (Custo: %d)" />
    <Property name="BrazilianPortuguese" value="Scanner do sistema planetário (Custo: %d)" />
    <Property name="SimplifiedChinese" value="行星系统扫描器（花费：%d）" />
    <Property name="TraditionalChinese" value="行星系統掃描器（費用：%d）" />
    <Property name="TencentChinese" value="行星系统扫描器（花费：%d）" />
    <Property name="Korean" value="행성계 스캐너 (비용: %d)" />
    <Property name="Japanese" value="惑星系スキャナー（コスト: %d）" />
  </Property>
  <Property value="TkLocalisationEntry.xml">
    <Property name="Id" value="BLD_SAVEPOINT_NAME_L" />
    <Property name="English" value="Planetary System Scanner (Cost: %d)" />
    <Property name="USEnglish" value="Planetary System Scanner (Cost: %d)" />
    <Property name="French" value="Scanneur de système planétaire (Coût : %d)" />
    <Property name="Italian" value="Scanner Sistema Planetario (Costo: %d)" />
    <Property name="German" value="Planetensystem-Scanner (Kosten: %d)" />
    <Property name="Spanish" value="Escáner del sistema planetario (Costo: %d)" />
    <Property name="LatinAmericanSpanish" value="Escáner de sistema planetario (Costo: %d)" />
    <Property name="Russian" value="Сканер планетарной системы (Стоимость: %d)" />
    <Property name="Polish" value="Skaner systemu planetarnego (Koszt: %d)" />
    <Property name="Dutch" value="Planetaire systeemscanner (Kosten: %d)" />
    <Property name="Portuguese" value="Scanner do sistema planetário (Custo: %d)" />
    <Property name="BrazilianPortuguese" value="Scanner do sistema planetário (Custo: %d)" />
    <Property name="SimplifiedChinese" value="行星系统扫描器（花费：%d）" />
    <Property name="TraditionalChinese" value="行星系統掃描器（費用：%d）" />
    <Property name="TencentChinese" value="行星系统扫描器（花费：%d）" />
    <Property name="Korean" value="행성계 스캐너 (비용: %d)" />
    <Property name="Japanese" value="惑星系スキャナー（コスト: %d）" />
  </Property>
  <Property value="TkLocalisationEntry.xml">
    <Property name="Id" value="BLD_SAVEPOINT_DESCRIPTION" />
    <Property name="English" value="A planetary scanner that reveals all system resources." />
    <Property name="USEnglish" value="A planetary scanner that reveals all system resources." />
    <Property name="French" value="Un scanner planétaire révélant toutes les ressources du système." />
    <Property name="Italian" value="Uno scanner planetario che rivela tutte le risorse del sistema." />
    <Property name="German" value="Ein Planetenscanner, der alle Systemressourcen aufdeckt." />
    <Property name="Spanish" value="Un escáner planetario que revela todos los recursos del sistema." />
    <Property name="LatinAmericanSpanish" value="Un escáner planetario que revela todos los recursos del sistema." />
    <Property name="Russian" value="Планетарный сканер, раскрывающий все ресурсы системы." />
    <Property name="Polish" value="Skaner planetarny ujawniający zasoby systemu." />
    <Property name="Dutch" value="Planetaire scanner onthult alle systeembronnen." />
    <Property name="Portuguese" value="Scanner planetário que revela todos os recursos do sistema." />
    <Property name="BrazilianPortuguese" value="Scanner planetário que revela todos os recursos do sistema." />
    <Property name="SimplifiedChinese" value="揭示所有系统资源的行星扫描器。" />
    <Property name="TraditionalChinese" value="揭示所有系統資源的行星掃描器。" />
    <Property name="TencentChinese" value="揭示所有系统资源的行星扫描器。" />
    <Property name="Korean" value="모든 시스템 자원을 드러내는 행성 스캐너." />
    <Property name="Japanese" value="システム資源を明らかにする惑星スキャナー。" />
  </Property>
]]):format(
  COST, COST, COST, COST, COST, COST, COST, COST, COST, COST, COST, COST, COST, COST, COST, COST, COST,
  COST, COST, COST, COST, COST, COST, COST, COST, COST, COST, COST, COST, COST, COST, COST, COST, COST
)

local LOC_TABLE_MXML = [[<?xml version="1.0" encoding="utf-8"?>
<Data template="TkLocalisationTable">
  <Property name="Table">
]] .. LOC_XML .. [[
  </Property>
</Data>
]]

local MBIN_CHANGE_TABLE = {
  {
    MBIN_FILE_SOURCE  = ENTITY_SAVEPOINT,
    MXML_CHANGE_TABLE = {
      {
        SPECIAL_KEY_WORDS = {"Name","BLD_SAVEPOINT_NAME_L"},
        VALUE_CHANGE_TABLE = {
          {"SimpleInteractionType",   "SuperDoopaScanner"},
          {"ScanType",                "BINOC_INTERACTABLE"},
          {"InteractDistance",        "0"},
          {"Use2dInteractDistance",   "False"},
          {"HideContents",            "True"},
          {"MustBeVisibleToInteract", "False"},
          {"NeedsStorm",              "False"},
          {"Name",                    "UI_PLANET_SCANNER_LABEL"},
          {"Description",             "BLD_SAVEPOINT_DESCRIPTION"}
        }
      },
      {
        SPECIAL_KEY_WORDS   = {"Name","UI_PLANET_SCANNER_LABEL"},
        PRECEDING_KEY_WORDS = {"ActivationCost"},
        VALUE_CHANGE_TABLE  = {
          {"SubstanceId",             "NAV_DATA"},
          {"Cost",                    tostring(COST)},
          {"Repeat",                  "True"},
          {"RequiredTech",            ""},
          {"UseCostID",               ""},
          {"StartMissionOnCantAfford",""}
        }
      }
    }
  }
}

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = MOD_FILENAME,
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = GAME_VER,
   MOD_DESCRIPTION = ("Save Point acts as a Planetary System Scanner; each scan costs "..tostring(COST).." NAV_DATA. Adds a single LocTable with all translations."),
  MODIFICATIONS   = {{
    MBIN_CHANGE_TABLE = MBIN_CHANGE_TABLE
  }},
  ADD_FILES = {
    {
      FILE_DESTINATION = "LocTable.MXML",
      FILE_CONTENT     = LOC_TABLE_MXML
    }
  }
}