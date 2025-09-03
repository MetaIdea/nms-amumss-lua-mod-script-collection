ModName = "MaxIsMin"
Author = "Kherae"
ModDescription = "sets min value of stats on multi-tool, ships and freighter, to the maximum value for each respective item"

values = {}

function saveValue(propertyname, orgvalue)
  table.insert(values, orgvalue)
  return orgvalue
end

function loadValue(propertyname, orgvalue)
  value = table.remove(values,1)
  return value
end

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = ModName,
    ["MOD_DESCRIPTION"] = ModDescription,
    ["MOD_AUTHOR"] = Author,
	["AMUMSS_SUPPRESS_MSG"] = "MULTIPLE_STATEMENTS, UNUSED_VARIABLE, MIXED_TABLE",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {   
                            ["PKW"]   = {"BaseStats"},
                            ["VCT"]    = {{"Max", "saveValue()"}},
                            ["REPLACE_TYPE"]          = "ALL"
                        },
                        {   
                            ["PKW"]   = {"BaseStats"},
                            ["VCT"]    = {{"Min", "loadValue()"}},
                            ["REPLACE_TYPE"]          = "ALL"
                        }
                    }
                }
            }
        }
    }
}