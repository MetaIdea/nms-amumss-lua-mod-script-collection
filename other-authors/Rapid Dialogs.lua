-- Function to generate XML entries for character ranges
local function generate_xml_entries(characters, delay)
   local result = ""
   for i = 1, #characters do
       local char = characters:sub(i, i)
       result = result .. string.format([[        <Property name="PunctuationList" value="GcPunctuationDelay" _index="%d">
         <Property name="Punctuation" value="%s" />
         <Property name="Delay" value="%s" />
       </Property>
]], i - 1, char, delay)
   end
   return result
end

-- Configuration constants
local NMS_VERSION = "6.33"
local MOD_VERSION = "0"

-- Delay value for character display
local DELAY_VALUE = "0.002"

-- Include all punctuation marks plus alphanumeric characters
local CHARACTERS = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.!?,:;-{}' "

-- Generate XML entries for all text characters
local CHARACTER_XML_ENTRIES = generate_xml_entries(CHARACTERS, DELAY_VALUE)

NMS_MOD_DEFINITION_CONTAINER = {
   ["MOD_FILENAME"] = string.format("Rapid Dialogs %s.%s", NMS_VERSION, MOD_VERSION),
   ["MOD_AUTHOR"] = "NilOutput",
   ["LUA_AUTHOR"] = "NilOutput",
   ["MOD_DESCRIPTION"] = "Rapid display of dialogs when interacting with NPCs. Removes the delay for random characters per alien language and replaces it with a minimal delay for all characters. Tested with English.",
   ["NMS_VERSION"] = NMS_VERSION,
   ["MODIFICATIONS"] = {
       {
           ["MBIN_CHANGE_TABLE"] = {
               {
                   ["MBIN_FILE_SOURCE"] = "METADATA/UI/SPECIALTEXTPUNCTUATIONDELAYDATA.MBIN",
                   ["MXML_CHANGE_TABLE"] = {
                       {
                           ["PRECEDING_KEY_WORDS"] = {"PunctuationList", "PunctuationList"},
                           ["REPLACE_TYPE"] = "ALL",
                           ["REMOVE"] = "SECTION"
                       },
                       {
                           ["PRECEDING_KEY_WORDS"] = {"PunctuationList"},
                           ["REPLACE_TYPE"] = "ALL",
                           ["ADD"] = CHARACTER_XML_ENTRIES
                       },
                       {
                           ["PRECEDING_KEY_WORDS"] = {"PunctuationList"},
                           ["REPLACE_TYPE"] = "ALL",
                           ["ADD_OPTION"] = "ADDafterSECTION",
                           ["ADD"] = [[
                               <Property name="DefaultDelay" value="]] .. DELAY_VALUE .. [[" />]]
                       }
                   }
               }
           }
       }
   }
}