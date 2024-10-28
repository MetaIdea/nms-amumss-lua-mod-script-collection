----------------------------------------------------
dofile('LIB/_exml_2_lua.lua')
dofile('LIB/_lua_2_exml.lua')
----------------------------------------------------
local mod_desc = [[
  remove proc-tech and add extras in tech catalog
  add ship parts to materials catalog
]]--------------------------------------------------

local tech_catalog = {
	UI_PORTAL_CAT_TECH_SUIT		= {
		{22,	'SUIT_REFINER2'}
	},
	UI_PORTAL_CAT_TECH_SHIP		= {
		{4,		'PHOTONIX_CORE'},
		{'LAUNCHER_SPEC'},
		{'SHIPJUMP_SPEC'},
		{'HYPERDRIVE_SPEC'},
		{'SHIP_LIFESUP'}
	},
	UI_PORTAL_CAT_TECH_TOOL		= {
		{3,		'LASER_XO'},
		{5,		'ATLAS_LASER'},
		{5,		'SENT_LASER'},
		{12,	'UT_BUI_SCAN2'},
		{12,	'UT_S10_SCAN'},
		{12,	'UT_BUI_SCAN'}
	},
	UI_PORTAL_CAT_TECH_GUN		= {
		{3,		'BOLT_SM'},
		{20,	'FLAME'}
	},
	UI_PORTAL_CAT_TECH_WEIRD	= {
		{3,		'STORY_TRANSLATE'},
		{15,	'F_LIFESUPP'},
		{15,	'SHIPGUN_ROBO'},
		{15,	'SHIPSHIELD_ROBO'},
		{15,	'HYPERDRIVE_ROBO'},
		{15,	'SHIPJUMP_ROBO'},
		{15,	'LAUNCHER_ROBO'},
		{15,	'LIFESUP_ROBO'}
	}
}

-- to make referencing TheDATA easy in the script
local thedata

-- HELPER FUNCTION
function GetEXMLString(filenamePath)
  return table.concat(thedata["ModdedEXMLs"][NormalizePath(filenamePath,true)])
end

local catalog_craft		= 'METADATA/REALITY/CATALOGUECRAFTING.MBIN'
local product_table   = 'METADATA/REALITY/TABLES/NMS_REALITY_GCPRODUCTTABLE.MBIN'

