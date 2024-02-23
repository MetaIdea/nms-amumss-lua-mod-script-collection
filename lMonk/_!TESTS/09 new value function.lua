local ModName = "mod"
local Author = "name"
local ModDescription = "description"

local values = {}

local function saveValue(propertyname, orgvalue)
  table.insert(values, orgvalue)
  return orgvalue
end

local function loadValue(propertyname, orgvalue)
  value = table.remove(values,1)
  return value
end

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName..".pak",
    ["MOD_DESCRIPTION"] = ModDescription,
    ["MOD_AUTHOR"] = Author,
    ["GLOBAL_INTEGER_TO_FLOAT"] = "Force",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PROCEDING_KEY_WORDS"]   = {"Quality", "GcProceduralTechnologyStatLevel.xml"},
                            ["VALUE_CHANGE_TABLE"]    = {{"ValueMax", "saveValue()"}},
                            ["REPLACE_TYPE"]          = "ALL"
                        },
                        {
                            ["PROCEDING_KEY_WORDS"]   = {"Quality", "GcProceduralTechnologyStatLevel.xml", "ValueMin"},
                            ["VALUE_CHANGE_TABLE"]    = {{"ValueMin", "loadValue()"}},
                            ["REPLACE_TYPE"]          = "ALL"
                        }
                    }
                }
            }
        }
    }
}
