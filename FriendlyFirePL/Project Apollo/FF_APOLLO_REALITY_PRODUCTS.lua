----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "REALITY_PRODUCTS"
METADATA_NMS_VERSION    = "DEV8"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for gameplay items. Modifies METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN."



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_REALITY_PRODUCTTABLE = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN"

FUNCTION_SECTION = ""

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_PRODUCTTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add charge value to Storm Crystals for multitool scanner
                        {   ["SKW"] = {"Name","UI_STORMCRYSTAL_NAME",},   ["VCT"] = {{"ChargeValue","1",},},    },
                        
                        --------------------------------------------------
                        -- new tech modules - added using functions below
                        --------------------------------------------------
                    },
                }
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- functions for EXML table
----------------------------------------------------------------------------------------------------

function GetTemplate(id) return
{   ["SKW"] = {"ID",id,},   ["SEC_SAVE_TO"] = FUNCTION_SECTION,   }
end
  
function ApplyVCT(vct) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["VCT"] = vct,    }
end

function ChangeIcon(icon) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"Icon","TkTextureResource.xml",},  ["VCT"] = {{"Filename",icon,},},    }
end
  
function ChangeCrafting(slot,id,type,amount) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "GcTechnologyRequirement.xml",      ["SECTION_ACTIVE"] = slot,    ["VCT"] = {{"ID",id,},{"InventoryType",type,},{"Amount",amount,},},   }
end

function AddCrafting(id,type,amount) return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "Requirements",   ["ADD"] = [[<Property value="GcTechnologyRequirement.xml"><Property name="ID" value="]]..id..[[" />
    <Property name="Type" value="GcInventoryType.xml"><Property name="InventoryType" value="]]..type..[[" /></Property><Property name="Amount" value="]]..amount..[[" /></Property>]]
}
end

function RemoveAllCrafting() return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["PKW"] = "Requirements",     ["CREATE_HOES"] = "TRUE",   }
end

function MakeIllegal() return
{   ["SEC_EDIT"] = FUNCTION_SECTION,    ["SKW"] = {"Legality","GcLegality.xml",},   ["LINE_OFFSET"] = 1,     ["VCT"] = {{"Legality","Illegal",},},   }
end

function AddItem() return
{   ["PKW"] = "Table",    ["SEC_ADD_NAMED"] = FUNCTION_SECTION,   }
end

--------------------------------------------------
-- main function to populate EXML table
--------------------------------------------------

