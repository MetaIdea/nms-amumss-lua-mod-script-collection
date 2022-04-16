-- Original Mod Author Information (translators - do not edit)
Author = "alchemist"
ModName = "Mod"
BaseDescription = [[Language Demo]]
GameVersion = "3-75"
ModVersion = "1-0-0"

-- =========
-- CONSTANTS
-- =========

LANGUAGE_NAMES = {"English", "French", "Italian", "German", "Spanish", "Russian", "Polish",
  "Dutch", "Portuguese", "LatinAmericanSpanish", "BrazilianPortuguese", "SimplifiedChinese",
  "TraditionalChinese", "TencentChinese", "Korean", "Japanese", "USEnglish"}

-- for if the filename spelling of a language is different than just string.upper()
LANGUAGE_FILENAME_TABLE = {
  ["LatinAmericanSpanish"] = "LATINAMERAICANSPANISH"
}

-- ========================
-- BEGIN TRANSLATOR SECTION
-- ========================

-- Hello, my name is...
TranslationAuthor = "alchemist"

-- The language provided by this build. Used in the output file name and (possibly)
-- to select which file to inject language entries in to.
--
-- Select from LANGUAGE_NAMES array above.
LanguageName = "English"

-- Whether to inject the language table into just the target language file (false),
-- or all language files (true). If true, players will see the provided strings no
-- matter what language they play in. Should probably be true, unless you have
-- a specific reason.
ForceAllLanguageFiles = true

-- Which group of files from the "Language" directory of the extracted game files to
-- inject the new language entries into. Translators should not change.
LanguageFilePrefix = "NMS_LOC7_"

--[[

# Adding Language Entries

The LANGUAGE_TABLE is a key-value table. When asked to display text, the game will
look up the the key in the player's preferred language file. 

Mod Authors: Add key-value pairs. Keys must be unique across the entire game.
Translators: Make changes to the values, do NOT make changes to keys.

  ["KEY"] = "Value",

All entries should be single line strings. If the output should be a multi-line
string, use \n to denote line breaks.

  ["MULTILINE_KEY"] = "This is the first line.\nThis is the second line.",

Line-breaks are especially important in dialogs as it also indicates where to
wait for the player to hit a button to continue reading.

The link below is for a guide on NMS text formatting. This will allow you to change
the color of text or add icons. Format wrappers and icon tags must be in English.

  https://www.nexusmods.com/nomanssky/mods/2134

--]]

-- Total keys: 2
LANGUAGE_TABLE = {
  --
  ["KEY"] = "Value",
  ["MULTILINE_KEY"] = "This is the first line.\nThis is the second line.",
  ["FORMATTED_KEY"] = "<IMG>DANGER<> <FUEL>NOTICE<> ~ Some text in <TECHNOLOGY>color<>."
}

-- ======================================
-- END TRANSLATOR SECTION // BEGIN AMUMSS
-- ======================================

-- this could likely be much better
local function escapeLang(value)
  value = value:gsub("<", "&lt;")
  value = value:gsub(">", "&gt;")
  value = value:gsub("\n", "&#xA;")
  return value
end

local function langEntry(language, value)
  return [[
      <Property name="]]..language..[[" value="VariableSizeString.xml">
        <Property name="Value" value="]]..value..[[" />
      </Property>
]]
end

local function TkLocalisationEntry(lang, id, value)
  local entries = ""
  for i = 1, #LANGUAGE_NAMES do
    if LANGUAGE_NAMES[i] == lang then
      entries = entries..langEntry(LANGUAGE_NAMES[i], escapeLang(value))
    else
      entries = entries..langEntry(LANGUAGE_NAMES[i], "")
    end
  end

  return [[
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="]]..id..[[" />
]]..entries..[[
    </Property>
]]
end

-- build xml with LANGUAGE_TABLE associated with given language
local function buildForLanguage(lang)
  local langOutput = ""
  for key, value in pairs(LANGUAGE_TABLE) do
    langOutput = langOutput..TkLocalisationEntry(lang, key, value)
  end
  return langOutput;
end

-- build pak name
ModName = ModName.."_Lang_"..LanguageName
if Author ~= TranslationAuthor then
  ModName = ModName.."_"..TranslationAuthor
end

-- actual AMUMSS instructions
NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

  -- empty on purpose

}}}}

local Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]

local function addChangeTable(lang)
  local langFilename
  if LANGUAGE_FILENAME_TABLE[lang] ~= nil then
    langFilename = LANGUAGE_FILENAME_TABLE[lang]
  else
    langFilename = string.upper(lang)
  end

  Ref[#Ref + 1] = {
    ["MBIN_FILE_SOURCE"] = "LANGUAGE\\"..LanguageFilePrefix..langFilename..".MBIN",
	  ["EXML_CHANGE_TABLE"] = {
      {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["LINE_OFFSET"] = 0,
        ["ADD"] = buildForLanguage(lang)
      },
	  }
  }
end

if ForceAllLanguageFiles == true then
  for i = 1, #LANGUAGE_NAMES do
    addChangeTable(LANGUAGE_NAMES[i])
  end
else
  addChangeTable(LanguageName)
end