NMS_MOD_DEFINITION_CONTAINER = {
["MOD_BATCHNAME"]   = "cmk.pak",
["MOD_FILENAME"]    = "Portal.pak",
["MOD_DESCRIPTION"] = "Disable charge requirements for portals",
["MOD_AUTHOR"]      = "cmk",
["NMS_VERSION"]     = "3.21.0",
["MODIFICATIONS"]   = {
{
  ["MBIN_CHANGE_TABLE"] = { 
  {
    ["MBIN_FILE_SOURCE"]  = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN",
    ["EXML_CHANGE_TABLE"] = {
    {
      ["REPLACE_TYPE"]       = "ALL",                  -- make all 16 buttons no-cost
      ["VALUE_CHANGE_TABLE"] = {{"MaxCapacity", "0"}}  -- -1, 0 makes button  no-cost
    }}
  }}  -- MBIN_CHANGE_TABLE
}}  -- MODIFICATIONS
}  -- NMS_MOD_DEFINITION_CONTAINER