-----------------------------------------------------------------------------------------
-- New Wrapper function, any name is good
function ProcessEXMLs()
  print(" = = = Entering ProcessEXMLs()")
  
  print(" = = = = = thedata_2")
  for k,v in pairs(thedata) do
    printf(" k = [%s], v = [%s]",k,v)
  end
  print(" = = = = =")

  print("")
  print("  >>> Testing adding a new MBIN_CT...")
  -- to ADD a new MBIN_CT to the CONTAINER, after the current one
  local MBIN_CT_offset = thedata["MBIN_CT_Index"]
  printf("    *** *** Current MBIN_CT_Index = %d",MBIN_CT_offset)

  printf([[    *** BEFORE insert: #thedata["MBIN_CT"] = %d]],#thedata["MBIN_CT"])
  table.insert(thedata["MBIN_CT"],MBIN_CT_offset + 1,{
            COMMENT = [[This is MBIN_CT #]]..(MBIN_CT_offset + 1)..[[ added by EXT_FUNC]],
            MBIN_FS	= { -- ask AMUMSS to open these MBINs, just for test
              catalog_craft,
            },
          } )
  printf([[    ***  AFTER insert: #thedata["MBIN_CT"] = %d]],#thedata["MBIN_CT"])
  print("  >>> END: Testing adding a new MBIN_CT...")

  print("")
  print("  >>> Showing list of available/opened/modded EXML files")
  for k,v in pairs(thedata["ModdedEXMLs"]) do
    printf("- [%s] = [%s]",k,v)
  end
  print("  >>> END: Showing list of available/opened/modded EXML files")

  print("")
  print("  >>> Showing result of NormalizePath(catalog_craft,true) = ["..NormalizePath(catalog_craft,true).."]")
  
  local mbin_craft		= ToLua(table.concat(thedata["ModdedEXMLs"][NormalizePath(catalog_craft,true)]))
  print(" = = = = = mbin_craft_1")
  local count = 0
  for k,v in pairs(mbin_craft) do
    printf(" k = [%s], v = [%s]",k,v)
    count= count + 1
    if count > 10 then
      break
    end
  end
  print(" = = = = =")
  
  -- alternative can do it
  local mbin_craft		= ToLua(GetEXMLString(catalog_craft))
  print(" = = = = = mbin_craft_2")
  local count = 0
  for k,v in pairs(mbin_craft) do
    printf(" k = [%s], v = [%s]",k,v)
    count= count + 1
    if count > 10 then
      break
    end
  end
  print(" = = = = =")
  
  local craft_categories	= mbin_craft and mbin_craft.template.Categories or {}

  for _,cat in ipairs(craft_categories) do
    local pattern	= cat.CategoryID:find('_FRE') and '^U_FR_.+[123]$' or '^U_.+[1234X]$'
    for i=#cat.Items, 1, -1 do
      -- filter proc-tech from the lists except top level freighter proc-tech
      if cat.Items[i].Value:find(pattern) then
        table.remove(cat.Items, i)
      end
    end
    if tech_catalog[cat.CategoryID] then
      -- add extras
      for _,item in ipairs(tech_catalog[cat.CategoryID]) do
        if item[2] then
          table.insert(cat.Items, item[1], item[2])
        else
          cat.Items[#cat.Items+1] = item[1]
        end
      end
    end
  end
  -----------------------------------------------------------------------------------------

  local gc_products		  	= ToLua(table.concat(thedata["ModdedEXMLs"][NormalizePath(product_table,true)]))

  local new_category 			= UnionTables({craft_categories[1]})

  for _,head in ipairs({
    {f='UI_FIGHTER_PART_SUB',     t='UI_SHIP_TAB_STARSHIP'},
    {f='UI_DROPSHIP_PART_SUB',    t='UI_SHIP_TAB_DROPSHIP'},
    {f='UI_SCIENTIFIC_PART_SUB',  t='UI_SHIP_TAB_SCIENTIFIC'},
  }) do
    new_category.CategoryID         = head.t
    new_category.CategoryIDUpper    = head.t
    new_category.IconOn.Filename    = 'TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.TECH.SHIP.ON.DDS'
    new_category.IconOff.Filename   = 'TEXTURES/UI/FRONTEND/ICONS/WIKI/WIKI.TECH.SHIP.OFF.DDS'
    new_category.Type.WikiTopicType = 'CustomItemList'

    -- read prodcut list
    local parts = {}
    for _,prd in ipairs(gc_products.template.Table) do
printf("type(prd.Subtitle) = %s",type(prd.Subtitle))
      -- if prd.Subtitle.Value:find(head.f) then
      if prd.Subtitle:find(head.f) then
        parts[#parts+1] = prd.ID
      end
    end
    new_category.Items = StringArray(parts, 'Items', 10)
    craft_categories[#craft_categories+1] = UnionTables({new_category})
  end

  local result = FileWrapping(mbin_craft)

  -- print(" = = = = = result_1")
  -- print(result)
  -- print(" = = = = =")

  print(" = = = Exiting ProcessEXMLs()")
  return result -- ,FileWrapping(mbin_craft_ORG) -- returns a string
end -- END:  New Wrapper function: ProcessEXMLs()

-----------------------------------------------------------------------------------------
UseEXMLstrings = nil -- to silence unused_variable, MUST be global
function UseEXMLstrings(TheDATA) -- called by AMUMSS, see below in NMS_MOD_DEFINITION_CONTAINER
  print(" = AMUMSS Calling UseEXMLstrings()")

  print(" = = = = = TheDATA_1")
  for k,v in pairs(TheDATA) do
    printf(" k = [%s], v = [%s]",k,v)
  end
  print(" = = = = =")
  
  -- making THIS new 'TheDATA' a global 'local' in the script
  thedata = TheDATA 
  print(" = = = = = thedata_1")
  for k,v in pairs(thedata) do
    printf(" k = [%s], v = [%s]",k,v)
  end
  print(" = = = = =")
  
  local result = ProcessEXMLs()
  
  -- print(" = = = = = result_2")
  -- print(result)
  -- print(" = = = = =")

  return {
    -- key = pathfilename,  value = string content of modded EXML
    [NormalizePath(catalog_craft,true)] = result,
    ["data_1"] = "Test_STRING",
    ["data_2"] = true,
    ["data_3"] = 56,
    ["data_4"] = {"A","B","C","D","E","F",},


    -- { [NormalizePath(catalog_craft,true)] = result },
    -- { ["data_1"] = "Test_STRING" },
    -- { ["data_2"] = true },
    -- { ["data_3"] = 56 },
    -- { ["data_4"] = {"A","B","C","D","E","F",} },
  }
end

-----------------------------------------------------------------------------------------
Test_2nd_function = nil -- to silence unused_variable, MUST be global
function Test_2nd_function(TheDATA)
  print(" = = = = = = AMUMSS Calling Test_2nd_function()")

  -- making THIS new 'TheDATA' a global 'local' in the script
  thedata = TheDATA 
  
  for k,v in pairs(thedata["ReturnedValues"]) do
    if type(v) == "string" or type(v) == "number" or type(v) == "boolean" then
      H.printf(" - Test_2nd_function: k = [%s], v = [%s] ",k,tostring(v))
    else
      H.printf(" - Test_2nd_function: k = [%s], v = [%s] ",k,v)
      for k,v in pairs(v) do
        H.printf("   - Test_2nd_function: k = [%s], v = [%s] ",k,v)
      end
    end
  end
  print(" = = = = = = Exiting Test_2nd_function()")
  return "IGNORE"
end

-----------------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = {
	{ -- no need to create a 'Multi-Container' script
    MOD_FILENAME		= 'Test_GET_EXML_STRINGS.pak',
    MOD_AUTHOR			= 'lMonk, Wbertro',
    NMS_VERSION			= '4.64',
    MOD_DESCRIPTION		= mod_desc,
    MODIFICATIONS = {
      {
        MBIN_CHANGE_TABLE	= {	
          {
            COMMENT = [[This is MBIN_CT #1: just to create a 1st MBIN_CT]],
            MBIN_FS	= { -- ask AMUMSS to open this MBINs, for testing
              product_table,
            },
          },
          {
            COMMENT = [[This is MBIN_CT #2 using EXT_FUNC]],
            MBIN_FS	= { -- ask AMUMSS to open these MBINs
              catalog_craft,
              product_table,
            },
            
            EXT_FUNC = {
              -- function names to call
              "UseEXMLstrings", "Test_2nd_function",
            },

          },
        },
      },
    }, 
    
  },  --1 global replacements
}