function Products_BuildChangeTable(exml)

  ----------------------------------------------------------------------------------------------------
  -- story related items
  ----------------------------------------------------------------------------------------------------

  --------------------------------------------------
  -- research token
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_ITEM_TOKEN"

  local VCT = 
  {
    {"ID","ITEM_TOKEN",},
    {"Name","TEXT_ITEM_TOKEN_N",},
    {"NameLower","TEXT_ITEM_TOKEN_L",},
    {"Subtitle","TEXT_ITEM_TOKEN_S",},
    {"Description","TEXT_ITEM_TOKEN_D",},
    {"StackMultiplier",2,},
    {"IsCraftable","False",},
    {"CanSendToOtherPlayers","False",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("FRIG_TOKEN"),
    ApplyVCT(VCT),
    ChangeIcon("TEXTURES/ITEMS/TOKEN.DDS"),
    AddItem(),
  }
  
  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- scanner plating
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_ITEM_PLATING"

  local VCT = 
  {
    {"ID","ITEM_PLATING",},
    {"Name","TEXT_ITEM_PLATING_N",},
    {"NameLower","TEXT_ITEM_PLATING_L",},
    {"Subtitle","TEXT_ITEM_PLATING_S",},
    {"Description","TEXT_ITEM_PLATING_D",},
    {"R",0.101960786,},
    {"G",0.15294118,},
    {"B",0.2,},
    {"PinObjectiveTip","",},
    {"CanSendToOtherPlayers","False",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("CASING"),
    ApplyVCT(VCT),
    ChangeIcon("TEXTURES/ITEMS/PLATING.DDS"),
    ChangeCrafting(1,"CAVE1","Substance",20),
    AddCrafting("STELLAR2","Substance",20),
    AddItem(),
  }
  
  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- time fragment
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_ITEM_FRAGMENT"

  local VCT = 
  {
    {"ID","ITEM_FRAGMENT",},
    {"Name","TEXT_ITEM_FRAGMENT_N",},
    {"NameLower","TEXT_ITEM_FRAGMENT_L",},
    {"Subtitle","TEXT_ITEM_FRAGMENT_S",},
    {"Description","TEXT_ITEM_FRAGMENT_D",},
    {"IsCraftable","False",},
    {"CanSendToOtherPlayers","False",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("ATLAS_SEED_1"),
    ApplyVCT(VCT),
    ChangeIcon("TEXTURES/ITEMS/FRAGMENT.DDS"),
    RemoveAllCrafting(),
    AddItem(),
  }
  
  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- harmonic circuit
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_ITEM_CIRCUIT"

  local VCT = 
  {
    {"ID","ITEM_CIRCUIT",},
    {"Name","TEXT_ITEM_CIRCUIT_N",},
    {"NameLower","TEXT_ITEM_CIRCUIT_L",},
    {"Subtitle","TEXT_ITEM_CIRCUIT_S",},
    {"Description","TEXT_ITEM_CIRCUIT_D",},
    {"IsCraftable","False",},
    {"CanSendToOtherPlayers","False",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("ATLAS_SEED_1"),
    ApplyVCT(VCT),
    ChangeIcon("TEXTURES/ITEMS/CIRCUIT.DDS"),
    RemoveAllCrafting(),
    AddItem(),
  }
  
  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  ----------------------------------------------------------------------------------------------------
  -- temporal memory boxes
  ----------------------------------------------------------------------------------------------------

  --------------------------------------------------
  -- memory A
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_ITEM_BOXA"

  local VCT = 
  {
    {"ID","ITEM_BOXA",},
    {"Name","TEXT_ITEM_BOXA_N",},
    {"NameLower","TEXT_ITEM_BOXA_L",},
    {"Subtitle","TEXT_ITEM_BOXA_S",},
    {"Description","TEXT_ITEM_BOXA_D",},
    {"R",0.8,},
    {"G",0.8,},
    {"B",0.8,},
    {"IsCraftable","False",},
    {"CanSendToOtherPlayers","False",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("ATLAS_SEED_1"),
    ApplyVCT(VCT),
    ChangeIcon("TEXTURES/ITEMS/BOXA.DDS"),
    RemoveAllCrafting(),
    AddItem(),
  }
  
  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- memory B
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_ITEM_BOXB"

  local VCT = 
  {
    {"ID","ITEM_BOXB",},
    {"Name","TEXT_ITEM_BOXB_N",},
    {"NameLower","TEXT_ITEM_BOXB_L",},
    {"Subtitle","TEXT_ITEM_BOXB_S",},
    {"Description","TEXT_ITEM_BOXB_D",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("ITEM_BOXA"),
    ApplyVCT(VCT),
    ChangeIcon("TEXTURES/ITEMS/BOXB.DDS"),
    AddItem(),
  }
  
  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- memory C
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_ITEM_BOXC"

  local VCT = 
  {
    {"ID","ITEM_BOXC",},
    {"Name","TEXT_ITEM_BOXC_N",},
    {"NameLower","TEXT_ITEM_BOXC_L",},
    {"Subtitle","TEXT_ITEM_BOXC_S",},
    {"Description","TEXT_ITEM_BOXC_D",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("ITEM_BOXA"),
    ApplyVCT(VCT),
    ChangeIcon("TEXTURES/ITEMS/BOXC.DDS"),
    AddItem(),
  }
  
  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  ----------------------------------------------------------------------------------------------------
  -- temporal memory items
  ----------------------------------------------------------------------------------------------------

  --------------------------------------------------
  -- lexicon
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_ITEM_DICTIONARY"

  local VCT = 
  {
    {"ID","ITEM_DICTIONARY",},
    {"Name","TEXT_ITEM_DICTIONARY_N",},
    {"NameLower","TEXT_ITEM_DICTIONARY_L",},
    {"Subtitle","TEXT_ITEM_DICTIONARY_S",},
    {"Description","TEXT_ITEM_DICTIONARY_D",},
    {"StackMultiplier",1,},
    {"CanSendToOtherPlayers","False",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("ATLAS_SEED_2"),
    ApplyVCT(VCT),
    ChangeIcon("TEXTURES/ITEMS/DICTIONARY.DDS"),
    ChangeCrafting(1,"FARMPROD8","Product",1),
    ChangeCrafting(2,"CAVECUBE","Product",2),
    AddItem(),
  }
  
  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- crystal
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_ITEM_CRYSTAL"

  local VCT = 
  {
    {"ID","ITEM_CRYSTAL",},
    {"Name","TEXT_ITEM_CRYSTAL_N",},
    {"NameLower","TEXT_ITEM_CRYSTAL_L",},
    {"Subtitle","TEXT_ITEM_CRYSTAL_S",},
    {"Description","TEXT_ITEM_CRYSTAL_D",},
    {"StackMultiplier",1,},
    {"CanSendToOtherPlayers","False",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("ATLAS_SEED_2"),
    ApplyVCT(VCT),
    ChangeIcon("TEXTURES/ITEMS/CRYSTAL.DDS"),
    ChangeCrafting(1,"GEODE_SPACE","Product",1),
    ChangeCrafting(2,"SUNGOLD","Substance",50),
    AddItem(),
  }
  
  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- bypass chip
  --------------------------------------------------

  FUNCTION_SECTION = "SEC_ITEM_BYPASS"

  local VCT = 
  {
    {"ID","ITEM_BYPASS",},
    {"Name","TEXT_ITEM_BYPASS_N",},
    {"NameLower","TEXT_ITEM_BYPASS_L",},
    {"Subtitle","TEXT_ITEM_BYPASS_S",},
    {"Description","TEXT_ITEM_BYPASS_D",},
    {"CanSendToOtherPlayers","False",},
  }

  local INSTRUCTIONS = 
  {
    GetTemplate("ATLAS_SEED_2"),
    ApplyVCT(VCT),
    ChangeIcon("TEXTURES/ITEMS/BYPASS.DDS"),
    MakeIllegal(),
    ChangeCrafting(1,"STATION_KEY","Product",1),
    ChangeCrafting(2,"ILLEGAL_PROD6","Product",1),
    AddItem(),
  }
  
  for i=1,#INSTRUCTIONS do
    table.insert(exml,INSTRUCTIONS[i])
  end

  --------------------------------------------------
  -- end of table
  --------------------------------------------------

end

--------------------------------------------------
-- populating change tables
--------------------------------------------------

local EXML_PRODUCTS = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
Products_BuildChangeTable(EXML_PRODUCTS)

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------