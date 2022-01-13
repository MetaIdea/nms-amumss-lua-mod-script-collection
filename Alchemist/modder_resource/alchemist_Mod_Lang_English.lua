LANGUAGE_NAMES = {"English", "French", "Italian", "German", "Spanish", "Russian", "Polish",
  "Dutch", "Portuguese", "LatinAmericanSpanish", "BrazilianPortuguese", "SimplifiedChinese",
  "TraditionalChinese", "TencentChinese", "Korean", "Japanese", "USEnglish"}

-- Original Mod Author Information (translators - do not edit)
Author = "alchemist"
ModName = "Mod"
BaseDescription = [[Mod Language Template]]
GameVersion = "3-75"
ModVersion = "1-0-0"

--
-- BEGIN TRANSLATOR SECTION
--

TranslationAuthor = "alchemist"
LanguageName = "English"
LanguageFile = "NMS_LOC7_ENGLISH.MBIN"

-- Total keys: 2
LANGUAGE_TABLE = {
  --[[

  Language keys are added here. They should be single line strings.
  If your result should be multi-line, use \n to denote line breaks.

  --]]

  --
  ["TEST_KEY"] = "This entry will result\nin a multi-line string.", --
  ["TEST_KEY_2"] = "This entry will result\nin a multi-line string.", --
}

--
-- END TRANSLATOR SECTION // BEGIN AMUMSS
--

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

local function TkLocalisationEntry(id, value)
  local entries = ""
  for i = 1, #LANGUAGE_NAMES do
    if LANGUAGE_NAMES[i] == LanguageName then
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

-- build the injected language table
local langOutput = ""
for key, value in pairs(LANGUAGE_TABLE) do
  langOutput = langOutput..TkLocalisationEntry(key, value)
end

-- if the translator is not the mod author, append their name to the filename
ModName = ModName.."_Lang_"..LanguageName
if Author ~= TranslationAuthor then
  ModName = ModName.."_"..TranslationAuthor
end

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

	{["MBIN_FILE_SOURCE"] = "LANGUAGE\\"..LanguageFile,
	["EXML_CHANGE_TABLE"] = {

    {["PRECEDING_KEY_WORDS"] = {"Table"},
    ["LINE_OFFSET"] = 0,
    ["ADD"] = langOutput},

	}},

}}}}